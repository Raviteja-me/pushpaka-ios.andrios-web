import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 's1welcome_saradhi_copy_model.dart';
export 's1welcome_saradhi_copy_model.dart';

class S1welcomeSaradhiCopyWidget extends StatefulWidget {
  const S1welcomeSaradhiCopyWidget({super.key});

  static String routeName = 's1welcomeSaradhiCopy';
  static String routePath = '/s1welcomeSaradhiCopy';

  @override
  State<S1welcomeSaradhiCopyWidget> createState() =>
      _S1welcomeSaradhiCopyWidgetState();
}

class _S1welcomeSaradhiCopyWidgetState
    extends State<S1welcomeSaradhiCopyWidget> {
  late S1welcomeSaradhiCopyModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => S1welcomeSaradhiCopyModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await Future.delayed(const Duration(milliseconds: 1000));

      context.goNamed(S8workHomePageWidget.routeName);
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Color(0xFFF2F2F2),
        body: SafeArea(
          top: true,
          child: Align(
            alignment: AlignmentDirectional(0.0, 0.0),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(24.0, 24.0, 24.0, 24.0),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                      children: [
                        Align(
                          alignment: AlignmentDirectional(0.0, 0.0),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                20.0, 0.0, 0.0, 0.0),
                            child: Container(
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: Image.asset(
                                    'assets/images/GGG.png',
                                  ).image,
                                ),
                                borderRadius: BorderRadius.circular(24.0),
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8.0),
                                child: Image.asset(
                                  'assets/images/GGG.png',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ].divide(SizedBox(height: 50.0)),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
