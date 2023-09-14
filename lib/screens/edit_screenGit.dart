import 'package:flutter/material.dart';


class EditScreenGit extends StatefulWidget {

  final String githubHandle;

  const EditScreenGit({super.key,

    required this.githubHandle

  });

  @override
  State<EditScreenGit> createState() => _EditScreenGitState();
}

class _EditScreenGitState extends State<EditScreenGit> {

  final TextEditingController _githubHandle = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Color(0xff3C4B55),
            leading: IconButton(
              onPressed: (){
                Navigator.pop(context, _githubHandle.text);
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
              controller: _githubHandle,
              onChanged: (String currentValue){
                setState(() {
                  _githubHandle.text = currentValue;
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
                      'assets/github.png',
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




