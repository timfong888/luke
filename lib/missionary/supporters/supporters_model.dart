import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/nav_drawer/nav_drawer_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:provider/provider.dart';

class SupportersModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for ListView widget.
  PagingController<DocumentSnapshot?, UsersRecord>? pagingController;
  Query? pagingQuery;
  List<StreamSubscription?> streamSubscriptions = [];

  // Model for navDrawer component.
  late NavDrawerModel navDrawerModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    navDrawerModel = createModel(context, () => NavDrawerModel());
  }

  void dispose() {
    streamSubscriptions.forEach((s) => s?.cancel());
    navDrawerModel.dispose();
  }

  /// Additional helper methods are added here.

}
