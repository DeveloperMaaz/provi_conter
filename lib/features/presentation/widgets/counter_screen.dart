import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provi_conter/features/presentation/widgets/logic_state.dart';
import 'package:provider/provider.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({Key? key}) : super(key: key);

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  @override
  Widget build(BuildContext context) {
    var currentState=Provider.of<LogicState>(context,listen: false);

    return Scaffold(
      appBar: AppBar(title: const Text("CounterApp"),),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Consumer<LogicState>(builder: ((context, value, child) {
              return Text(
                "${value.i}",
                style: const TextStyle(
                  fontSize: 60,
                ),
              );
            })),
            const SizedBox(height: 10.0,),
            ElevatedButton(onPressed: (){
              currentState.increment();
            }, child: const Text('+',style: TextStyle(fontSize:15),)),
            const SizedBox(height: 10.0,),
            ElevatedButton(onPressed: (){
              currentState.decrement();
            }, child: const Text('-',style: TextStyle(fontSize:15),)),
          ],
        ),
      ),
    );
  }
}
