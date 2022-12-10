import 'package:either_dart/either.dart';
import 'package:emailjs/emailjs.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import '../../core/error/failure.dart';
import '../model/email_sender_model.dart';

abstract class MailJSService {
  Future<Either<Failure, String>> sendMessage(EmailSenderModel email);
}

class MailJSServiceImpl implements MailJSService {
  // final _publicKey = dotenv.get('PUBLIC_KEY');
  // final _privateKey = dotenv.get('PRIVATE_KEY');
  // final _serviceId = dotenv.get('SERVICE_ID');
  // final _templateId = dotenv.get('TEMPLATE_ID');

  @override
  Future<Either<Failure, String>> sendMessage(EmailSenderModel email) async {
    try {
      // await EmailJS.send(
      //   _serviceId,
      //   _templateId,
      //   {
      //     'from_name': email.name,
      //     'user_email': email.email,
      //     'subject': email.subject,
      //     'message': email.message,
      //   },
      //   Options(
      //     publicKey: _publicKey,
      //     privateKey: _privateKey,
      //   ),
      // );

      return const Right("Email sent successfully");
    } catch (e) {
      return Left(
        Failure(statusCode: e.hashCode, message: 'Fail sent email'),
      );
    }
  }
}
