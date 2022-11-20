import 'package:emailjs/emailjs.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class UtilitySenderMail {
  final _publicKey = dotenv.get('PUBLIC_KEY');
  final _privateKey = dotenv.get('PRIVATE_KEY');
  final _serviceId = dotenv.get('SERVICE_ID');
  final _templateId = dotenv.get('TEMPLATE_ID');

  Future emailSender({
    required String fromName,
    required String email,
    required String subject,
    required String message,
  }) async {
    try {
      await EmailJS.send(
        _serviceId,
        _templateId,
        {
          'from_name': fromName,
          'user_email': email,
          'subject': subject,
          'message': message,
        },
        Options(
          publicKey: _publicKey,
          privateKey: _privateKey,
        ),
      );
    } catch (e) {
      print(e);
    }
  }
}
