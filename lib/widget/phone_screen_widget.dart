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
      automaticallyImplyLeading: true,
      centerTitle: true,
      title: Text(
        "appbarTitle".tr,
        style: TextStyle(
            fontSize: 20,
            fontFamily: controller.langCode == "kh"
                ? "Battambang"
                : "SourceSansPro-Regular"),
      ),
      actions: const [
        // Obx(() {
        //   return Switch(
        //       trackColor: MaterialStateProperty.all(Colors.grey),
        //       activeColor: Colors.white,
        //       inactiveThumbColor: Colors.white,
        //       activeThumbImage: const AssetImage(
        //         'assets/images/cambodia_flag.png',
        //       ),
        //       inactiveThumbImage:
        //           const AssetImage('assets/images/english_flag.png'),
        //       value: controller.changValue.value,
        //       onChanged: (value) {
        //         controller.changeLang(value);
        //       });
        // }),
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
                        controller.workerData!.photo,
                      ))),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Table(
                columnWidths: const {
                  0: FixedColumnWidth(150),
                  1: FixedColumnWidth(30),
                  2: FixedColumnWidth(230),
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
                                fontSize: controller.langCode == "en" ? 18 : 16,
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
                          child: Text(controller.workerData!.ocwcNo,
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
                                fontSize: controller.langCode == "en" ? 18 : 16,
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
                            controller.workerData!.fullName.khName,
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
                                fontSize: controller.langCode == "en" ? 18 : 16,
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
                                ? controller.workerData!.gender.enName
                                : controller.workerData!.gender.khName,
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
                                ? controller.workerData!.country.enName
                                : controller.workerData!.country.khName,
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
                                ? controller.workerData!.sendingAgency.enName
                                : controller.workerData!.sendingAgency.khName,
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
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.center,
                    height: 45,
                    width: Get.width,
                    color: Colors.blueAccent[100],
                    child: Text("cardDate".tr,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            fontFamily: controller.langCode == "en"
                                ? "SourceSansPro-Regular"
                                : "Battambang")),
                  ),
                  Table(
                    columnWidths: const {
                      0: FixedColumnWidth(190),
                      1: FixedColumnWidth(30),
                      2: FixedColumnWidth(190),
                    },
                    children: [
                      TableRow(
                        children: [
                          TableCell(
                            child: Container(
                              padding: const EdgeInsets.only(top: 4),
                              alignment: Alignment.centerRight,
                              child: Text(
                                "issuseDate".tr,
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
                              padding: const EdgeInsets.only(top: 4),
                              alignment: Alignment.center,
                              child: const Text(
                                ":",
                                style: TextStyle(fontSize: 18),
                              ),
                            ),
                          ),
                          TableCell(
                            child: Container(
                              padding: const EdgeInsets.only(top: 4),
                              alignment: Alignment.centerLeft,
                              child: Text(
                                  controller.workerData!.issuedDate
                                          .enIssuedDate ??
                                      "noData".tr,
                                  style: TextStyle(
                                    fontFamily: controller.langCode == "en"
                                        ? "SourceSansPro-Regular"
                                        : "Battambang",
                                    fontSize:
                                        controller.langCode == "en" ? 18 : 16,
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
                              padding: const EdgeInsets.only(top: 4),
                              alignment: Alignment.centerRight,
                              child: Text(
                                'expireDate'.tr,
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
                              padding: const EdgeInsets.only(top: 4),
                              alignment: Alignment.center,
                              child: const Text(
                                ":",
                                style: TextStyle(fontSize: 18),
                              ),
                            ),
                          ),
                          TableCell(
                            child: Container(
                              padding: const EdgeInsets.only(top: 4),
                              alignment: Alignment.centerLeft,
                              child: Text(
                                controller.workerData!.expiredDate
                                        .enExpiresDate ??
                                    "noData".tr,
                                style: TextStyle(
                                  fontSize:
                                      controller.langCode == "en" ? 18 : 16,
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
                  )
                ],
              ),
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
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: controller.workerData!.tricking.length,
                  itemBuilder: (context, index) {
                    var track = controller.workerData!.tricking[index];
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
                          const EdgeInsets.only(left: 10, right: 10, top: 10),
                      child: ListTile(
                          tileColor: index % 2 == 0
                              ? Colors.grey.shade50
                              : Colors.white,
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
                          trailing: const Icon(Icons.more_vert),
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
