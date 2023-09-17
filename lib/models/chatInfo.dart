class ChatInfo {
  final String chatId;
  final bool autofocus;
  final String chatType;

  ChatInfo(this.chatId, this.autofocus, this.chatType);

  ChatInfo.fromJson(Map<String, dynamic> json)
      : chatId = json['chatId'],
        autofocus = json['autofocus'],
        chatType = json['chatType'];

  Map<String, dynamic> toJson() => {
        'chatId': autofocus,
        'autofocus': autofocus,
        'chatType': chatType,
      };
}
