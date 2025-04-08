import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'a1_intro_model.dart';
export 'a1_intro_model.dart';

class A1IntroWidget extends StatefulWidget {
  const A1IntroWidget({super.key});

  static String routeName = 'a1Intro';
  static String routePath = '/a1Intro';

  @override
  State<A1IntroWidget> createState() => _A1IntroWidgetState();
}

class _A1IntroWidgetState extends State<A1IntroWidget> {
  late A1IntroModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => A1IntroModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await Future.delayed(const Duration(milliseconds: 500));
      if (valueOrDefault<bool>(currentUserDocument?.isRider, false)) {
        context.goNamed(S1welcomeSaradhiCopyWidget.routeName);

        return;
      } else {
        context.goNamed(A2PickupWithoutMapsWidget.routeName);

        return;
      }
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
        backgroundColor: Colors.black,
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            color: Colors.black,
            image: DecorationImage(
              fit: BoxFit.cover,
              alignment: AlignmentDirectional(0.0, 1.0),
              image: Image.asset(
                'assets/images/Coming_(2).gif',
              ).image,
            ),
          ),
        ),
      ),
    );
  }
}
