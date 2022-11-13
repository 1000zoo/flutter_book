import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Retreive Text Input",
      home: BmiMain(),
    );
  }
}

// 첫 번째 페이지
class BmiMain extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _BmiMainState();
}
class _BmiMainState extends State<BmiMain> {
  final _formKey = GlobalKey<FormState>();

  final _heightController = TextEditingController();
  final _weightController = TextEditingController();

  @override
  void dispose() {
    _heightController.dispose();
    _weightController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("비만도 계산기"),),
      body: Container(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: '키',
                ),
                controller: _heightController,
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value!.trim().isEmpty) {
                    return "키를 입력하세요";
                  }
                  return null;
                },
              ),
              SizedBox(
                height: 16.0,
              ),
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "몸무게",
                ),
                controller: _weightController,
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value!.trim().isEmpty) {
                    return "몸무게를 입력하세요";
                  }
                  return null;
                },
              ),
              Container(
                margin: const EdgeInsets.all(16.0),
                alignment: Alignment.centerRight,
                child: ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => BmiResult(
                              double.parse(_heightController.text.trim()),
                              double.parse(_weightController.text.trim()),
                            )
                        )
                      );
                    }
                  }, child: Text("결과"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// 두 번째 페이지
class BmiResult extends StatelessWidget {
  final double height;
  final double weight;


  BmiResult(this.height, this.weight);

  Widget build(BuildContext context) {

    final bmi = weight / ((height / 100) * (height / 100));

    return Scaffold(
      appBar: AppBar(title: Text("비만도 계산기"),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              _calcBmi(bmi),
              style: TextStyle(fontSize: 36),
            ),
            SizedBox(
              height: 16,
            ),
            _buildIcon(bmi)
          ],
        ),
      ),
    );
  }
}

Widget _buildIcon(double bmi) {
  if (bmi >= 23) {
    return const Icon(
      Icons.sentiment_very_dissatisfied,
      color: Colors.red,
      size: 100,
    );
  } else if (bmi >= 18.5) {
    return const Icon(
      Icons.sentiment_satisfied,
      color: Colors.green,
      size: 100,
    );
  } else {
    return const Icon(
      Icons.sentiment_very_dissatisfied,
      color: Colors.orange,
      size: 100,
    );
  }
}

String _calcBmi(double bmi) {
  if (bmi >= 35) {
    return '고도 비만';
  } else if (bmi >= 30) {
    return '2단계 비만';
  } else if (bmi >= 25) {
    return '1단계 비만';
  } else if (bmi >= 23) {
    return '과체중';
  } else if (bmi >= 18.5) {
    return '정상';
  } else {
    return '저체중';
  }
}

































