import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:fashon_stoke/service/commets-service.dart';
import 'package:flutter/material.dart';

class ComentPage extends StatefulWidget {
  const ComentPage({
    super.key,
  });

  @override
  State<ComentPage> createState() => _ComentPageState();
}

class _ComentPageState extends State<ComentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 8, 184, 228),
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Comentarios y más comentarios',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: FutureBuilder(
          future: getComment(),
          builder: ((context, snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                itemCount: snapshot.data?.length,
                itemBuilder: (context, index) {
                  return Dismissible(
                    onDismissed: (direction) async {
                      await deleteComment(snapshot.data?[index]['id']);
                      //snapshot.data?.removeAt(index);
                    },
                    confirmDismiss: (direction) async {
                      bool result = false;

                      result = await showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              title: Text(
                                  'seguro que lo vas a borrar el comentario "${snapshot.data?[index]['name']}" '),
                              actions: [
                                TextButton(
                                    onPressed: () {
                                      return Navigator.pop(context, false);
                                    },
                                    child: const Text('Cancelar')),
                                TextButton(
                                    onPressed: () {
                                      return Navigator.pop(context, true);
                                    },
                                    child: const Text('Si, estoy seguro'))
                              ],
                            );
                          });

                      return result;
                    },
                    background: Container(
                      color: Colors.redAccent[400],
                      child: const Icon(Icons.delete),
                    ),
                    direction: DismissDirection.startToEnd,
                    key: Key(snapshot.data?[index]['id']),
                    // child: ListTile(
                    //   title: const Text('Tú'),
                    //   onTap: () async {
                    //     await Navigator.pushNamed(context, 'formCommentPage',
                    //         arguments: {
                    //           'name': snapshot.data?[index]['name'],
                    //           'id': snapshot.data?[index]['id'],
                    //         });
                    //     setState(() {});
                    //   },
                    //   leading: FittedBox(
                    //     child: Container(
                    //       padding: EdgeInsets.all(10),
                    //       decoration: BoxDecoration(
                    //         color: Colors.lightBlue,
                    //         borderRadius: BorderRadius.circular(10),
                    //       ),
                    //       child: Text(
                    //         snapshot.data?[index]['name'],
                    //         style: TextStyle(
                    //           fontSize: 20,
                    //           color: Colors.white,
                    //         ),
                    //       ),
                    //     ),
                    //   ),

                    // ),
                    child: Card(
                      color: Colors.blue,
                      child: ListTile(
                        title: const Text(
                          'Tú',
                          style: TextStyle(color: Colors.white),
                        ),
                        onTap: () async {
                          await Navigator.pushNamed(context, 'formCommentPage',
                              arguments: {
                                'name': snapshot.data?[index]['name'],
                                'id': snapshot.data?[index]['id'],
                              });
                          setState(() {});
                        },
                        subtitle: Text('${snapshot.data?[index]['name']}',
                            style: const TextStyle(color: Colors.white)),
                      ),
                    ),
                  );
                },
              );
            } else {
              return const Center(child: CircularProgressIndicator());
            }
          })),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          await Navigator.pushNamed(context, 'formCommentPage');
          setState(() {});
        },
        child: const Icon(Icons.add),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.transparent,
        onTap: (index) {},
        height: 70,
        color: Color.fromARGB(255, 8, 184, 228),
        items: [
          Icon(
            Icons.account_circle_sharp,
            size: 30,
            color: Colors.white,
          ),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, "homePage");
            },
            child: Icon(
              Icons.home,
              size: 30,
              color: Colors.white,
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, "comentPage");
            },
            child: Icon(
              Icons.chat_bubble_outline,
              size: 30,
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
