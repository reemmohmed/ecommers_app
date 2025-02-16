import 'dart:io';

checkInternent() async {
  try {
    var result = await InternetAddress.lookup("googel.com");
    if (result.isNotEmpty && result[0].address.isNotEmpty) {
      return true;
    }
  } on SocketException catch (e) {
    return false;
  }
}
