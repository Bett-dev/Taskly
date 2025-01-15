import "package:flutter/material.dart";

class TaskScreen extends StatelessWidget {
  const TaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 60.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.menu,
                      size: 30,
                      color: Colors.lightBlueAccent,
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    'Taskly',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 50,
                        fontWeight: FontWeight.w700),
                  ),
                  Text(
                    '12 Tasks',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  )
                ],
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30)),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: ListView(children: [
                    TaskList(
                      text: 'Task 1',
                    ),
                    TaskList(
                      text: 'Task 2',
                    ),
                    TaskList(
                      text: 'Task 3',
                    ),
                    TaskList(
                      text: 'Task 4',
                    ),
                    TaskList(
                      text: 'Task 5',
                    ),
                    TaskList(
                      text: 'Task 6',
                    ),
                    TaskList(
                      text: 'Task 7',
                    ),
                    TaskList(
                      text: 'Task 2',
                    ),
                    TaskList(
                      text: 'Task 3',
                    ),
                    TaskList(
                      text: 'Task 4',
                    ),
                    TaskList(
                      text: 'Task 5',
                    ),
                    TaskList(
                      text: 'Task 12',
                    ),
                  ]),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet<void>(
              context: context,
              isScrollControlled: true,
              builder: (BuildContext context) {
                return SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text(
                            textAlign: TextAlign.center,
                            'Add Task',
                            style: TextStyle(
                                fontSize: 32, fontWeight: FontWeight.w600),
                          ),
                          TextField(
                            decoration: InputDecoration(
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.lightBlueAccent, width: 2),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.lightBlueAccent, width: 2),
                              ),
                            ),
                            autofocus: true,
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          TextButton(
                            style: ButtonStyle(
                              backgroundColor: WidgetStatePropertyAll(
                                  Colors.lightBlueAccent),
                            ),
                            onPressed: () {},
                            child: Text(
                              'Submit',
                              style: TextStyle(color: Colors.white),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                );
              });
        },
        shape: CircleBorder(),
        backgroundColor: Colors.lightBlueAccent,
        child: Icon(
          Icons.add,
          size: 30,
          color: Colors.white,
        ),
      ),
    );
  }
}

class TaskList extends StatelessWidget {
  const TaskList({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        text,
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
      ),
      trailing: Icon(
        Icons.check_box_outline_blank,
        size: 30,
      ),
    );
  }
}
