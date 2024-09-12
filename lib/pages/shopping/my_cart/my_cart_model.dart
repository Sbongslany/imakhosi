import '/components/nav_back_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'my_cart_widget.dart' show MyCartWidget;
import 'package:flutter/material.dart';

class MyCartModel extends FlutterFlowModel<MyCartWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for NavBack component.
  late NavBackModel navBackModel;

  @override
  void initState(BuildContext context) {
    navBackModel = createModel(context, () => NavBackModel());
  }

  @override
  void dispose() {
    navBackModel.dispose();
  }
}
