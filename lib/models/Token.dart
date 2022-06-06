
import 'package:flutter/material.dart';

// class MaterialToken {
//   String id;
//   String value;
//
//   MaterialToken( { required this.id, required this.value});
//
//   factory MaterialToken.fromJson(Map<String, dynamic> json){
//     return MaterialToken(
//         id: json[],
//         value: ''
//     );
//   }
// }


//search list of maps for a key. return the key's value
int getToken (String tokenName){
  int listIndex = materialTokens.indexWhere((aMap) => aMap.containsValue(tokenName));
  String tokenId = materialTokens[listIndex]["value"];
  String finalTokenId = tokenId.substring(1);
  return int.parse("0xFF" + finalTokenId);
}



List<Map<String, dynamic>> materialTokens =
[
  {
    "class": "token",
    "type": "color",
    "id": "md.sys.color.primary.light",
    "name": "md.sys.color.primary.light",
    "value": "#9a4521",
    "description": "",
    "category_id": "sys.color.light",
    "last_updated_by": "Material",
    "last_updated": "Fri, 03 Jun 2022 14:31:26 GMT",
    "tags": [
      "md",
      "sys",
      "color",
      "primary",
      "light",
      "color"
    ]
  },
  {
    "class": "token",
    "type": "color",
    "id": "md.sys.color.on-primary.light",
    "name": "md.sys.color.on-primary.light",
    "value": "#ffffff",
    "description": "",
    "category_id": "sys.color.light",
    "last_updated_by": "Material",
    "last_updated": "Fri, 03 Jun 2022 14:31:26 GMT",
    "tags": [
      "md",
      "sys",
      "color",
      "on-primary",
      "light",
      "color"
    ]
  },
  {
    "class": "token",
    "type": "color",
    "id": "md.sys.color.primary-container.light",
    "name": "md.sys.color.primary-container.light",
    "value": "#ffdbcd",
    "description": "",
    "category_id": "sys.color.light",
    "last_updated_by": "Material",
    "last_updated": "Fri, 03 Jun 2022 14:31:26 GMT",
    "tags": [
      "md",
      "sys",
      "color",
      "primary-container",
      "light",
      "color"
    ]
  },
  {
    "class": "token",
    "type": "color",
    "id": "md.sys.color.on-primary-container.light",
    "name": "md.sys.color.on-primary-container.light",
    "value": "#380d00",
    "description": "",
    "category_id": "sys.color.light",
    "last_updated_by": "Material",
    "last_updated": "Fri, 03 Jun 2022 14:31:26 GMT",
    "tags": [
      "md",
      "sys",
      "color",
      "on-primary-container",
      "light",
      "color"
    ]
  },
  {
    "class": "token",
    "type": "color",
    "id": "md.sys.color.secondary.light",
    "name": "md.sys.color.secondary.light",
    "value": "#77574b",
    "description": "",
    "category_id": "sys.color.light",
    "last_updated_by": "Material",
    "last_updated": "Fri, 03 Jun 2022 14:31:26 GMT",
    "tags": [
      "md",
      "sys",
      "color",
      "secondary",
      "light",
      "color"
    ]
  },
  {
    "class": "token",
    "type": "color",
    "id": "md.sys.color.on-secondary.light",
    "name": "md.sys.color.on-secondary.light",
    "value": "#ffffff",
    "description": "",
    "category_id": "sys.color.light",
    "last_updated_by": "Material",
    "last_updated": "Fri, 03 Jun 2022 14:31:26 GMT",
    "tags": [
      "md",
      "sys",
      "color",
      "on-secondary",
      "light",
      "color"
    ]
  },
  {
    "class": "token",
    "type": "color",
    "id": "md.sys.color.secondary-container.light",
    "name": "md.sys.color.secondary-container.light",
    "value": "#ffdbcd",
    "description": "",
    "category_id": "sys.color.light",
    "last_updated_by": "Material",
    "last_updated": "Fri, 03 Jun 2022 14:31:26 GMT",
    "tags": [
      "md",
      "sys",
      "color",
      "secondary-container",
      "light",
      "color"
    ]
  },
  {
    "class": "token",
    "type": "color",
    "id": "md.sys.color.on-secondary-container.light",
    "name": "md.sys.color.on-secondary-container.light",
    "value": "#2c160d",
    "description": "",
    "category_id": "sys.color.light",
    "last_updated_by": "Material",
    "last_updated": "Fri, 03 Jun 2022 14:31:26 GMT",
    "tags": [
      "md",
      "sys",
      "color",
      "on-secondary-container",
      "light",
      "color"
    ]
  },
  {
    "class": "token",
    "type": "color",
    "id": "md.sys.color.tertiary.light",
    "name": "md.sys.color.tertiary.light",
    "value": "#685e2f",
    "description": "",
    "category_id": "sys.color.light",
    "last_updated_by": "Material",
    "last_updated": "Fri, 03 Jun 2022 14:31:26 GMT",
    "tags": [
      "md",
      "sys",
      "color",
      "tertiary",
      "light",
      "color"
    ]
  },
  {
    "class": "token",
    "type": "color",
    "id": "md.sys.color.on-tertiary.light",
    "name": "md.sys.color.on-tertiary.light",
    "value": "#ffffff",
    "description": "",
    "category_id": "sys.color.light",
    "last_updated_by": "Material",
    "last_updated": "Fri, 03 Jun 2022 14:31:26 GMT",
    "tags": [
      "md",
      "sys",
      "color",
      "on-tertiary",
      "light",
      "color"
    ]
  },
  {
    "class": "token",
    "type": "color",
    "id": "md.sys.color.tertiary-container.light",
    "name": "md.sys.color.tertiary-container.light",
    "value": "#f1e2a7",
    "description": "",
    "category_id": "sys.color.light",
    "last_updated_by": "Material",
    "last_updated": "Fri, 03 Jun 2022 14:31:26 GMT",
    "tags": [
      "md",
      "sys",
      "color",
      "tertiary-container",
      "light",
      "color"
    ]
  },
  {
    "class": "token",
    "type": "color",
    "id": "md.sys.color.on-tertiary-container.light",
    "name": "md.sys.color.on-tertiary-container.light",
    "value": "#221b00",
    "description": "",
    "category_id": "sys.color.light",
    "last_updated_by": "Material",
    "last_updated": "Fri, 03 Jun 2022 14:31:26 GMT",
    "tags": [
      "md",
      "sys",
      "color",
      "on-tertiary-container",
      "light",
      "color"
    ]
  },
  {
    "class": "token",
    "type": "color",
    "id": "md.sys.color.error.light",
    "name": "md.sys.color.error.light",
    "value": "#ba1b1b",
    "description": "",
    "category_id": "sys.color.light",
    "last_updated_by": "Material",
    "last_updated": "Fri, 03 Jun 2022 14:31:26 GMT",
    "tags": [
      "md",
      "sys",
      "color",
      "error",
      "light",
      "color"
    ]
  },
  {
    "class": "token",
    "type": "color",
    "id": "md.sys.color.error-container.light",
    "name": "md.sys.color.error-container.light",
    "value": "#ffdad4",
    "description": "",
    "category_id": "sys.color.light",
    "last_updated_by": "Material",
    "last_updated": "Fri, 03 Jun 2022 14:31:26 GMT",
    "tags": [
      "md",
      "sys",
      "color",
      "error-container",
      "light",
      "color"
    ]
  },
  {
    "class": "token",
    "type": "color",
    "id": "md.sys.color.on-error.light",
    "name": "md.sys.color.on-error.light",
    "value": "#ffffff",
    "description": "",
    "category_id": "sys.color.light",
    "last_updated_by": "Material",
    "last_updated": "Fri, 03 Jun 2022 14:31:26 GMT",
    "tags": [
      "md",
      "sys",
      "color",
      "on-error",
      "light",
      "color"
    ]
  },
  {
    "class": "token",
    "type": "color",
    "id": "md.sys.color.on-error-container.light",
    "name": "md.sys.color.on-error-container.light",
    "value": "#410001",
    "description": "",
    "category_id": "sys.color.light",
    "last_updated_by": "Material",
    "last_updated": "Fri, 03 Jun 2022 14:31:26 GMT",
    "tags": [
      "md",
      "sys",
      "color",
      "on-error-container",
      "light",
      "color"
    ]
  },
  {
    "class": "token",
    "type": "color",
    "id": "md.sys.color.background.light",
    "name": "md.sys.color.background.light",
    "value": "#fcfcfc",
    "description": "",
    "category_id": "sys.color.light",
    "last_updated_by": "Material",
    "last_updated": "Fri, 03 Jun 2022 14:31:26 GMT",
    "tags": [
      "md",
      "sys",
      "color",
      "background",
      "light",
      "color"
    ]
  },
  {
    "class": "token",
    "type": "color",
    "id": "md.sys.color.on-background.light",
    "name": "md.sys.color.on-background.light",
    "value": "#201a18",
    "description": "",
    "category_id": "sys.color.light",
    "last_updated_by": "Material",
    "last_updated": "Fri, 03 Jun 2022 14:31:26 GMT",
    "tags": [
      "md",
      "sys",
      "color",
      "on-background",
      "light",
      "color"
    ]
  },
  {
    "class": "token",
    "type": "color",
    "id": "md.sys.color.surface.light",
    "name": "md.sys.color.surface.light",
    "value": "#fcfcfc",
    "description": "",
    "category_id": "sys.color.light",
    "last_updated_by": "Material",
    "last_updated": "Fri, 03 Jun 2022 14:31:26 GMT",
    "tags": [
      "md",
      "sys",
      "color",
      "surface",
      "light",
      "color"
    ]
  },
  {
    "class": "token",
    "type": "color",
    "id": "md.sys.color.on-surface.light",
    "name": "md.sys.color.on-surface.light",
    "value": "#201a18",
    "description": "",
    "category_id": "sys.color.light",
    "last_updated_by": "Material",
    "last_updated": "Fri, 03 Jun 2022 14:31:26 GMT",
    "tags": [
      "md",
      "sys",
      "color",
      "on-surface",
      "light",
      "color"
    ]
  },
  {
    "class": "token",
    "type": "color",
    "id": "md.sys.color.surface-variant.light",
    "name": "md.sys.color.surface-variant.light",
    "value": "#f5ded6",
    "description": "",
    "category_id": "sys.color.light",
    "last_updated_by": "Material",
    "last_updated": "Fri, 03 Jun 2022 14:31:26 GMT",
    "tags": [
      "md",
      "sys",
      "color",
      "surface-variant",
      "light",
      "color"
    ]
  },
  {
    "class": "token",
    "type": "color",
    "id": "md.sys.color.on-surface-variant.light",
    "name": "md.sys.color.on-surface-variant.light",
    "value": "#52433e",
    "description": "",
    "category_id": "sys.color.light",
    "last_updated_by": "Material",
    "last_updated": "Fri, 03 Jun 2022 14:31:26 GMT",
    "tags": [
      "md",
      "sys",
      "color",
      "on-surface-variant",
      "light",
      "color"
    ]
  },
  {
    "class": "token",
    "type": "color",
    "id": "md.sys.color.outline.light",
    "name": "md.sys.color.outline.light",
    "value": "#85736d",
    "description": "",
    "category_id": "sys.color.light",
    "last_updated_by": "Material",
    "last_updated": "Fri, 03 Jun 2022 14:31:26 GMT",
    "tags": [
      "md",
      "sys",
      "color",
      "outline",
      "light",
      "color"
    ]
  },
  {
    "class": "token",
    "type": "color",
    "id": "md.sys.color.inverse-on-surface.light",
    "name": "md.sys.color.inverse-on-surface.light",
    "value": "#fbeeea",
    "description": "",
    "category_id": "sys.color.light",
    "last_updated_by": "Material",
    "last_updated": "Fri, 03 Jun 2022 14:31:26 GMT",
    "tags": [
      "md",
      "sys",
      "color",
      "inverse-on-surface",
      "light",
      "color"
    ]
  },
  {
    "class": "token",
    "type": "color",
    "id": "md.sys.color.inverse-surface.light",
    "name": "md.sys.color.inverse-surface.light",
    "value": "#362f2d",
    "description": "",
    "category_id": "sys.color.light",
    "last_updated_by": "Material",
    "last_updated": "Fri, 03 Jun 2022 14:31:26 GMT",
    "tags": [
      "md",
      "sys",
      "color",
      "inverse-surface",
      "light",
      "color"
    ]
  },
  {
    "class": "token",
    "type": "color",
    "id": "md.sys.color.inverse-primary.light",
    "name": "md.sys.color.inverse-primary.light",
    "value": "#ffb597",
    "description": "",
    "category_id": "sys.color.light",
    "last_updated_by": "Material",
    "last_updated": "Fri, 03 Jun 2022 14:31:26 GMT",
    "tags": [
      "md",
      "sys",
      "color",
      "inverse-primary",
      "light",
      "color"
    ]
  },
  {
    "class": "token",
    "type": "color",
    "id": "md.sys.color.shadow.light",
    "name": "md.sys.color.shadow.light",
    "value": "#000000",
    "description": "",
    "category_id": "sys.color.light",
    "last_updated_by": "Material",
    "last_updated": "Fri, 03 Jun 2022 14:31:26 GMT",
    "tags": [
      "md",
      "sys",
      "color",
      "shadow",
      "light",
      "color"
    ]
  },
  {
    "class": "token",
    "type": "color",
    "id": "md.sys.color.primary.dark",
    "name": "md.sys.color.primary.dark",
    "value": "#ffb597",
    "description": "",
    "category_id": "sys.color.dark",
    "last_updated_by": "Material",
    "last_updated": "Fri, 03 Jun 2022 14:31:26 GMT",
    "tags": [
      "md",
      "sys",
      "color",
      "primary",
      "dark",
      "color"
    ]
  },
  {
    "class": "token",
    "type": "color",
    "id": "md.sys.color.on-primary.dark",
    "name": "md.sys.color.on-primary.dark",
    "value": "#5b1a00",
    "description": "",
    "category_id": "sys.color.dark",
    "last_updated_by": "Material",
    "last_updated": "Fri, 03 Jun 2022 14:31:26 GMT",
    "tags": [
      "md",
      "sys",
      "color",
      "on-primary",
      "dark",
      "color"
    ]
  },
  {
    "class": "token",
    "type": "color",
    "id": "md.sys.color.primary-container.dark",
    "name": "md.sys.color.primary-container.dark",
    "value": "#7b2e0b",
    "description": "",
    "category_id": "sys.color.dark",
    "last_updated_by": "Material",
    "last_updated": "Fri, 03 Jun 2022 14:31:26 GMT",
    "tags": [
      "md",
      "sys",
      "color",
      "primary-container",
      "dark",
      "color"
    ]
  },
  {
    "class": "token",
    "type": "color",
    "id": "md.sys.color.on-primary-container.dark",
    "name": "md.sys.color.on-primary-container.dark",
    "value": "#ffdbcd",
    "description": "",
    "category_id": "sys.color.dark",
    "last_updated_by": "Material",
    "last_updated": "Fri, 03 Jun 2022 14:31:26 GMT",
    "tags": [
      "md",
      "sys",
      "color",
      "on-primary-container",
      "dark",
      "color"
    ]
  },
  {
    "class": "token",
    "type": "color",
    "id": "md.sys.color.secondary.dark",
    "name": "md.sys.color.secondary.dark",
    "value": "#e7beaf",
    "description": "",
    "category_id": "sys.color.dark",
    "last_updated_by": "Material",
    "last_updated": "Fri, 03 Jun 2022 14:31:26 GMT",
    "tags": [
      "md",
      "sys",
      "color",
      "secondary",
      "dark",
      "color"
    ]
  },
  {
    "class": "token",
    "type": "color",
    "id": "md.sys.color.on-secondary.dark",
    "name": "md.sys.color.on-secondary.dark",
    "value": "#442a20",
    "description": "",
    "category_id": "sys.color.dark",
    "last_updated_by": "Material",
    "last_updated": "Fri, 03 Jun 2022 14:31:26 GMT",
    "tags": [
      "md",
      "sys",
      "color",
      "on-secondary",
      "dark",
      "color"
    ]
  },
  {
    "class": "token",
    "type": "color",
    "id": "md.sys.color.secondary-container.dark",
    "name": "md.sys.color.secondary-container.dark",
    "value": "#5d4035",
    "description": "",
    "category_id": "sys.color.dark",
    "last_updated_by": "Material",
    "last_updated": "Fri, 03 Jun 2022 14:31:26 GMT",
    "tags": [
      "md",
      "sys",
      "color",
      "secondary-container",
      "dark",
      "color"
    ]
  },
  {
    "class": "token",
    "type": "color",
    "id": "md.sys.color.on-secondary-container.dark",
    "name": "md.sys.color.on-secondary-container.dark",
    "value": "#ffdbcd",
    "description": "",
    "category_id": "sys.color.dark",
    "last_updated_by": "Material",
    "last_updated": "Fri, 03 Jun 2022 14:31:26 GMT",
    "tags": [
      "md",
      "sys",
      "color",
      "on-secondary-container",
      "dark",
      "color"
    ]
  },
  {
    "class": "token",
    "type": "color",
    "id": "md.sys.color.tertiary.dark",
    "name": "md.sys.color.tertiary.dark",
    "value": "#d4c68e",
    "description": "",
    "category_id": "sys.color.dark",
    "last_updated_by": "Material",
    "last_updated": "Fri, 03 Jun 2022 14:31:26 GMT",
    "tags": [
      "md",
      "sys",
      "color",
      "tertiary",
      "dark",
      "color"
    ]
  },
  {
    "class": "token",
    "type": "color",
    "id": "md.sys.color.on-tertiary.dark",
    "name": "md.sys.color.on-tertiary.dark",
    "value": "#383006",
    "description": "",
    "category_id": "sys.color.dark",
    "last_updated_by": "Material",
    "last_updated": "Fri, 03 Jun 2022 14:31:26 GMT",
    "tags": [
      "md",
      "sys",
      "color",
      "on-tertiary",
      "dark",
      "color"
    ]
  },
  {
    "class": "token",
    "type": "color",
    "id": "md.sys.color.tertiary-container.dark",
    "name": "md.sys.color.tertiary-container.dark",
    "value": "#50471b",
    "description": "",
    "category_id": "sys.color.dark",
    "last_updated_by": "Material",
    "last_updated": "Fri, 03 Jun 2022 14:31:26 GMT",
    "tags": [
      "md",
      "sys",
      "color",
      "tertiary-container",
      "dark",
      "color"
    ]
  },
  {
    "class": "token",
    "type": "color",
    "id": "md.sys.color.on-tertiary-container.dark",
    "name": "md.sys.color.on-tertiary-container.dark",
    "value": "#f1e2a7",
    "description": "",
    "category_id": "sys.color.dark",
    "last_updated_by": "Material",
    "last_updated": "Fri, 03 Jun 2022 14:31:26 GMT",
    "tags": [
      "md",
      "sys",
      "color",
      "on-tertiary-container",
      "dark",
      "color"
    ]
  },
  {
    "class": "token",
    "type": "color",
    "id": "md.sys.color.error.dark",
    "name": "md.sys.color.error.dark",
    "value": "#ffb4a9",
    "description": "",
    "category_id": "sys.color.dark",
    "last_updated_by": "Material",
    "last_updated": "Fri, 03 Jun 2022 14:31:26 GMT",
    "tags": [
      "md",
      "sys",
      "color",
      "error",
      "dark",
      "color"
    ]
  },
  {
    "class": "token",
    "type": "color",
    "id": "md.sys.color.error-container.dark",
    "name": "md.sys.color.error-container.dark",
    "value": "#930006",
    "description": "",
    "category_id": "sys.color.dark",
    "last_updated_by": "Material",
    "last_updated": "Fri, 03 Jun 2022 14:31:26 GMT",
    "tags": [
      "md",
      "sys",
      "color",
      "error-container",
      "dark",
      "color"
    ]
  },
  {
    "class": "token",
    "type": "color",
    "id": "md.sys.color.on-error.dark",
    "name": "md.sys.color.on-error.dark",
    "value": "#680003",
    "description": "",
    "category_id": "sys.color.dark",
    "last_updated_by": "Material",
    "last_updated": "Fri, 03 Jun 2022 14:31:26 GMT",
    "tags": [
      "md",
      "sys",
      "color",
      "on-error",
      "dark",
      "color"
    ]
  },
  {
    "class": "token",
    "type": "color",
    "id": "md.sys.color.on-error-container.dark",
    "name": "md.sys.color.on-error-container.dark",
    "value": "#ffdad4",
    "description": "",
    "category_id": "sys.color.dark",
    "last_updated_by": "Material",
    "last_updated": "Fri, 03 Jun 2022 14:31:26 GMT",
    "tags": [
      "md",
      "sys",
      "color",
      "on-error-container",
      "dark",
      "color"
    ]
  },
  {
    "class": "token",
    "type": "color",
    "id": "md.sys.color.background.dark",
    "name": "md.sys.color.background.dark",
    "value": "#201a18",
    "description": "",
    "category_id": "sys.color.dark",
    "last_updated_by": "Material",
    "last_updated": "Fri, 03 Jun 2022 14:31:26 GMT",
    "tags": [
      "md",
      "sys",
      "color",
      "background",
      "dark",
      "color"
    ]
  },
  {
    "class": "token",
    "type": "color",
    "id": "md.sys.color.on-background.dark",
    "name": "md.sys.color.on-background.dark",
    "value": "#ede0dc",
    "description": "",
    "category_id": "sys.color.dark",
    "last_updated_by": "Material",
    "last_updated": "Fri, 03 Jun 2022 14:31:26 GMT",
    "tags": [
      "md",
      "sys",
      "color",
      "on-background",
      "dark",
      "color"
    ]
  },
  {
    "class": "token",
    "type": "color",
    "id": "md.sys.color.surface.dark",
    "name": "md.sys.color.surface.dark",
    "value": "#201a18",
    "description": "",
    "category_id": "sys.color.dark",
    "last_updated_by": "Material",
    "last_updated": "Fri, 03 Jun 2022 14:31:26 GMT",
    "tags": [
      "md",
      "sys",
      "color",
      "surface",
      "dark",
      "color"
    ]
  },
  {
    "class": "token",
    "type": "color",
    "id": "md.sys.color.on-surface.dark",
    "name": "md.sys.color.on-surface.dark",
    "value": "#ede0dc",
    "description": "",
    "category_id": "sys.color.dark",
    "last_updated_by": "Material",
    "last_updated": "Fri, 03 Jun 2022 14:31:26 GMT",
    "tags": [
      "md",
      "sys",
      "color",
      "on-surface",
      "dark",
      "color"
    ]
  },
  {
    "class": "token",
    "type": "color",
    "id": "md.sys.color.surface-variant.dark",
    "name": "md.sys.color.surface-variant.dark",
    "value": "#52433e",
    "description": "",
    "category_id": "sys.color.dark",
    "last_updated_by": "Material",
    "last_updated": "Fri, 03 Jun 2022 14:31:26 GMT",
    "tags": [
      "md",
      "sys",
      "color",
      "surface-variant",
      "dark",
      "color"
    ]
  },
  {
    "class": "token",
    "type": "color",
    "id": "md.sys.color.on-surface-variant.dark",
    "name": "md.sys.color.on-surface-variant.dark",
    "value": "#d8c2bb",
    "description": "",
    "category_id": "sys.color.dark",
    "last_updated_by": "Material",
    "last_updated": "Fri, 03 Jun 2022 14:31:26 GMT",
    "tags": [
      "md",
      "sys",
      "color",
      "on-surface-variant",
      "dark",
      "color"
    ]
  },
  {
    "class": "token",
    "type": "color",
    "id": "md.sys.color.outline.dark",
    "name": "md.sys.color.outline.dark",
    "value": "#a08d86",
    "description": "",
    "category_id": "sys.color.dark",
    "last_updated_by": "Material",
    "last_updated": "Fri, 03 Jun 2022 14:31:26 GMT",
    "tags": [
      "md",
      "sys",
      "color",
      "outline",
      "dark",
      "color"
    ]
  },
  {
    "class": "token",
    "type": "color",
    "id": "md.sys.color.inverse-on-surface.dark",
    "name": "md.sys.color.inverse-on-surface.dark",
    "value": "#201a18",
    "description": "",
    "category_id": "sys.color.dark",
    "last_updated_by": "Material",
    "last_updated": "Fri, 03 Jun 2022 14:31:26 GMT",
    "tags": [
      "md",
      "sys",
      "color",
      "inverse-on-surface",
      "dark",
      "color"
    ]
  },
  {
    "class": "token",
    "type": "color",
    "id": "md.sys.color.inverse-surface.dark",
    "name": "md.sys.color.inverse-surface.dark",
    "value": "#ede0dc",
    "description": "",
    "category_id": "sys.color.dark",
    "last_updated_by": "Material",
    "last_updated": "Fri, 03 Jun 2022 14:31:26 GMT",
    "tags": [
      "md",
      "sys",
      "color",
      "inverse-surface",
      "dark",
      "color"
    ]
  },
  {
    "class": "token",
    "type": "color",
    "id": "md.sys.color.inverse-primary.dark",
    "name": "md.sys.color.inverse-primary.dark",
    "value": "#9a4521",
    "description": "",
    "category_id": "sys.color.dark",
    "last_updated_by": "Material",
    "last_updated": "Fri, 03 Jun 2022 14:31:26 GMT",
    "tags": [
      "md",
      "sys",
      "color",
      "inverse-primary",
      "dark",
      "color"
    ]
  },
  {
    "class": "token",
    "type": "color",
    "id": "md.sys.color.shadow.dark",
    "name": "md.sys.color.shadow.dark",
    "value": "#000000",
    "description": "",
    "category_id": "sys.color.dark",
    "last_updated_by": "Material",
    "last_updated": "Fri, 03 Jun 2022 14:31:26 GMT",
    "tags": [
      "md",
      "sys",
      "color",
      "shadow",
      "dark",
      "color"
    ]
  },
  {
    "class": "token",
    "type": "alias",
    "id": "md.sys.color.primary",
    "name": "md.sys.color.primary",
    "value": "{md.sys.color.primary.light}",
    "description": "",
    "category_id": "sys.color",
    "last_updated_by": "Material",
    "last_updated": "Fri, 03 Jun 2022 14:31:26 GMT",
    "tags": [
      "md",
      "sys",
      "color",
      "primary",
      "alias"
    ]
  },
  {
    "class": "token",
    "type": "alias",
    "id": "md.sys.color.on-primary",
    "name": "md.sys.color.on-primary",
    "value": "{md.sys.color.on-primary.light}",
    "description": "",
    "category_id": "sys.color",
    "last_updated_by": "Material",
    "last_updated": "Fri, 03 Jun 2022 14:31:26 GMT",
    "tags": [
      "md",
      "sys",
      "color",
      "on-primary",
      "alias"
    ]
  },
  {
    "class": "token",
    "type": "alias",
    "id": "md.sys.color.primary-container",
    "name": "md.sys.color.primary-container",
    "value": "{md.sys.color.primary-container.light}",
    "description": "",
    "category_id": "sys.color",
    "last_updated_by": "Material",
    "last_updated": "Fri, 03 Jun 2022 14:31:26 GMT",
    "tags": [
      "md",
      "sys",
      "color",
      "primary-container",
      "alias"
    ]
  },
  {
    "class": "token",
    "type": "alias",
    "id": "md.sys.color.on-primary-container",
    "name": "md.sys.color.on-primary-container",
    "value": "{md.sys.color.on-primary-container.light}",
    "description": "",
    "category_id": "sys.color",
    "last_updated_by": "Material",
    "last_updated": "Fri, 03 Jun 2022 14:31:26 GMT",
    "tags": [
      "md",
      "sys",
      "color",
      "on-primary-container",
      "alias"
    ]
  },
  {
    "class": "token",
    "type": "alias",
    "id": "md.sys.color.secondary",
    "name": "md.sys.color.secondary",
    "value": "{md.sys.color.secondary.light}",
    "description": "",
    "category_id": "sys.color",
    "last_updated_by": "Material",
    "last_updated": "Fri, 03 Jun 2022 14:31:26 GMT",
    "tags": [
      "md",
      "sys",
      "color",
      "secondary",
      "alias"
    ]
  },
  {
    "class": "token",
    "type": "alias",
    "id": "md.sys.color.on-secondary",
    "name": "md.sys.color.on-secondary",
    "value": "{md.sys.color.on-secondary.light}",
    "description": "",
    "category_id": "sys.color",
    "last_updated_by": "Material",
    "last_updated": "Fri, 03 Jun 2022 14:31:26 GMT",
    "tags": [
      "md",
      "sys",
      "color",
      "on-secondary",
      "alias"
    ]
  },
  {
    "class": "token",
    "type": "alias",
    "id": "md.sys.color.secondary-container",
    "name": "md.sys.color.secondary-container",
    "value": "{md.sys.color.secondary-container.light}",
    "description": "",
    "category_id": "sys.color",
    "last_updated_by": "Material",
    "last_updated": "Fri, 03 Jun 2022 14:31:26 GMT",
    "tags": [
      "md",
      "sys",
      "color",
      "secondary-container",
      "alias"
    ]
  },
  {
    "class": "token",
    "type": "alias",
    "id": "md.sys.color.on-secondary-container",
    "name": "md.sys.color.on-secondary-container",
    "value": "{md.sys.color.on-secondary-container.light}",
    "description": "",
    "category_id": "sys.color",
    "last_updated_by": "Material",
    "last_updated": "Fri, 03 Jun 2022 14:31:26 GMT",
    "tags": [
      "md",
      "sys",
      "color",
      "on-secondary-container",
      "alias"
    ]
  },
  {
    "class": "token",
    "type": "alias",
    "id": "md.sys.color.tertiary",
    "name": "md.sys.color.tertiary",
    "value": "{md.sys.color.tertiary.light}",
    "description": "",
    "category_id": "sys.color",
    "last_updated_by": "Material",
    "last_updated": "Fri, 03 Jun 2022 14:31:26 GMT",
    "tags": [
      "md",
      "sys",
      "color",
      "tertiary",
      "alias"
    ]
  },
  {
    "class": "token",
    "type": "alias",
    "id": "md.sys.color.on-tertiary",
    "name": "md.sys.color.on-tertiary",
    "value": "{md.sys.color.on-tertiary.light}",
    "description": "",
    "category_id": "sys.color",
    "last_updated_by": "Material",
    "last_updated": "Fri, 03 Jun 2022 14:31:26 GMT",
    "tags": [
      "md",
      "sys",
      "color",
      "on-tertiary",
      "alias"
    ]
  },
  {
    "class": "token",
    "type": "alias",
    "id": "md.sys.color.tertiary-container",
    "name": "md.sys.color.tertiary-container",
    "value": "{md.sys.color.tertiary-container.light}",
    "description": "",
    "category_id": "sys.color",
    "last_updated_by": "Material",
    "last_updated": "Fri, 03 Jun 2022 14:31:26 GMT",
    "tags": [
      "md",
      "sys",
      "color",
      "tertiary-container",
      "alias"
    ]
  },
  {
    "class": "token",
    "type": "alias",
    "id": "md.sys.color.on-tertiary-container",
    "name": "md.sys.color.on-tertiary-container",
    "value": "{md.sys.color.on-tertiary-container.light}",
    "description": "",
    "category_id": "sys.color",
    "last_updated_by": "Material",
    "last_updated": "Fri, 03 Jun 2022 14:31:26 GMT",
    "tags": [
      "md",
      "sys",
      "color",
      "on-tertiary-container",
      "alias"
    ]
  },
  {
    "class": "token",
    "type": "alias",
    "id": "md.sys.color.error",
    "name": "md.sys.color.error",
    "value": "{md.sys.color.error.light}",
    "description": "",
    "category_id": "sys.color",
    "last_updated_by": "Material",
    "last_updated": "Fri, 03 Jun 2022 14:31:26 GMT",
    "tags": [
      "md",
      "sys",
      "color",
      "error",
      "alias"
    ]
  },
  {
    "class": "token",
    "type": "alias",
    "id": "md.sys.color.error-container",
    "name": "md.sys.color.error-container",
    "value": "{md.sys.color.error-container.light}",
    "description": "",
    "category_id": "sys.color",
    "last_updated_by": "Material",
    "last_updated": "Fri, 03 Jun 2022 14:31:26 GMT",
    "tags": [
      "md",
      "sys",
      "color",
      "error-container",
      "alias"
    ]
  },
  {
    "class": "token",
    "type": "alias",
    "id": "md.sys.color.on-error",
    "name": "md.sys.color.on-error",
    "value": "{md.sys.color.on-error.light}",
    "description": "",
    "category_id": "sys.color",
    "last_updated_by": "Material",
    "last_updated": "Fri, 03 Jun 2022 14:31:26 GMT",
    "tags": [
      "md",
      "sys",
      "color",
      "on-error",
      "alias"
    ]
  },
  {
    "class": "token",
    "type": "alias",
    "id": "md.sys.color.on-error-container",
    "name": "md.sys.color.on-error-container",
    "value": "{md.sys.color.on-error-container.light}",
    "description": "",
    "category_id": "sys.color",
    "last_updated_by": "Material",
    "last_updated": "Fri, 03 Jun 2022 14:31:26 GMT",
    "tags": [
      "md",
      "sys",
      "color",
      "on-error-container",
      "alias"
    ]
  },
  {
    "class": "token",
    "type": "alias",
    "id": "md.sys.color.background",
    "name": "md.sys.color.background",
    "value": "{md.sys.color.background.light}",
    "description": "",
    "category_id": "sys.color",
    "last_updated_by": "Material",
    "last_updated": "Fri, 03 Jun 2022 14:31:26 GMT",
    "tags": [
      "md",
      "sys",
      "color",
      "background",
      "alias"
    ]
  },
  {
    "class": "token",
    "type": "alias",
    "id": "md.sys.color.on-background",
    "name": "md.sys.color.on-background",
    "value": "{md.sys.color.on-background.light}",
    "description": "",
    "category_id": "sys.color",
    "last_updated_by": "Material",
    "last_updated": "Fri, 03 Jun 2022 14:31:26 GMT",
    "tags": [
      "md",
      "sys",
      "color",
      "on-background",
      "alias"
    ]
  },
  {
    "class": "token",
    "type": "alias",
    "id": "md.sys.color.surface",
    "name": "md.sys.color.surface",
    "value": "{md.sys.color.surface.light}",
    "description": "",
    "category_id": "sys.color",
    "last_updated_by": "Material",
    "last_updated": "Fri, 03 Jun 2022 14:31:26 GMT",
    "tags": [
      "md",
      "sys",
      "color",
      "surface",
      "alias"
    ]
  },
  {
    "class": "token",
    "type": "alias",
    "id": "md.sys.color.on-surface",
    "name": "md.sys.color.on-surface",
    "value": "{md.sys.color.on-surface.light}",
    "description": "",
    "category_id": "sys.color",
    "last_updated_by": "Material",
    "last_updated": "Fri, 03 Jun 2022 14:31:26 GMT",
    "tags": [
      "md",
      "sys",
      "color",
      "on-surface",
      "alias"
    ]
  },
  {
    "class": "token",
    "type": "alias",
    "id": "md.sys.color.surface-variant",
    "name": "md.sys.color.surface-variant",
    "value": "{md.sys.color.surface-variant.light}",
    "description": "",
    "category_id": "sys.color",
    "last_updated_by": "Material",
    "last_updated": "Fri, 03 Jun 2022 14:31:26 GMT",
    "tags": [
      "md",
      "sys",
      "color",
      "surface-variant",
      "alias"
    ]
  },
  {
    "class": "token",
    "type": "alias",
    "id": "md.sys.color.on-surface-variant",
    "name": "md.sys.color.on-surface-variant",
    "value": "{md.sys.color.on-surface-variant.light}",
    "description": "",
    "category_id": "sys.color",
    "last_updated_by": "Material",
    "last_updated": "Fri, 03 Jun 2022 14:31:26 GMT",
    "tags": [
      "md",
      "sys",
      "color",
      "on-surface-variant",
      "alias"
    ]
  },
  {
    "class": "token",
    "type": "alias",
    "id": "md.sys.color.outline",
    "name": "md.sys.color.outline",
    "value": "{md.sys.color.outline.light}",
    "description": "",
    "category_id": "sys.color",
    "last_updated_by": "Material",
    "last_updated": "Fri, 03 Jun 2022 14:31:26 GMT",
    "tags": [
      "md",
      "sys",
      "color",
      "outline",
      "alias"
    ]
  },
  {
    "class": "token",
    "type": "alias",
    "id": "md.sys.color.inverse-on-surface",
    "name": "md.sys.color.inverse-on-surface",
    "value": "{md.sys.color.inverse-on-surface.light}",
    "description": "",
    "category_id": "sys.color",
    "last_updated_by": "Material",
    "last_updated": "Fri, 03 Jun 2022 14:31:26 GMT",
    "tags": [
      "md",
      "sys",
      "color",
      "inverse-on-surface",
      "alias"
    ]
  },
  {
    "class": "token",
    "type": "alias",
    "id": "md.sys.color.inverse-surface",
    "name": "md.sys.color.inverse-surface",
    "value": "{md.sys.color.inverse-surface.light}",
    "description": "",
    "category_id": "sys.color",
    "last_updated_by": "Material",
    "last_updated": "Fri, 03 Jun 2022 14:31:26 GMT",
    "tags": [
      "md",
      "sys",
      "color",
      "inverse-surface",
      "alias"
    ]
  },
  {
    "class": "token",
    "type": "alias",
    "id": "md.sys.color.inverse-primary",
    "name": "md.sys.color.inverse-primary",
    "value": "{md.sys.color.inverse-primary.light}",
    "description": "",
    "category_id": "sys.color",
    "last_updated_by": "Material",
    "last_updated": "Fri, 03 Jun 2022 14:31:26 GMT",
    "tags": [
      "md",
      "sys",
      "color",
      "inverse-primary",
      "alias"
    ]
  },
  {
    "class": "token",
    "type": "alias",
    "id": "md.sys.color.shadow",
    "name": "md.sys.color.shadow",
    "value": "{md.sys.color.shadow.light}",
    "description": "",
    "category_id": "sys.color",
    "last_updated_by": "Material",
    "last_updated": "Fri, 03 Jun 2022 14:31:26 GMT",
    "tags": [
      "md",
      "sys",
      "color",
      "shadow",
      "alias"
    ]
  },
  {
    "class": "token",
    "type": "color",
    "id": "md.ref.palette.primary100",
    "name": "md.ref.palette.primary100",
    "value": "#ffffff",
    "description": "",
    "category_id": "ref.palette",
    "last_updated_by": "Material",
    "last_updated": "Fri, 03 Jun 2022 14:31:26 GMT",
    "tags": [
      "md",
      "ref",
      "palette",
      "primary100",
      "color"
    ]
  },
  {
    "class": "token",
    "type": "color",
    "id": "md.ref.palette.primary99",
    "name": "md.ref.palette.primary99",
    "value": "#fcfcfc",
    "description": "",
    "category_id": "ref.palette",
    "last_updated_by": "Material",
    "last_updated": "Fri, 03 Jun 2022 14:31:26 GMT",
    "tags": [
      "md",
      "ref",
      "palette",
      "primary99",
      "color"
    ]
  },
  {
    "class": "token",
    "type": "color",
    "id": "md.ref.palette.primary95",
    "name": "md.ref.palette.primary95",
    "value": "#ffede6",
    "description": "",
    "category_id": "ref.palette",
    "last_updated_by": "Material",
    "last_updated": "Fri, 03 Jun 2022 14:31:26 GMT",
    "tags": [
      "md",
      "ref",
      "palette",
      "primary95",
      "color"
    ]
  },
  {
    "class": "token",
    "type": "color",
    "id": "md.ref.palette.primary90",
    "name": "md.ref.palette.primary90",
    "value": "#ffdbcd",
    "description": "",
    "category_id": "ref.palette",
    "last_updated_by": "Material",
    "last_updated": "Fri, 03 Jun 2022 14:31:26 GMT",
    "tags": [
      "md",
      "ref",
      "palette",
      "primary90",
      "color"
    ]
  },
  {
    "class": "token",
    "type": "color",
    "id": "md.ref.palette.primary80",
    "name": "md.ref.palette.primary80",
    "value": "#ffb597",
    "description": "",
    "category_id": "ref.palette",
    "last_updated_by": "Material",
    "last_updated": "Fri, 03 Jun 2022 14:31:26 GMT",
    "tags": [
      "md",
      "ref",
      "palette",
      "primary80",
      "color"
    ]
  },
  {
    "class": "token",
    "type": "color",
    "id": "md.ref.palette.primary70",
    "name": "md.ref.palette.primary70",
    "value": "#fa8f65",
    "description": "",
    "category_id": "ref.palette",
    "last_updated_by": "Material",
    "last_updated": "Fri, 03 Jun 2022 14:31:26 GMT",
    "tags": [
      "md",
      "ref",
      "palette",
      "primary70",
      "color"
    ]
  },
  {
    "class": "token",
    "type": "color",
    "id": "md.ref.palette.primary60",
    "name": "md.ref.palette.primary60",
    "value": "#d9754d",
    "description": "",
    "category_id": "ref.palette",
    "last_updated_by": "Material",
    "last_updated": "Fri, 03 Jun 2022 14:31:26 GMT",
    "tags": [
      "md",
      "ref",
      "palette",
      "primary60",
      "color"
    ]
  },
  {
    "class": "token",
    "type": "color",
    "id": "md.ref.palette.primary50",
    "name": "md.ref.palette.primary50",
    "value": "#ba5d37",
    "description": "",
    "category_id": "ref.palette",
    "last_updated_by": "Material",
    "last_updated": "Fri, 03 Jun 2022 14:31:26 GMT",
    "tags": [
      "md",
      "ref",
      "palette",
      "primary50",
      "color"
    ]
  },
  {
    "class": "token",
    "type": "color",
    "id": "md.ref.palette.primary40",
    "name": "md.ref.palette.primary40",
    "value": "#9a4521",
    "description": "",
    "category_id": "ref.palette",
    "last_updated_by": "Material",
    "last_updated": "Fri, 03 Jun 2022 14:31:26 GMT",
    "tags": [
      "md",
      "ref",
      "palette",
      "primary40",
      "color"
    ]
  },
  {
    "class": "token",
    "type": "color",
    "id": "md.ref.palette.primary30",
    "name": "md.ref.palette.primary30",
    "value": "#7b2e0b",
    "description": "",
    "category_id": "ref.palette",
    "last_updated_by": "Material",
    "last_updated": "Fri, 03 Jun 2022 14:31:26 GMT",
    "tags": [
      "md",
      "ref",
      "palette",
      "primary30",
      "color"
    ]
  },
  {
    "class": "token",
    "type": "color",
    "id": "md.ref.palette.primary20",
    "name": "md.ref.palette.primary20",
    "value": "#5b1a00",
    "description": "",
    "category_id": "ref.palette",
    "last_updated_by": "Material",
    "last_updated": "Fri, 03 Jun 2022 14:31:26 GMT",
    "tags": [
      "md",
      "ref",
      "palette",
      "primary20",
      "color"
    ]
  },
  {
    "class": "token",
    "type": "color",
    "id": "md.ref.palette.primary10",
    "name": "md.ref.palette.primary10",
    "value": "#380d00",
    "description": "",
    "category_id": "ref.palette",
    "last_updated_by": "Material",
    "last_updated": "Fri, 03 Jun 2022 14:31:26 GMT",
    "tags": [
      "md",
      "ref",
      "palette",
      "primary10",
      "color"
    ]
  },
  {
    "class": "token",
    "type": "color",
    "id": "md.ref.palette.primary0",
    "name": "md.ref.palette.primary0",
    "value": "#000000",
    "description": "",
    "category_id": "ref.palette",
    "last_updated_by": "Material",
    "last_updated": "Fri, 03 Jun 2022 14:31:26 GMT",
    "tags": [
      "md",
      "ref",
      "palette",
      "primary0",
      "color"
    ]
  },
  {
    "class": "token",
    "type": "color",
    "id": "md.ref.palette.secondary100",
    "name": "md.ref.palette.secondary100",
    "value": "#ffffff",
    "description": "",
    "category_id": "ref.palette",
    "last_updated_by": "Material",
    "last_updated": "Fri, 03 Jun 2022 14:31:26 GMT",
    "tags": [
      "md",
      "ref",
      "palette",
      "secondary100",
      "color"
    ]
  },
  {
    "class": "token",
    "type": "color",
    "id": "md.ref.palette.secondary99",
    "name": "md.ref.palette.secondary99",
    "value": "#fcfcfc",
    "description": "",
    "category_id": "ref.palette",
    "last_updated_by": "Material",
    "last_updated": "Fri, 03 Jun 2022 14:31:26 GMT",
    "tags": [
      "md",
      "ref",
      "palette",
      "secondary99",
      "color"
    ]
  },
  {
    "class": "token",
    "type": "color",
    "id": "md.ref.palette.secondary95",
    "name": "md.ref.palette.secondary95",
    "value": "#ffede6",
    "description": "",
    "category_id": "ref.palette",
    "last_updated_by": "Material",
    "last_updated": "Fri, 03 Jun 2022 14:31:26 GMT",
    "tags": [
      "md",
      "ref",
      "palette",
      "secondary95",
      "color"
    ]
  },
  {
    "class": "token",
    "type": "color",
    "id": "md.ref.palette.secondary90",
    "name": "md.ref.palette.secondary90",
    "value": "#ffdbcd",
    "description": "",
    "category_id": "ref.palette",
    "last_updated_by": "Material",
    "last_updated": "Fri, 03 Jun 2022 14:31:26 GMT",
    "tags": [
      "md",
      "ref",
      "palette",
      "secondary90",
      "color"
    ]
  },
  {
    "class": "token",
    "type": "color",
    "id": "md.ref.palette.secondary80",
    "name": "md.ref.palette.secondary80",
    "value": "#e7beaf",
    "description": "",
    "category_id": "ref.palette",
    "last_updated_by": "Material",
    "last_updated": "Fri, 03 Jun 2022 14:31:26 GMT",
    "tags": [
      "md",
      "ref",
      "palette",
      "secondary80",
      "color"
    ]
  },
  {
    "class": "token",
    "type": "color",
    "id": "md.ref.palette.secondary70",
    "name": "md.ref.palette.secondary70",
    "value": "#caa395",
    "description": "",
    "category_id": "ref.palette",
    "last_updated_by": "Material",
    "last_updated": "Fri, 03 Jun 2022 14:31:26 GMT",
    "tags": [
      "md",
      "ref",
      "palette",
      "secondary70",
      "color"
    ]
  },
  {
    "class": "token",
    "type": "color",
    "id": "md.ref.palette.secondary60",
    "name": "md.ref.palette.secondary60",
    "value": "#ad887b",
    "description": "",
    "category_id": "ref.palette",
    "last_updated_by": "Material",
    "last_updated": "Fri, 03 Jun 2022 14:31:26 GMT",
    "tags": [
      "md",
      "ref",
      "palette",
      "secondary60",
      "color"
    ]
  },
  {
    "class": "token",
    "type": "color",
    "id": "md.ref.palette.secondary50",
    "name": "md.ref.palette.secondary50",
    "value": "#916f63",
    "description": "",
    "category_id": "ref.palette",
    "last_updated_by": "Material",
    "last_updated": "Fri, 03 Jun 2022 14:31:26 GMT",
    "tags": [
      "md",
      "ref",
      "palette",
      "secondary50",
      "color"
    ]
  },
  {
    "class": "token",
    "type": "color",
    "id": "md.ref.palette.secondary40",
    "name": "md.ref.palette.secondary40",
    "value": "#77574b",
    "description": "",
    "category_id": "ref.palette",
    "last_updated_by": "Material",
    "last_updated": "Fri, 03 Jun 2022 14:31:26 GMT",
    "tags": [
      "md",
      "ref",
      "palette",
      "secondary40",
      "color"
    ]
  },
  {
    "class": "token",
    "type": "color",
    "id": "md.ref.palette.secondary30",
    "name": "md.ref.palette.secondary30",
    "value": "#5d4035",
    "description": "",
    "category_id": "ref.palette",
    "last_updated_by": "Material",
    "last_updated": "Fri, 03 Jun 2022 14:31:26 GMT",
    "tags": [
      "md",
      "ref",
      "palette",
      "secondary30",
      "color"
    ]
  },
  {
    "class": "token",
    "type": "color",
    "id": "md.ref.palette.secondary20",
    "name": "md.ref.palette.secondary20",
    "value": "#442a20",
    "description": "",
    "category_id": "ref.palette",
    "last_updated_by": "Material",
    "last_updated": "Fri, 03 Jun 2022 14:31:26 GMT",
    "tags": [
      "md",
      "ref",
      "palette",
      "secondary20",
      "color"
    ]
  },
  {
    "class": "token",
    "type": "color",
    "id": "md.ref.palette.secondary10",
    "name": "md.ref.palette.secondary10",
    "value": "#2c160d",
    "description": "",
    "category_id": "ref.palette",
    "last_updated_by": "Material",
    "last_updated": "Fri, 03 Jun 2022 14:31:26 GMT",
    "tags": [
      "md",
      "ref",
      "palette",
      "secondary10",
      "color"
    ]
  },
  {
    "class": "token",
    "type": "color",
    "id": "md.ref.palette.secondary0",
    "name": "md.ref.palette.secondary0",
    "value": "#000000",
    "description": "",
    "category_id": "ref.palette",
    "last_updated_by": "Material",
    "last_updated": "Fri, 03 Jun 2022 14:31:26 GMT",
    "tags": [
      "md",
      "ref",
      "palette",
      "secondary0",
      "color"
    ]
  },
  {
    "class": "token",
    "type": "color",
    "id": "md.ref.palette.tertiary100",
    "name": "md.ref.palette.tertiary100",
    "value": "#ffffff",
    "description": "",
    "category_id": "ref.palette",
    "last_updated_by": "Material",
    "last_updated": "Fri, 03 Jun 2022 14:31:26 GMT",
    "tags": [
      "md",
      "ref",
      "palette",
      "tertiary100",
      "color"
    ]
  },
  {
    "class": "token",
    "type": "color",
    "id": "md.ref.palette.tertiary99",
    "name": "md.ref.palette.tertiary99",
    "value": "#fffbf7",
    "description": "",
    "category_id": "ref.palette",
    "last_updated_by": "Material",
    "last_updated": "Fri, 03 Jun 2022 14:31:26 GMT",
    "tags": [
      "md",
      "ref",
      "palette",
      "tertiary99",
      "color"
    ]
  },
  {
    "class": "token",
    "type": "color",
    "id": "md.ref.palette.tertiary95",
    "name": "md.ref.palette.tertiary95",
    "value": "#fff1b5",
    "description": "",
    "category_id": "ref.palette",
    "last_updated_by": "Material",
    "last_updated": "Fri, 03 Jun 2022 14:31:26 GMT",
    "tags": [
      "md",
      "ref",
      "palette",
      "tertiary95",
      "color"
    ]
  },
  {
    "class": "token",
    "type": "color",
    "id": "md.ref.palette.tertiary90",
    "name": "md.ref.palette.tertiary90",
    "value": "#f1e2a7",
    "description": "",
    "category_id": "ref.palette",
    "last_updated_by": "Material",
    "last_updated": "Fri, 03 Jun 2022 14:31:26 GMT",
    "tags": [
      "md",
      "ref",
      "palette",
      "tertiary90",
      "color"
    ]
  },
  {
    "class": "token",
    "type": "color",
    "id": "md.ref.palette.tertiary80",
    "name": "md.ref.palette.tertiary80",
    "value": "#d4c68e",
    "description": "",
    "category_id": "ref.palette",
    "last_updated_by": "Material",
    "last_updated": "Fri, 03 Jun 2022 14:31:26 GMT",
    "tags": [
      "md",
      "ref",
      "palette",
      "tertiary80",
      "color"
    ]
  },
  {
    "class": "token",
    "type": "color",
    "id": "md.ref.palette.tertiary70",
    "name": "md.ref.palette.tertiary70",
    "value": "#b8ab75",
    "description": "",
    "category_id": "ref.palette",
    "last_updated_by": "Material",
    "last_updated": "Fri, 03 Jun 2022 14:31:26 GMT",
    "tags": [
      "md",
      "ref",
      "palette",
      "tertiary70",
      "color"
    ]
  },
  {
    "class": "token",
    "type": "color",
    "id": "md.ref.palette.tertiary60",
    "name": "md.ref.palette.tertiary60",
    "value": "#9d915d",
    "description": "",
    "category_id": "ref.palette",
    "last_updated_by": "Material",
    "last_updated": "Fri, 03 Jun 2022 14:31:26 GMT",
    "tags": [
      "md",
      "ref",
      "palette",
      "tertiary60",
      "color"
    ]
  },
  {
    "class": "token",
    "type": "color",
    "id": "md.ref.palette.tertiary50",
    "name": "md.ref.palette.tertiary50",
    "value": "#827746",
    "description": "",
    "category_id": "ref.palette",
    "last_updated_by": "Material",
    "last_updated": "Fri, 03 Jun 2022 14:31:26 GMT",
    "tags": [
      "md",
      "ref",
      "palette",
      "tertiary50",
      "color"
    ]
  },
  {
    "class": "token",
    "type": "color",
    "id": "md.ref.palette.tertiary40",
    "name": "md.ref.palette.tertiary40",
    "value": "#685e2f",
    "description": "",
    "category_id": "ref.palette",
    "last_updated_by": "Material",
    "last_updated": "Fri, 03 Jun 2022 14:31:26 GMT",
    "tags": [
      "md",
      "ref",
      "palette",
      "tertiary40",
      "color"
    ]
  },
  {
    "class": "token",
    "type": "color",
    "id": "md.ref.palette.tertiary30",
    "name": "md.ref.palette.tertiary30",
    "value": "#50471b",
    "description": "",
    "category_id": "ref.palette",
    "last_updated_by": "Material",
    "last_updated": "Fri, 03 Jun 2022 14:31:26 GMT",
    "tags": [
      "md",
      "ref",
      "palette",
      "tertiary30",
      "color"
    ]
  },
  {
    "class": "token",
    "type": "color",
    "id": "md.ref.palette.tertiary20",
    "name": "md.ref.palette.tertiary20",
    "value": "#383006",
    "description": "",
    "category_id": "ref.palette",
    "last_updated_by": "Material",
    "last_updated": "Fri, 03 Jun 2022 14:31:26 GMT",
    "tags": [
      "md",
      "ref",
      "palette",
      "tertiary20",
      "color"
    ]
  },
  {
    "class": "token",
    "type": "color",
    "id": "md.ref.palette.tertiary10",
    "name": "md.ref.palette.tertiary10",
    "value": "#221b00",
    "description": "",
    "category_id": "ref.palette",
    "last_updated_by": "Material",
    "last_updated": "Fri, 03 Jun 2022 14:31:26 GMT",
    "tags": [
      "md",
      "ref",
      "palette",
      "tertiary10",
      "color"
    ]
  },
  {
    "class": "token",
    "type": "color",
    "id": "md.ref.palette.tertiary0",
    "name": "md.ref.palette.tertiary0",
    "value": "#000000",
    "description": "",
    "category_id": "ref.palette",
    "last_updated_by": "Material",
    "last_updated": "Fri, 03 Jun 2022 14:31:26 GMT",
    "tags": [
      "md",
      "ref",
      "palette",
      "tertiary0",
      "color"
    ]
  },
  {
    "class": "token",
    "type": "color",
    "id": "md.ref.palette.neutral100",
    "name": "md.ref.palette.neutral100",
    "value": "#ffffff",
    "description": "",
    "category_id": "ref.palette",
    "last_updated_by": "Material",
    "last_updated": "Fri, 03 Jun 2022 14:31:26 GMT",
    "tags": [
      "md",
      "ref",
      "palette",
      "neutral100",
      "color"
    ]
  },
  {
    "class": "token",
    "type": "color",
    "id": "md.ref.palette.neutral99",
    "name": "md.ref.palette.neutral99",
    "value": "#fcfcfc",
    "description": "",
    "category_id": "ref.palette",
    "last_updated_by": "Material",
    "last_updated": "Fri, 03 Jun 2022 14:31:26 GMT",
    "tags": [
      "md",
      "ref",
      "palette",
      "neutral99",
      "color"
    ]
  },
  {
    "class": "token",
    "type": "color",
    "id": "md.ref.palette.neutral95",
    "name": "md.ref.palette.neutral95",
    "value": "#fbeeea",
    "description": "",
    "category_id": "ref.palette",
    "last_updated_by": "Material",
    "last_updated": "Fri, 03 Jun 2022 14:31:26 GMT",
    "tags": [
      "md",
      "ref",
      "palette",
      "neutral95",
      "color"
    ]
  },
  {
    "class": "token",
    "type": "color",
    "id": "md.ref.palette.neutral90",
    "name": "md.ref.palette.neutral90",
    "value": "#ede0dc",
    "description": "",
    "category_id": "ref.palette",
    "last_updated_by": "Material",
    "last_updated": "Fri, 03 Jun 2022 14:31:26 GMT",
    "tags": [
      "md",
      "ref",
      "palette",
      "neutral90",
      "color"
    ]
  },
  {
    "class": "token",
    "type": "color",
    "id": "md.ref.palette.neutral80",
    "name": "md.ref.palette.neutral80",
    "value": "#d0c4c0",
    "description": "",
    "category_id": "ref.palette",
    "last_updated_by": "Material",
    "last_updated": "Fri, 03 Jun 2022 14:31:26 GMT",
    "tags": [
      "md",
      "ref",
      "palette",
      "neutral80",
      "color"
    ]
  },
  {
    "class": "token",
    "type": "color",
    "id": "md.ref.palette.neutral70",
    "name": "md.ref.palette.neutral70",
    "value": "#b4a9a5",
    "description": "",
    "category_id": "ref.palette",
    "last_updated_by": "Material",
    "last_updated": "Fri, 03 Jun 2022 14:31:26 GMT",
    "tags": [
      "md",
      "ref",
      "palette",
      "neutral70",
      "color"
    ]
  },
  {
    "class": "token",
    "type": "color",
    "id": "md.ref.palette.neutral60",
    "name": "md.ref.palette.neutral60",
    "value": "#998e8b",
    "description": "",
    "category_id": "ref.palette",
    "last_updated_by": "Material",
    "last_updated": "Fri, 03 Jun 2022 14:31:26 GMT",
    "tags": [
      "md",
      "ref",
      "palette",
      "neutral60",
      "color"
    ]
  },
  {
    "class": "token",
    "type": "color",
    "id": "md.ref.palette.neutral50",
    "name": "md.ref.palette.neutral50",
    "value": "#7e7572",
    "description": "",
    "category_id": "ref.palette",
    "last_updated_by": "Material",
    "last_updated": "Fri, 03 Jun 2022 14:31:26 GMT",
    "tags": [
      "md",
      "ref",
      "palette",
      "neutral50",
      "color"
    ]
  },
  {
    "class": "token",
    "type": "color",
    "id": "md.ref.palette.neutral40",
    "name": "md.ref.palette.neutral40",
    "value": "#655c59",
    "description": "",
    "category_id": "ref.palette",
    "last_updated_by": "Material",
    "last_updated": "Fri, 03 Jun 2022 14:31:26 GMT",
    "tags": [
      "md",
      "ref",
      "palette",
      "neutral40",
      "color"
    ]
  },
  {
    "class": "token",
    "type": "color",
    "id": "md.ref.palette.neutral30",
    "name": "md.ref.palette.neutral30",
    "value": "#4d4542",
    "description": "",
    "category_id": "ref.palette",
    "last_updated_by": "Material",
    "last_updated": "Fri, 03 Jun 2022 14:31:26 GMT",
    "tags": [
      "md",
      "ref",
      "palette",
      "neutral30",
      "color"
    ]
  },
  {
    "class": "token",
    "type": "color",
    "id": "md.ref.palette.neutral20",
    "name": "md.ref.palette.neutral20",
    "value": "#362f2d",
    "description": "",
    "category_id": "ref.palette",
    "last_updated_by": "Material",
    "last_updated": "Fri, 03 Jun 2022 14:31:26 GMT",
    "tags": [
      "md",
      "ref",
      "palette",
      "neutral20",
      "color"
    ]
  },
  {
    "class": "token",
    "type": "color",
    "id": "md.ref.palette.neutral10",
    "name": "md.ref.palette.neutral10",
    "value": "#201a18",
    "description": "",
    "category_id": "ref.palette",
    "last_updated_by": "Material",
    "last_updated": "Fri, 03 Jun 2022 14:31:26 GMT",
    "tags": [
      "md",
      "ref",
      "palette",
      "neutral10",
      "color"
    ]
  },
  {
    "class": "token",
    "type": "color",
    "id": "md.ref.palette.neutral0",
    "name": "md.ref.palette.neutral0",
    "value": "#000000",
    "description": "",
    "category_id": "ref.palette",
    "last_updated_by": "Material",
    "last_updated": "Fri, 03 Jun 2022 14:31:26 GMT",
    "tags": [
      "md",
      "ref",
      "palette",
      "neutral0",
      "color"
    ]
  },
  {
    "class": "token",
    "type": "color",
    "id": "md.ref.palette.neutral-variant100",
    "name": "md.ref.palette.neutral-variant100",
    "value": "#ffffff",
    "description": "",
    "category_id": "ref.palette",
    "last_updated_by": "Material",
    "last_updated": "Fri, 03 Jun 2022 14:31:26 GMT",
    "tags": [
      "md",
      "ref",
      "palette",
      "neutral-variant100",
      "color"
    ]
  },
  {
    "class": "token",
    "type": "color",
    "id": "md.ref.palette.neutral-variant99",
    "name": "md.ref.palette.neutral-variant99",
    "value": "#fcfcfc",
    "description": "",
    "category_id": "ref.palette",
    "last_updated_by": "Material",
    "last_updated": "Fri, 03 Jun 2022 14:31:26 GMT",
    "tags": [
      "md",
      "ref",
      "palette",
      "neutral-variant99",
      "color"
    ]
  },
  {
    "class": "token",
    "type": "color",
    "id": "md.ref.palette.neutral-variant95",
    "name": "md.ref.palette.neutral-variant95",
    "value": "#ffede6",
    "description": "",
    "category_id": "ref.palette",
    "last_updated_by": "Material",
    "last_updated": "Fri, 03 Jun 2022 14:31:26 GMT",
    "tags": [
      "md",
      "ref",
      "palette",
      "neutral-variant95",
      "color"
    ]
  },
  {
    "class": "token",
    "type": "color",
    "id": "md.ref.palette.neutral-variant90",
    "name": "md.ref.palette.neutral-variant90",
    "value": "#f5ded6",
    "description": "",
    "category_id": "ref.palette",
    "last_updated_by": "Material",
    "last_updated": "Fri, 03 Jun 2022 14:31:26 GMT",
    "tags": [
      "md",
      "ref",
      "palette",
      "neutral-variant90",
      "color"
    ]
  },
  {
    "class": "token",
    "type": "color",
    "id": "md.ref.palette.neutral-variant80",
    "name": "md.ref.palette.neutral-variant80",
    "value": "#d8c2bb",
    "description": "",
    "category_id": "ref.palette",
    "last_updated_by": "Material",
    "last_updated": "Fri, 03 Jun 2022 14:31:26 GMT",
    "tags": [
      "md",
      "ref",
      "palette",
      "neutral-variant80",
      "color"
    ]
  },
  {
    "class": "token",
    "type": "color",
    "id": "md.ref.palette.neutral-variant70",
    "name": "md.ref.palette.neutral-variant70",
    "value": "#bca7a0",
    "description": "",
    "category_id": "ref.palette",
    "last_updated_by": "Material",
    "last_updated": "Fri, 03 Jun 2022 14:31:26 GMT",
    "tags": [
      "md",
      "ref",
      "palette",
      "neutral-variant70",
      "color"
    ]
  },
  {
    "class": "token",
    "type": "color",
    "id": "md.ref.palette.neutral-variant60",
    "name": "md.ref.palette.neutral-variant60",
    "value": "#a08d86",
    "description": "",
    "category_id": "ref.palette",
    "last_updated_by": "Material",
    "last_updated": "Fri, 03 Jun 2022 14:31:26 GMT",
    "tags": [
      "md",
      "ref",
      "palette",
      "neutral-variant60",
      "color"
    ]
  },
  {
    "class": "token",
    "type": "color",
    "id": "md.ref.palette.neutral-variant50",
    "name": "md.ref.palette.neutral-variant50",
    "value": "#85736d",
    "description": "",
    "category_id": "ref.palette",
    "last_updated_by": "Material",
    "last_updated": "Fri, 03 Jun 2022 14:31:26 GMT",
    "tags": [
      "md",
      "ref",
      "palette",
      "neutral-variant50",
      "color"
    ]
  },
  {
    "class": "token",
    "type": "color",
    "id": "md.ref.palette.neutral-variant40",
    "name": "md.ref.palette.neutral-variant40",
    "value": "#6b5b55",
    "description": "",
    "category_id": "ref.palette",
    "last_updated_by": "Material",
    "last_updated": "Fri, 03 Jun 2022 14:31:26 GMT",
    "tags": [
      "md",
      "ref",
      "palette",
      "neutral-variant40",
      "color"
    ]
  },
  {
    "class": "token",
    "type": "color",
    "id": "md.ref.palette.neutral-variant30",
    "name": "md.ref.palette.neutral-variant30",
    "value": "#52433e",
    "description": "",
    "category_id": "ref.palette",
    "last_updated_by": "Material",
    "last_updated": "Fri, 03 Jun 2022 14:31:26 GMT",
    "tags": [
      "md",
      "ref",
      "palette",
      "neutral-variant30",
      "color"
    ]
  },
  {
    "class": "token",
    "type": "color",
    "id": "md.ref.palette.neutral-variant20",
    "name": "md.ref.palette.neutral-variant20",
    "value": "#3b2d28",
    "description": "",
    "category_id": "ref.palette",
    "last_updated_by": "Material",
    "last_updated": "Fri, 03 Jun 2022 14:31:26 GMT",
    "tags": [
      "md",
      "ref",
      "palette",
      "neutral-variant20",
      "color"
    ]
  },
  {
    "class": "token",
    "type": "color",
    "id": "md.ref.palette.neutral-variant10",
    "name": "md.ref.palette.neutral-variant10",
    "value": "#251915",
    "description": "",
    "category_id": "ref.palette",
    "last_updated_by": "Material",
    "last_updated": "Fri, 03 Jun 2022 14:31:26 GMT",
    "tags": [
      "md",
      "ref",
      "palette",
      "neutral-variant10",
      "color"
    ]
  },
  {
    "class": "token",
    "type": "color",
    "id": "md.ref.palette.neutral-variant0",
    "name": "md.ref.palette.neutral-variant0",
    "value": "#000000",
    "description": "",
    "category_id": "ref.palette",
    "last_updated_by": "Material",
    "last_updated": "Fri, 03 Jun 2022 14:31:26 GMT",
    "tags": [
      "md",
      "ref",
      "palette",
      "neutral-variant0",
      "color"
    ]
  },
  {
    "class": "token",
    "type": "color",
    "id": "md.ref.palette.error100",
    "name": "md.ref.palette.error100",
    "value": "#ffffff",
    "description": "",
    "category_id": "ref.palette",
    "last_updated_by": "Material",
    "last_updated": "Fri, 03 Jun 2022 14:31:26 GMT",
    "tags": [
      "md",
      "ref",
      "palette",
      "error100",
      "color"
    ]
  },
  {
    "class": "token",
    "type": "color",
    "id": "md.ref.palette.error99",
    "name": "md.ref.palette.error99",
    "value": "#fcfcfc",
    "description": "",
    "category_id": "ref.palette",
    "last_updated_by": "Material",
    "last_updated": "Fri, 03 Jun 2022 14:31:26 GMT",
    "tags": [
      "md",
      "ref",
      "palette",
      "error99",
      "color"
    ]
  },
  {
    "class": "token",
    "type": "color",
    "id": "md.ref.palette.error95",
    "name": "md.ref.palette.error95",
    "value": "#ffede9",
    "description": "",
    "category_id": "ref.palette",
    "last_updated_by": "Material",
    "last_updated": "Fri, 03 Jun 2022 14:31:26 GMT",
    "tags": [
      "md",
      "ref",
      "palette",
      "error95",
      "color"
    ]
  },
  {
    "class": "token",
    "type": "color",
    "id": "md.ref.palette.error90",
    "name": "md.ref.palette.error90",
    "value": "#ffdad4",
    "description": "",
    "category_id": "ref.palette",
    "last_updated_by": "Material",
    "last_updated": "Fri, 03 Jun 2022 14:31:26 GMT",
    "tags": [
      "md",
      "ref",
      "palette",
      "error90",
      "color"
    ]
  },
  {
    "class": "token",
    "type": "color",
    "id": "md.ref.palette.error80",
    "name": "md.ref.palette.error80",
    "value": "#ffb4a9",
    "description": "",
    "category_id": "ref.palette",
    "last_updated_by": "Material",
    "last_updated": "Fri, 03 Jun 2022 14:31:26 GMT",
    "tags": [
      "md",
      "ref",
      "palette",
      "error80",
      "color"
    ]
  },
  {
    "class": "token",
    "type": "color",
    "id": "md.ref.palette.error70",
    "name": "md.ref.palette.error70",
    "value": "#ff897a",
    "description": "",
    "category_id": "ref.palette",
    "last_updated_by": "Material",
    "last_updated": "Fri, 03 Jun 2022 14:31:26 GMT",
    "tags": [
      "md",
      "ref",
      "palette",
      "error70",
      "color"
    ]
  },
  {
    "class": "token",
    "type": "color",
    "id": "md.ref.palette.error60",
    "name": "md.ref.palette.error60",
    "value": "#ff5449",
    "description": "",
    "category_id": "ref.palette",
    "last_updated_by": "Material",
    "last_updated": "Fri, 03 Jun 2022 14:31:26 GMT",
    "tags": [
      "md",
      "ref",
      "palette",
      "error60",
      "color"
    ]
  },
  {
    "class": "token",
    "type": "color",
    "id": "md.ref.palette.error50",
    "name": "md.ref.palette.error50",
    "value": "#dd3730",
    "description": "",
    "category_id": "ref.palette",
    "last_updated_by": "Material",
    "last_updated": "Fri, 03 Jun 2022 14:31:26 GMT",
    "tags": [
      "md",
      "ref",
      "palette",
      "error50",
      "color"
    ]
  },
  {
    "class": "token",
    "type": "color",
    "id": "md.ref.palette.error40",
    "name": "md.ref.palette.error40",
    "value": "#ba1b1b",
    "description": "",
    "category_id": "ref.palette",
    "last_updated_by": "Material",
    "last_updated": "Fri, 03 Jun 2022 14:31:26 GMT",
    "tags": [
      "md",
      "ref",
      "palette",
      "error40",
      "color"
    ]
  },
  {
    "class": "token",
    "type": "color",
    "id": "md.ref.palette.error30",
    "name": "md.ref.palette.error30",
    "value": "#930006",
    "description": "",
    "category_id": "ref.palette",
    "last_updated_by": "Material",
    "last_updated": "Fri, 03 Jun 2022 14:31:26 GMT",
    "tags": [
      "md",
      "ref",
      "palette",
      "error30",
      "color"
    ]
  },
  {
    "class": "token",
    "type": "color",
    "id": "md.ref.palette.error20",
    "name": "md.ref.palette.error20",
    "value": "#680003",
    "description": "",
    "category_id": "ref.palette",
    "last_updated_by": "Material",
    "last_updated": "Fri, 03 Jun 2022 14:31:26 GMT",
    "tags": [
      "md",
      "ref",
      "palette",
      "error20",
      "color"
    ]
  },
  {
    "class": "token",
    "type": "color",
    "id": "md.ref.palette.error10",
    "name": "md.ref.palette.error10",
    "value": "#410001",
    "description": "",
    "category_id": "ref.palette",
    "last_updated_by": "Material",
    "last_updated": "Fri, 03 Jun 2022 14:31:26 GMT",
    "tags": [
      "md",
      "ref",
      "palette",
      "error10",
      "color"
    ]
  },
  {
    "class": "token",
    "type": "color",
    "id": "md.ref.palette.error0",
    "name": "md.ref.palette.error0",
    "value": "#000000",
    "description": "",
    "category_id": "ref.palette",
    "last_updated_by": "Material",
    "last_updated": "Fri, 03 Jun 2022 14:31:26 GMT",
    "tags": [
      "md",
      "ref",
      "palette",
      "error0",
      "color"
    ]
  }
];