import 'package:flutter/material.dart';

class ScreenAuthentication extends StatefulWidget {
  const ScreenAuthentication({Key? key}) : super(key: key);

  @override
  State<ScreenAuthentication> createState() => _ScreenAuthenticationState();
}

class _ScreenAuthenticationState extends State<ScreenAuthentication> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0, 40, 0, 20),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25),
                  ),
                  child: Image.asset(
                    'assets/images/logo_ariareads_05.png',
                    height: 300,
                    fit: BoxFit.fitHeight,
                  ),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 40, 0, 20),
            child: Placeholder(),
          )
        ],
      ),
    );
  }
}
