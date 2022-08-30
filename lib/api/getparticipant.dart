import 'dart:convert';
import 'package:flutter/material.dart';
import '/models/participant.dart';
import '/api/participant.dart';
import 'package:http/http.dart' as http;

class Getparticipantid {
  String baseurl = "http://10.0.2.2:8000/api/participants/{id}";

  get id => null;
  Future<List<Participant>> showParticipant() async {
    try {
      var result = await http.post(Uri.parse(baseurl));
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
