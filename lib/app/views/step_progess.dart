import 'package:flutter/material.dart';
import 'package:rebuyapp/app/utils/colors.dart'; // Ensure this file defines AppColors.pink and AppColors.white

class StepProgressIndicator extends StatelessWidget {
  final int currentStep;
  final int totalSteps;

  const StepProgressIndicator({
    super.key,
    required this.currentStep,
    required this.totalSteps,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(totalSteps * 2 - 1, (index) {
        if (index % 2 == 0) {
          int stepIndex = index ~/ 2;
          bool isCurrent = stepIndex == currentStep;
          bool isCompleted = stepIndex < currentStep;

          return Container(
            width: 24,
            height: 24,
            decoration: BoxDecoration(
              color: isCompleted ? AppColors.pink : Colors.transparent,
              border: Border.all(color: AppColors.pink, width: 3),
              shape: BoxShape.circle,
            ),
            child: isCurrent
                ? Center(
                    child: Container(
                      width: 12,
                      height: 12,
                      decoration: BoxDecoration(
                        color: AppColors.pink,

                        shape: BoxShape.circle,
                        border: Border.all(color: AppColors.white, width: .5),
                      ),
                    ),
                  )
                : null,
          );
        } else {
          return Container(width: 40, height: 4, color: AppColors.pink);
        }
      }),
    );
  }
}
