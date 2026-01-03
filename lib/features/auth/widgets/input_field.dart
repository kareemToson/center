import 'package:center/core/styles/colors_manager.dart';
import 'package:flutter/material.dart';

class AppInputField extends StatefulWidget {
  final String hint;
  final IconData prefixIcon;
  final TextEditingController? controller;
  final bool isPassword;
  final TextInputType keyboardType;

  const AppInputField({
    super.key,
    required this.hint,
    required this.prefixIcon,
    this.controller,
    this.isPassword = false,
    this.keyboardType = TextInputType.text,
  });

  @override
  State<AppInputField> createState() => _AppInputFieldState();
}

class _AppInputFieldState extends State<AppInputField> {
  late bool _obscureText;

  @override
  void initState() {
    super.initState();
    _obscureText = widget.isPassword;
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.controller,
      keyboardType: widget.keyboardType,
      obscureText: widget.isPassword ? _obscureText : false,
      decoration: InputDecoration(
        hintText: widget.hint,
        prefixIcon: Icon(
          widget.prefixIcon,
          color: ColorsManager.greyWithOpacityColor,
        ),
        suffixIcon: widget.isPassword
            ? IconButton(
                icon: Icon(
                  _obscureText ? Icons.visibility_off : Icons.visibility,
                  color: ColorsManager.greyWithOpacityColor,
                ),
                onPressed: () {
                  setState(() {
                    _obscureText = !_obscureText;
                  });
                },
              )
            : null,
        filled: true,
        fillColor: Colors.white,

        contentPadding: const EdgeInsets.symmetric(
          vertical: 16,
          horizontal: 20,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),

          borderSide: BorderSide(color: Colors.white, width: 1.5),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),

          borderSide: BorderSide(
            color: ColorsManager.greyWithOpacityColor,
            width: 1.5,
          ),
        ),
      ),
    );
  }
}
