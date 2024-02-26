import 'package:flutter/material.dart';
import 'package:uyobuyo_client/infrastructure/common/constants/constants.dart';
import 'package:uyobuyo_client/infrastructure/common/utils/lang/loc.dart';
import 'package:uyobuyo_client/infrastructure/dto/models/drawer/drawel_model.dart';
import 'package:uyobuyo_client/presentation/assets/theme/app_theme.dart';

class FAQDetailModule extends StatefulWidget {
  final DrawerData data;

  const FAQDetailModule({super.key, required this.data});

  @override
  State<FAQDetailModule> createState() => _FAQDetailModuleState();
}

class _FAQDetailModuleState extends State<FAQDetailModule> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Padding(
          padding: const EdgeInsets.only(left: kPaddingDefault, top: 32, right: kPaddingDefault),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
              const SizedBox(height: 16),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 16),
                      Text('Как оформить заказ?', style: AppTheme.data.textTheme.headlineMedium),
                      const SizedBox(height: 12),
                      Text(
                        'Учитывая ключевые сценарии поведения, понимание сути ресурсосберегающих технологий не даёт нам иного выбора, кроме определения модели развития. Разнообразный и богатый опыт говорит нам, что высокотехнологичная концепция общественного уклада представляет собой интересный эксперимент проверки прогресса профессионального сообщества. Но элементы политического процесса лишь добавляют фракционных разногласий и представлены в исключительно положительном свете. Повседневная практика показывает, что постоянное информационно-пропагандистское обеспечение нашей деятельности обеспечивает широкому кругу (специалистов) участие в формировании поэтапного и последовательного развития общества.Ясность нашей позиции очевидна: дальнейшее развитие различных форм деятельности требует анализа стандартных подходов. С учётом сложившейся международной обстановки, высококачественный прототип будущего проекта требует анализа приоретизации разума над эмоциями. Прежде всего, постоянное информационно-пропагандистское обеспечение нашей деятельности представляет собой интересный эксперимент проверки глубокомысленных рассуждений. В рамках спецификации современных стандартов, элементы политического процесса лишь добавляют фракционных разногласий и объявлены нарушающими общечеловеческие нормы этики и морали.',
                        style: AppTheme.data.textTheme.bodySmall?.copyWith(fontWeight: FontWeight.w500),
                      ),
                      const SizedBox(height: 50),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
