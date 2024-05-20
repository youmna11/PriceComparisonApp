import 'package:firebase_messaging/firebase_messaging.dart';

class FirebaseNotifications{
  final _firebaseMessaging = FirebaseMessaging.instance;

  Future<void> initNotifications()async{
    await _firebaseMessaging.requestPermission();
    String? token = await _firebaseMessaging.getToken();
    print("Tokek: $token");
    handleBackgroundNotification();
  }
  void handleMessage(RemoteMessage? message){
    if(message==null)return;
  }
  Future handleBackgroundNotification()async{
    FirebaseMessaging.instance.getInitialMessage().then(handleMessage);
    FirebaseMessaging.onMessageOpenedApp.listen(handleMessage);

  }

}