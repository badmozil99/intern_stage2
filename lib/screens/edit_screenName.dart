import 'package:flutter/material.dart';


class EditScreenName extends StatefulWidget {
  final String fullName;

  const EditScreenName({super.key,

    required this.fullName,

  });

  @override
  State<EditScreenName> createState() => _EditScreenNameState();
}

class _EditScreenNameState extends State<EditScreenName> {

  final TextEditingController _fullName = TextEditingController();



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: const Color(0xff3C4B55),
            leading: IconButton(
              onPressed: (){
                Navigator.pop(context, _fullName.text);
              },
              icon: const Icon(Icons.arrow_back),
            ),
            title: const Text(
                'Edit CV'
            )
        ),
        body: ListView(
          padding: const EdgeInsets.all(30.0),
          children: [
            TextFormField(
              controller: _fullName,
              onChanged: (String currentValue){
                setState(() {
                  _fullName.text = currentValue;
                });
              },
              decoration: const InputDecoration(
                  labelText: 'Full name',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15.0))
                  ),
                  prefixIcon: Icon(Icons.account_circle)
              ),
            ),

          ],
        )
    );
  }
}




