import 'package:flutter/material.dart';
import 'package:flutter_application_note/models/token.dart';

var m3Dark = ColorScheme(
  brightness: Brightness.dark,
  background: Color(getToken("background")),
  onBackground: Color(getToken("on-background")),

  error: Color(getToken("error")),
  onError: Color(getToken("on-error")),
  surface: Color(getToken("surface")),
  onSurface: Color(getToken("on-surface")),

  primary: Color(getToken("primary")),
  onPrimary: Color(getToken("on-primary")),
  secondary: Color(getToken("secondary")),
  onSecondary: Color(getToken("on-secondary")),

  primaryContainer: Color(getToken("primary-container")),
  onPrimaryContainer: Color(getToken("on-primary-container")),

  secondaryContainer: Color(getToken("secondary-container")),
  onSecondaryContainer: Color(getToken("on-secondary-container")),

  outline: Color(getToken("outline")),
  shadow: Color(getToken("shadow")),

);