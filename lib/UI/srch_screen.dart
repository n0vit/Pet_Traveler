import 'package:flutter/material.dart';
import 'package:pet_traveler/UI/features/auth_styles.dart';
import 'package:pet_traveler/UI/features/custom_input_date_picker_form_field.dart';
import 'package:pet_traveler/generated/l10n.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

final searchHotels = {
  'title': S.current.scrhHotels,
  'labelName': S.current.srchHotelTextFieldName,
  'popUpOne': S.current.srchCheckIn,
  'popUpTwo': S.current.srchCheckOut,
  'popUpThree': S.current.srchDetails
};

final searchTrip = {
  'title': S.current.trips,
  'labelName': S.current.srchTripDepature,
  'labelName2': S.current.srchtTripDestination,
  'popUpOne': S.current.srchDepartureDate,
  'popUpTwo': S.current.srchArrivalDate,
  'popUpThree': S.current.srchPassengerDetail
};

final searchTransport = {
  'title': S.current.srchTransport,
  'labelName': S.current.srchTripDepature,
  'labelName2': S.current.srchtTripDestination,
  'popUpOne': S.current.srchDepartureDate,
  'popUpTwo': S.current.srchArrivalDate,
  'popUpThree': S.current.srchPassengerDetail
};

late Map map;

InputDecoration _inputDecoration(context) {
  return InputDecoration(
    prefixIcon: Icon(
      Icons.search,
      color: Theme
          .of(context)
          .colorScheme
          .inverseSurface,
    ),
    border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
  );
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    map = searchTrip;
    return Scaffold(
      appBar: AppBar(
        title: Text(map['title']),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(28.0),
          child: Column(
            children: [
            TextField(
            enabled: true,
            decoration: _inputDecoration(context),
          ),
          const SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Text(map['popUpOne']),
                  const DateTextField(),
                ],
              ),
              Column(
                children: [Text(map['popUpTwo']), const DateTextField()],
              ),
            ],
          ),
          const SelectionClasses(),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Align(
                  alignment: Alignment.centerLeft, child: PersonDetails()),
              Column(
                children: [
                  Text(map['']),
                  const SizedBox(
                    height: 50,
                  ),
                ],
              ),
               const SizedBox(
                height: 50,
              ),
              SizedBox(
                  width: 300,
                  height: 60,
                  child: ElevatedButton(
                      onPressed: () {},
                      style: AuthStyles().tonalButtonStyle(
                        context,
                      ),
                      child: Text(
                        S
                            .of(context)
                            .srchHeadline,
                        style: Theme
                            .of(context)
                            .textTheme
                            .titleLarge,
                      )))
            ],
          ),
        ]),)
      ,
    ));
  }
}

class DateTextField extends StatefulWidget {
  const DateTextField({Key? key}) : super(key: key);

  @override
  State<DateTextField> createState() => _DateTextFieldState();
}

class _DateTextFieldState extends State<DateTextField> {
  late TextEditingController _controller;
  DateTime selectedDate = DateTime.now();

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  InputDecoration _inputDecoration(BuildContext context) {
    return InputDecoration(
      hintText: MaterialLocalizations
          .of(context)
          .dateHelpText,
      border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(
              color: Theme
                  .of(context)
                  .colorScheme
                  .outline, width: 2)),
    );
  }

  Future _openCalendar() async {
    final dateFromDatePicker = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime.now(),
        lastDate: DateTime(2023));
    if (dateFromDatePicker != null && dateFromDatePicker != selectedDate) {
      setState(() {
        selectedDate = dateFromDatePicker;
      });
    }
  }

  _createDateField(BuildContext context) {
    print(selectedDate);
    return SizedBox(
      width: 120,
      height: 50,
      child: CustomInputDatePickerFormField(
        firstDate: DateTime.now(),
        lastDate: DateTime(2023),
        initialDate: selectedDate,
        decoration: _inputDecoration(context),
        onDateSubmitted: (date) {
          setState(() {
            selectedDate = date;
          });
        },
        onDateSaved: (date) {
          setState(() {
            selectedDate = date;
          });
        },
      ),
    );
  }

  _crateIconButton() {
    return IconButton(
        onPressed: _openCalendar, icon: const Icon(Icons.calendar_month));
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        _crateIconButton(),
        _createDateField(context),
      ],
    );
  }
}

