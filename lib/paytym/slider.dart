import 'package:flutter/material.dart';

void main() {
  runApp(EmployeeApp());
}

class EmployeeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: EmployeeScreen(),
    );
  }
}

class EmployeeScreen extends StatefulWidget {
  @override
  _EmployeeScreenState createState() => _EmployeeScreenState();
}

class _EmployeeScreenState extends State<EmployeeScreen> {
  bool isCheckIn = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Employee Check-In/Check-Out'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              isCheckIn ? 'Employee is Checked In' : 'Employee is Checked Out',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 20),
            Slider(
              value: isCheckIn ? 1.0 : 0.0,
              onChanged: (value) {
                setState(() {
                  isCheckIn = value == 1.0;
                  showSnackBar(isCheckIn);
                });
              },
              min: 0.0,
              max: 1.0,
              divisions: 1,
              label: isCheckIn ? 'Check In' : 'Check Out',
            ),
          ],
        ),
      ),
    );
  }

  void showSnackBar(bool isCheckIn) {
    String message = isCheckIn ? 'Employee Checked In' : 'Employee Checked Out';
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        duration: Duration(seconds: 2),
      ),
    );
  }
}
