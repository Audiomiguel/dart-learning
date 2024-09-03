import 'package:flutter/material.dart';
import 'package:yes_no_app/presentation/widgets/chat/my_message_bubble.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(4.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
                'https://media.licdn.com/dms/image/D4E03AQFaAAC6RhtLzw/profile-displayphoto-shrink_400_400/0/1715611270186?e=2147483647&v=beta&t=4ARlD_NNKDy6cJqSToKkoRBieeApBzM6oHcRF-iHfGU'),
          ),
        ),
        title: const Text('Adeli Zamora ♥'),
        centerTitle: true,
      ),
      body: const ChatView(),
    );
  }
}

class ChatView extends StatelessWidget {
  const ChatView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return const MyMessageBubble();
                },
              ),
            ),
            Text('Mundo')
          ],
        ),
      ),
    );
  }
}
