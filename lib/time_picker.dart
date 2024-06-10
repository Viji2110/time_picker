import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class _TimePageState extends State<TimePageStatefulWidget> {
  late TimeOfDay _selectedTime; // Track the selected time

  void _showTimePicker() async {
    final TimeOfDay? selectedTime = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
      builder: (BuildContext context, Widget? child) {
        return Theme(
          // Customize the time picker theme
          data: ThemeData(
            colorScheme: ColorScheme.light(
              primary: const Color(0xFF9470FF),
              onPrimary: Colors.white,
            ),
          ),
          child: child!,
        );
      },
    );

    if (selectedTime != null) {
      setState(() {
        _selectedTime = selectedTime; // Update the selected time
      });
    }
  }

  @override
  void initState() {
    super.initState();
    _selectedTime = TimeOfDay.now(); // Set initial time
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            MaterialButton(
              onPressed: _showTimePicker,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('Time'),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.access_time,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    _selectedTime.format(context), // Display the selected time
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
              color: const Color(0xFF9470FF),
            ),
          ],
        ),
      ),
    );
  }
}

class TimePageStatefulWidget extends StatefulWidget {
  const TimePageStatefulWidget({Key? key}) : super(key: key);

  @override
  _TimePageState createState() => _TimePageState();
}
