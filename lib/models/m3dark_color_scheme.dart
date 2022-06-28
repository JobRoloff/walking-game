import 'package:flutter/material.dart';
import 'package:flutter_application_note/models/token.dart';

var m3Dark = ColorScheme(
    brightness: Brightness.dark,
    primary: Color(getToken("primary")),
    onPrimary: Color(getToken("on-primary")),
    secondary: Color(getToken("secondary")),
    onSecondary: Color(getToken("on-secondary")),
    error: Color(getToken("error")),
    onError: Color(getToken("on-error")),
    background: Color(getToken("background")),
    onBackground: Color(getToken("on-background")),
    surface: Color(getToken("surface")),
    onSurface: Color(getToken("on-surface")));
