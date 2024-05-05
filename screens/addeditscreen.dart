import 'package:flutter/material.dart';

class UserDetailsScreen extends StatelessWidget {
  const UserDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        iconTheme: IconThemeData(color: Colors.white),centerTitle: false,titleSpacing: -8,
        title: Text(
          'Details',
          style: TextStyle(
              color: Colors.white.withOpacity(0.7),
              fontWeight: FontWeight.bold,
              wordSpacing: 1,
              letterSpacing: 1.5),
        ),
      ),
      body: UserDetailsForm(),
    );
  }
}

class UserDetailsForm extends StatelessWidget {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController bceController = TextEditingController();
  final TextEditingController weekController = TextEditingController();

  UserDetailsForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextFormField(
            controller: nameController,
            decoration: InputDecoration(
              labelText: 'Name',
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 20.0),
          TextFormField(
            controller: bceController,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              labelText: 'BCE',
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 20.0),
          TextFormField(
            controller: weekController,
            decoration: InputDecoration(
              labelText: 'Week',
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 20.0),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                // Retrieve values from controllers
                String name = nameController.text;
                var bce = (bceController.text);
                String week = weekController.text;

                // Do something with the values (e.g., pass them to another widget)
                // For now, just print them
                print('Name: $name');
                print('BCE: $bce');
                print('Week: $week');
              },
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.black,
                backgroundColor: Colors.yellow,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 16.0),
                child: Text(
                  'Submit',
                  style: TextStyle(fontSize: 18.0),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
