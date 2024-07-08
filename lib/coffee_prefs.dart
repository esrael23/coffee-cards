import 'package:coffee_card/styled_body_text.dart';
import 'package:coffee_card/styled_button.dart';
import 'package:flutter/material.dart';

class CoffeePrefs extends StatefulWidget {
  const CoffeePrefs({super.key});

  @override
  State<CoffeePrefs> createState() => _CoffeePrefsState();
}

class _CoffeePrefsState extends State<CoffeePrefs> {
  int strength = 1;

  int sugars = 1;

  void increaseStength() {
    setState(() {
      strength = strength < 5 ? strength + 1 : 1;
    });
  }

  void increasesugar() {
    setState(() {
      sugars = sugars < 5 ? sugars + 1 : 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const StyledBodyText("Strength: "),
            // Text("$strength"),
            for (int i = 0; i < strength; i++)
              Image.asset(
                'images/coffee_bean.png',
                width: 30,
              ),
            Expanded(
              child: const SizedBox(),
            ),
            StyledButton(onPressed: increaseStength, child: Text("+"))
          ],
        ),
        Row(
          children: [
            const StyledBodyText("sugers: "),
            if (sugars == 0) const Text("no sugar"),

            // Text('$sugars'),
            for (int i = 0; i < sugars; i++)
              Image.asset(
                'images/sugar_cube.png',
                width: 25,
              ),
            Expanded(
              child: const SizedBox(),
            ),
            StyledButton(onPressed: increasesugar, child: Text("+"))
          ],
        )
      ],
    );
  }
}
