import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

import 'package:todos/models/tasks.dart';
import 'package:todos/notifiers/tasks.dart';
import 'package:todos/styles/colors.dart';
import 'package:todos/styles/texts.dart';

class TaskWidget extends StatelessWidget {
  final TaskModel taskModel;
  const TaskWidget(this.taskModel);

  @override
  Widget build(BuildContext context) {
    final TaskNotifier taskNotifier = Provider.of<TaskNotifier>(context);
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        padding: EdgeInsets.all(10.0),
        margin: EdgeInsets.symmetric(vertical: 10.0),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30.0),
            color: AppColors.backgroundColor),
        child: CheckboxListTile(
          value: taskModel.done,
          title: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              taskModel.name,
              style: AppTextStyles.subHeaderStyle,
            ),
          ),
          subtitle: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              DateFormat("dd-MM-yyyy hh:mm").format(taskModel.start),
            ),
          ),
          secondary: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.info),
          ),
          onChanged: (bool value) {
            taskNotifier.toggleState(taskModel.id);
          },
        ),
        // Icon(Icons.info),
        // AppSpaces.horizontalSpaceMedium,
        // Text(
        //   actionModel.name,
        //   style: AppTextStyles.paragraphStyle,
        // ),
        // DoneButton(actionId: actionModel.id),
      ),
    );
  }
}
