import 'package:dio/dio.dart';
import 'package:uyobuyo_client/domain/drawer/i_drawer.dart';
import 'package:uyobuyo_client/infrastructure/dto/models/drawer/drawel_model.dart';
import 'package:uyobuyo_client/infrastructure/services/network_provider.dart';

class DrawerRepository implements IDrawer {
  const DrawerRepository();

  @override
  Future<DrawerModel> getFAQ() async {
    try {
      final Response response = await NetworkProvider.dio.get(NetworkProvider.routes.faq);
      return DrawerModel.fromJson(response.data ?? {});
    } catch (e) {
      return DrawerModel.fromJson({});
    }
  }

  @override
  Future<DrawerModel> getInfo() async {
    try {
      final Response response = await NetworkProvider.dio.get(NetworkProvider.routes.info);
      return DrawerModel.fromJson(response.data ?? {});
    } catch (e) {
      return DrawerModel.fromJson({});
    }
  }

  @override
  Future<DrawerModel> getSupport() async {
    try {
      final Response response = await NetworkProvider.dio.get(NetworkProvider.routes.support);
      return DrawerModel.fromJson(response.data ?? {});
    } catch (e) {
      return DrawerModel.fromJson({});
    }
  }
}
