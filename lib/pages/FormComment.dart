import 'package:fashon_stoke/service/commets-service.dart';
import 'package:flutter/material.dart';

class FormComment extends StatefulWidget {
  const FormComment({super.key});

  @override
  _FormCommentState createState() => _FormCommentState();
}

class _FormCommentState extends State<FormComment> {
  TextEditingController nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // final Map arguments = ModalRoute.of(context)!.settings.arguments as Map;
    // nameController.text = arguments['name'];

    final Map? arguments = ModalRoute.of(context)!.settings.arguments as Map?;
    nameController.text = arguments?['name'] ?? '';

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 8, 184, 228),
        title: const Text('Nuevo Comentario'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: nameController,
              decoration: const InputDecoration(hintText: 'Comenta Ahora'),
            ),
            const SizedBox(height: 16.0),
            ElevatedButton(
                onPressed: () async {
                  if (arguments != null &&
                      arguments.containsKey('id') &&
                      arguments['id']!.length != 0) {
                    await updateComment(arguments['id']!, nameController.text)
                        .then((_) {
                      Navigator.pop(context);
                    });
                  } else {
                    await addComment(nameController.text).then((_) {
                      Navigator.pop(context);
                    });
                  }
                },
                child: const Text('Guardar'))
          ],
        ),
      ),
    );
  }
}