class PersonDetails extends StatefulWidget {
  const PersonDetails({Key? key}) : super(key: key);

  @override
  State<PersonDetails> createState() => _PersonDetailsState();
}

class _PersonDetailsState extends State<PersonDetails> {
  int adults = 1;

  int infants = 0;

  int children = 0;

  _personCard(BuildContext context, String text) {
    return SizedBox(
      height: 60,
      width: 140,
      child: Card(
        child: Row(
          children: [
            const SizedBox(
              width: 10,
            ),
            const Icon(Icons.person),
            const SizedBox(
              width: 10,
            ),
            Text(text)
          ],
        ),
      ),
    );
  }

  _showDialog() {
    showDialog<void>(
      context: context,
      barrierDismissible: true,
      // false = user must tap button, true = tap outside dialog
      builder: (BuildContext dialogContext) {
        return const Dialog(
          alignment: Alignment.center,
          child: CustomDialog(),
        );
      },
    );
  }

  _constraintCount() {}

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.only(left: 30),
        height: 200,
        width: 200,
        child: GestureDetector(
            onTap: _showDialog,
            child: Column(
              children: [
                _personCard(context, S
                    .of(context)
                    .srchAdults),
                _personCard(context, S
                    .of(context)
                    .srchInfants),
                _personCard(context, S
                    .of(context)
                    .srchChildren),
              ],
            )));
  }
}

class SelectionClasses extends StatefulWidget {
  const SelectionClasses({Key? key}) : super(key: key);

  @override
  State<SelectionClasses> createState() => _SelectionClassesState();
}

class _SelectionClassesState extends State<SelectionClasses> {
//TODO: optimize this

  final classes = [
    S.current.classLux,
    S.current.classBuisnes,
    S.current.classEconomy
  ];
  String dropDownValue = S.current.classEconomy;

  @override
  Widget build(BuildContext context) {
    final items = classes.map((String items) {
      return DropdownMenuItem(
        value: items,
        child: Text(
          items,
          style: Theme
              .of(context)
              .textTheme
              .bodyLarge,
        ),
      );
    }).toList();

    return SizedBox(
      width: 250,
      height: 50,
      child: DropdownButton(
        items: items,
        value: dropDownValue,
        icon: const Icon(Icons.hotel_class),
        onChanged: (String? newValue) {
          setState(() {
            dropDownValue = newValue!;
          });
        },
      ),
    );
  }
}

class CustomDialog extends StatefulWidget {
  const CustomDialog({Key? key}) : super(key: key);

  @override
  State<CustomDialog> createState() => _CustomDialogState();
}

class _CustomDialogState extends State<CustomDialog> {
//TODO: optimize this
  int adults = 1;

  int infants = 0;

  int children = 0;

  _button(icon) {
    return IconButton(onPressed: () {}, icon: Icon(icon));
  }

  _blocButtons(String count) {
    return SizedBox(
        width: 120,
        child: Row(
          children: [_button(Icons.remove), Text(count), _button(Icons.add)],
        ));
  }

  _line(BuildContext context, String personGrade, String count) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const SizedBox(
          width: 2,
        ),
        Text(
          personGrade,
          style: Theme
              .of(context)
              .textTheme
              .bodyMedium,
        ),
        _blocButtons(count)
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180,
      child: Column(
        children: [
          _line(context, S
              .of(context)
              .srchAdults, adults.toString()),
          const Divider(),
          _line(context, S
              .of(context)
              .srchInfants, infants.toString()),
          const Divider(),
          _line(context, S
              .of(context)
              .srchChildren, children.toString())
        ],
      ),
    );
  }
}

class CountRoomOrTickets extends StatelessWidget {
  final String count;

  const CountRoomOrTickets({Key? key, required this.count}) : super(key: key);

  _button(icon) {
    return IconButton(onPressed: () {}, icon: Icon(icon));
  }

  _blocButtons(String count) {
    return SizedBox(
        width: 120,
        child: Row(
          children: [_button(Icons.remove), Text(count), _button(Icons.add)],
        ));
  }

  @override
  Widget build(BuildContext context) {
    return _blocButtons(count);
  }
}
