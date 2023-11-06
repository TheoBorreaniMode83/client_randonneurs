import 'package:flutter/material.dart';
import 'package:les_randonneurs_draceniens_client_administratif/model/date.dart';


class DatePicker extends StatefulWidget {
  const DatePicker({
    super.key, 
    this.restorationId,
    required this.date,
    required this.title
    });

  final Date date;
  final String title;
  final String? restorationId;

  @override
  State<DatePicker> createState() =>  _DatePickerState();
}

/// RestorationProperty objects can be used because of RestorationMixin.
class _DatePickerState extends State<DatePicker>


  with RestorationMixin {
  // In this example, the restoration ID for the mixin is passed in through
  // the [StatefulWidget]'s constructor.

  DateTime now = DateTime.now();
late String  title;
@override
String? restorationId;
late Date  date;
late RestorableDateTime b;

@override
void initState() {
    super.initState();
    restorationId = widget.restorationId;
    title = widget.title;
    date = widget.date;
    b = RestorableDateTime(DateTime(1950, 10, date.a));

    
    }
 
  final RestorableDateTime _selectedDate =
      RestorableDateTime(DateTime(1950, 10, 10));
  late final RestorableRouteFuture<DateTime?> _restorableDatePickerRouteFuture =
      RestorableRouteFuture<DateTime?>(
    onComplete: _selectDate,
    onPresent: (NavigatorState navigator, Object? arguments) {
      return navigator.restorablePush(
        _datePickerRoute,
        arguments: _selectedDate.value.millisecondsSinceEpoch,
      );
    },
  );

  @pragma('vm:entry-point')
   Route<DateTime> _datePickerRoute(
    BuildContext context,
    Object? arguments,
  ) {
    return DialogRoute<DateTime>(
      context: context,
      builder: (BuildContext context) {
        return DatePickerDialog(
          restorationId: 'date_picker_dialog',
          initialEntryMode: DatePickerEntryMode.calendarOnly,
          initialDate: DateTime.fromMillisecondsSinceEpoch(arguments! as int),
          firstDate: DateTime(now.year-100),
          lastDate: DateTime(now.year),
        );
      },
    );
  }

  @override
  void restoreState(RestorationBucket? oldBucket, bool initialRestore) {
    registerForRestoration(_selectedDate, 'selected_date');
    registerForRestoration(
        _restorableDatePickerRouteFuture, 'date_picker_route_future');
  }

  void _selectDate(DateTime? newSelectedDate) {
    if (newSelectedDate != null) {
      setState(() {
        _selectedDate.value = newSelectedDate;
        date.a=_selectedDate.value.year;
        date.j=_selectedDate.value.day;
        date.m=_selectedDate.value.month; 
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(title),
          Text("${date.j.toString()}/${date.m.toString()}/${date.a.toString()}"),
          OutlinedButton(
            onPressed: () {
              _restorableDatePickerRouteFuture.present();
            },
          child: const Text('Chosir une date'),
        ),
        ]
      )
    );
  }
}