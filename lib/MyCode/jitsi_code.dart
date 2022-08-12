/*import 'package:jitsi_meet/feature_flag/feature_flag.dart';
import 'package:jitsi_meet/jitsi_meet.dart';
import 'package:zoom/MyCode/auth_code.dart';

class Jitsicode {
  final authcode _authcode = authcode();
  CreateMeet(
      {required String roomName,
      required bool isaudiomuted,
      required bool isvideomuted}) async {
    try {
      FeatureFlag featureFlag = FeatureFlag();
      featureFlag.welcomePageEnabled = false;
      featureFlag.resolution = FeatureFlagVideoResolution
          .MD_RESOLUTION; // Limit video resolution to 360p

      var options = JitsiMeetingOptions(room: roomName)
        ..userDisplayName = _authcode.user!.displayName
        ..userEmail = _authcode.user!.email
        ..userAvatarURL = _authcode.user!.photoURL
        ..audioMuted = isaudiomuted
        ..videoMuted = isvideomuted;

      await JitsiMeet.joinMeeting(options);
    } catch (error) {
      print("error: $error");
    }
  }
}*/
