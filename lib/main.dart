import 'package:flame/flame.dart';
import 'package:flame/game.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:pixel_adventure/pixel_adventure.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //The below awaits ensure that the joystick is not set before the screen switches to fullscreen and landscape
  await Flame.device.fullScreen();
  await Flame.device.setLandscape();

  final PixelAdventure game = PixelAdventure();
  runApp(
    GameWidget(game: kDebugMode ? PixelAdventure() : game),
  ); //kDebugMode let's us know if the app is in debug mode, so we can reload the app on changes during testing
}
