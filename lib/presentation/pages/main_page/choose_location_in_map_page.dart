import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uyobuyo_client/application/main_page_manage/main_bloc.dart';
import 'package:uyobuyo_client/infrastructure/common/constants/constants.dart';
import 'package:uyobuyo_client/infrastructure/common/utils/lang/loc.dart';
import 'package:uyobuyo_client/presentation/assets/theme/app_theme.dart';
import 'package:uyobuyo_client/presentation/components/main_button_component.dart';

class ChooseLocationInMapPage extends StatelessWidget {
  final String selectAddress;
  final String selectSubAddress;
  final Color indicatorColor;
  final Function() getCurrentLocation;

  const ChooseLocationInMapPage(
      {super.key, required this.selectAddress, required this.selectSubAddress, required this.indicatorColor, required this.getCurrentLocation});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: MediaQuery.sizeOf(context).width - 32,
          child: Row(
            children: [
              GestureDetector(
                onTap: () {
                  context.read<MainBloc>().add(const MainEvent.initMainPage());
                },
                child: Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(color: AppTheme.colors.white, borderRadius: BorderRadius.circular(12)),
                  child: const Icon(Icons.arrow_back),
                ),
              ),
              const Spacer(),
              GestureDetector(
                onTap: getCurrentLocation,
                child: Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(color: AppTheme.colors.white, borderRadius: BorderRadius.circular(12)),
                  child: const Icon(Icons.my_location),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 16),
        Container(
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: kPaddingDefault),
          width: MediaQuery.sizeOf(context).width,
          decoration: BoxDecoration(
            color: AppTheme.colors.white,
            borderRadius: const BorderRadius.vertical(
              top: Radius.circular(32),
            ),
          ),
          child: Column(
            children: [
              Container(
                width: 48,
                height: 6,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: const Color(0xFFE3E8FC),
                ),
              ),
              const SizedBox(height: 16),
              Container(
                width: MediaQuery.sizeOf(context).width - 32,
                color: Colors.transparent,
                padding: const EdgeInsets.symmetric(vertical: 12, horizontal: kPaddingDefault),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(4),
                      decoration: BoxDecoration(shape: BoxShape.circle, color: indicatorColor),
                      child: Container(
                        height: 12,
                        width: 12,
                        decoration: BoxDecoration(shape: BoxShape.circle, color: AppTheme.colors.white),
                      ),
                    ),
                    const SizedBox(width: 12),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(
                          width: MediaQuery.sizeOf(context).width / 1.4,
                          child: Text(
                            selectAddress,
                            overflow: TextOverflow.ellipsis,
                            style: AppTheme.data.textTheme.bodyMedium,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          selectSubAddress,
                          overflow: TextOverflow.ellipsis,
                          style: AppTheme.data.textTheme.bodySmall?.copyWith(color: AppTheme.colors.black80),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(height: 24),
              MainButtonComponent(
                name: context.loc.proceed,
                onPressed: () {
                  context.read<MainBloc>().add(const MainEvent.initMainPage());
                },
              ),
              const SizedBox(height: 24),
            ],
          ),
        )
      ],
    );
  }
}
