import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'empty_reply_model.dart';
export 'empty_reply_model.dart';

class EmptyReplyWidget extends StatefulWidget {
  const EmptyReplyWidget({Key? key}) : super(key: key);

  @override
  _EmptyReplyWidgetState createState() => _EmptyReplyWidgetState();
}

class _EmptyReplyWidgetState extends State<EmptyReplyWidget> {
  late EmptyReplyModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EmptyReplyModel());

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
      height: MediaQuery.of(context).size.height * 0.25,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
      ),
      alignment: AlignmentDirectional(0.0, 0.0),
      child: Text(
        'So empty!',
        style: FlutterFlowTheme.of(context).bodyMedium.override(
              fontFamily: 'DM Sans',
              fontSize: 24.0,
            ),
      ),
    );
  }
}
