import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:voice_assistant/secrets.dart';
class OpenAIService {

  Future<String> isArtPromptAPI(String prompt) async{
    try{
      final res = await http.post(
          Uri.parse('https://api.openai.com/v1/chat/completions'),
          headers: {
            'Content-Type' : 'application/json',
            'Authorization' : 'Bearer $openAiAPIKey',
          },
        body: jsonEncode({
          "model": "gpt-4o-mini",
          "messages" : [
            {
            'role' : 'user',
              'content' : 'Does this message want to generate an AI pic',
            }
          ]
        })

      );
    } catch (e) {
      return e.toString();
    }
  }

  Future<String> chatGPTAPI(String prompt) async{
    return 'ChatGPT';
  }

  Future<String> dallEAPI(String prompt) async{
    return 'Dall-E';
  }
}