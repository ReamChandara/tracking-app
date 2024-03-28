import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tracking_web/widget/build_address_widget.dart';

import '../config/constant/string_constant.dart';
import '../controller/worker_controller.dart';

class PhoneScreen extends StatelessWidget {
  final WorkerController controller;
  const PhoneScreen({super.key, required this.controller});

  AppBar _buildAppbar() {
    return AppBar(
      automaticallyImplyLeading: false,
      centerTitle: true,
      title: Text(
        "appbarTitle".tr,
        style: TextStyle(
            fontSize: 20,
            fontFamily: controller.langCode == "kh"
                ? "Battambang"
                : "SourceSansPro-Regular"),
      ),
      actions: [
        Obx(() {
          return Switch(
              trackColor: MaterialStateProperty.all(Colors.grey),
              activeColor: Colors.white,
              inactiveThumbColor: Colors.white,
              activeThumbImage: const AssetImage(
                'assets/images/cambodia_flag.png',
              ),
              inactiveThumbImage:
                  const AssetImage('assets/images/english_flag.png'),
              value: controller.switchValue.value,
              onChanged: (value) {
                controller.changeSwitch(value);
              });
        }),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppbar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              children: [
                Container(
                  alignment: Alignment.center,
                  height: 45,
                  width: Get.width,
                  color: Colors.blueAccent[100],
                  child: Text("workerpro".tr,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          fontFamily: controller.langCode == "en"
                              ? "SourceSansPro-Regular"
                              : "Battambang")),
                ),
                Container(
                  margin: const EdgeInsets.all(10),
                  width: 130,
                  height: 130,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                            controller.workerModel!.workerData[0].photo,
                          ))),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Table(
                    columnWidths: const {
                      0: FixedColumnWidth(150),
                      1: FixedColumnWidth(30),
                      2: FixedColumnWidth(190),
                    },
                    children: [
                      TableRow(
                        children: [
                          TableCell(
                            child: Container(
                              alignment: Alignment.centerRight,
                              child: Text(
                                'ocwcNo'.tr,
                                style: TextStyle(
                                    fontSize:
                                        controller.langCode == "en" ? 18 : 16,
                                    fontFamily: controller.langCode == "en"
                                        ? "SourceSansPro-Regular"
                                        : "Battambang"),
                              ),
                            ),
                          ),
                          TableCell(
                            child: Container(
                              alignment: Alignment.center,
                              child: const Text(
                                ":",
                                style: TextStyle(fontSize: 18),
                              ),
                            ),
                          ),
                          TableCell(
                            child: Container(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                  controller.workerModel!.workerData[0].ocwcNo,
                                  style: const TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  )),
                            ),
                          ),
                        ],
                      ),
                      TableRow(
                        children: [
                          TableCell(
                            child: Container(
                              alignment: Alignment.centerRight,
                              child: Text(
                                'khmername'.tr,
                                style: TextStyle(
                                    fontSize:
                                        controller.langCode == "en" ? 18 : 16,
                                    fontFamily: controller.langCode == "en"
                                        ? "SourceSansPro-Regular"
                                        : "Battambang"),
                              ),
                            ),
                          ),
                          TableCell(
                            child: Container(
                              alignment: Alignment.center,
                              child: const Text(
                                ":",
                                style: TextStyle(fontSize: 18),
                              ),
                            ),
                          ),
                          TableCell(
                            child: Container(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                controller
                                    .workerModel!.workerData[0].fullName.khName,
                                style: const TextStyle(
                                  fontSize: 16,
                                  fontFamily: "Battambang",
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      TableRow(
                        children: [
                          TableCell(
                            child: Container(
                              alignment: Alignment.centerRight,
                              child: Text(
                                'latinname'.tr,
                                style: TextStyle(
                                    fontSize:
                                        controller.langCode == "en" ? 18 : 16,
                                    fontFamily: controller.langCode == "en"
                                        ? "SourceSansPro-Regular"
                                        : "Battambang"),
                              ),
                            ),
                          ),
                          TableCell(
                            child: Container(
                              alignment: Alignment.center,
                              child: const Text(":"),
                            ),
                          ),
                          TableCell(
                            child: Container(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                controller
                                    .workerModel!.workerData[0].fullName.enName,
                                style: const TextStyle(
                                  fontSize: 16,
                                  fontFamily: "SourceSansPro-Regular",
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      TableRow(
                        children: [
                          TableCell(
                            child: Container(
                              alignment: Alignment.centerRight,
                              child: Text(
                                'gender'.tr,
                                style: TextStyle(
                                    fontSize: 16,
                                    fontFamily: controller.langCode == "en"
                                        ? "SourceSansPro-Regular"
                                        : "Battambang"),
                              ),
                            ),
                          ),
                          TableCell(
                            child: Container(
                              alignment: Alignment.center,
                              child: const Text(
                                ":",
                                style: TextStyle(fontSize: 16),
                              ),
                            ),
                          ),
                          TableCell(
                            child: Container(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                controller.langCode == "en"
                                    ? controller
                                        .workerModel!.workerData[0].gender.enName
                                    : controller
                                        .workerModel!.workerData[0].gender.khName,
                                style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: controller.langCode == "en"
                                      ? "SourceSansPro-Regular"
                                      : "Battambang",
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      TableRow(
                        children: [
                          TableCell(
                            child: Container(
                              alignment: Alignment.centerRight,
                              child: Text(
                                'country'.tr,
                                style: TextStyle(
                                    fontSize: 16,
                                    fontFamily: controller.langCode == "en"
                                        ? "SourceSansPro-Regular"
                                        : "Battambang"),
                              ),
                            ),
                          ),
                          TableCell(
                            child: Container(
                              alignment: Alignment.center,
                              child: const Text(
                                ":",
                                style: TextStyle(fontSize: 16),
                              ),
                            ),
                          ),
                          TableCell(
                            child: Container(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                controller.langCode == "en"
                                    ? controller
                                        .workerModel!.workerData[0].country.enName
                                    : controller
                                        .workerModel!.workerData[0].country.khName,
                                style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: controller.langCode == "en"
                                      ? "SourceSansPro-Regular"
                                      : "Battambang",
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      TableRow(
                        children: [
                          TableCell(
                            child: Container(
                              alignment: Alignment.centerRight,
                              child: Text(
                                'SenderAgency'.tr,
                                style: TextStyle(
                                    fontSize: 16,
                                    fontFamily: controller.langCode == "en"
                                        ? "SourceSansPro-Regular"
                                        : "Battambang"),
                              ),
                            ),
                          ),
                          TableCell(
                            child: Container(
                              alignment: Alignment.center,
                              child: const Text(
                                ":",
                                style: TextStyle(fontSize: 16),
                              ),
                            ),
                          ),
                          TableCell(
                            child: Container(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                controller.langCode == "en"
                                    ? controller.workerModel!.workerData[0]
                                        .sendingAgency.enName
                                    : controller.workerModel!.workerData[0]
                                        .sendingAgency.khName,
                                style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: controller.langCode == "en"
                                      ? "SourceSansPro-Regular"
                                      : "Battambang",
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Container(
                  alignment: Alignment.center,
                  height: 45,
                  width: Get.width,
                  color: Colors.blueAccent[100],
                  child: Text("trackInfo".tr,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          fontFamily: controller.langCode == "en"
                              ? "SourceSansPro-Regular"
                              : "Battambang")),
                ),
                ListView.builder(
                  shrinkWrap: true,
                  itemCount: controller.workerModel!.workerData[0].tricking.length,
                  itemBuilder: (context, index) {
                    var track =
                        controller.workerModel!.workerData[0].tricking[index];
                    var textColor = Colors.green;
                    if (track.check!) {
                      textColor = Colors.green;
                    } else {
                      if (index == controller.falseIndex) {
                        textColor = Colors.orange;
                      } else {
                        textColor = Colors.red;
                      }
                    }
                    return Padding(
                      padding:
                          const EdgeInsets.only(left: 10, right: 10, top: 20),
                      child: ListTile(
                          title: Text(
                            controller.langCode == "en"
                                ? track.title.enTitle
                                : track.title.khTilte,
                            style: TextStyle(
                                fontFamily: controller.langCode == "en"
                                    ? "SourceSansPro-Regular"
                                    : "Battambang"),
                          ),
                          leading: Image.asset(
                            iconImage[index],
                            color: Colors.blueAccent.shade100,
                            width: 20,
                          ),
                          subtitle: () {
                            return Text(
                              controller.langCode == "en"
                                  ? track.date.enDate
                                  : track.date.khTilte,
                              style: TextStyle(
                                  color: textColor,
                                  fontFamily: controller.langCode == "en"
                                      ? "SourceSansPro-Regular"
                                      : "Battambang"),
                            );
                          }()),
                    );
                  },
                ),
                BuildAddress(controller: controller),
              ],
            )
          ],
        ),
      ),
    );
  }
}