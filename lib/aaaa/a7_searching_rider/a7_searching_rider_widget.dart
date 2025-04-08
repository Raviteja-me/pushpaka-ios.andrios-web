import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/push_notifications/push_notifications_util.dart';
import '/components/a7extra_money_widget.dart';
import '/components/a8a9reason_for_cancling_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import 'a7_searching_rider_model.dart';
export 'a7_searching_rider_model.dart';

class A7SearchingRiderWidget extends StatefulWidget {
  const A7SearchingRiderWidget({super.key});

  static String routeName = 'a7SearchingRider';
  static String routePath = '/a7SearchingRider';

  @override
  State<A7SearchingRiderWidget> createState() => _A7SearchingRiderWidgetState();
}

class _A7SearchingRiderWidgetState extends State<A7SearchingRiderWidget> {
  late A7SearchingRiderModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => A7SearchingRiderModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await Future.delayed(const Duration(milliseconds: 3000));

      var allRidesRecordReference = AllRidesRecord.collection.doc();
      await allRidesRecordReference.set(createAllRidesRecordData(
        pickUpLocation: FFAppState().pickup,
        dropOffLocation: FFAppState().drop,
        status: 'waiting',
        distance: FFAppState().routeDistance,
        timeDuration: FFAppState().routeDuration,
        userReqVehicle: FFAppState().requestedVehicle,
        pickupString: FFAppState().pickupString,
        dropString: FFAppState().dropString,
        userPhone: currentPhoneNumber,
        userid: currentUserUid,
        extraTip: _model.extra,
      ));
      _model.waitingforRider = AllRidesRecord.getDocumentFromData(
          createAllRidesRecordData(
            pickUpLocation: FFAppState().pickup,
            dropOffLocation: FFAppState().drop,
            status: 'waiting',
            distance: FFAppState().routeDistance,
            timeDuration: FFAppState().routeDuration,
            userReqVehicle: FFAppState().requestedVehicle,
            pickupString: FFAppState().pickupString,
            dropString: FFAppState().dropString,
            userPhone: currentPhoneNumber,
            userid: currentUserUid,
            extraTip: _model.extra,
          ),
          allRidesRecordReference);
      _model.eligiblwFor2kmList = await queryUsersRecordOnce(
        queryBuilder: (usersRecord) => usersRecord
            .where(
              'isRider',
              isEqualTo: true,
            )
            .where(
              'isVerified',
              isEqualTo: true,
            )
            .where(
              'isWorking',
              isEqualTo: true,
            )
            .where(
              'isDriving',
              isEqualTo: false,
            )
            .where(
              'riderVehicle',
              isEqualTo: FFAppState().requestedVehicle,
            ),
      );
      _model.km2Riders = await actions.getNearbyRidersAssending(
        FFAppState().pickup!,
        _model.eligiblwFor2kmList!.toList(),
        2.0,
      );

