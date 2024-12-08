import 'package:path/path.dart' as p;

import '../../gen/assets.gen.dart';

extension AssetGenImageEx on AssetGenImage {
  String get filename => p.basename(path);
}
