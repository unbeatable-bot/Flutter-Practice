import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

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
// class App extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//           backgroundColor: const Color(0xFF181818),
//           body: SingleChildScrollView(
//             child: Padding(
//               padding: const EdgeInsets.symmetric(
//                 horizontal: 20,
//               ),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   const SizedBox(
//                     height: 80,
//                   ),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.end,
//                     children: [
//                       Column(
//                         crossAxisAlignment: CrossAxisAlignment.end,
//                         children: [
//                           const Text(
//                             'Hey, Selena',
//                             style: TextStyle(
//                               color: Colors.white,
//                               fontSize: 28,
//                               fontWeight: FontWeight.w800,
//                             ),
//                           ),
//                           Text(
//                             'Welcome back',
//                             style: TextStyle(
//                               color: Colors.white.withOpacity(0.8),
//                               fontSize: 22,
//                             ),
//                           ),
//                         ],
//                       )
//                     ],
//                   ),
//                   const SizedBox(
//                     height: 70,
//                   ),
//                   const Text(
//                     'Total Balance',
//                     style: TextStyle(
//                       fontSize: 22,
//                       color: Color.fromRGBO(255, 255, 255, 0.8),
//                     ),
//                   ),
//                   const SizedBox(
//                     height: 10,
//                   ),
//                   const Text(
//                     '\$5 194 482',
//                     style: TextStyle(
//                       fontSize: 48,
//                       fontWeight: FontWeight.w600,
//                       color: Colors.white,
//                     ),
//                   ),
//                   const SizedBox(
//                     height: 30,
//                   ),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: const [
//                       Button(
//                         text: 'Transfer',
//                         bgColor: Color(0xFFF1B33B),
//                         textColor: Colors.black,
//                       ),
//                       Button(
//                         text: 'Request',
//                         bgColor: Color(0xFF1F2123),
//                         textColor: Colors.white,
//                       )
//                     ],
//                   ),
//                   const SizedBox(
//                     height: 100,
//                   ),
//                   Row(
//                     crossAxisAlignment: CrossAxisAlignment.end,
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       const Text('Wallets',
//                           style: TextStyle(
//                             color: Colors.white,
//                             fontSize: 36,
//                             fontWeight: FontWeight.w600,
//                           )),
//                       Text(
//                         'View ALl',
//                         style: TextStyle(
//                           color: Colors.white.withOpacity(0.8),
//                           fontSize: 18,
//                         ),
//                       ),
//                     ],
//                   ),
//                   const SizedBox(
//                     height: 100,
//                   ),
//                   const CurrencyCard(
//                     name: 'Euro',
//                     code: 'EUR',
//                     amount: '6 428',
//                     icon: Icons.euro_rounded,
//                     isInverted: false,
//                   ),
//                   Transform.translate(
//                     offset: const Offset(0, -20),
//                     child: const CurrencyCard(
//                       name: 'BitCoin',
//                       code: 'BTC',
//                       amount: '9 785',
//                       icon: Icons.currency_bitcoin_rounded,
//                       isInverted: true,
//                     ),
//                   ),
//                   Transform.translate(
//                     offset: const Offset(0, -40),
//                     child: const CurrencyCard(
//                       name: 'Dollar',
//                       code: 'USD',
//                       amount: '428',
//                       icon: Icons.attach_money_outlined,
//                       isInverted: false,
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           )),
//     );
//   }
// }
