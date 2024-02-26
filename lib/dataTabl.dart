import 'package:flutter/material.dart';

class DataTableExample extends StatefulWidget {
  const DataTableExample({Key? key}) : super(key: key);

  @override
  _DataTableExampleState createState() => _DataTableExampleState();
}

class _DataTableExampleState extends State<DataTableExample> {
  // Define a list of Map to store dynamic data
  List<Map<String, String>> dynamicData = [];

  // Controller for text fields in the dialog for adding/editing data
  TextEditingController nameController = TextEditingController();
  TextEditingController ageController = TextEditingController();
  TextEditingController roleController = TextEditingController();

  // Function to show a dialog for adding a new row
  void _showAddDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Add New Row'),
          content: Column(
            children: [
              TextField(
                controller: nameController,
                decoration: InputDecoration(labelText: 'Name'),
              ),
              TextField(
                controller: ageController,
                decoration: InputDecoration(labelText: 'Age'),
              ),
              TextField(
                controller: roleController,
                decoration: InputDecoration(labelText: 'Role'),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                // Add new row to the data list
                dynamicData.add({
                  'name': nameController.text,
                  'age': ageController.text,
                  'role': roleController.text,
                });

                // Clear text controllers
                nameController.clear();
                ageController.clear();
                roleController.clear();

                // Close the dialog
                Navigator.of(context).pop();
                // Update UI
                setState(() {});
              },
              child: Text('Add'),
            ),
          ],
        );
      },
    );
  }

  // Function to show a dialog for editing an existing row
  void _showEditDialog(int index) {
    nameController.text = dynamicData[index]['name']!;
    ageController.text = dynamicData[index]['age']!;
    roleController.text = dynamicData[index]['role']!;

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Edit Row'),
          content: Column(
            children: [
              TextField(
                controller: nameController,
                decoration: InputDecoration(labelText: 'Name'),
              ),
              TextField(
                controller: ageController,
                decoration: InputDecoration(labelText: 'Age'),
              ),
              TextField(
                controller: roleController,
                decoration: InputDecoration(labelText: 'Role'),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                // Update the selected row in the data list
                dynamicData[index]['name'] = nameController.text;
                dynamicData[index]['age'] = ageController.text;
                dynamicData[index]['role'] = roleController.text;

                // Clear text controllers
                nameController.clear();
                ageController.clear();
                roleController.clear();

                // Close the dialog
                Navigator.of(context).pop();
                // Update UI
                setState(() {});
              },
              child: Text('Update'),
            ),
          ],
        );
      },
    );
  }

  // Function to delete an existing row
  void _deleteRow(int index) {
    dynamicData.removeAt(index);
    // Update UI
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CRUD DataTable'),
      ),
      body: DataTable(
        columns: const <DataColumn>[
          DataColumn(
            label: Text(
              'Name',
              style: TextStyle(fontStyle: FontStyle.italic),
            ),
          ),
          DataColumn(
            label: Text(
              'Age',
              style: TextStyle(fontStyle: FontStyle.italic),
            ),
          ),
          DataColumn(
            label: Text(
              'Role',
              style: TextStyle(fontStyle: FontStyle.italic),
            ),
          ),
          DataColumn(
            label: Text(
              'Actions',
              style: TextStyle(fontStyle: FontStyle.italic),
            ),
          ),
        ],
        rows: dynamicData.asMap().entries.map((entry) {
          int index = entry.key;
          Map<String, String> data = entry.value;
          return DataRow(
            cells: <DataCell>[
              DataCell(Text(data['name']!)),
              DataCell(Text(data['age']!)),
              DataCell(Text(data['role']!)),
              DataCell(
                Row(
                  children: [
                    IconButton(
                      icon: Icon(Icons.edit),
                      onPressed: () {
                        _showEditDialog(index);
                      },
                    ),
                    IconButton(
                      icon: Icon(Icons.delete),
                      onPressed: () {
                        _deleteRow(index);
                      },
                    ),
                  ],
                ),
              ),
            ],
          );
        }).toList(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _showAddDialog();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
