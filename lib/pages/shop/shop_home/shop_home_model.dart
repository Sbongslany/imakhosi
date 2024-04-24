import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'shop_home_widget.dart' show ShopHomeWidget;
import 'package:flutter/material.dart';

class ShopHomeModel extends FlutterFlowModel<ShopHomeWidget> {
  ///  Local state fields for this page.

  String? shopFilter;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for inpSearch widget.
  FocusNode? inpSearchFocusNode;
  TextEditingController? inpSearchTextController;
  String? Function(BuildContext, String?)? inpSearchTextControllerValidator;
  List<ShopsRecord> simpleSearchResults = [];

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    inpSearchFocusNode?.dispose();
    inpSearchTextController?.dispose();
  }
}
