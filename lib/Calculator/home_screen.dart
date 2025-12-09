import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:projects/Calculator/components.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String resultText = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              alignment: Alignment.centerRight,
              child: Text(
                resultText,
                style: GoogleFonts.castoro(color: Colors.white, fontSize: 50),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Row(
              children: [
                Expanded(
                  flex: 3,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Components(
                            onPressed: onClearClicked,
                            backgroundColor: Color(0xFF616161),
                            text: "AC",
                          ),
                          Components(
                            onPressed: onBackSpaceClicked,
                            backgroundColor: Color(0xFF616161),
                            isIcon: true,
                            text: "",
                          ),
                          Components(
                            onPressed: onOperatorClicked,
                            backgroundColor: Color(0xFF005DB2),
                            text: "/",
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Components(
                            onPressed: onDigitClicked,
                            backgroundColor: Color(0xFF303136),
                            textColor: Color(0xFF29A8FF),
                            text: "7",
                          ),
                          Components(
                            onPressed: onDigitClicked,
                            backgroundColor: Color(0xFF303136),
                            textColor: Color(0xFF29A8FF),
                            text: "8",
                          ),
                          Components(
                            onPressed: onDigitClicked,
                            backgroundColor: Color(0xFF303136),
                            textColor: Color(0xFF29A8FF),
                            text: "9",
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Components(
                            onPressed: onDigitClicked,
                            backgroundColor: Color(0xFF303136),
                            textColor: Color(0xFF29A8FF),
                            text: "4",
                          ),
                          Components(
                            onPressed: onDigitClicked,
                            backgroundColor: Color(0xFF303136),
                            textColor: Color(0xFF29A8FF),
                            text: "5",
                          ),
                          Components(
                            onPressed: onDigitClicked,
                            backgroundColor: Color(0xFF303136),
                            textColor: Color(0xFF29A8FF),
                            text: "6",
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Components(
                            onPressed: onDigitClicked,
                            backgroundColor: Color(0xFF303136),
                            textColor: Color(0xFF29A8FF),
                            text: "1",
                          ),
                          Components(
                            onPressed: onDigitClicked,
                            backgroundColor: Color(0xFF303136),
                            textColor: Color(0xFF29A8FF),
                            text: "2",
                          ),
                          Components(
                            onPressed: onDigitClicked,
                            backgroundColor: Color(0xFF303136),
                            textColor: Color(0xFF29A8FF),
                            text: "3",
                          ),
                        ],
                      ),
                      Row(
                        spacing: 30,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Expanded(
                            flex: 3,
                            child: Components(
                              onPressed: onDigitClicked,
                              backgroundColor: Color(0xFF303136),
                              textColor: Color(0xFF29A8FF),
                              text: "0",
                            ),
                          ),
                          Expanded(
                            child: Components(
                              onPressed: onDigitClicked,
                              backgroundColor: Color(0xFF303136),
                              textColor: Color(0xFF29A8FF),
                              text: ".",
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 34),
                    child: Column(
                      spacing: 20,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Components(
                          onPressed: onOperatorClicked,
                          backgroundColor: Color(0xFF005DB2),
                          text: "*",
                        ),
                        Components(
                          onPressed: onOperatorClicked,
                          backgroundColor: Color(0xFF005DB2),
                          text: "-",
                        ),
                        Expanded(
                          child: Components(
                            onPressed: onOperatorClicked,
                            backgroundColor: Color(0xFF005DB2),
                            text: "+",
                          ),
                        ),
                        Expanded(
                          child: Components(
                            onPressed: onEqualClicked,
                            backgroundColor: Color(0xFF29A8FF),
                            text: "=",
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void onDigitClicked(String text) {
    if (text == "." && resultText.contains(".")) {
      return;
    }
    resultText += text;
    setState(() {});
  }

  void onBackSpaceClicked(String text) {
    setState(() {
      if (resultText.isEmpty) {
        return;
      } else {
        resultText = resultText.substring(0, resultText.length - 1);
      }
      print(resultText);
    });
  }

  String lhs = '';
  String operator = '';
  String rhs = '';
  void onOperatorClicked(String clickedOperator) {
    if (operator.isEmpty) {
      lhs = resultText;
      operator = clickedOperator;
    } else {
      rhs = resultText;
      lhs = calculate(lhs, operator, rhs);
    }
    operator = clickedOperator;
    resultText = '';
  }

  String calculate(String lhs, String operator, String rhs) {
    double num1 = double.parse(lhs);
    double num2 = double.parse(rhs);
    double result = 0;
    switch (operator) {
      case '+':
        result = num1 + num2;
        break;
      case '-':
        result = num1 - num2;
        break;
      case '*':
        result = num1 * num2;
        break;
      case '/':
        result = num1 / num2;
        break;
    }
    setState(() {
      resultText = result.toString();
    });
    return result.toString();
  }

  void onEqualClicked(String clickedOperator) {
    rhs = resultText;
    lhs = calculate(lhs, operator, rhs);
    operator = '';
    rhs = '';
    setState(() {});
  }

  void onClearClicked(String text) {
    resultText = "";
    lhs = '';
    operator = '';
    rhs = '';
    setState(() {});
  }
}
