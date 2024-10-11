import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'main_card_menu_model.dart';
export 'main_card_menu_model.dart';

class MainCardMenuWidget extends StatefulWidget {
  /// Card with name price description and owner of product include image make
  /// width 157 height 180
  const MainCardMenuWidget({
    super.key,
    required this.name,
    required this.pricw,
    required this.image,
    required this.description,
  });

  final String? name;
  final double? pricw;
  final String? image;
  final String? description;

  @override
  State<MainCardMenuWidget> createState() => _MainCardMenuWidgetState();
}

class _MainCardMenuWidgetState extends State<MainCardMenuWidget> {
  late MainCardMenuModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MainCardMenuModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 192.0,
      height: 210.0,
      decoration: BoxDecoration(
        color: const Color(0x6BFFFFFF),
        boxShadow: const [
          BoxShadow(
            blurRadius: 4.0,
            color: Color(0x33000000),
            offset: Offset(
              0.0,
              2.0,
            ),
            spreadRadius: 0.0,
          )
        ],
        borderRadius: BorderRadius.circular(12.0),
        border: Border.all(
          color: FlutterFlowTheme.of(context).secondary,
        ),
      ),
      child: Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(8.0, 8.0, 8.0, 0.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.network(
                widget.image!,
                width: 241.0,
                height: 94.0,
                fit: BoxFit.cover,
              ),
            ),
            Text(
              valueOrDefault<String>(
                widget.name,
                '-',
              ),
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Raleway',
                    color: FlutterFlowTheme.of(context).primaryBackground,
                    letterSpacing: 0.0,
                    fontWeight: FontWeight.w600,
                  ),
            ),
            Text(
              formatNumber(
                widget.pricw,
                formatType: FormatType.custom,
                currency: 'R',
                format: '',
                locale: '',
              ),
              style: FlutterFlowTheme.of(context).bodySmall.override(
                    fontFamily: 'Raleway',
                    color: FlutterFlowTheme.of(context).primaryBackground,
                    fontSize: 11.0,
                    letterSpacing: 0.0,
                  ),
            ),
            Text(
              valueOrDefault<String>(
                widget.description,
                '-',
              ),
              style: FlutterFlowTheme.of(context).labelSmall.override(
                    fontFamily: 'Raleway',
                    color: FlutterFlowTheme.of(context).secondaryText,
                    fontSize: 10.0,
                    letterSpacing: 0.0,
                  ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 5.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    width: 20.0,
                    height: 20.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).accent2,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10.0),
                      child: Image.network(
                        'https://images.unsplash.com/photo-1724710152067-f5cda1ed9820?w=200&h=200',
                        width: 10.0,
                        height: 10.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Text(
                    'John Doe',
                    style: FlutterFlowTheme.of(context).labelSmall.override(
                          fontFamily: 'Raleway',
                          color: FlutterFlowTheme.of(context).secondaryText,
                          fontSize: 9.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w300,
                        ),
                  ),
                ].divide(const SizedBox(width: 4.0)),
              ),
            ),
          ].divide(const SizedBox(height: 3.0)),
        ),
      ),
    );
  }
}
