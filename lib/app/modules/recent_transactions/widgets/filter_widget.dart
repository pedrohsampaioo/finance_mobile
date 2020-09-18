import 'package:flutter/material.dart';

import '../../../core/theme/app_theme.dart';

class FilterWidget extends StatelessWidget {
  final List<String> labels;
  final int selectedLabel;
  final void Function(int) onChanged;

  const FilterWidget({
    Key key,
    @required this.labels,
    @required this.selectedLabel,
    @required this.onChanged,
  })  : assert(labels != null),
        assert(selectedLabel != null),
        assert(onChanged != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.separated(
        physics: BouncingScrollPhysics(),
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 24,
        ),
        shrinkWrap: true,
        separatorBuilder: (_, index) {
          return const SizedBox(width: 16);
        },
        scrollDirection: Axis.horizontal,
        itemCount: labels.length,
        itemBuilder: (_, index) {
          return GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTap: () => onChanged(index),
            child: AnimatedContainer(
              duration: const Duration(seconds: 1),
              padding: const EdgeInsets.symmetric(
                horizontal: 24,
                vertical: 8,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                boxShadow: [AppTheme.boxShadow],
                color:
                    index == selectedLabel ? AppColors.darkBlue : Colors.white,
              ),
              child: Text(
                labels[index],
                style: AppTypography.bodySmallMedium.copyWith(
                  color:
                      index == selectedLabel ? Colors.white : AppColors.black,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
