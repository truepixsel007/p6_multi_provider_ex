
import 'package:flutter/material.dart';
import 'package:p6_multi_provider_ex/provider/example_one_provider.dart';
import 'package:provider/provider.dart';

class ExampleOneScreen extends StatefulWidget {
  const ExampleOneScreen({super.key});

  @override
  State<ExampleOneScreen> createState() => _ExampleOneScreenState();
}

class _ExampleOneScreenState extends State<ExampleOneScreen> {

  // double value = 1.0;

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<ExampleOneProvider>(context,listen: false);
    print('build');
    return Scaffold(
      appBar: AppBar(
        title: Text("Multi Provider"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Consumer<ExampleOneProvider>(builder: (context,value,child){
            return  Slider(
                min: 0,
                max: 1,
                // value: value,
                value: value.value,
                onChanged: (val){
                  value.setValue(val);
                  // print(value);
                  // value = val;
                  // setState(() {
                  //
                  // });
                }
            );
          }),

          Consumer<ExampleOneProvider>(builder: (context,value,child){
            return   Row(
              children: [
                Expanded(
                  child: Container(
                    height: 100,
                    decoration: BoxDecoration(
                        color: Colors.green.withOpacity(
                          // value
                            provider.value
                        )
                    ),
                    child: Text(
                        "container 1"
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 100,
                    decoration: BoxDecoration(
                        color: Colors.red.withOpacity(
                          // value
                            provider.value
                        )
                    ),
                    child: Text(
                        "container 1"
                    ),
                  ),
                )
              ],
            );
          }),


        ],
      ),
    );
  }
}
