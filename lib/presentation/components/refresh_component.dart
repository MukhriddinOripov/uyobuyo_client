// import 'package:flutter/material.dart';
//
// class RefreshComponent extends StatelessWidget {
//   final Widget child;
//   final Function() onRefresh;
//   final ScrollPhysics? physics;
//
//   RefreshComponent({super.key, required this.child, required this.onRefresh, this.physics});
//
//   final RefreshController refreshController = RefreshController();
//
//   @override
//   Widget build(BuildContext context) {
//     return SmartRefresher(
//       physics: physics,
//       controller: refreshController,
//       header: WaterDropHeader(
//         waterDropColor: AppTheme.colors.secondaryPrimary,
//         completeDuration: const Duration(milliseconds: 0),
//         complete: const SizedBox(),
//       ),
//       onRefresh: () async {
//         try {
//           onRefresh();
//           refreshController.refreshCompleted();
//         } catch (e) {
//           refreshController.refreshFailed();
//         }
//       },
//       child: child,
//     );
//   }
// }
