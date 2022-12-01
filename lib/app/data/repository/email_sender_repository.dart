import 'package:either_dart/either.dart';
import 'package:get/get.dart';
import 'package:portfolio/app/core/error/failure.dart';
import 'package:portfolio/app/data/model/email_sender_model.dart';
import 'package:portfolio/app/data/service/mail_js_service.dart';

abstract class EmailSenderRepository {
  Future<Either<Failure, String>> sendEmail(fromName, email, subject, message);
}

class EmailSenderRepositoryImpl implements EmailSenderRepository {
  final emailSenderService = Get.find<MailJSService>();
  @override
  Future<Either<Failure, String>> sendEmail(
    fromName,
    email,
    subject,
    message,
  ) async {
    EmailSenderModel emailSenderModel = EmailSenderModel(
      name: fromName,
      email: email,
      subject: subject,
      message: message,
    );
    final result = await emailSenderService.sendMessage(emailSenderModel);

    if (result.isLeft) {
      return Left(result.left);
    }

    return Right(result.right);
  }
}
