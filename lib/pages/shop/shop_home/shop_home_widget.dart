import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'shop_home_model.dart';
export 'shop_home_model.dart';

class ShopHomeWidget extends StatefulWidget {
  const ShopHomeWidget({super.key});

  @override
  State<ShopHomeWidget> createState() => _ShopHomeWidgetState();
}

class _ShopHomeWidgetState extends State<ShopHomeWidget> {
  late ShopHomeModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ShopHomeModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primary,
        body: NestedScrollView(
          floatHeaderSlivers: true,
          headerSliverBuilder: (context, _) => [
            SliverAppBar(
              expandedHeight: 70.0,
              pinned: false,
              floating: false,
              backgroundColor: FlutterFlowTheme.of(context).primary,
              automaticallyImplyLeading: false,
              leading: Icon(
                Icons.menu,
                color: FlutterFlowTheme.of(context).secondary,
                size: 34.0,
              ),
              title: Text(
                'iMakhosi',
                style: FlutterFlowTheme.of(context).headlineMedium.override(
                      fontFamily: 'Montserrat',
                      color: Colors.white,
                      fontSize: 22.0,
                      letterSpacing: 0.0,
                    ),
              ),
              actions: [
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
                  child: Icon(
                    Icons.wechat_rounded,
                    color: FlutterFlowTheme.of(context).secondary,
                    size: 34.0,
                  ),
                ),
              ],
              flexibleSpace: FlexibleSpaceBar(
                background: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.network(
                    'https://images.unsplash.com/photo-1511208687438-2c5a5abb810c?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHwxfHx3aWxkfGVufDB8fHx8MTcxMzcxMTU4N3ww&ixlib=rb-4.0.3&q=80&w=1080',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              centerTitle: true,
            )
          ],
          body: Builder(
            builder: (context) {
              return Container(
                width: double.infinity,
                height: double.infinity,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: CachedNetworkImageProvider(
                      'https://images.unsplash.com/photo-1511208687438-2c5a5abb810c?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHw3fHxsaW9ufGVufDB8fHx8MTcxMzcxNzM3MXww&ixlib=rb-4.0.3&q=80&w=1080',
                    ),
                  ),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(0.0),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(
                      sigmaX: 2.0,
                      sigmaY: 2.0,
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
