
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FlutterList extends StatefulWidget {
  const FlutterList({Key? key}) : super(key: key);

  @override
  State<FlutterList> createState() => _FlutterListState();
}

class _FlutterListState extends State<FlutterList> {
  final _item =[];
  final GlobalKey<AnimatedListState> _key=GlobalKey();
  void _insert(){
    _item.insert(0, "Item${_item.length+1}");
    _key.currentState!.insertItem(0,duration:const Duration(seconds: 1));
  }

void _Delet(int index){
    _key.currentState!.removeItem(index, (context, animation)  {
      return SizeTransition(sizeFactor: animation,
      child: Card(
        margin: EdgeInsets.all(10),
        color: Colors.red,
        child: ListTile(
          title: Text('deleted'),
        ),
      ),


      );
    },
    duration:const Duration(milliseconds:600 ),
    );
    _item.removeAt(index);
}



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Flutter List'),
        centerTitle: true,
      ),
      body: Container(
        color: Colors.black,
        child: Column(

          children: [

            const SizedBox(height: 10,),
            IconButton(onPressed: _insert, icon: Icon(Icons.add,color: Colors.white,)),
            Expanded(
              child: AnimatedList(
                  key: _key,
                  initialItemCount: 0,
                  padding:const EdgeInsets.all(10),
                  itemBuilder: (context,index,animation){
                    return SizeTransition(
                      sizeFactor: animation,
                      key: UniqueKey(),
                      child: Card(
                        margin: EdgeInsets.all(10),
                        color: Colors.orangeAccent,
                        child: ListTile(
                            title: Text(
                              _item[index],style: TextStyle(fontSize: 20,color: Colors.white),
                            ),
                            trailing:IconButton(onPressed: (){
                              _Delet(index);
                            }, icon:  Icon(Icons.delete,color: Colors.white,),)
                        ),
                      ),
                    );
                  }),
            )

          ],
        ),
      ),
    );
  }
}
