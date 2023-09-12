import 'package:flutter/material.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  String dropdownvalue = 'English';

  var items = [
    'English',
    'Malayalam',
    'Tamil',
    'Hindi',
    'Kannada',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              width: 420,
              height: 260,
              decoration: BoxDecoration(
                color: Colors.grey.shade400,
                borderRadius:
                    BorderRadius.vertical(bottom: Radius.elliptical(154, 85)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 190, left: 135),
              child: Container(
                child: Image.asset(
                  "img/boy.png",
                  scale: 6,
                ),
                width: 130,
                height: 130,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(65)),
                    color: Colors.blue.shade300),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 270, left: 230),
              child: Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                    color: Colors.white),
                child: Icon(Icons.edit),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 330, left: 110),
              child: Text(
                "Shivam Kumar",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 30),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 365, left: 110),
              child: Row(
                children: [
                  Text(
                    "shivam@kumar",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                    ),
                  ),
                  Text("  I  "),
                  Text(
                    "9988776655",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
                padding: const EdgeInsets.only(top: 400, left: 30),
                child: Container(
                  height: 170,
                  width: 350,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 2,
                          spreadRadius: 1.3,
                        )
                      ],
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Column(
                    children: [
                      ListTile(
                        leading: Icon(Icons.edit_document),
                        title: Text("Edit profile information"),
                      ),
                      ListTile(
                        leading: Icon(Icons.notifications),
                        title: Text("Notifications"),
                        trailing: Text(
                          "ON",
                          style: TextStyle(
                              color: Colors.blue[400],
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      ListTile(
                        leading: Icon(Icons.language_rounded),
                        title: Text("Language"),
                        trailing: DropdownButton(
                          // Initial Value
                          value: dropdownvalue,

                          // Down Arrow Icon
                          icon: const Icon(Icons.keyboard_arrow_down),

                          // Array list of items
                          items: items.map((String items) {
                            return DropdownMenuItem(
                              value: items,
                              child: Text(items),
                            );
                          }).toList(),
                          // After selecting the desired option,it will
                          // change button value to selected value
                          onChanged: (String? newValue) {
                            setState(() {
                              dropdownvalue = newValue!;
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                )),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 590, left: 30),
              child: Container(
                  height: 120,
                  width: 350,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 2,
                          spreadRadius: 1.3,
                        )
                      ],
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Column(children: [
                    ListTile(
                      leading: Icon(Icons.security),
                      title: Text("Security"),
                    ),
                    ListTile(
                      leading: Icon(Icons.theater_comedy),
                      title: Text("Theme"),
                      trailing: Text(
                        "light mode",
                        style: TextStyle(
                            color: Colors.blue[400],
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ])),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 730, left: 30),
              child: Container(
                  height: 170,
                  width: 350,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 2,
                          spreadRadius: 1.3,
                        )
                      ],
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Column(children: [
                    ListTile(
                      leading: Icon(Icons.support_agent_outlined),
                      title: Text("Help & support"),
                    ),
                    ListTile(
                      leading: Icon(Icons.chat),
                      title: Text("Contact us"),
                    ),
                    ListTile(
                      leading: Icon(Icons.lock),
                      title: Text("privecy policy"),
                    ),
                  ])),
            )
          ],
        ),
      ),
    );
  }
}
