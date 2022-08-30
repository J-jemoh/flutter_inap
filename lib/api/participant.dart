import 'dart:convert';
import 'package:flutter/material.dart';
import '/models/participant.dart';
import 'package:http/http.dart' as http;

class Participant {
  String baseurl = "http://10.0.2.2:8000/api/participants";
  Future<List> getAllParticipants() async {
    try {
      var result = await http.get(Uri.parse(baseurl));
      if (result.statusCode == 200) {
        return jsonDecode(result.body);
      } else {
        return Future.error("server error");
      }
    } catch (e) {
      return Future.error(e);
    }
  }
}
