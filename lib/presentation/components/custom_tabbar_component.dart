import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:uyobuyo_client/presentation/assets/theme/app_theme.dart';

class CustomTabBarComponent extends StatefulWidget {
  final int tabIndex;
  final Function(int) onChanged;
  final List<Map<String, String>> list;
  final double? width;

  const CustomTabBarComponent({
    Key? key,
    required this.onChanged,
    required this.list,
    this.width,
    required this.tabIndex,
  }) : super(key: key);

  @override
  State<CustomTabBarComponent> createState() => _CustomTabBarComponentState();
}

class _CustomTabBarComponentState extends State<CustomTabBarComponent> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    selectedIndex = widget.tabIndex;
    return SizedBox(
      width: widget.width ?? ScreenUtil().screenWidth,
      height: 44,
      child: ListView.builder(
        padding: const EdgeInsets.all(0),
        scrollDirection: Axis.horizontal,
        itemCount: widget.list.length,
        itemBuilder: (context, i) {
          return GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = i;
              });
              widget.onChanged(selectedIndex);
            },
            child: Container(
              color: Colors.transparent,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 12.0),
                        child: Row(
                          children: [
                            widget.list[i]["iconUrl"] != null
                                ? SvgPicture.asset(
                                    width: 24,
                                    height: 24,
                                    widget.list[i]["iconUrl"]!,
                                    color: selectedIndex == i ? AppTheme.colors.text900 : AppTheme.colors.black60,
                                  )
                                : const SizedBox(),
                            SizedBox(width: 4.w),
                            Center(
                              child: Text(
                                widget.list[i]["title"]!,
                                textAlign: TextAlign.center,
                                style: AppTheme.data.textTheme.labelLarge!.copyWith(
                                    fontWeight: FontWeight.w600,
                                    color: selectedIndex == i ? AppTheme.colors.text900 : AppTheme.colors.black60),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: (widget.width ?? ScreenUtil().screenWidth) / widget.list.length,
                        child: Divider(
                          height: 2,
                          thickness: selectedIndex == i ? 2 : 1,
                          color: selectedIndex == i ? AppTheme.colors.primary : Colors.transparent,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
