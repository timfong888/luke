import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'bottom_sheet_gifts_model.dart';
export 'bottom_sheet_gifts_model.dart';

class BottomSheetGiftsWidget extends StatefulWidget {
  const BottomSheetGiftsWidget({
    Key? key,
    required this.posterUser,
    required this.giverUser,
    this.postRef,
  }) : super(key: key);

  final DocumentReference? posterUser;
  final DocumentReference? giverUser;
  final DocumentReference? postRef;

  @override
  _BottomSheetGiftsWidgetState createState() => _BottomSheetGiftsWidgetState();
}

class _BottomSheetGiftsWidgetState extends State<BottomSheetGiftsWidget> {
  late BottomSheetGiftsModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BottomSheetGiftsModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Container(
      width: MediaQuery.of(context).size.width * 1.0,
      height: MediaQuery.of(context).size.height * 1.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(0.0, 25.0, 0.0, 25.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Flexible(
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  FlutterFlowIconButton(
                    borderColor: FlutterFlowTheme.of(context).alternate,
                    borderRadius: 20.0,
                    borderWidth: 1.0,
                    buttonSize: 40.0,
                    fillColor: FlutterFlowTheme.of(context).alternate,
                    icon: Icon(
                      Icons.flare,
                      color: FlutterFlowTheme.of(context).warning,
                      size: 24.0,
                    ),
                    onPressed: () async {
                      final repliesCreateData = createRepliesRecordData(
                        postID: widget.postRef,
                        replyUser: widget.giverUser,
                        replyDate: dateTimeFromSecondsSinceEpoch(
                            getCurrentTimestamp.secondsSinceEpoch),
                        replyGift: 'flare',
                      );
                      await RepliesRecord.collection
                          .doc()
                          .set(repliesCreateData);
                      Navigator.pop(context);
                      await actions.closeKeyboardAction();
                    },
                  ),
                  FlutterFlowIconButton(
                    borderColor: FlutterFlowTheme.of(context).alternate,
                    borderRadius: 20.0,
                    borderWidth: 1.0,
                    buttonSize: 40.0,
                    fillColor: FlutterFlowTheme.of(context).alternate,
                    icon: Icon(
                      Icons.favorite_sharp,
                      color: FlutterFlowTheme.of(context).warning,
                      size: 24.0,
                    ),
                    onPressed: () async {
                      Navigator.pop(context);
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
