import '/components/nav_back_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'settings_widget.dart' show SettingsWidget;
import 'package:flutter/material.dart';

class SettingsModel extends FlutterFlowModel<SettingsWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for NavBack component.
  late NavBackModel navBackModel;
  // State field(s) for SwitchActive widget.
  bool? switchActiveValue;
  // State field(s) for SwitchPhone widget.
  bool? switchPhoneValue;
  // State field(s) for SwitchMaps widget.
  bool? switchMapsValue;
  // State field(s) for SwitchAddress widget.
  bool? switchAddressValue;

  @override
  void initState(BuildContext context) {
    navBackModel = createModel(context, () => NavBackModel());
  }

  @override
  void dispose() {
    navBackModel.dispose();
  }
}
