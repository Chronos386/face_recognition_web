import '../models/schedule_model.dart';
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

class ScheduleDayCard extends StatelessWidget {
  final DateTime date;
  final List<ScheduleModel> lessons;
  final List<ScheduleModel> schedule;
  final Function(ScheduleModel) onTap;
  final Function(ScheduleModel)? onDelete;

  const ScheduleDayCard({
    super.key,
    required this.date,
    required this.lessons,
    required this.schedule,
    required this.onTap,
    required this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    final sortedLessons = List<ScheduleModel>.from(lessons)
      ..sort((a, b) => a.timeStart.compareTo(b.timeStart));
    return Card(
      margin: const EdgeInsets.all(8),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              DateFormat('EEEE, d MMMM', 'ru').format(date),
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 8),
            ...sortedLessons.map(
                  (lesson) => _ScheduleLessonItem(
                lesson: lesson,
                schedule: schedule,
                onTap: onTap,
                onDelete: onDelete,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _ScheduleLessonItem extends StatelessWidget {
  final ScheduleModel lesson;
  final List<ScheduleModel> schedule;
  final Function(ScheduleModel) onTap;
  final Function(ScheduleModel)? onDelete;

  const _ScheduleLessonItem({required this.lesson, required this.schedule,
    required this.onTap, required this.onDelete});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 4),
      child: ListTile(
        title: Text(lesson.subject),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('${DateFormat.Hm().format(lesson.timeStart)} - '
                '${DateFormat.Hm().format(lesson.timeEnd)}'),
            Text(lesson.group),
            Text(lesson.teacher),
            Text('${lesson.building}, ${lesson.room}'),
          ],
        ),
        trailing: (onDelete != null) ? IconButton(
          icon: const Icon(Icons.delete, color: Colors.red),
          onPressed: () => onDelete!(lesson),
        ) : null,
        onTap: () => onTap(lesson),
      ),
    );
  }
}