      await _model.waitingforRider!.reference.update({
        ...mapToFirestore(
          {
            'nearbyRidersList':
                _model.km2Riders?.map((e) => e.reference).toList(),
            'nearbyridesid': _model.km2Riders?.map((e) => e.uid).toList(),
          },
        ),
      });
      triggerPushNotification(
        notificationTitle: 'Ride Alert',
        notificationText: 'Hey You Got A New Ride',
        notificationSound: 'default',
        userRefs: _model.km2Riders!.map((e) => e.reference).toList().toList(),
        initialPageName: 'noticationRide',
        parameterData: {
          'referenceForConformation': _model.waitingforRider?.reference,
          'pickup': FFAppState().pickup,
          'drop': FFAppState().drop,
          'duration': FFAppState().routeDuration,
          'distance': FFAppState().routeDistance,
          'price': FFAppState().price,
          'documentID': _model.waitingforRider?.reference.id,
        },
      );
      while (_model.waitingforRider?.status == 'accepted') {
        context.goNamed(
          A8userWaitingForRiderWidget.routeName,
          queryParameters: {
            'driverLatLng': serializeParam(
              _model.waitingforRider?.riderlocation,
              ParamType.LatLng,
            ),
            'driverPhone': serializeParam(
              _model.waitingforRider?.driverPhone,
              ParamType.String,
            ),
          }.withoutNulls,
        );
      }
      await Future.delayed(const Duration(milliseconds: 300000));
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            'no rider found',
            style: TextStyle(
              color: FlutterFlowTheme.of(context).primaryText,
            ),
          ),
          duration: Duration(milliseconds: 4000),
          backgroundColor: Colors.white,
        ),
      );

      context.goNamed(A1IntroWidget.routeName);
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
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Colors.black,
        body: SafeArea(
          top: true,
          child: Container(
            decoration: BoxDecoration(),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Align(
                  alignment: AlignmentDirectional(0.0, 1.0),
                  child: Stack(
                    alignment: AlignmentDirectional(0.0, -1.0),
                    children: [
                      Container(
                        width: 361.0,
                        height: 528.0,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: Image.asset(
                              'assets/images/Untitled_design_(4).gif',
                            ).image,
                          ),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0.0, -1.0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 50.0, 0.0, 0.0),
                          child: Text(
                            FFLocalizations.of(context).getText(
                              '3isyd92g' /* Searchig in 2km Radius ...    */,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .titleMedium
                                .override(
                                  fontFamily: 'Readex Pro',
                                  color: Color(0xFF969798),
                                  letterSpacing: 0.0,
                                ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0.0, -1.0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 10.0, 0.0, 0.0),
                          child: Text(
                            FFLocalizations.of(context).getText(
                              '0mmnocas' /* Searching for Rider... */,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .headlineLarge
                                .override(
                                  fontFamily: 'Outfit',
                                  color: Colors.white,
                                  fontSize: 30.0,
                                  letterSpacing: 0.0,
                                ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  constraints: BoxConstraints(
                    maxWidth: 500.0,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(0.0),
                      bottomRight: Radius.circular(0.0),
                      topLeft: Radius.circular(0.0),
                      topRight: Radius.circular(0.0),
                    ),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Stack(
                        children: [
                          if (FFAppState().requestedVehicle == 'bike')
                            Padding(
                              padding: EdgeInsets.all(10.0),
                              child: Container(
                                width: 96.0,
                                height: 96.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: Image.asset(
                                      'assets/images/bike_saaradhi.png',
                                    ).image,
                                  ),
                                  shape: BoxShape.circle,
                                ),
                              ),
                            ),
                          if (FFAppState().requestedVehicle == 'auto')
                            Padding(
                              padding: EdgeInsets.all(10.0),
                              child: Container(
                                width: 96.0,
                                height: 96.0,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: Image.asset(
                                      'assets/images/auto_saaradji.png',
                                    ).image,
                                  ),
                                  shape: BoxShape.circle,
                                ),
                              ),
                            ),
                        ],
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text(
                                FFLocalizations.of(context).getText(
                                  'n9w0st6d' /* Fix Rs.30 upto 3 Km */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .headlineSmall
                                    .override(
                                      fontFamily: 'Outfit',
                                      color: Color(0xFFFDFDFD),
                                      fontSize: 16.0,
                                      letterSpacing: 0.0,
                                    ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                FFLocalizations.of(context).getText(
                                  'eqt0sqss' /* After 1 km = Rs.10 */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      color: Color(0xFFB8A7A7),
                                      fontSize: 15.0,
                                      letterSpacing: 0.0,
                                    ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text(
                                FFLocalizations.of(context).getText(
                                  'ekzvik70' /* available Riders In 
2 Km Radi... */
                                  ,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyLarge
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      color: Color(0xFFCBBDBD),
                                      fontSize: 14.0,
                                      letterSpacing: 0.0,
                                    ),
                              ),
                            ].divide(SizedBox(width: 5.0)),
                          ),
                        ],
                      ),
                    ].divide(SizedBox(width: 15.0)),
                  ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(4.0),
                      child: FFButtonWidget(
                        onPressed: () async {
                          await showModalBottomSheet(
                            isScrollControlled: true,
                            backgroundColor: Colors.transparent,
                            enableDrag: false,
                            context: context,
                            builder: (context) {
                              return GestureDetector(
                                onTap: () {
                                  FocusScope.of(context).unfocus();
                                  FocusManager.instance.primaryFocus?.unfocus();
                                },
                                child: Padding(
                                  padding: MediaQuery.viewInsetsOf(context),
                                  child: A8a9reasonForCanclingWidget(),
                                ),
                              );
                            },
                          ).then((value) => safeSetState(() {}));
                        },
                        text: FFLocalizations.of(context).getText(
                          '0q4dso7a' /* Cancle */,
                        ),
                        options: FFButtonOptions(
                          width: 105.0,
                          height: 42.0,
                          padding: EdgeInsetsDirectional.fromSTEB(
                              16.0, 0.0, 16.0, 0.0),
                          iconPadding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: Color(0xFFA90000),
                          textStyle:
                              FlutterFlowTheme.of(context).titleSmall.override(
                                    fontFamily: 'Readex Pro',
                                    color: Colors.white,
                                    letterSpacing: 0.0,
                                  ),
                          elevation: 3.0,
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(12.0),
                      child: FFButtonWidget(
                        onPressed: () async {
                          await showModalBottomSheet(
                            isScrollControlled: true,
                            backgroundColor: Colors.transparent,
                            enableDrag: false,
                            context: context,
                            builder: (context) {
                              return GestureDetector(
                                onTap: () {
                                  FocusScope.of(context).unfocus();
                                  FocusManager.instance.primaryFocus?.unfocus();
                                },
                                child: Padding(
                                  padding: MediaQuery.viewInsetsOf(context),
                                  child: A7extraMoneyWidget(),
                                ),
                              );
                            },
                          ).then((value) => safeSetState(() {}));
                        },
                        text: FFLocalizations.of(context).getText(
                          'sj6uts0y' /* Edit Ride */,
                        ),
                        options: FFButtonOptions(
                          height: 40.0,
                          padding: EdgeInsetsDirectional.fromSTEB(
                              16.0, 0.0, 16.0, 0.0),
                          iconPadding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: Color(0xFFD3CDCD),
                          textStyle:
                              FlutterFlowTheme.of(context).titleSmall.override(
                                    fontFamily: 'Readex Pro',
                                    color: Colors.black,
                                    letterSpacing: 0.0,
                                  ),
                          elevation: 2.0,
                          borderSide: BorderSide(
                            color: Color(0xFFF8F8F8),
                          ),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                    ),
                  ],
                ),
                Align(
                  alignment: AlignmentDirectional(0.0, 1.0),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(5.0, 10.0, 0.0, 0.0),
                    child: Container(
                      width: 150.0,
                      height: 33.0,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: Image.asset(
                            'assets/images/Untitled_design_(1).png',
                          ).image,
                        ),
                        borderRadius: BorderRadius.circular(24.0),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
