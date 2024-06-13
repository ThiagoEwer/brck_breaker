import 'dart:async';

import 'package:flame/collisions.dart';                         // Add this import
import 'package:flame/components.dart';
import 'package:flutter/material.dart';

import '../brick_breaker.dart';

class PlayArea extends RectangleComponent with HasGameReference<BrickBreaker> {
  PlayArea()
      : super(
          paint: Paint()..color = Color.fromARGB(255, 4, 3, 0),
          children: [RectangleHitbox()],                        // Add this parameter
        );

  @override
  FutureOr<void> onLoad() async {
    super.onLoad();
    size = Vector2(game.width, game.height);
  }
}