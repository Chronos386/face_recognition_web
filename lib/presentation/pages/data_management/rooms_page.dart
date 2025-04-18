// presentation/pages/data_management/rooms_page.dart
import '../../models/room_model.dart';
import 'package:flutter/material.dart';
import '../../models/building_model.dart';
import '../../widgets/frw_text_field.dart';
import '/res/generated/locale_keys.g.dart';
import '../../bloc/room_bloc/room_bloc.dart';
import '../../widgets/dropdown_selector.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:easy_localization/easy_localization.dart';

class RoomsPage extends StatefulWidget {
  const RoomsPage({super.key});

  @override
  State<RoomsPage> createState() => _RoomsPageState();
}

class _RoomsPageState extends State<RoomsPage> {
  final _scrollController = ScrollController();
  List<RoomModel> rooms = [];
  BuildingModel? selectedBuilding;
  List<BuildingModel> buildings = [];

  @override
  void initState() {
    super.initState();
    context.read<RoomBloc>().add(const RoomEvent.loadBuildings());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(LocaleKeys.rooms.tr()),
        actions: [
          IconButton(
            icon: const Icon(Icons.add, color: Colors.green),
            onPressed: _addNewRoom,
          ),
        ],
      ),
      body: BlocConsumer<RoomBloc, RoomState>(
        listener: (context, state) {
          if (state is RoomStateError) {
            WidgetsBinding.instance.addPostFrameCallback((_) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text(state.error)),
              );
              context.read<RoomBloc>().add(RoomEvent.toLoaded(
                buildings: buildings,
                selectedBuilding: selectedBuilding,
                rooms: rooms,
              ));
            });
          } else if (state is RoomStateEndedSession) {
            Navigator.pushReplacementNamed(context, 'auth');
          }
        },
        builder: (context, state) {
          if (state is RoomStateLoadingBuildings) {
            return _buildLoadingState();
          }

          if (state is RoomStateLoadedBuildings) {
            buildings = state.buildings;
            if (buildings.isNotEmpty && selectedBuilding == null) {
              selectedBuilding = buildings.first;
              context.read<RoomBloc>().add(RoomEvent.loadRooms(
                buildingId: selectedBuilding!.id,
              ));
            }
          }

          return Column(
            children: [
              _buildBuildingSelector(),
              Expanded(
                child: _buildRoomsList(state),
              ),
            ],
          );
        },
      ),
    );
  }

  Widget _buildBuildingSelector() {
    return DropdownSelector<BuildingModel>(
      items: buildings,
      selectedItem: selectedBuilding,
      onChanged: (newValue) {
        if (newValue != null) {
          setState(() => selectedBuilding = newValue);
          context.read<RoomBloc>().add(RoomEvent.loadRooms(
            buildingId: newValue.id,
          ));
        }
      },
    );
  }

  Widget _buildRoomsList(RoomState state) {
    if (buildings.isEmpty) {
      return Center(child: Text(LocaleKeys.no_buildings.tr()));
    }

    if (state is RoomStateLoadingRooms) {
      return _buildLoadingState();
    }

    if (state is RoomStateLoadedRooms) {
      rooms = state.rooms;
    }

    return rooms.isEmpty
        ? Center(child: Text(LocaleKeys.no_rooms.tr()))
        : ListView.builder(
      controller: _scrollController,
      itemCount: rooms.length,
      itemBuilder: (context, index) => _buildRoomItem(rooms[index]),
    );
  }

  Widget _buildLoadingState() {
    return const Center(child: CircularProgressIndicator());
  }

  Widget _buildRoomItem(RoomModel room) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
      child: ListTile(
        title: Text(room.number),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('ID: ${room.id}'),
            if (room.deviceId != null)
              Text('${LocaleKeys.device_id.tr()}: ${room.deviceId}'),
            Text('${LocaleKeys.building_id.tr()}: ${room.buildingId}'),
          ],
        ),
        trailing: IconButton(
          icon: const Icon(Icons.delete, color: Colors.red),
          onPressed: () => _showDeleteDialog(room),
        ),
        onTap: () => _showEditDialog(room),
      ),
    );
  }

  void _showEditDialog(RoomModel room) {
    final formKey = GlobalKey<FormState>();
    final numberController = TextEditingController(text: room.number);
    final mainContext = context;
    BuildingModel? selectedBuilding = buildings.firstWhere((elem) =>
    (elem.id==room.buildingId));
    int? currentDeviceId = room.deviceId;

    showDialog(
      context: context,
      builder: (context) => StatefulBuilder(
        builder: (context, setState) {
          return AlertDialog(
            title: Text(LocaleKeys.edit_room.tr()),
            content: Form(
              key: formKey,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    TextFormField(
                      initialValue: room.id.toString(),
                      decoration: InputDecoration(
                        labelText: 'ID',
                        enabled: false,
                      ),
                    ),
                    const SizedBox(height: 10),
                    FrwTextField(
                      controller: numberController,
                      labelKey: LocaleKeys.room_number,
                      validator: (value) =>
                      value!.isEmpty ? LocaleKeys.value_required.tr() : null,
                    ),
                    const SizedBox(height: 10),
                    DropdownSelector<BuildingModel>(
                      isEditCreate: true,
                      items: buildings,
                      selectedItem: selectedBuilding,
                      onChanged: (value) => setState(() => selectedBuilding = value),
                    ),
                    if (currentDeviceId != null) ...[
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          Text('${LocaleKeys.device_id.tr()}: $currentDeviceId'),
                          IconButton(
                            icon: Icon(Icons.delete, color: Colors.red),
                            onPressed: () {
                              Navigator.pop(context);
                              mainContext.read<RoomBloc>().add(
                                RoomEvent.deleteDevice(
                                  rooms: rooms,
                                  room: room,
                                ),
                              );
                              setState(() => currentDeviceId = null);
                            },
                          ),
                        ],
                      ),
                    ] else ...[
                      const SizedBox(height: 10),
                      ElevatedButton(
                        child: Text(LocaleKeys.add_device.tr()),
                        onPressed: () async {
                          Navigator.pop(context);
                          mainContext.read<RoomBloc>().add(
                            RoomEvent.createDevice(
                              rooms: rooms,
                              room: room,
                            ),
                          );
                        },
                      ),
                    ],
                  ],
                ),
              ),
            ),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: Text(LocaleKeys.cancel.tr()),
              ),
              ElevatedButton(
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    mainContext.read<RoomBloc>().add(
                      RoomEvent.updateRoom(
                        rooms: rooms,
                        roomId: room.id,
                        buildingId: selectedBuilding!.id,
                        number: numberController.text,
                      ),
                    );
                    Navigator.pop(context);
                  }
                },
                child: Text(LocaleKeys.save.tr()),
              ),
            ],
          );
        },
      ),
    );
  }

  void _addNewRoom() {
    if (selectedBuilding == null) return;
    final formKey = GlobalKey<FormState>();
    final numberController = TextEditingController();
    final mainContext = context;

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(LocaleKeys.create_room.tr()),
        content: Form(
          key: formKey,
          child: FrwTextField(
            controller: numberController,
            labelKey: LocaleKeys.room_number,
            validator: (value) =>
            value!.isEmpty ? LocaleKeys.value_required.tr() : null,
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text(LocaleKeys.cancel.tr()),
          ),
          ElevatedButton(
            onPressed: () {
              if (formKey.currentState!.validate()) {
                mainContext.read<RoomBloc>().add(
                  RoomEvent.createRoom(
                    rooms: rooms,
                    buildingId: selectedBuilding!.id,
                    number: numberController.text,
                  ),
                );
                Navigator.pop(context);
              }
            },
            child: Text(LocaleKeys.create.tr()),
          ),
        ],
      ),
    );
  }

  void _showDeleteDialog(RoomModel room) {
    final mainContext = context;
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(LocaleKeys.delete_room.tr()),
        content: Text(LocaleKeys.delete_room_confirm.tr()),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text(LocaleKeys.cancel.tr()),
          ),
          TextButton(
            onPressed: () {
              mainContext.read<RoomBloc>().add(
                RoomEvent.deleteRoom(
                  rooms: rooms,
                  roomId: room.id,
                ),
              );
              Navigator.pop(context);
            },
            child: Text(
              LocaleKeys.delete.tr(),
              style: TextStyle(color: Colors.red),
            ),
          ),
        ],
      ),
    );
  }
}