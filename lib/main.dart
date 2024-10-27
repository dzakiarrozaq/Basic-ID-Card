import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home:DzakiCard(),
  ));
}

class DzakiCard extends StatefulWidget {
  const DzakiCard({super.key});

  @override
  State<DzakiCard> createState() => _DzakiCardState();
}

class _DzakiCardState extends State<DzakiCard> {

  int dzakiSemester = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: const Text('Dzaki ID Card', style: TextStyle(color: Colors.white),),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0.0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            dzakiSemester += 1;
          });
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.grey[800],
      ),
      body: Padding(
          padding: const EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Center(
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/PP cakep.jpg') ,
                  radius: 60.0,
                ),
              ),
              Divider(
                height: 60.0,
                color: Colors.grey[800],
              ),
              const Text(
                'Name',
                style: TextStyle(
                  color: Colors.grey,
                  letterSpacing: 2.0,
                ),
              ),
              const SizedBox(height: 10.0),
              Text(
                'Muhammad Dzaki Arrozaq',
                style: TextStyle(
                  color: Colors.amberAccent[200],
                  letterSpacing: 2.0,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold
                ),
              ),
              const SizedBox(height: 30.0),
              const Text(
                'University',
                style: TextStyle(
                  color: Colors.grey,
                  letterSpacing: 2.0,
                ),
              ),
              const SizedBox(height: 10.0),
              Text(
                'Universitas Negeri Semarang',
                style: TextStyle(
                    color: Colors.amberAccent[200],
                    letterSpacing: 2.0,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold
                ),
              ),
              const SizedBox(height: 30.0),
              const Text(
                'Semester',
                style: TextStyle(
                  color: Colors.grey,
                  letterSpacing: 2.0,
                ),
              ),
              const SizedBox(height: 10.0),
              Text(
                '$dzakiSemester',
                style: TextStyle(
                    color: Colors.amberAccent[200],
                    letterSpacing: 2.0,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold
                ),
              ),
              const SizedBox(height: 30.0),
              Row(
                children: [
                  Icon(
                    Icons.email,
                    color: Colors.grey[400],
                  ),
                  const SizedBox(width: 10.0),
                  Text(
                    'dzakiarrozaq62@gmail.com',
                    style: TextStyle(
                      color: Colors.grey[400],
                      fontSize: 18.0,
                      letterSpacing: 1.0
                    ),
                  )
                ],
              ),
            ],
          ),
      ),
    );
  }
}



