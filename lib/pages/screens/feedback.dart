import 'package:flutter/material.dart';

class FeedbackScreen extends StatefulWidget{
  const FeedbackScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _FeedbackScreenState createState() => _FeedbackScreenState();
}

 class _FeedbackScreenState extends State<FeedbackScreen>{
  final TextEditingController _feedbackController = TextEditingController();

  void _submitFeedback(){
    // String feedbackText = _feedbackController.text;
  }
 
  
  @override

  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('Feedback Page'), 
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              controller: _feedbackController,
              maxLines: 5,
              decoration: const InputDecoration(
                labelText: 'Feedback',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20,),
            ElevatedButton(onPressed: _submitFeedback, child: const Text('Submit Feedback'))
          ],
        ),

        ),
    );
  }
}
