import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class _TimePageState extends State<TimePageStatefulWidget> {
  late TimeOfDay _selectedTime; // Track the selected time
  late DateTime _selectedDate; // Track the selected date

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

  void _showDatePicker() async {
    final DateTime? selectedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
      builder: (BuildContext context, Widget? child) {
        return Theme(
          // Customize the date picker theme
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

    if (selectedDate != null) {
      setState(() {
        _selectedDate = selectedDate; // Update the selected date
      });
    }
  }

  @override
  void initState() {
    super.initState();
    _selectedTime = TimeOfDay.now(); // Set initial time
    _selectedDate = DateTime.now(); // Set initial date
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
            MaterialButton(
              onPressed: _showDatePicker,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('Date'),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.calendar_today,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    _selectedDate.toString(), // Display the selected date
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
