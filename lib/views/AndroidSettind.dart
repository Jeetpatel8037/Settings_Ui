import 'package:flutter/material.dart';

class AndroidSetting extends StatefulWidget {
  const AndroidSetting({Key? key}) : super(key: key);

  @override
  State<AndroidSetting> createState() => _AndroidSettingState();
}

class _AndroidSettingState extends State<AndroidSetting> {
  bool isSwitvhed = false;
  bool fingerprint = false;
  bool password = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Settings Ui"),
        backgroundColor: Colors.red,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(left: 20, top: 25),
            child: const Text(
              "Common",
              style: TextStyle(color: Colors.red),
            ),
          ),
          const SizedBox(height: 10),
          Container(
            margin: const EdgeInsets.only(left: 20, top: 25),
            child: Row(
              children: [
                Container(
                    child: const Icon(Icons.language, color: Colors.grey)),
                const SizedBox(width: 30),
                Container(
                  child: const Text(
                    "Langage\n English",
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 20, top: 25),
            child: Row(
              children: [
                Container(
                    child: const Icon(
                  Icons.cloud_queue,
                  color: Colors.grey,
                )),
                const SizedBox(width: 30),
                Container(
                  child: const Text(
                    "Environment\n Production",
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 20, top: 25),
            child: const Text(
              "Account",
              style: TextStyle(color: Colors.red),
            ),
          ),
          const SizedBox(height: 10),
          Container(
            margin: const EdgeInsets.only(left: 20, top: 25),
            child: Row(
              children: [
                Container(child: const Icon(Icons.phone, color: Colors.grey)),
                const SizedBox(width: 30),
                Container(
                  child: const Text(
                    "Phone Number",
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 20, top: 25),
            child: Row(
              children: [
                Container(
                    child: const Icon(
                  Icons.email,
                  color: Colors.grey,
                )),
                const SizedBox(width: 30),
                Container(
                  child: const Text(
                    "Email",
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 20, top: 25),
            child: Row(
              children: [
                Container(
                    child: const Icon(
                  Icons.exit_to_app,
                  color: Colors.grey,
                )),
                const SizedBox(width: 30),
                Container(
                  child: const Text(
                    "Sign Out",
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 20, top: 25),
            child: const Text(
              "Security",
              style: TextStyle(color: Colors.red),
            ),
          ),
          const SizedBox(height: 10),
          Container(
            margin: const EdgeInsets.only(left: 20, top: 25),
            child: Row(
              children: [
                Container(
                    child: const Icon(Icons.screen_lock_portrait,
                        color: Colors.grey)),
                const SizedBox(width: 30),
                Container(
                  child: const Text(
                    "Lock app in background",
                  ),
                ),
                const SizedBox(width: 200),
                Container(
                  child: Switch(
                    onChanged: (val) {
                      setState(() {
                        isSwitvhed = val;
                      });
                    },
                    value: isSwitvhed,
                    activeColor: Colors.red,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 20, top: 25),
            child: Row(
              children: [
                Container(
                    child: const Icon(
                  Icons.fingerprint,
                  color: Colors.grey,
                )),
                const SizedBox(width: 30),
                Container(
                  child: const Text(
                    "Use Fingerprint",
                  ),
                ),
                const SizedBox(width: 255),
                Container(
                  child: Switch(
                    onChanged: (val) {
                      setState(() {
                        fingerprint = val;
                      });
                    },
                    value: fingerprint,
                    activeColor: Colors.red,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 20, top: 25),
            child: Row(
              children: [
                Container(
                    child: const Icon(
                  Icons.lock,
                  color: Colors.grey,
                )),
                const SizedBox(width: 30),
                Container(
                  child: const Text(
                    "Change Password",
                  ),
                ),
                const SizedBox(width: 240),
                Container(
                  child: Switch(
                    onChanged: (val) {
                      setState(() {
                        password = val;
                      });
                    },
                    value: password,
                    activeColor: Colors.red,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 20, top: 20),
            child: const Text(
              "Mics",
              style: TextStyle(color: Colors.red),
            ),
          ),
        ],
      ),
    );
  }
}
