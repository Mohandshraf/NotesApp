import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:notes_app/cubits/notes_cubit.dart';
import 'package:notes_app/cubits/notes_states.dart';
import 'package:notes_app/views/add_note_form.dart';

class AddButtom extends StatefulWidget {
  const AddButtom({super.key});

  @override
  State<AddButtom> createState() => _AddButtomState();
}

class _AddButtomState extends State<AddButtom> {
  bool isLoading = false;
  // متغير لتتبع حالة التحميل
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 73, 71, 71),
      child: SingleChildScrollView(
        child: BlocConsumer<AddNotesCubit, NotesState>(
          listener: (context, state) {
            if (state is NotesLoaded) {
              isLoading = true; // تعيين حالة التحميل إلى true
            }
            if (state is NotesFailure) {
              print("Error occurred while adding note ${state.errorMassage}");
            }
            if (state is NotesSuccess) {
              Navigator.pop(context); // إغلاق BottomSheet بعد إضافة الملاحظة
            }
            // هنا ممكن تضيف SnackBar أو أي استجابة لتغير الحالة
          },
          builder: (context, state) {
            return ModalProgressHUD(
              inAsyncCall: isLoading,
              child: const AddNoteForm(),
            );
          },
        ),
      ),
    );
  }
}
