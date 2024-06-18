import 'package:flutter/material.dart';
import 'package:celiceo0333/services/firebase_service.dart';

class AddNamePage extends StatefulWidget {
  const AddNamePage({super.key});
  @override
  State<AddNamePage> createState() => _AddNamePageState();
}

class _AddNamePageState extends State<AddNamePage> {
  TextEditingController nameController = TextEditingController(text: "");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Agregar Nombre',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Color(0xffc33d3d),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            TextField(
              controller: nameController,
              decoration: const InputDecoration(
                hintText: 'Ingrese el Nuevo Nombre.',
              ),
            ),
            ElevatedButton(
                onPressed: () async {
                  await addPeople(nameController.text).then((_) {
                    Navigator.pop(context);
                  });
                },
                child: const Text("Guardar"))
          ],
        ),
      ),
    );
  }
}
