import 'package:flutter/material.dart';

class CurrencyConvertorMaterialPage extends StatefulWidget{
  const CurrencyConvertorMaterialPage({super.key});
  @override
  State<CurrencyConvertorMaterialPage> createState() => _CurrencyConvertorMaterialPageState();
}


class _CurrencyConvertorMaterialPageState
    extends State<CurrencyConvertorMaterialPage>{
  double result = 0;
  final TextEditingController textEditingController = TextEditingController();
  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    print("object");
    void convert(){
      setState(() {
        result = double.parse(textEditingController.text)*3.58;
      });
    }
    final border = OutlineInputBorder(
        borderSide: BorderSide(
          width: 2.0,
          style: BorderStyle.solid,
        ),
        borderRadius: BorderRadius.circular(10)
    );
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: Text("Currency convertor",
          style:TextStyle(
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
        elevation: 0,
      ) ,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children:[
                Container(
                  margin: const EdgeInsets.all(10.0),
                  child: Text(
                    '${result!=0 ? result.toStringAsFixed(3) : result.toStringAsFixed(0)} ILS',
                    style: const TextStyle(
                        fontSize: 55,
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                    ),),
                ),
                TextField(
                  controller: textEditingController,
                  style: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0
                  ),
                  decoration: InputDecoration(
                    hintText: " the amount of money in USD",
                    hintStyle: const TextStyle(
                        color: Colors.black,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold
                    ),
                    prefixIcon: const Icon(Icons.monetization_on_outlined),
                    prefixIconColor: Colors.green,
                    filled: true,
                    fillColor: Colors.white,
                    focusedBorder: border,
                    enabledBorder: border,
                  ),
                  keyboardType: const TextInputType.numberWithOptions(
                    decimal: true,
                  ),
                ),
               const SizedBox(height: 10,),
                ElevatedButton(onPressed: convert,
                 style:const ButtonStyle(
                  elevation: WidgetStatePropertyAll(15),
                  backgroundColor: WidgetStatePropertyAll(Colors.black),
                  foregroundColor: WidgetStatePropertyAll(Colors.white),
                  minimumSize: WidgetStatePropertyAll(Size(double.infinity, 50)),
                ) ,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(Icons.currency_exchange,color: Colors.lightGreenAccent,),
                      const SizedBox(width: 8,),
                      const Text(
                        "Convert",
                        textAlign: TextAlign.center,
                        style:  TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.lightGreenAccent,
                        ),
                      ),
                    ],
                  ),
                )]
          ),
        ),
      ),
    );
  }
}


