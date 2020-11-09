import 'package:flutter/material.dart';
import 'app_assets.dart';

class textFieldWidget extends StatelessWidget {

  final String text;
  textFieldWidget({this.text});

  @override
  Widget build(BuildContext context) {

    final phoneTextField = TextFormField(
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
          hoverColor: Colors.grey,
          focusColor: AppColors.accentcolor,
          labelText: text,
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          suffixIcon: Icon(Icons.person_outline, color: AppColors.accentcolor,),
          fillColor: AppColors.accentcolor,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5.0),
            borderSide: BorderSide(
              color: AppColors.accentcolor,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5.0),
            borderSide: BorderSide(
              color: AppColors.accentcolor,
              width: 1.0,
            ),
          ),
        )
    );

    return phoneTextField;
  }
}
