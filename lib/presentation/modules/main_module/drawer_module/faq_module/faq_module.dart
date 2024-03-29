import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:uyobuyo_client/application/drawer_manager/drawer_bloc.dart';
import 'package:uyobuyo_client/infrastructure/common/constants/constants.dart';
import 'package:uyobuyo_client/infrastructure/common/utils/lang/loc.dart';
import 'package:uyobuyo_client/presentation/assets/theme/app_theme.dart';
import 'package:uyobuyo_client/presentation/pages/base_page.dart';
import 'package:uyobuyo_client/presentation/routes/entity/routes.dart';

class FAQModule extends BaseScreen {
  const FAQModule({super.key});

  @override
  State<BaseScreen> createState() => _FAQModuleModuleState();
}

class _FAQModuleModuleState extends BaseState<FAQModule> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: kPaddingDefault, vertical: 32),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: Text(
                      context.loc.back,
                      style: AppTheme.data.textTheme.bodyMedium?.copyWith(color: AppTheme.colors.black80),
                    ),
                  ),
                  Text(
                    "FAQ",
                    overflow: TextOverflow.ellipsis,
                    style: AppTheme.data.textTheme.titleLarge,
                  ),
                  const SizedBox(width: 32)
                ],
              ),
              const SizedBox(height: 32),
              Expanded(
                child: BlocConsumer<DrawerBloc, DrawerState>(
                  listener: (context, state) {
                    state.maybeWhen(
                        loading: (loading) {
                          showLoading(needLoading: loading);
                        },
                        orElse: () {});
                  },
                  buildWhen: (context, state) {
                    return state.maybeWhen(loading: (val) => true, loadedFAQ: (data) => true, orElse: () => false);
                  },
                  builder: (context, state) {
                    return state.maybeWhen(
                      loadedFAQ: (data) {
                        if (data!.isNotEmpty) {
                          return ListView.separated(
                            itemCount: data.length,
                            itemBuilder: (ctx, item) => InkWell(
                              onTap: () {
                                context.pushNamed(Routes.faqDetailModule.name, extra: {"data": data[item]});
                              },
                              child: Container(
                                color: Colors.transparent,
                                padding: const EdgeInsets.symmetric(vertical: 14),
                                child: Row(
                                  children: [
                                    Text(
                                      data[item].title,
                                      style: AppTheme.data.textTheme.bodySmall
                                          ?.copyWith(fontWeight: FontWeight.w500, color: AppTheme.colors.black80),
                                    ),
                                    const Spacer(),
                                    const Icon(Icons.arrow_forward_outlined)
                                  ],
                                ),
                              ),
                            ),
                            separatorBuilder: (ctx, index) => Divider(color: AppTheme.colors.black20, height: 0.1),
                          );
                        } else {
                          return const Center(
                            child: Text("Empty"),
                          );
                        }
                      },
                      orElse: () => const SizedBox(),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
