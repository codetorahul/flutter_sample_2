import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sample_2/provider_sample/provider_model.dart';
import 'package:provider/provider.dart';

class InputData extends StatefulWidget {
  const InputData({super.key});

  @override
  State<InputData> createState() => _InputDataState();
}

class _InputDataState extends State<InputData> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: TextInputType.number,
      onChanged: (value) {
        Provider.of<ProviderModel>(context, listen: false).age =
            int.parse(value);
      },
    );
  }
}
