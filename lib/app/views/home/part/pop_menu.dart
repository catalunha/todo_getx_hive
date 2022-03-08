import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_getx_hive/app/controllers/auth/auth_controller.dart';

class PopMenu extends StatelessWidget {
  AuthController _authController = Get.find();
  PopMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      child: Tooltip(
        message: 'click here to others options',
        child: ClipRRect(
          borderRadius: BorderRadius.circular(8.0),
          // child: const Icon(Icons.ac_unit),
          child: Image.network(
            '${_authController.user?.photoURL ?? "https://www.mktdeafiliados.com.br/wp-content/uploads/2015/02/Como-criar-uma-campanha-com-links-diretos.jpg"}',
            height: 58,
            width: 58,
          ),
        ),
      ),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
      itemBuilder: (BuildContext context) {
        return [
          // PopupMenuItem(
          //   child: TextButton.icon(
          //     label: const Text('Information'),
          //     onPressed: () async {
          //       await Get.to(() => const Information());
          //       Get.back();
          //     },
          //     icon: const Icon(AppIconData.info),
          //   ),
          // ),
          PopupMenuItem(
            child: TextButton.icon(
              label: const Text('Sair'),
              onPressed: () {
                _authController.logout();
              },
              icon: const Icon(Icons.exit_to_app),
            ),
          ),
        ];
      },
    );
  }
}
