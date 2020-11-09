import 'package:flutter/material.dart';
import 'app_assets.dart';

class firstname_textfield extends StatelessWidget {

  final String text;
  firstname_textfield({this.text});

  @override
  Widget build(BuildContext context) {

    final firstname = TextFormField(
        keyboardType: TextInputType.name,
        decoration: InputDecoration(
          hoverColor: Colors.grey,
          focusColor: AppColors.accentcolor,
          labelText: text,
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          suffixIcon: Image(image: AssetImage('images/ic_user_focused.png'),),
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

    return firstname;
  }
}

class lastname_textfield extends StatelessWidget {

  final String text;
  lastname_textfield({this.text});

  @override
  Widget build(BuildContext context) {

    final lastname = TextFormField(
        keyboardType: TextInputType.name,
        decoration: InputDecoration(
          hoverColor: Colors.grey,
          focusColor: AppColors.accentcolor,
          labelText: text,
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          suffixIcon: Image(image: AssetImage('images/ic_user_unfocused.png'),),
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

    return lastname;
  }
}

class dob_textfield extends StatelessWidget {

  final String text;
  dob_textfield({this.text});

  @override
  Widget build(BuildContext context) {

    final dob = TextFormField(
        keyboardType: TextInputType.datetime,
        decoration: InputDecoration(
          hoverColor: Colors.grey,
          focusColor: AppColors.accentcolor,
          labelText: text,
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          suffixIcon: Image(image: AssetImage('images/ic_calendar_unfoc.png'),),
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

    return dob;
  }
}

class password_Textfield extends StatelessWidget {

  final String text;
  password_Textfield({this.text});

  @override
  Widget build(BuildContext context) {

    final password = TextFormField(
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
          hoverColor: Colors.grey,
          focusColor: AppColors.accentcolor,
          labelText: text,
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          suffixIcon: Image(image: AssetImage('images/ic_pass_unfoc.png'),),
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

    return password;
  }
}

class phone_Textfield extends StatelessWidget {

  final String text;
  phone_Textfield({this.text});

  @override
  Widget build(BuildContext context) {

    final phoneTextField = TextFormField(
        keyboardType: TextInputType.phone,
        decoration: InputDecoration(
          hoverColor: Colors.grey,
          focusColor: AppColors.accentcolor,
          labelText: text,
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          suffixIcon: Image(image: AssetImage('images/ic_phone_unfoc.png'),),
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

class email_Textfield extends StatelessWidget {

  final String text;
  email_Textfield({this.text});

  @override
  Widget build(BuildContext context) {

    final email = TextFormField(
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          hoverColor: Colors.grey,
          focusColor: AppColors.accentcolor,
          labelText: text,
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          suffixIcon: Image(image: AssetImage('images/ic_email_unfoc.png'),),
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

    return email;
  }
}
