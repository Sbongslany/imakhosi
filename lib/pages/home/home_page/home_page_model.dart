import '/components/shop_card_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'home_page_widget.dart' show HomePageWidget;
import 'package:flutter/material.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for shopCard component.
  late ShopCardModel shopCardModel1;
  // Model for shopCard component.
  late ShopCardModel shopCardModel2;
  // Model for shopCard component.
  late ShopCardModel shopCardModel3;

  @override
  void initState(BuildContext context) {
    shopCardModel1 = createModel(context, () => ShopCardModel());
    shopCardModel2 = createModel(context, () => ShopCardModel());
    shopCardModel3 = createModel(context, () => ShopCardModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    shopCardModel1.dispose();
    shopCardModel2.dispose();
    shopCardModel3.dispose();
  }
}
