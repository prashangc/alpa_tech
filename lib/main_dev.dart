import 'package:alpa/main_app.dart';

import '../flavors.dart';

void main() async {
  FlavorSettings.flavor = Flavor.dev;
  await intializeApp();
}
