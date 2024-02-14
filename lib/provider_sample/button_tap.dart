import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sample_2/provider_sample/provider_model.dart';
import 'package:provider/provider.dart';

class ButtonTap extends StatefulWidget {
  const ButtonTap({super.key});

  @override
  State<ButtonTap> createState() => _ButtonTapState();
}

class _ButtonTapState extends State<ButtonTap> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        OutlinedButton(
          onPressed: () {
            onButtonClick();
          },
          child: Text("Tap On Me"),
        )
      ],
    );
  }

  void onButtonClick() {
    setState(() {
      Provider.of<ProviderModel>(context, listen: false).age++;
    });
  }
}
