import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sample_2/provider_sample/provider_model.dart';
import 'package:provider/provider.dart';

class TextToDisplay extends StatefulWidget {
  const TextToDisplay({super.key});

  @override
  State<TextToDisplay> createState() => _TextToDisplayState();
}

class _TextToDisplayState extends State<TextToDisplay> {
  @override
  Widget build(BuildContext context) {
    var age = Provider.of<ProviderModel>(context).age;
    var message = Provider.of<ProviderModel>(context).message;
    return Column(
      children: [
        Text(
          message,
          style: TextStyle(color: age > 18 ? Colors.green : Colors.red),
        )
      ],
    );
  }
}
