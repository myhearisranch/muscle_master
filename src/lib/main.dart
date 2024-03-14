import 'package:flutter/material.dart';

void main() {
  // フレーバー
  const flavor = String.fromEnvironment('flavor');

  if (flavor == 'dev') {
    // ここは dev のときだけ
  }

  if (flavor == 'stg') {
    // ここは stg のときだけ
    debugPrint('バナナだぁぁぁ');
  }

  if (flavor == 'prd') {
    // ここは prd のときだけ
  }

  const app = MyApp();
  runApp(app);
}

/// アプリ本体
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

/// ホーム画面
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('バナナ'),
      ),
    );
  }
}

// エラー dev.json
// [CHROME]:[922:922:0314/144030.562070:ERROR:zygote_host_impl_linux.cc(100)] Running as root without --no-sandbox is not supported. See https://crbug.com/638180.
// Failed to launch browser after 3 tries. Command used to launch it: google-chrome --user-data-dir=/tmp/flutter_tools.DMRTYU/flutter_tools_chrome_device.TXLRWT    
// --remote-debugging-port=34233 --disable-background-timer-throttling --disable-extensions --disable-popup-blocking --bwsi --no-first-run
// --no-default-browser-check --disable-default-apps --disable-translate http://localhost:45803
// Failed to launch browser. Make sure you are using an up-to-date Chrome or Edge. Otherwise, consider using -d web-server instead and filing an issue at
// https://github.com/flutter/flutter/issues.

//解決策
// -d web-serverフラグを使用してFlutterを実行します。
// flutter run -d web-server --dart-define-from-file=scripts/flavors/prd.json
// これにより、FlutterアプリケーションがWebサーバーモードで実行され、ブラウザでアプリケーションにアクセスできるようになります。