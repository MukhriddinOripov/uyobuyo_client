import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:uyobuyo_client/application/main_page_manage/main_bloc.dart';
import 'package:uyobuyo_client/infrastructure/common/utils/lang/loc.dart';
import 'package:uyobuyo_client/infrastructure/common/validations/input_validations.dart';
import 'package:uyobuyo_client/infrastructure/dto/models/search_address_model.dart';
import 'package:uyobuyo_client/infrastructure/services/shared_pref_service.dart';
import 'package:uyobuyo_client/presentation/assets/theme/app_theme.dart';
import 'package:uyobuyo_client/presentation/components/main_button_component.dart';
import 'package:uyobuyo_client/presentation/components/text_field_component.dart';

Future<void> orderModalBottomSheetComponent(
    {required BuildContext context, required String title, String? btnTitle, Function()? onTap, String? addressControllerText}) {
  final addressController = TextEditingController();
  addressController.text = addressControllerText ?? '';
  return showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(32.r),
        topRight: Radius.circular(32.r),
      ),
    ),
    builder: (context) {
      return StatefulBuilder(builder: (context, state) {
        return SizedBox(
          height: MediaQuery.sizeOf(context).height * 0.9,
          child: Padding(
            padding: EdgeInsets.only(
              top: 12.h,
              left: 16.w,
              right: 16.w,
              bottom: 49.h,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    height: 6.h,
                    width: 48.w,
                    decoration: BoxDecoration(
                      color: const Color(0xFFE3E8FC),
                      borderRadius: BorderRadius.circular(24.r),
                    ),
                  ),
                ),
                SizedBox(height: 16.h),
                Text(
                  title,
                  style: AppTheme.data.textTheme.displaySmall?.copyWith(fontSize: 24),
                ),
                SizedBox(height: 16.h),
                TextFieldComponent(
                  controller: addressController,
                  onFieldSubmitted: (val) async {
                    if (val.isNotEmpty) {
                      if (title.contains('Откуда')) {
                        print("line 63");
                        MainBloc.whereFromAddress = val;
                      } else {
                        print("line 65");
                        MainBloc.whereToAddress = val;
                      }
                    }
                  },
                  suffixWidget: TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                        Navigator.pop(context);
                        context.read<MainBloc>().add(
                              MainEvent.chooseAddressInMap(
                                whereTo: !title.contains('Откуда'),
                              ),
                            );
                      },
                      child: Text(
                        "Карта",
                        style: AppTheme.data.textTheme.bodyMedium?.copyWith(color: AppTheme.colors.primary),
                      )),
                  validator: (v) => InputValidations.defaultV(v ?? '').fold(
                    (l) => l.maybeMap(
                      empty: (_) => "Введите свой имя и фамилия",
                      orElse: () => null,
                    ),
                    (r) => null,
                  ),
                ),
                const SizedBox(height: 24),
                // ListView.builder(
                //   shrinkWrap: true,
                //   itemCount: searchAddress.length,
                //   itemBuilder: (ctx, index) => Text(
                //     searchAddress[index].displayName,
                //   ),
                // ),
                const Spacer(),
                MainButtonComponent(
                  name: btnTitle ?? context.loc.back,
                  onPressed: onTap ?? () => Navigator.pop(context),
                ),
              ],
            ),
          ),
        );
      });
    },
  );
}

Future getAddressByLatLong({required String address}) async {
  SharedPrefService pref = await SharedPrefService.initialize();
  Dio(
    BaseOptions(
      baseUrl: 'https://nominatim.openstreetmap.org',
      // responseType: ResponseType.json,
      // headers: {
      //   "Accept": "application/json",
      //   "Accept-Language": pref.getLanguage,
      // },
    ),
  ).get('/search?format=jsonv2&q=Islom Karimov').then((value) {
    List<SearchAddressResultModel> searchAddress = value.data.map((item) => SearchAddressResultModel.fromJson(item)).toList();
  });
}
