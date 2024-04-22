import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'review_widget.dart' show ReviewWidget;
import 'package:flutter/material.dart';

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
