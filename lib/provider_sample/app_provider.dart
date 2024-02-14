import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sample_2/provider_sample/provider_model.dart';
import 'package:flutter_sample_2/provider_sample/text_to_display.dart';
import 'package:provider/provider.dart';

import 'button_tap.dart';
import 'input_data.dart';

// Provider App: for running 'provider' by using consumer if need to listen on same screen.
class ProviderWithConsumerApp extends StatelessWidget {
  const ProviderWithConsumerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: ChangeNotifierProvider(
            create: (_) => ProviderModel(),
            child: Consumer<ProviderModel>(
              builder:
                  (BuildContext context, ProviderModel value, Widget? child) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      value.message,
                      style: TextStyle(
                          color: value.age > 18 ? Colors.green : Colors.red),
                    ),
                    TextField(
                      keyboardType: TextInputType.number,
                      onChanged: (value) {
                        Provider.of<ProviderModel>(context, listen: false).age =
                            int.parse(value);
                      },
                    )
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}

// Provider App: for running 'provider' sample code.
class ProviderApp extends StatelessWidget {
  const ProviderApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: ChangeNotifierProvider(
            create: (_) => ProviderModel(),
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextToDisplay(),
                ButtonTap(),
                InputData(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
