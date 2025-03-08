import 'package:flutter/cupertino.dart';

class CurrencyConvertorPageCuppartino extends StatefulWidget {
  const CurrencyConvertorPageCuppartino({super.key});

  @override
  State<CurrencyConvertorPageCuppartino> createState() =>
      _CurrencyConvertorPageCuppartinoState();
}


class _CurrencyConvertorPageCuppartinoState extends State<CurrencyConvertorPageCuppartino> {
  double result = 0;
  final TextEditingController textEditingController = TextEditingController();
  void convert(){
    result = double.parse(textEditingController.text)*3.58;
    setState(() {});
  }
  @override
  Widget build(BuildContext context) {
      return CupertinoPageScaffold(
        backgroundColor: CupertinoColors.systemIndigo,
        navigationBar: CupertinoNavigationBar(
          middle: Text("Currency convertor",
            style:TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
              color: CupertinoColors.white,
            ),),
          backgroundColor: CupertinoColors.systemIndigo,
        ) ,
        child: Center(
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
                          color: CupertinoColors.white
                      ),),
                  ),
                  CupertinoTextField(
                    controller: textEditingController,
                    style: const TextStyle(
                        color: CupertinoColors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0
                    ),
                    decoration: BoxDecoration(
                      color: CupertinoColors.white,
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    placeholder: " the amount of money in USD",
                    placeholderStyle: TextStyle(
                      color: CupertinoColors.black,
                    ),
                    prefix: Icon(CupertinoIcons.money_dollar),
                    keyboardType: const TextInputType.numberWithOptions(
                      decimal: true,
                    ),
                  ),
                  const SizedBox(height: 10,),
                  CupertinoButton(
                    onPressed: convert,
                    color: CupertinoColors.black,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(CupertinoIcons.money_dollar_circle,color: CupertinoColors.systemGreen,),
                        const SizedBox(width: 8,),
                        const Text(
                          "Convert",
                          textAlign: TextAlign.center,
                          style:  TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            color: CupertinoColors.systemGreen,
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