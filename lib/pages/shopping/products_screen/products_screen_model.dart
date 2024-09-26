import '/components/products_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'products_screen_widget.dart' show ProductsScreenWidget;
import 'package:flutter/material.dart';

class ProductsScreenModel extends FlutterFlowModel<ProductsScreenWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // Models for products dynamic component.
  late FlutterFlowDynamicModels<ProductsModel> productsModels1;
  // Models for products dynamic component.
  late FlutterFlowDynamicModels<ProductsModel> productsModels2;
  // Models for products dynamic component.
  late FlutterFlowDynamicModels<ProductsModel> productsModels3;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {
    productsModels1 = FlutterFlowDynamicModels(() => ProductsModel());
    productsModels2 = FlutterFlowDynamicModels(() => ProductsModel());
    productsModels3 = FlutterFlowDynamicModels(() => ProductsModel());
  }

  @override
  void dispose() {
    tabBarController?.dispose();
    productsModels1.dispose();
    productsModels2.dispose();
    productsModels3.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
