import 'package:bmi_app/pages/bmi_main.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              menuHeader(),
              welcomeText(),
              bottomBtn(),
            ],
          ),
        ),
      ),
    );
  }

  SizedBox bottomBtn() {
    return SizedBox(
      width: 230,
      height: 80,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ElevatedButton(
          onPressed: () {
            var route = MaterialPageRoute(
                builder: (context) => FormPage()
            );
              Navigator.push(context, route);
          },
          child: const Text(
            'เริ่มต้นการใช้งาน',
            style: TextStyle(fontSize: 20),
          ),
          style: ButtonStyle(
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(32.0),
              ),
            ),
            backgroundColor: MaterialStateProperty.all(Colors.grey[200]),
            foregroundColor: MaterialStateProperty.all(Colors.orange[800]),
          ),
        ),
      ),
    );
  }

  Column welcomeText() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:  [
        Text(
          'ยินดีต้อนรับเข้าสู่',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 26,
            color: Colors.orange[800],
          ),
        ),
        const Text(
          'APP CALCULATOR BMI',
          style: TextStyle(
            fontSize: 24,
            color: Colors.black,
          ),
        ),
      ],
    );
  }

  Row menuHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        TextButton.icon(
          onPressed: () {},
          icon: const Icon(Icons.help),
          label: const Text('ความช่วยเหลือ'),
          style: ButtonStyle(
            foregroundColor: MaterialStateProperty.all(Colors.orange[800]),
          ),
        ),
        Container(
          width: 2,
          height: 20,
          color: Colors.orange[800],
        ),
        TextButton.icon(
          onPressed: () {},
          icon: const Icon(Icons.info),
          label: const Text('เกี่ยวกับแอป'),
          style: ButtonStyle(
            foregroundColor: MaterialStateProperty.all(Colors.orange[800]),
          ),
        ),
      ],
    );
  }
}