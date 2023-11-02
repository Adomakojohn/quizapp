import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey.shade200,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                const SizedBox(
                  height: 14,
                ),
                Container(
                  height: 90,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(20)),
                    color: Colors.blue.shade600,
                  ),
                  child: ListTile(
                    leading: Image.asset(
                      "Assets/images/diamond.png",
                    ),
                    trailing: const Icon(Icons.arrow_forward_ios_rounded),
                    title: const Text(
                      "Go premium",
                      style: TextStyle(fontSize: 23, color: Colors.white),
                    ),
                    subtitle: const Text(
                      "Unlock all questions",
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.w300),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 35,
                ),
                Container(
                  height: 200,
                  width: 400,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: Column(
                    children: [
                      ListTile(
                        title: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "Difficulty",
                              style: TextStyle(fontSize: 25),
                            ),
                            Text(
                              "Easy",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.grey.shade600),
                            ),
                          ],
                        ),
                        leading: Image.asset(
                          "Assets/images/meter.png",
                          width: 35,
                          height: 39,
                        ),
                        trailing: const Icon(Icons.arrow_forward_ios_rounded),
                      ),
                      const Divider(
                        color: Colors.grey,
                        indent: 65,
                        endIndent: 7,
                      ),
                      ListTile(
                        title: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "Daily questions",
                              style: TextStyle(fontSize: 25),
                            ),
                            Text(
                              "20",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.grey.shade600),
                            ),
                          ],
                        ),
                        leading: Image.asset(
                          "Assets/images/question-mark.png",
                          width: 35,
                          height: 39,
                        ),
                        trailing: const Icon(Icons.arrow_forward_ios_rounded),
                      ),
                      const Divider(
                        color: Colors.grey,
                        indent: 65,
                        endIndent: 7,
                      ),
                      ListTile(
                        title: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "Score Goal",
                              style: TextStyle(fontSize: 25),
                            ),
                            Text(
                              "80%",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.grey.shade600),
                            ),
                          ],
                        ),
                        leading: Image.asset(
                          "Assets/images/business-plan.png",
                          width: 35,
                          height: 39,
                        ),
                        trailing: const Icon(Icons.arrow_forward_ios_rounded),
                      ),
                    ],
                  ),
                ),
               const  SizedBox(height: 18,),
                Container(
                  height: 140,
                  width: 400,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                      child:Column(
                        children: [
                          ListTile(title: const Text("Rate us" , style: TextStyle(fontSize: 22),),
                            leading: Image.asset(
                          "Assets/images/star.png",
                          width: 35,
                          height: 39,
                        ),
                        trailing: const Icon(Icons.arrow_forward_ios_rounded),
                          ),
                          const Divider(),
                           ListTile( title: const Text("Share with a friend " , style: TextStyle(fontSize: 22),),
                          leading: Image.asset(
                          "Assets/images/share.png",
                          width: 35,
                          height: 39,
                        ),
                        trailing: const Icon(Icons.arrow_forward_ios_rounded),
                         )
                        ],
                      ),
                ),
                const  SizedBox(height: 22,),
                Container(
                  height: 60,
                  width: 400,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                      child: ListTile( title: const Text("Reset progress" , style: TextStyle(fontSize: 22),),
                        leading: Image.asset(
                          "Assets/images/reset.png",
                          width: 35,
                          height: 39,
                        ),
                        trailing: const Icon(Icons.arrow_forward_ios_rounded),
                      ),
                ),
              ],
            ),
          ),
        ));
  }
}
