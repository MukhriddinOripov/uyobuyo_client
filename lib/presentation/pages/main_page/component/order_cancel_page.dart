import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:uyobuyo_client/application/main_page_manage/main_bloc.dart';
import 'package:uyobuyo_client/infrastructure/common/utils/lang/loc.dart';
import 'package:uyobuyo_client/presentation/assets/images.dart';
import 'package:uyobuyo_client/presentation/assets/theme/app_theme.dart';
import 'package:uyobuyo_client/presentation/components/main_button_component.dart';

class OrderCancelPage extends StatefulWidget {
  const OrderCancelPage({super.key});

  @override
  State<OrderCancelPage> createState() => _OrderCancelPageState();
}

class _OrderCancelPageState extends State<OrderCancelPage> {
  Map<String, bool> values = {
    'driverAskedCancel': false,
    'driverLate': false,
    'lotOfLuggage': false,
    'driverSmokes': false,
    'dissatisfiedCarModel': false,
    'technicalConditionCar': false,
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
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
              SizedBox(height: 32.h),
              Align(
                alignment: Alignment.topCenter,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "Отмена заказа",
                      style: AppTheme.data.textTheme.titleLarge,
                    ),
                    SizedBox(height: 48.h),
                    Image.asset(
                      AppImages.successImage,
                      width: 80,
                      height: 80,
                    ),
                    SizedBox(height: 16.h),
                    Text(
                      "Заказ отменен!",
                      style: AppTheme.data.textTheme.headlineMedium,
                    ),
                    SizedBox(height: 8.h),
                    Text(
                      "Пожалуйста укажите причину отмены заказа чтобы мы могли принять меры",
                      textAlign: TextAlign.center,
                      style: AppTheme.data.textTheme.bodyMedium?.copyWith(color: AppTheme.colors.black40),
                    ),
                    SizedBox(height: 24.h),
                  ],
                ),
              ),
              Divider(color: AppTheme.colors.black20, height: 0.1),
              ListTile(
                contentPadding: EdgeInsets.zero,
                onTap: () {
                  setState(() {
                    setState(() {
                      values['driverAskedCancel'] = !values['driverAskedCancel']!;
                    });
                  });
                },
                title: Text(
                  "Водитель попросил отменить",
                  style: AppTheme.data.textTheme.bodySmall?.copyWith(fontWeight: FontWeight.w500),
                ),
                leading: Checkbox(
                  checkColor: AppTheme.colors.text900,
                  activeColor: Colors.transparent,
                  value: values['driverAskedCancel'],
                  onChanged: (value) {
                    setState(() {
                      values['driverAskedCancel'] = value!;
                    });
                  },
                ),
              ),
              Divider(color: AppTheme.colors.black20, height: 0.1),
              ListTile(
                contentPadding: EdgeInsets.zero,
                onTap: () {
                  setState(() {
                    values['driverLate'] = !values['driverLate']!;
                  });
                },
                title: Text(
                  "Водитель опаздывает",
                  style: AppTheme.data.textTheme.bodySmall?.copyWith(fontWeight: FontWeight.w500),
                ),
                leading: Checkbox(
                  checkColor: AppTheme.colors.text900,
                  activeColor: Colors.transparent,
                  value: values['driverLate'],
                  onChanged: (value) {
                    setState(() {
                      values['driverLate'] = value!;
                    });
                  },
                ),
              ),
              Divider(color: AppTheme.colors.black20, height: 0.1),
              ListTile(
                contentPadding: EdgeInsets.zero,
                onTap: () {
                  setState(() {
                    values['lotOfLuggage'] = !values['lotOfLuggage']!;
                  });
                },
                title: Text(
                  "Много багажа",
                  style: AppTheme.data.textTheme.bodySmall?.copyWith(fontWeight: FontWeight.w500),
                ),
                leading: Checkbox(
                  checkColor: AppTheme.colors.text900,
                  activeColor: Colors.transparent,
                  value: values['lotOfLuggage'],
                  onChanged: (value) {
                    setState(() {
                      values['lotOfLuggage'] = value!;
                    });
                  },
                ),
              ),
              Divider(color: AppTheme.colors.black20, height: 0.1),
              ListTile(
                contentPadding: EdgeInsets.zero,
                onTap: () {
                  setState(() {
                    values['driverSmokes'] = !values['driverSmokes']!;
                  });
                },
                title: Text(
                  "Водитель курит",
                  style: AppTheme.data.textTheme.bodySmall?.copyWith(fontWeight: FontWeight.w500),
                ),
                leading: Checkbox(
                  checkColor: AppTheme.colors.text900,
                  activeColor: Colors.transparent,
                  value: values['driverSmokes'],
                  onChanged: (value) {
                    setState(() {
                      values['driverSmokes'] = value!;
                    });
                  },
                ),
              ),
              Divider(color: AppTheme.colors.black20, height: 0.1),
              ListTile(
                contentPadding: EdgeInsets.zero,
                onTap: () {
                  setState(() {
                    values['dissatisfiedCarModel'] = !values['dissatisfiedCarModel']!;
                  });
                },
                title: Text(
                  "Недоволен моделью машины",
                  style: AppTheme.data.textTheme.bodySmall?.copyWith(fontWeight: FontWeight.w500),
                ),
                leading: Checkbox(
                  checkColor: AppTheme.colors.text900,
                  activeColor: Colors.transparent,
                  value: values['dissatisfiedCarModel'],
                  onChanged: (value) {
                    setState(() {
                      values['dissatisfiedCarModel'] = value!;
                    });
                  },
                ),
              ),
              Divider(color: AppTheme.colors.black20, height: 0.1),
              ListTile(
                contentPadding: EdgeInsets.zero,
                onTap: () {
                  setState(() {
                    values['technicalConditionCar'] = !values['technicalConditionCar']!;
                  });
                },
                title: Text(
                  "Тех состояние автомобиля",
                  style: AppTheme.data.textTheme.bodySmall?.copyWith(fontWeight: FontWeight.w500),
                ),
                leading: Checkbox(
                  checkColor: AppTheme.colors.text900,
                  activeColor: Colors.transparent,
                  value: values['technicalConditionCar'],
                  onChanged: (value) {
                    setState(() {
                      values['technicalConditionCar'] = value!;
                    });
                  },
                ),
              ),
              Divider(color: AppTheme.colors.black20, height: 0.1),
              const Spacer(),
              MainButtonComponent(
                name: context.loc.proceed,
                onPressed: () {
                  context.pop();
                  context.read<MainBloc>().add(const MainEvent.initMainPage());
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
