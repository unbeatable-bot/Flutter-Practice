import 'package:flutter/material.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  List<int> numbers = [];

  // void onClicked() {
  //   setState(() {
  //     numbers.add(numbers.length);
  //     print(numbers);
  //   });
  // }
  bool showTitle = true;

  void toggleTitle() {
    print('press toggleTitle');
    setState(() {
      showTitle = !showTitle;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: const TextTheme(
          titleLarge: TextStyle(
            color: Colors.red,
          ),
        ),
      ),
      home: Scaffold(
        backgroundColor: const Color(0xFFF4EDDB),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            showTitle ? const MyLargeTItle() : const Text('nothing'),
            IconButton(
              onPressed: toggleTitle,
              icon: const Icon(
                Icons.remove_red_eye,
              ),
            ),
            // for (var n in numbers) Text('$n'),
            // IconButton(
            //     iconSize: 40,
            //     onPressed: onClicked,
            //     icon: const Icon(
            //       Icons.add_box_rounded,
            //     ))
          ],
        )),
      ),
    );
  }
}

class MyLargeTItle extends StatefulWidget {
  const MyLargeTItle({
    Key? key,
  }) : super(key: key);

  @override
  State<MyLargeTItle> createState() => _MyLargeTItleState();
}

class _MyLargeTItleState extends State<MyLargeTItle> {
  int count = 0;

  @override
  void initState() {
    //부모요소의 데이터를 초기화 하기 위해 필요
    //build 메서드보다 먼저 호출되어야 함
    //오직 한 번 호출됨(lifecycle )
    super.initState();
    print('initState');
  }

  @override
  void dispose() {
    //위젯이 사라질 때 실행
    super.dispose();
    print('dispose');
  }

  @override
  Widget build(BuildContext context) {
    print('build');
    return Text(
      'My Large Title',
      style: TextStyle(
        fontSize: 30,
        color: Theme.of(context).textTheme.titleLarge!.color,
      ),
    );
  }
}
