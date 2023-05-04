import 'package:equatable/equatable.dart';

const chatMessageEvent = "chat_message";

abstract class BaseEvent extends Equatable {
  final Map<String, dynamic> payload;

  const BaseEvent({
    required this.payload,
  });

  @override
  List<Object> get props => [payload];
}

class AuthEvent extends BaseEvent {
  const AuthEvent({
    required Map<String, dynamic> payload,
  }) : super(payload: payload);

  Map<String, dynamic> toJson() => payload;
}

class ChatEvent extends BaseEvent {
  const ChatEvent({
    required Map<String, dynamic> payload,
  }) : super(payload: payload);

  Map<String, dynamic> toJson() => payload;
}
