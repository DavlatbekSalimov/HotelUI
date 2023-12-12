import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hotel/Pages/InterensPage/interensPage.dart';
import 'package:hotel/widgets/MyElevationbutton.dart';
import 'package:hotel/widgets/appbarbottomText.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class VerifyAccount extends StatefulWidget {
  const VerifyAccount({super.key});

  @override
  State<VerifyAccount> createState() => _VerifyAccountState();
}

class _VerifyAccountState extends State<VerifyAccount> {
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          AppbarBottomText(first: 'Verify', last: 'Account'),
          Text(
            'Please  enter the verification code sent toexample@gmail.com',
            textAlign: TextAlign.center,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 39, vertical: 20),
            child: PinCodeTextField(
              appContext: context,
              length: 4,
              cursorHeight: 20,
              textStyle: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.normal,
              ),
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              pinTheme: PinTheme(
                shape: PinCodeFieldShape.box,
                borderWidth: 1,
                fieldWidth: 50,
                inactiveColor: Colors.black45,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          Text(
            '1:26',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Didn’t receive code?  ',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                'Resend again',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  decoration: TextDecoration.underline,
                  decorationColor: Color.fromRGBO(233, 225, 74, 1),
                  color: Color.fromRGBO(233, 225, 74, 1),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          MyElevatedButtom(
              text: 'Verify',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (contex) => InterensPage()),
                );
                dispose();
              })
        ],
      ),
    );
  }
}
