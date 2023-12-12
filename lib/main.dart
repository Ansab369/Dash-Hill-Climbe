import 'package:flame/components.dart';
import 'package:flame/effects.dart';
import 'package:flame/flame.dart';
import 'package:flame/game.dart';
import 'package:flame_tiled/flame_tiled.dart';
import 'package:flutter/widgets.dart' hide Animation, Image;

void main() {
  runApp(GameWidget(game: TiledGame()));
}

class TiledGame extends FlameGame {
  late TiledComponent mapComponent;

  @override
  Future<void> onLoad() async {
    await super.onLoad();
    mapComponent = await TiledComponent.load('mapbase1.tmx', Vector2.all(32));
    add(mapComponent);
    
  }
}