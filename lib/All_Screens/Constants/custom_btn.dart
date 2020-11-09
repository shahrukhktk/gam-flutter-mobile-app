import 'package:flutter/material.dart';
import 'app_assets.dart';

class CustomBtn extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final FlatButton flatButton = new FlatButton(
      onPressed: () {
        // Navigator.push(context,
        //     MaterialPageRoute(builder: (context) => OtpPage()));
      },
      child: SizedBox(
        height: 55,
        width: 335,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
          ),
          child: Card(
              elevation: 1,
              color: AppColors.themecolor,
              child: Center(
                child: Text(Strings_Text.createaccount, style: TextStyle(color: Colors.white, fontSize: 16.0
                ),),
              ),
          ),
        ),
      ),
    );

    return flatButton;
  }
}
