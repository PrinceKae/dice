import 'package:flutter/material.dart';

const startAlignment =  Alignment.topLeft;
const endAlignment =   Alignment.bottomRight;


 class GradientContainer extends StatefulWidget {
   const GradientContainer(this.color1, this.color2,{super.key,});

final Color color1;
final Color color2;

  @override
  State<GradientContainer> createState() => _GradientContainerState();
}

class _GradientContainerState extends State<GradientContainer> {
var activeDiceImage = 'assets/images/dice-4.png';

void rollDice (){
  activeDiceImage = 'assets/images/dice-6.png';

}

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:  BoxDecoration(
        gradient: LinearGradient(
          colors: [widget.color1, widget.color2],
          begin:startAlignment,
          end: endAlignment,
        ),
      ),
      child: Center(
        child: Column(
          mainAxisSize:MainAxisSize.min ,
          children: [
            Image.asset(
              activeDiceImage,
              width: 200,
            ),
            const SizedBox(
              height: 20,
            ),
            TextButton(
                onPressed: rollDice,
                style: TextButton.styleFrom(
                    foregroundColor: Colors.white,
                    textStyle: const TextStyle(
                      fontSize: 24,
                    )),
                child: const Text('Roll Dice'))
          ],
        ),
      ),
    );
  }
}
