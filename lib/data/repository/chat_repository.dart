import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:logger/logger.dart';
import 'package:team3_kakao/_core/utils/date_format.dart';
import 'package:team3_kakao/data/dto/chat_dto/chatting_list_page_dto.dart';
import 'package:team3_kakao/data/model/message.dart';

class ChatRepository{
  //통신
  Stream<List<MessageDTO>> fetchMessages(){
    final db = FirebaseFirestore.instance;

    Stream<QuerySnapshot<Map<String, dynamic>>> stream = db
        .collection("ChatRoom1")
        .doc("MrJLNXVtsN6fYV6nZ57g")
        .collection("messages")
        .orderBy("createdAt", descending: false)
        .snapshots();

    return stream.map((snapshot){
      return snapshot.docs.map((e) {
        return MessageDTO.fromJson(e.data(), e.id);
      }).toList();
    });

  }

  //userId 받아야함!!
  Future<void> addMessage(String text) async {
    final db = FirebaseFirestore.instance;
    message msg = new message(content: text,userId: 1, createdAt: Timestamp.now());

    final docRef = await db
        .collection("ChatRoom1")
        .doc("MrJLNXVtsN6fYV6nZ57g")
        .collection("messages")
        .add(msg.toJson());

  }










}