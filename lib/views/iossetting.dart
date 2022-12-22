import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class iossetting extends StatefulWidget {
  const iossetting({Key? key}) : super(key: key);

  @override
  State<iossetting> createState() => _iossettingState();
}

class _iossettingState extends State<iossetting> {
  bool isSwitvhed = false;
  bool fingerprint = false;
  bool password = false;
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text("Setting UI"),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 20),
          Container(
            margin: const EdgeInsets.only(left: 20, top: 25),
            child: const Text(
              "Common",
              style: TextStyle(color: CupertinoColors.systemGrey),
            ),
          ),
          //  const SizedBox(height: 5),
          Container(
            margin: const EdgeInsets.only(left: 20, top: 25),
            child: Row(
              children: [
                Container(
                    child: Icon(CupertinoIcons.clear_thick_circled,
                        color: CupertinoColors.systemGrey)),
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
                  CupertinoIcons.cloud,
                  color: CupertinoColors.systemGrey,
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
              style: TextStyle(color: CupertinoColors.systemGrey),
            ),
          ),
          const SizedBox(height: 10),
          Container(
            margin: const EdgeInsets.only(left: 20, top: 25),
            child: Row(
              children: [
                Container(
                    child: const Icon(CupertinoIcons.phone,
                        color: CupertinoColors.systemGrey)),
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
                  CupertinoIcons.mail_solid,
                  color: CupertinoColors.systemGrey,
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
                  CupertinoIcons.fullscreen_exit,
                  color: CupertinoColors.systemGrey,
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
              style: TextStyle(color: CupertinoColors.systemGrey),
            ),
          ),
          const SizedBox(height: 10),
          Container(
            margin: const EdgeInsets.only(left: 20, top: 25),
            child: Row(
              children: [
                Container(
                    child: const Icon(CupertinoIcons.lock,
                        color: CupertinoColors.systemGrey)),
                const SizedBox(width: 30),
                Container(
                  child: const Text(
                    "Lock app in background",
                  ),
                ),
                const SizedBox(width: 190),
                Container(
                  child: CupertinoSwitch(
                    onChanged: (val) {
                      setState(() {
                        isSwitvhed = val;
                      });
                    },
                    value: isSwitvhed,
                    activeColor: CupertinoColors.destructiveRed,
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
                  CupertinoIcons.barcode_viewfinder,
                  color: CupertinoColors.systemGrey,
                )),
                const SizedBox(width: 30),
                Container(
                  child: const Text(
                    "Use Fingerprint",
                  ),
                ),
                const SizedBox(width: 255),
                Container(
                  child: CupertinoSwitch(
                    onChanged: (val) {
                      setState(() {
                        fingerprint = val;
                      });
                    },
                    value: fingerprint,
                    activeColor: CupertinoColors.destructiveRed,
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
                  CupertinoIcons.lock,
                  color: CupertinoColors.systemGrey,
                )),
                const SizedBox(width: 30),
                Container(
                  child: const Text(
                    "Change Password",
                  ),
                ),
                const SizedBox(width: 230),
                Container(
                  child: CupertinoSwitch(
                    onChanged: (val) {
                      setState(() {
                        password = val;
                      });
                    },
                    value: password,
                    activeColor: CupertinoColors.destructiveRed,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 20, top: 20),
            child: const Text(
              "Mics",
              style: TextStyle(color: CupertinoColors.systemGrey),
            ),
          ),
        ],
      ),
    );
  }
}
