import 'package:flutter/material.dart';

class ChangeStatusScreen extends StatelessWidget {
  const ChangeStatusScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        iconTheme: IconThemeData(color: Colors.white),
        centerTitle: false,
        titleSpacing: -8,
        title: Text(
          'Status',
          style: TextStyle(
              color: Colors.white,
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
  UserDetailsForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 20.0),
          OnChangingWidget(text: "Whatsaap ",icon: Icons.share,),
          SizedBox(height: 40.0),
          OnChangingWidget(text: "Sheet",icon: Icons.note_add,),
          SizedBox(height: 40.0),
          OnChangingWidget(text: "Backup",icon: Icons.backup,),
          SizedBox(height: 60.0),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                // Retrieve values from controllers
                

                // Do something with the values (e.g., pass them to another widget)
                // For now, just print them
                
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

class OnChangingWidget extends StatelessWidget {
 final String text;
 
  final IconData icon;

  const OnChangingWidget({
    super.key, required this.text, required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(leading: Icon(icon,color: Colors.yellow.withOpacity(0.9),),
      title: Text(text,style: TextStyle(color: Colors.white.withOpacity(1)),),
      trailing: Checkbox(
        value: false,
        onChanged: (b) {},
      ),
    );
  }
}
