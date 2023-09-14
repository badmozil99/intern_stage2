import 'package:flutter/material.dart';
import 'package:intern_stage2/screens/edit_screenBio.dart';
import 'package:intern_stage2/screens/edit_screenGit.dart';
import 'package:intern_stage2/screens/edit_screenName.dart';
import 'package:intern_stage2/screens/edit_screenSlack.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);



  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  String mFullName = 'Badmus Musa';
  String mSlackUsername = 'Badmus Musa';
  String mGithubHandle = 'https://github.com/badmozil99';
  String mBriefBio = 'Holla 👋, My name is Badmus Musa, an intermediate flutter developer based in Lagos, Nigeria. i have a fierce passion to turn User Interface and Design to reality, i also hold a degree in Civil Engineering';
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Center(child: Text('CV view')),
        backgroundColor: const Color(0xff3C4B55),
      ),
      body: ListView(
        padding: const EdgeInsets.all(25.0),
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.only(left: 10.0),
              width: size.width * 0.7,
              height: size.height * 0.1 ,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black
                ),
                borderRadius: BorderRadius.circular(20)
              ),
              child: Row(
                children: [
                  const Icon(
                      Icons.account_circle,
                    size: 35,
                  ),
                  const SizedBox(width: 5),
                  SizedBox(
                    width: 200,
                    child: Text(
                      mFullName,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        fontSize: 18
                      ),
                    ),
                  ),
                  const Spacer(flex: 2),
                  IconButton(
                      onPressed: ()async{
                        final newValueName =
                        await Navigator.push(context, MaterialPageRoute(builder: (context) => EditScreenName(fullName: mFullName,)));

                        setState(() {
                          mFullName = newValueName;
                        });
                      },
                      icon: const Icon(Icons.edit)
                  )
                ],
              ),
            ),
          ),
          const SizedBox(height: 20.0),

          Expanded(
            child: Container(
              padding: const EdgeInsets.only(left: 10.0),
              width: size.width * 0.7,
              height: size.height * 0.1 ,
              decoration: BoxDecoration(
                  border: Border.all(
                      color: Colors.black
                  ),
                  borderRadius: BorderRadius.circular(20)
              ),
              child: Row(
                children: [
                  Image.asset(
                    'assets/slack.jpg',
                    height: 40.0,
                    width: 40.0,
                  ),
                  const SizedBox(width: 5),
                  SizedBox(
                    width: 200,
                    child: Text(
                      mSlackUsername,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                          fontSize: 18
                      ),
                    ),
                  ),
                  const Spacer(flex: 2),
                  IconButton(
                      onPressed: ()async{
                        final newValueSlack =
                        await Navigator.push(context, MaterialPageRoute(builder: (context) => EditScreenSlack(slackUsername: mSlackUsername)));

                        setState(() {
                          mSlackUsername = newValueSlack;
                        });
                      },
                      icon: const Icon(Icons.edit)
                  )
                ],
              ),
            ),
          ),
          const SizedBox(height: 20.0),
          
          Expanded(
            child: Container(
              padding: const EdgeInsets.only(left: 10.0),
              width: size.width * 0.7,
              height: size.height * 0.1 ,
              decoration: BoxDecoration(
                  border: Border.all(
                      color: Colors.black
                  ),
                  borderRadius: BorderRadius.circular(20)
              ),
              child: Row(
                children: [
                  Image.asset(
                    'assets/github.png',
                    height: 40.0,
                    width: 40.0,
                  ),
                  const SizedBox(width: 5),
                  SizedBox(
                    width: 200,
                    child: Text(
                      mGithubHandle,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                            fontSize: 18
                        ),
                    ),
                  ),
                  const Spacer(flex:2),
                  IconButton(
                      onPressed: ()async{
                        final newValueGit =
                        await Navigator.push(context, MaterialPageRoute(builder: (context) => EditScreenGit(githubHandle: mGithubHandle)));

                        setState(() {
                          mGithubHandle = newValueGit;
                        });
                      },
                      icon: const Icon(Icons.edit)
                  )
                ],
              ),
            ),
          ),

          const SizedBox(height: 20.0),
          
          Expanded(
            child: Container(
              padding: const EdgeInsets.only(left: 10.0),
              width: size.width * 0.7,
              height: size.height * 0.3 ,
              decoration: BoxDecoration(
                  border: Border.all(
                      color: Colors.black
                  ),
                  borderRadius: BorderRadius.circular(20)
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Icon(
                          Icons.edit_document,
                          size: 30,
                        ),
                        // SizedBox(width: 5),
                        const Text(
                          'Brief bio',
                          style: TextStyle(
                              fontSize: 17
                          ),
                        ),
                        // Spacer(flex: 2),
                        IconButton(
                            onPressed: ()async{
                              final newValueName =
                              await Navigator.push(context, MaterialPageRoute(builder: (context) => EditScreenBio(briefBio: mBriefBio,)));

                              setState(() {
                                mBriefBio = newValueName;
                              });
                            },
                            icon: const Icon(Icons.edit)
                        )
                      ],
                    ),
                    Expanded(
                      child: Container(
                        // padding: EdgeInsets.only(bottom: 20),
                        height: 130,
                        width: 300,
                        decoration: const BoxDecoration(
                          color: Color(0xff3C4B55),
                          borderRadius: BorderRadius.all(Radius.circular(10)
                          )
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(mBriefBio,
                          textAlign: TextAlign.start,
                            maxLines: 7,
                            style: const TextStyle(
                              color: Colors.white
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
