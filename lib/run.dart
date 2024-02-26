import '../../dataModel/expenseModel.dart';
import '/Screens/Expenses/expenses.dart';
import 'package:flutter/material.dart';

class CreateExpense extends StatefulWidget {
  const CreateExpense({super.key});

  @override
  State<CreateExpense> createState() => _CreateExpenseState();
}

class _CreateExpenseState extends State<CreateExpense> {

  //date
  DateTime? selectedDate;
  TextEditingController dateController = TextEditingController();
  TextEditingController amountController = TextEditingController();



  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate ?? DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );

    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
        dateController.text = '${selectedDate!.toLocal()}'.split(' ')[0];
      });
    }
  }


  //dropdown
  String? selectedValue = 'Option 1';
  List<String> dropdownItems = ['Option 1', 'Option 2', 'Option 3', 'Option 4'];



  void addExpense(){
    String date = dateController.text;
    String category = "toolkit"; // You can replace this with the actual category selection logic.
    double amount = double.tryParse(amountController.text) ?? 0.0;
    String spentMode = "_"; // Replace with actual logic for spent mode
    String attachment = "path_to_attachment"; // Replace with the actual path to the attachment

    if (date.isNotEmpty && amount > 0) {
      Expense expense = Expense(date: date, category: category, amount: amount, spentMode: spentMode, attachment: attachment);

      // Add the created expense to the static list in the Expense class
      Expense.expensesList.add(expense);

      // Now, you can use the 'expense' object as needed (e.g., save it to a list).
    }
  }




  String dropdown = 'toolkit';
  var data = [
    'toolkit',
    '2',
    '3',
    '4',
  ];
  int curindex=0;
  String dropdownvalue = 'data';
  var items = [
    'data',
    '2',
    '3',
    '4',
  ];

  int currentindex=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Icon(Icons.arrow_back),
        title: Text('Add Expense',style: TextStyle(
            fontWeight: FontWeight.w100,fontSize: 24,
            fontFamily: "Outfit"),),
      ),backgroundColor: Colors.white,
      body: Form(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0,horizontal: 10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextFormField(
                controller: dateController,
                readOnly: true,
                onTap: () => _selectDate(context),
                decoration: InputDecoration(
                  labelText: 'Select Date',
                  suffixIcon: Icon(Icons.calendar_today),
                ),
              ),

              DropdownButton(
                value: selectedValue,
                onChanged: (String? newValue) {
                  setState(() {
                    selectedValue = newValue;
                  });
                },
                items: dropdownItems.map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
              TextFormField(
                controller: amountController,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.date_range_rounded),
                  labelText: 'Amount',
                  labelStyle: TextStyle(fontWeight: FontWeight.w100,fontSize: 18,
                      fontFamily: "Outfit"),
                ),
              ),
              DropdownButton(
                value: selectedValue,
                onChanged: (String? newValue) {
                  setState(() {
                    selectedValue = newValue;
                  });
                },
                items: dropdownItems.map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),

              Row(
                children: [SizedBox(width: 100,),
                  Text('Attachment',style: TextStyle(fontWeight: FontWeight.w100,fontSize: 18,
                      fontFamily: "Outfit"),),
                  SizedBox(width: 20,),
                  ElevatedButton(
                    onPressed: (){}, child: Text('Upload'),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.black,
                      onPrimary: Colors.white,
                      shape: RoundedRectangleBorder(),
                    ),)

                ],
              ),
              ElevatedButton(
                onPressed: (){
                  setState(() {
                    addExpense();
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=> ViewExpense()));
                  });

                }, child: Text('Save'),
                style: ElevatedButton.styleFrom(
                  primary: Colors.black,
                  onPrimary: Colors.white,
                  shape: RoundedRectangleBorder(),
                ),)

            ],
          ),
        ),
      ),
    );
  }
}