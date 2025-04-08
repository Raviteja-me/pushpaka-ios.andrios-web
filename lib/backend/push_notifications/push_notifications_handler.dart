import 'dart:async';

import 'serialization_util.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';


final _handledMessageIds = <String?>{};

class PushNotificationsHandler extends StatefulWidget {
  const PushNotificationsHandler({Key? key, required this.child})
      : super(key: key);

  final Widget child;

  @override
  _PushNotificationsHandlerState createState() =>
      _PushNotificationsHandlerState();
}

class _PushNotificationsHandlerState extends State<PushNotificationsHandler> {
  bool _loading = false;

  Future handleOpenedPushNotification() async {
    if (isWeb) {
      return;
    }

    final notification = await FirebaseMessaging.instance.getInitialMessage();
    if (notification != null) {
      await _handlePushNotification(notification);
    }
    FirebaseMessaging.onMessageOpenedApp.listen(_handlePushNotification);
  }

  Future _handlePushNotification(RemoteMessage message) async {
    if (_handledMessageIds.contains(message.messageId)) {
      return;
    }
    _handledMessageIds.add(message.messageId);

    safeSetState(() => _loading = true);
    try {
      final initialPageName = message.data['initialPageName'] as String;
      final initialParameterData = getInitialParameterData(message.data);
      final parametersBuilder = parametersBuilderMap[initialPageName];
      if (parametersBuilder != null) {
        final parameterData = await parametersBuilder(initialParameterData);
        if (mounted) {
          context.pushNamed(
            initialPageName,
            pathParameters: parameterData.pathParameters,
            extra: parameterData.extra,
          );
        } else {
          appNavigatorKey.currentContext?.pushNamed(
            initialPageName,
            pathParameters: parameterData.pathParameters,
            extra: parameterData.extra,
          );
        }
      }
    } catch (e) {
      print('Error: $e');
    } finally {
      safeSetState(() => _loading = false);
    }
  }

  @override
  void initState() {
    super.initState();
    SchedulerBinding.instance.addPostFrameCallback((_) {
      handleOpenedPushNotification();
    });
  }

  @override
  Widget build(BuildContext context) => _loading
      ? Center(
          child: SizedBox(
            width: 50.0,
            height: 50.0,
            child: SpinKitHourGlass(
              color: FlutterFlowTheme.of(context).primary,
              size: 50.0,
            ),
          ),
        )
      : widget.child;
}

class ParameterData {
  const ParameterData(
      {this.requiredParams = const {}, this.allParams = const {}});
  final Map<String, String?> requiredParams;
  final Map<String, dynamic> allParams;

  Map<String, String> get pathParameters => Map.fromEntries(
        requiredParams.entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
  Map<String, dynamic> get extra => Map.fromEntries(
        allParams.entries.where((e) => e.value != null),
      );

  static Future<ParameterData> Function(Map<String, dynamic>) none() =>
      (data) async => ParameterData();
}

final parametersBuilderMap =
    <String, Future<ParameterData> Function(Map<String, dynamic>)>{
  'a0LoginPage': ParameterData.none(),
  'a5DropWithMaps': ParameterData.none(),
  'a0OtpPage': ParameterData.none(),
  'a2PickupWithoutMaps': ParameterData.none(),
  'a3PickupWithMaps': (data) async => ParameterData(
        allParams: {
          'pickupLatlng': getParameter<LatLng>(data, 'pickupLatlng'),
          'pickupString': getParameter<String>(data, 'pickupString'),
        },
      ),
  'a1Intro': ParameterData.none(),
  'a7SearchingRider': ParameterData.none(),
  'a6ConfimVehicle': (data) async => ParameterData(
        allParams: {
          'pickupString': getParameter<String>(data, 'pickupString'),
          'dropString': getParameter<String>(data, 'dropString'),
          'distance': getParameter<String>(data, 'distance'),
          'time': getParameter<String>(data, 'time'),
          'pickupLatlng': getParameter<LatLng>(data, 'pickupLatlng'),
          'dropLatlng': getParameter<LatLng>(data, 'dropLatlng'),
          'price': getParameter<String>(data, 'price'),
        },
      ),
  'a9AiRide': ParameterData.none(),
  's1welcomeSaradhi': ParameterData.none(),
  's2KnowMore': ParameterData.none(),
  's3WomenModeDetails': ParameterData.none(),
  's4ProfileDetailsRider': ParameterData.none(),
  's5vehicleDetailsRider': (data) async => ParameterData(
        allParams: {
          'ref': getParameter<DocumentReference>(data, 'ref'),
        },
      ),
  's6adharDetailsRider': (data) async => ParameterData(
        allParams: {
          'ref': getParameter<DocumentReference>(data, 'ref'),
          'vehicle': getParameter<String>(data, 'vehicle'),
        },
      ),
  's7RiderProfileToEdit': ParameterData.none(),
  's8workHomePage': ParameterData.none(),
  's1welcomeSaradhiCopy': ParameterData.none(),
  's9RideHistory': ParameterData.none(),
  's9earnings': ParameterData.none(),
  'a00PushpakaAppPolicy': ParameterData.none(),
  'a8userWaitingForRider': (data) async => ParameterData(
        allParams: {
          'driverLatLng': getParameter<LatLng>(data, 'driverLatLng'),
          'driverPhone': getParameter<String>(data, 'driverPhone'),
        },
      ),
  'a00PushpakaAppPolicyCopy': ParameterData.none(),
  'noticationRide': (data) async => ParameterData(
        allParams: {
          'referenceForConformation':
              getParameter<DocumentReference>(data, 'referenceForConformation'),
          'pickup': getParameter<LatLng>(data, 'pickup'),
          'drop': getParameter<LatLng>(data, 'drop'),
          'duration': getParameter<String>(data, 'duration'),
          'distance': getParameter<String>(data, 'distance'),
          'price': getParameter<String>(data, 'price'),
          'documentID': getParameter<String>(data, 'documentID'),
        },
      ),
  'z1DrawerCopy': ParameterData.none(),
  'test': ParameterData.none(),
};

Map<String, dynamic> getInitialParameterData(Map<String, dynamic> data) {
  try {
    final parameterDataStr = data['parameterData'];
    if (parameterDataStr == null ||
        parameterDataStr is! String ||
        parameterDataStr.isEmpty) {
      return {};
    }
    return jsonDecode(parameterDataStr) as Map<String, dynamic>;
  } catch (e) {
    print('Error parsing parameter data: $e');
    return {};
  }
}
