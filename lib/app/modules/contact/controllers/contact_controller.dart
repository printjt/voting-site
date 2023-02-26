
import 'package:get/get.dart';
import 'package:smtpman/port.dart';
import 'package:smtpman/secure.dart';
import 'package:smtpman/smtpman.dart';

class ContactController extends GetxController {

  final name = "".obs;
  final phoneNumber = "".obs;
  final email = "".obs;
  final comments = "".obs;

  Future<void> send() async {
    SmtpMan smtpMan = SmtpMan();
    smtpMan.setServer(
        host: "smtp.gmail.com",
        username: "welpieproj@gmail.com",
        password: "yxsztvmsrqmtbojy",
        authentication: true,
        port: Port.to_587,
        secure: Secure.starttls
    );
    smtpMan.receipt(
        senderName: name.value,
        sendToEmail: "mhdahd1999@hotmail.com",
        subject: "Contact Form",
        body: comments.value
    );
    if(await smtpMan.send() == true){
      print("Email was sent");
    }else{
      print("Faild to send, please check smtp credential.");
    }
  }
}
