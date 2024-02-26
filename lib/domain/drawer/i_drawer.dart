import 'package:uyobuyo_client/infrastructure/dto/models/drawer/drawel_model.dart';

abstract class IDrawer {
  const IDrawer._();

  Future<DrawerModel> getFAQ();

  Future<DrawerModel> getInfo();

  Future<DrawerModel> getSupport();
}
