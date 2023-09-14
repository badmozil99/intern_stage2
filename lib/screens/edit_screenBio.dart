import 'package:flutter/material.dart';


class EditScreenBio extends StatefulWidget {


  final String briefBio;
  const EditScreenBio({super.key,


  required this.briefBio
  });

  @override
  State<EditScreenBio> createState() => _EditScreenBioState();
}

class _EditScreenBioState extends State<EditScreenBio> {

  final TextEditingController _briefBio = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: const Color(0xff3C4B55),
            leading: IconButton(
              onPressed: (){
                Navigator.pop(context, _briefBio.text);
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
              controller: _briefBio,
              onChanged: (String currentValue){
                setState(() {
                  _briefBio.text = currentValue;
                });
              },
              decoration:  const InputDecoration(
                  labelText: 'Brief bio',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15.0))
                  ),
                  prefixIcon: Icon(Icons.account_circle)
                  )
              ),
          ],
        )
    );
  }
}




