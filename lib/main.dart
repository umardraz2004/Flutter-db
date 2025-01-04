import 'package:flutter/material.dart';
import './services/db_helper.dart';
import './components/header.dart';
import './components/search_bar.dart';
import './components/filter_section.dart';
import './components/pending_task.dart';
import './components/task_list.dart';
import './components/footer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.light(
          brightness: Brightness.light,
          primary: Colors.black,
        ),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Map<String, dynamic>> tasks = [];
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    fetchTasks();
  }

  Future<void> fetchTasks() async {
    try {
      final data = await DatabaseHelper().getData();
      setState(() {
        tasks = data; // Set data to tasks list
        isLoading = false; // Stop loading
      });
    } catch (error) {
      // Handle error
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Error fetching tasks: $error')),
      );
      setState(() {
        isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Header(),
      body: isLoading
          ? const Center(
              child:
                  CircularProgressIndicator()) // Show loader while fetching data
          : Padding(
              padding: const EdgeInsets.only(left: 16, right: 16, top: 15),
              child: Column(
                children: [
                  SearchBarField(onSearchChanged: (value) {}),
                  // Filter section
                  FilterSection(),
                  // Filter section end
                  PendingTask(),
                  TaskList(
                    tasks: tasks,
                    onTaskTapped: (task) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('Tapped on $task')),
                      );
                    },
                  ),
                  Footer(),
                ],
              ),
            ),
    );
  }
}
