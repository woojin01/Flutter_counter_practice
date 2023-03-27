import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

int countNumber = 0;
int rangeOfCountNumber = 1;
bool isVibration = true;
Color bgColor = Colors.white;
Color textColor = Colors.black;

class _CounterPageState extends State<CounterPage> {
  void onAddCount() {
    //count 횟수 +1
    setState(() {
      countNumber = countNumber + rangeOfCountNumber; //+= 1
    });
  }

  void onRemoveCount() {
    //카운트 횟수 -1
    setState(() {
      countNumber = countNumber - rangeOfCountNumber; //-= 1
    });
  }

  void onChangeColor() {
    setState(() {
      if (bgColor == Colors.white) {
        bgColor = Colors.black;
        textColor = Colors.white;
      } else {
        //== bgColor == Colors.black
        bgColor = Colors.white;
        textColor = Colors.black;
      }
    });
  }

  void onResetCount() {
    setState(() {
      countNumber = 0; //-= 1
    });
  }

/*
  void onVibration() {
    setState(() {
      isVibration = !isVibration;
      if (isVibration) {
        HapticFeedback.heavyImpact();
        print('진동 된다!');
      }
    });
  }
*/
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: Column(
        children: [
          Flexible(
            //빈 부분
            flex: 3,
            child: Container(decoration: BoxDecoration(color: bgColor)),
          ),
          Flexible(
            //숫자 표시
            flex: 7,
            child: Container(
              alignment: Alignment.topCenter,
              child: Text(
                '$countNumber',
                style: TextStyle(
                  color: textColor,
                  fontSize: 90,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Flexible(
            //+1 버튼
            flex: 5,
            child: Column(
              children: [
                IconButton(
                  onPressed: onAddCount,
                  color: textColor,
                  iconSize: 100,
                  icon: const Icon(Icons.add_rounded),
                )
              ],
            ),
          ),
          Flexible(
            //- 버튼
            flex: 5,
            child: Column(
              children: [
                IconButton(
                  onPressed: onRemoveCount,
                  color: textColor,
                  iconSize: 100,
                  icon: const Icon(
                    Icons.remove_rounded,
                  ),
                )
              ],
            ),
          ),
          Flexible(
            //- 버튼
            flex: 5,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: onChangeColor,
                  color: textColor,
                  icon: const Icon(Icons.swipe_rounded),
                ),
                IconButton(
                  onPressed: onResetCount,
                  color: textColor,
                  icon: const Icon(Icons.refresh_outlined),
                ),
                /*
                  IconButton(
                    onPressed: () {
                      setState(() {
                        isVibration = !isVibration;
                        HapticFeedback.heavyImpact();
                      });
                    },
                    color: textColor,
                    icon: isVibration
                        ? const Icon(Icons.vibration_rounded)
                        : const Icon(Icons.smartphone_rounded),
                  ),*/
              ],
            ),
          ),
        ],
      ),
    );
  }
}
