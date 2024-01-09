import 'package:flutter/material.dart';
import 'package:what_to_eat/widgethelpers/styles.dart';

class HomeActivity extends StatefulWidget {
  const HomeActivity({super.key});

  @override
  State<StatefulWidget> createState() {
    return _HomeActivityState();
  }
}

class _HomeActivityState extends State<HomeActivity> {
  var names = ["Sonu", "Monu", "Shreya", "pradeep", "Hitakshi"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("What To Eat"),
          backgroundColor: Colors.blue,
        ),
        body: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 15, left: 15),
              width: double.infinity,
              child: Text("Title of the list",
                  style: Theme.of(context)
                      .textTheme
                      .displayLarge!
                      .copyWith(fontWeight: FontWeight.bold)),
            ),
            Container(
              margin: const EdgeInsets.only( left: 15),
              width: double.infinity,
              child: Text("Subtitle of the list", style: headingStyle(textColor: Colors.blue)),
            ),
            Expanded(
              child: ListView.separated(
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: CircleAvatar(
                      maxRadius: 30,
                      child: SizedBox(
                        width: 55,
                        height: 55,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                                width: 20,
                                height: 20,
                                child: Image.asset("assets/images/test.png")),
                            const Text(
                              "Hello",
                              style: TextStyle(
                                color: Colors.black,
                                fontFamily: "InterTight",
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    title: Text(names[index]),
                    subtitle: Text("name is : ${names[index]}"),
                    trailing: const Icon(Icons.add),
                  );
                },
                itemCount: names.length,
                separatorBuilder: (context, index) {
                  return const Divider(
                    height: 20,
                    thickness: 1,
                  );
                },
              ),
            ),
          ],
        ));
  }
}
