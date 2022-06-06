import 'package:flutter/material.dart';
import 'package:flutter_application_note/models/Token.dart';

var x = ColorScheme(
    brightness: Brightness.dark,
    primary: Color(getToken("md.sys.color.primary.dark")),
    onPrimary: Color(getToken("md.sys.color.on-primary.dark")),
  primaryContainer: Color(getToken("md.sys.color.primary-container.dark")),
  onPrimaryContainer: Color(getToken("md.sys.color.on-primary-container.dark")),

  secondary: Color(getToken("md.sys.color.secondary.dark")),
    onSecondary: Color(getToken("md.sys.color.on-secondary.dark")),
  secondaryContainer: Color(getToken("md.sys.color.secondary-container.dark")),
  onSecondaryContainer: Color(getToken("md.sys.color.on-secondary-container.dark")),

  error: Color(getToken("md.sys.color.error.dark")),
    onError: Color(getToken("md.sys.color.on-error.dark")),

  background: Color(getToken("md.sys.color.background.dark")),
    onBackground: Color(getToken("md.sys.color.on-background.dark")),
    surface: Color(getToken("md.sys.color.surface.dark")),
    onSurface: Color(getToken("md.sys.color.on-surface.dark")),
  outline: Color(getToken("md.sys.color.outline.dark")),
  shadow: Color(getToken("md.sys.color.shadow.dark")),

);