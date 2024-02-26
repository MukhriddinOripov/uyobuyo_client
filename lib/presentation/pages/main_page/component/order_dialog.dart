import 'dart:async';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:uyobuyo_client/application/main_page_manage/main_bloc.dart';
import 'package:uyobuyo_client/infrastructure/common/utils/lang/loc.dart';
import 'package:uyobuyo_client/infrastructure/common/validations/input_validations.dart';
import 'package:uyobuyo_client/infrastructure/dto/models/search_address_model.dart';
import 'package:uyobuyo_client/presentation/assets/theme/app_theme.dart';
import 'package:uyobuyo_client/presentation/components/main_button_component.dart';
import 'package:uyobuyo_client/presentation/components/text_field_component.dart';

Future<void> orderModalBottomSheetComponent(
    {required BuildContext context,
    required String title,
    String? btnTitle,
    Function()? onTap,
    String? addressControllerText}) {
  final addressController = TextEditingController();
  addressController.text = addressControllerText ?? (!title.contains('Откуда') ? MainBloc.whereToAddress ?? '' : "");
  List<SearchAddressResultModel> searchAddress = [];
  Timer? debounce;
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
      return StatefulBuilder(builder: (context, setState) {
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
                        MainBloc.whereFromAddress = val;
                      } else {
                        MainBloc.whereToAddress = val;
                      }
                    }
                  },
                  onChanged: (val) async {
                    if (val.isNotEmpty) {
                      if (debounce?.isActive ?? false) debounce?.cancel();
                      debounce = Timer(
                        const Duration(milliseconds: 500),
                        () async {
                          searchAddress.clear();
                          Dio dio = Dio(
                            BaseOptions(
                              baseUrl: 'https://nominatim.openstreetmap.org',
                              responseType: ResponseType.json,
                              headers: {
                                "Accept": "application/json",
                                "Accept-Language": context.loc.localeName,
                              },
                            ),
                          );
                          try {
                            var response =
                                await dio.get('/search?format=jsonv2&addressdetails=1&&countrycodes=uz&q=$val');
                            print("Response: ${response.data}");
                            setState(() {
                              searchAddress = (response.data as List)
                                  .map((item) => SearchAddressResultModel.fromJson(item))
                                  .toList();
                            });
                          } catch (e) {
                            print("Error fetching data: $e");
                            // Handle or log error
                          }
                        },
                      );
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
                Expanded(
                  child: ListView.separated(
                      shrinkWrap: true,
                      itemCount: searchAddress.length,
                      separatorBuilder: (ctx, index) => Divider(color: AppTheme.colors.black60, height: 0.1),
                      itemBuilder: (ctx, index) {
                        return GestureDetector(
                          onTap: () {
                            setState(() {
                              if (title.contains('Откуда')) {
                                MainBloc.whereFromAddress =
                                    "${searchAddress[index].address.houseNumber ?? searchAddress[index].address.historic ?? searchAddress[index].address.aeroway ?? searchAddress[index].address.village ?? searchAddress[index].address.county ?? ''}, ${searchAddress[index].address.county}";
                                MainBloc.whereFromSubAddress =
                                    "${searchAddress[index].address.city}, ${searchAddress[index].address.country}";
                                addressController.text = MainBloc.whereFromAddress ?? '';
                              } else {
                                MainBloc.whereToAddress =
                                    "${searchAddress[index].address.houseNumber ?? searchAddress[index].address.historic ?? searchAddress[index].address.aeroway ?? searchAddress[index].address.village ?? searchAddress[index].address.county ?? ''}, ${searchAddress[index].address.county}";
                                MainBloc.whereToSubAddress =
                                    "${searchAddress[index].address.city}, ${searchAddress[index].address.country}";
                                addressController.text = MainBloc.whereToAddress ?? '';
                              }
                            });
                          },
                          child: Container(
                            color: Colors.transparent,
                            padding: const EdgeInsets.all(12.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                    "${searchAddress[index].address.houseNumber ?? searchAddress[index].address.historic ?? searchAddress[index].address.aeroway ?? searchAddress[index].address.village ?? searchAddress[index].address.county ?? ''}, ${searchAddress[index].address.county}",
                                    style: AppTheme.data.textTheme.titleLarge),
                                Text("${searchAddress[index].address.city}, ${searchAddress[index].address.country}",
                                    style: AppTheme.data.textTheme.bodySmall?.copyWith(color: AppTheme.colors.black40)),
                              ],
                            ),
                          ),
                        );
                      }),
                ),
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
