import 'package:cms/widgets/alert_message.dart';

class Message {
  String content;
  int? messageCode;
  String titile;
  MessageTypes type;

  Message(
      {required this.content,
      this.messageCode,
      required this.titile,
      required this.type});
}

class Messages {
  static Message notFoundRoute = Message(
      content:
          'We can found this route in your configuration, Please add route for this.',
      messageCode: 1,
      titile: 'Oops',
      type: MessageTypes.error);
  static Message handlerLatter = Message(
      content: 'We will update it latter',
      messageCode: 1,
      titile: 'Warning',
      type: MessageTypes.warning);
}
