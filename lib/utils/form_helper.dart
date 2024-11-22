import 'package:flutter/material.dart';

class FormHelper {
  static Widget textInput(
    BuildContext context,
    Object? initialValue,
    ValueChanged<String> onChanged, {
    bool isTextArea = false,
    bool isNumberInput = false,
    bool obscureText = false,
    required FormFieldValidator<String> onValidate,
    Widget? prefixIcon,
    Widget? suffixIcon,
  }) {
    return TextFormField(
      initialValue: initialValue?.toString() ?? "",
      decoration: fieldDecoration(
        context,
        "",
        "",
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
      ),
      obscureText: obscureText,
      maxLines: isTextArea ? 3 : 1,
      keyboardType: isNumberInput ? TextInputType.number : TextInputType.text,
      onChanged: onChanged,
      validator: onValidate,
    );
  }

  static InputDecoration fieldDecoration(
    BuildContext context,
    String hintText,
    String helperText, {
    Widget? prefixIcon,
    Widget? suffixIcon,
  }) {
    return InputDecoration(
      contentPadding: const EdgeInsets.all(8),
      hintText: hintText,
      helperText: helperText,
      prefixIcon: prefixIcon,
      suffixIcon: suffixIcon,
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: Theme.of(context).primaryColor,
          width: 1,
        ),
      ),
      border: OutlineInputBorder(
        borderSide: BorderSide(
          color: Theme.of(context).primaryColor,
          width: 1,
        ),
      ),
    );
  }

  static Widget fieldLabel(String labelName) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 5, 0, 10),
      child: Text(
        labelName,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 15.0,
        ),
      ),
    );
  }

  static Widget saveButton(
    String buttonText,
    VoidCallback onTap, {
    required Color color,
    required Color textColor,
    required bool fullWidth,
  }) {
    return SizedBox(
      height: 50.0,
      width: fullWidth ? double.infinity : 150.0,
      child: ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
        ),
        child: Text(
          buttonText,
          style: TextStyle(
            color: textColor,
            fontSize: 16,
            fontWeight: FontWeight.w600,
            letterSpacing: 1,
          ),
        ),
      ),
    );
  }

  static void showMessage(
    BuildContext context,
    String title,
    String message,
    String buttonText,
    VoidCallback onPressed,
  ) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(title),
          content: Text(message),
          actions: [
            TextButton(
              onPressed: onPressed,
              child: Text(buttonText),
            )
          ],
        );
      },
    );
  }
}
