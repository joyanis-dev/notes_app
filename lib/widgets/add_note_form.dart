import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/add_notes_cubit/add_notes_cubit.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/widgets/custom_buttom.dart';
import 'package:note_app/widgets/custom_text_field.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String ?title;
  String ?content;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          CustomTextField(labelText: 'Title',
            onSaved: (value) {
              title = value;
            },
          ),
          SizedBox(height: 10),
          CustomTextField(labelText: 'Content', maxLines: 5,
            onSaved: (value) {
              content = value;
            },
          ),
          SizedBox(height: 60),
          CustomButton(

            onPressed: () {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
                var notemodel = Note(title: title!, content: content!, createdAt: DateTime.now(), color: Colors.blue.value);
                BlocProvider.of<AddNotesCubit>(context).addNote(notemodel);
              } else {
                setState(() {
                  autovalidateMode = AutovalidateMode.always;
                });
              }
            },
          ),
        ],
      ),
    );
  }
}
