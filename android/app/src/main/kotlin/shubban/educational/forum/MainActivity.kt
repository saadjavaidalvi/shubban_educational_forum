package shubban.educational.forum

import io.flutter.embedding.android.FlutterActivity


class MainActivity: FlutterActivity() {
   /*override fun onCreate(savedInstanceState:Bundle) {
    super.onCreate(savedInstanceState)

    receiver:HardwareButtonReceiver = HardwareButtonReceiver()

    registerMediaButtonEventReceiver(receiver)

}*/
}

/*private fun HardwareButtonReceiver implements BroadcastReceiver {
     void onReceive(Intent intent) {
          KeyEvent e = (KeyEvent) intent.getExtra(Intent.EXTRA_KEY_EVENT); 
          if(e.getKeyCode() == KeyEvent.KEYCODE_VOLUME_UP) {
              launchApp();
          }
     } 
}

private fun launchApp() {
    Intent intent = new Intent(getApplicationContext(), ExampleActivity.class);
    intent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK | Intent.FLAG_ACTIVITY_CLEAR_TOP | Intent.FLAG_ACTIVITY_SINGLE_TOP);
    startActivity(intent);
}
*/