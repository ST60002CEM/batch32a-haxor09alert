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
  final List<Map<String, String>> _allNotes = []; // All notes stored here
  List<Map<String, String>> _visibleNotes = []; // Notes that are currently visible
  final int _loadCount = 5; // Number of notes to load each time
  final TextEditingController _noteTitleController = TextEditingController();
  final TextEditingController _noteDescriptionController = TextEditingController();
  bool _isLoading = false; // Flag to show/hide the loading indicator

  @override
  void dispose() {
    _noteTitleController.dispose();
    _noteDescriptionController.dispose();
    super.dispose();
  }

  void _addNote() {
    if (_noteTitleController.text.isNotEmpty && _noteDescriptionController.text.isNotEmpty) {
      setState(() {
        _allNotes.add({
          "title": _noteTitleController.text,
          "description": _noteDescriptionController.text,
        });
        _noteTitleController.clear();
        _noteDescriptionController.clear();
      });

      _showLoadingIndicator();
    }
  }

  void _showLoadingIndicator() {
    setState(() {
      _isLoading = true;
    });

    Future.delayed(Duration(seconds: 2), () {
      setState(() {
        _isLoading = false;
        _loadMoreNotes();
      });
    });
  }

  void _loadMoreNotes() {
    int allNotesCount = _allNotes.length;
    int currentCount = _visibleNotes.length;
    int nextCount = (currentCount + _loadCount > allNotesCount) ? allNotesCount : currentCount + _loadCount;
    setState(() {
      _visibleNotes = List.from(_allNotes.take(nextCount));
    });
  }

  @override
  void initState() {
    super.initState();
    _loadMoreNotes(); // Load initial notes
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
              margin: EdgeInsets.symmetric(
                  horizontal: kHorizontalMargin, vertical: kVerticalMargin),
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.grey),
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
                        border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(height: kHorizontalMargin),
                    TextField(
                      controller: _noteDescriptionController,
                      decoration: InputDecoration(
                        labelText: 'Note Description',
                        border: OutlineInputBorder(),
                      ),
                      maxLines: 3,
                    ),
                    SizedBox(height: kHorizontalMargin),
                    Center(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          fixedSize: Size(
                              MediaQuery.of(context).size.width * 0.56,
                              height * 0.07),
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
            if (_isLoading)
              Center(child: CircularProgressIndicator()),
            _buildNotesList(),
          ],
        ),
      ),
    );
  }

  Widget _buildNotesList() {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: _visibleNotes.length,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          title: Text(_visibleNotes[index]['title']!),
          subtitle: Text(_visibleNotes[index]['description']!),
          trailing: IconButton(
            icon: const Icon(Icons.delete),
            onPressed: () {
              setState(() {
                _allNotes.removeAt(index);
                _visibleNotes.removeAt(index);
              });
            },
          ),
        );
      },
    );
  }
}
