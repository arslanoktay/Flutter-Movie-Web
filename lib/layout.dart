import 'dart:ui';

import 'package:flutter/material.dart';

class AppLayout extends StatefulWidget { // dinamik data olacako yüzden stateful
  const AppLayout({super.key});

  @override
  State createState() {
    return _AppLaoutState();
  }
}

class _AppLaoutState extends State { // statefull olduğu için state tanımlanmalı
  @override
  Widget build(BuildContext context) {
    return Container( // background olması için mecburi container içine girecek
      // Background image
      decoration: const BoxDecoration(
        image: DecorationImage(image: AssetImage("assets/img/bg.jpg"), fit: BoxFit.cover)
      ),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 20.0, sigmaY: 20.0), // arkaplan image blurlamak için, child imageları etkilemez!
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // First column for left pane section
            Container(
              width: 170,
              child: Column(),
              color: Colors.indigo.withOpacity(0.95),
            ),
            // Header ve MainPage
            Expanded(
              
              child: Column(
                children: [
                  // Header
                  Container(
                    height: 120,
                    color: Colors.indigo.withOpacity(0.8),
                    child: Row(),
                  ),
                  // Filter
                  Container(
                    height: 120,
                    color: Colors.deepPurple.withOpacity(0.60),
                    child: Row(),
                  ),
                  // Main Pane
                  const Expanded(
                    child: Center(
                      child: Text("Hello world!",),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}