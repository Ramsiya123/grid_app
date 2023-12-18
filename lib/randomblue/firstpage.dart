import 'package:flutter/material.dart';
import 'package:grid_app/randomblue/secondpage.dart';

class RANDON extends StatefulWidget {
  const RANDON({Key? key}) : super(key: key);

  @override
  State<RANDON> createState() => _RANDONState();
}

class _RANDONState extends State<RANDON> {
  final _formfield=GlobalKey<FormState>();
  var numberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.white,
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 300,
              ),
              SizedBox(
                height: 60,
                width: 200,
                child: Form(
                  key: _formfield,
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter a number.';
                      } else {
                        try {
                          int parsedValue = int.parse(value);
                          if (parsedValue > 0 && parsedValue <= 25) {
                            return null; // Valid input
                          } else {
                            return 'Please enter a number between 1 and 25.';
                          }
                        } catch (e) {
                          return 'Please enter a valid number.';
                        }
                      }
                    },
                    controller: numberController,
                    decoration: InputDecoration(
                      hintText: 'enter a number',
                      hintStyle: TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey,
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(width: 5),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 50,
                width: 200,
                child: SizedBox(
                  height: 100,
                ),
              ),
              ElevatedButton(
  onPressed: () {
    if (_formfield.currentState!.validate()) {
      print('Success');
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => RANDOM(
            number: int.parse(numberController.text),
          ),
        ),
      );
    }
  },
  child: Text("Submit"),
),

            ],
          ),
        ),
      ),
    );
  }
}
