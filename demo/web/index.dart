import 'package:polymer/init.dart';
import 'package:polymer/polymer.dart';
import "dart:html";
import "package:demo_custom_elements/demo.dart";

import "package:logging/logging.dart";
import 'package:polymer_interop/polymer_interop.dart';

main() async {

  Logger.root.level = Level.FINE;
  Logger.root.onRecord.listen((LogRecord rec) {
    print('${rec.level.name}: ${rec.time}: ${rec.loggerName} - ${rec.message}');
  });

  await initPolymer(strategy:checkForEs6ProxySupport());
}
