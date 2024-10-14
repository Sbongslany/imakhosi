import '/components/main_card_menu_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'home_shopping_widget.dart' show HomeShoppingWidget;
import 'package:flutter/material.dart';

class HomeShoppingModel extends FlutterFlowModel<HomeShoppingWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Models for mainCardMenu dynamic component.
  late FlutterFlowDynamicModels<MainCardMenuModel> mainCardMenuModels;

  @override
  void initState(BuildContext context) {
    mainCardMenuModels = FlutterFlowDynamicModels(() => MainCardMenuModel());
  }

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();

    mainCardMenuModels.dispose();
  }
}
