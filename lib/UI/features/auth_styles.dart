import 'package:flutter/material.dart';

class AuthStyles {

  _inputButton(changeVisible) =>
      TextButton(
          onPressed: changeVisible,
          style: ButtonStyle(
              overlayColor: MaterialStateProperty.all(Colors.white),
              shape: MaterialStateProperty.all<CircleBorder>(
                  const CircleBorder()),
              splashFactory: NoSplash.splashFactory),
          child: const Icon(
            Icons.visibility_off,
            color: Colors.grey,
          ));

  InputDecoration decoration(BuildContext context,
      {required String hintText, bool icon = false, changeVisible}) =>
      InputDecoration(
          filled: true,
          hintText: hintText,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          suffixIcon: icon ? _inputButton(changeVisible) : null,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)));

  styleText(context) =>
      Theme
          .of(context)
          .textTheme
          .bodyMedium
          ?.copyWith(color: Colors.black);

  ButtonStyle filledButtonStyle(BuildContext context) {
    return ElevatedButton.styleFrom(
      // Foreground color
      onPrimary: Theme
          .of(context)
          .colorScheme
          .onPrimary,
      // Background color
      primary: Theme
          .of(context)
          .colorScheme
          .primary,
    ).copyWith(elevation: ButtonStyleButton.allOrNull(0.0));
  }

  ButtonStyle tonalButtonStyle(BuildContext context) {
    return ElevatedButton.styleFrom(
      // Foreground color
      onPrimary: Theme.of(context).colorScheme.onSecondaryContainer,
      // Background color
      primary: Theme.of(context).colorScheme.secondaryContainer,
    ).copyWith(elevation: ButtonStyleButton.allOrNull(0.0)); }
}


