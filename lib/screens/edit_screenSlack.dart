import 'package:flutter/material.dart';


class EditScreenSlack extends StatefulWidget {

  final String slackUsername;

  const EditScreenSlack({super.key,

    required this.slackUsername,


  });

  @override
  State<EditScreenSlack> createState() => _EditScreenSlackState();
}

class _EditScreenSlackState extends State<EditScreenSlack> {

  final TextEditingController _slackUsername = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: const Color(0xff3C4B55),
            leading: IconButton(
              onPressed: (){
                Navigator.pop(context, _slackUsername.text);
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
              controller: _slackUsername,
              onChanged: (String currentValue){
                setState(() {
                  _slackUsername.text = currentValue;
                });
              },
              decoration:  InputDecoration(
                  labelText: 'Slack username',
                  border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15.0))
                  ),
                  prefixIcon: Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: Image.asset(
                        'assets/slack.jpg',
                      width: 10.0,
                      height: 10.0,
                    ),
                  )
              ),
            ),

          ],
        )
    );
  }
}




