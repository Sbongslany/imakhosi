import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'review_widget.dart' show ReviewWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ReviewModel extends FlutterFlowModel<ReviewWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for InputRating widget.
  String? inputRatingValue;
  FormFieldController<String>? inputRatingValueController;
  // State field(s) for InputReview widget.
  FocusNode? inputReviewFocusNode;
  TextEditingController? inputReviewTextController;
  String? Function(BuildContext, String?)? inputReviewTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    inputReviewFocusNode?.dispose();
    inputReviewTextController?.dispose();
  }
}
