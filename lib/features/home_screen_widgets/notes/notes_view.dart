import 'package:flutter/material.dart';
import 'package:memorymate/core/constants/color_constants.dart';
import 'package:memorymate/widgets/responsive_text.dart';
import 'package:memorymate/core/utils/util.dart'; // Assuming utils contains necessary constants

class NotesView extends StatefulWidget {
  const NotesView({super.key});

  @override
  State<NotesView> createState() => _NotesViewState();
}

class _NotesViewState extends State<NotesView> {
  final List<Map<String, String>> _notes = []; // List to store notes with descriptions
  final TextEditingController _noteTitleController = TextEditingController(); // Controller for note title
  final TextEditingController _noteDescriptionController = TextEditingController(); // Controller for note description

  @override
  void dispose() {
    _noteTitleController.dispose();
    _noteDescriptionController.dispose(); // Dispose both controllers to avoid memory leaks
    super.dispose();
  }

  void _addNote() {
    if (_noteTitleController.text.isNotEmpty && _noteDescriptionController.text.isNotEmpty) {
      setState(() {
        _notes.add({
          "title": _noteTitleController.text,
          "description": _noteDescriptionController.text, // Add both title and description to the list
        });
        _noteTitleController.clear();
        _noteDescriptionController.clear(); // Clear both text fields
      });
    }
  }

  void _deleteNote(int index) {
    setState(() {
      _notes.removeAt(index); // Remove the note at the given index
    });
  }

  void _editNote(int index) {
    // Set the text fields to the current note values for editing
    _noteTitleController.text = _notes[index]['title']!;
    _noteDescriptionController.text = _notes[index]['description']!;

    // Display a dialog for editing
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Edit Note'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              TextField(
                controller: _noteTitleController,
                decoration: const InputDecoration(labelText: 'Note Title'),
              ),
              TextField(
                controller: _noteDescriptionController,
                decoration: const InputDecoration(labelText: 'Note Description'),
              ),
            ],
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                setState(() {
                  // Update the note with the new values
                  _notes[index] = {
                    "title": _noteTitleController.text,
                    "description": _noteDescriptionController.text
                  };
                  Navigator.of(context).pop(); // Close the dialog
                });
              },
              child: const Text('Update'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: const ResponsiveText(
          'Notes',
          fontSize: 18,
          fontWeight: FontWeight.w500,
        ),
        backgroundColor: const Color(0xff614E7E),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: kHorizontalMargin, vertical: kVerticalMargin),
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.grey)
              ),
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ResponsiveText(
                      'Add your Notes',
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                    ),
                    SizedBox(height: kHorizontalMargin),
                    TextField(
                      controller: _noteTitleController,
                      decoration: InputDecoration(
                        labelText: 'Note Title',
                        fillColor: Colors.amber,
                        border: OutlineInputBorder()
                      ),
                    ),
                    SizedBox(height: kHorizontalMargin),
                    TextField(
                      controller: _noteDescriptionController,
                      decoration: InputDecoration(
                        labelText: 'Note Description',
                        fillColor: Colors.lightGreen,
                        border: OutlineInputBorder()
                      ),
                      maxLines: 3,
                    ),
                    SizedBox(height: kHorizontalMargin),
                    Center(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          fixedSize: Size(MediaQuery.of(context).size.width * 0.56, height * 0.07),
                          backgroundColor: const Color(0xFF614E7E),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        onPressed: _addNote,
                        child: const ResponsiveText(
                          "Add to Notes",
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          textColor: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            _buildHorizontalNotesList('Your Notes for Today:', height),
          ],
        ),
      ),
    );
  }

  Widget _buildHorizontalNotesList(String title, double height) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
          child: ResponsiveText(
            title,
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
        SizedBox(
          height: height * 1,
          child: ListView.builder(
            scrollDirection: Axis.vertical,
            itemCount: _notes.length,
            itemBuilder: (BuildContext context, int index) {
              return Card(
                child: ListTile(
                  title: Text(_notes[index]['title']!),
                  subtitle: Text(_notes[index]['description']!),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      IconButton(
                        icon: const Icon(Icons.edit),
                        onPressed: () => _editNote(index),
                      ),
                      IconButton(
                        icon: const Icon(Icons.delete),
                        onPressed: () => _deleteNote(index),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}