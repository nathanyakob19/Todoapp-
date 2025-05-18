import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class todotile extends StatelessWidget {
  final String taskname;
  final bool taskcompleted;
  Function(bool?)? onChanged;
  Function(BuildContext)? deletefunction;

  todotile({super.key, required this.taskcompleted, required this.taskname, required this.onChanged , required this.deletefunction });



  @override
  Widget build(BuildContext context) {
    return Padding(padding: const  EdgeInsets.only( left: 25.0, right: 25, top: 25),
      child: Slidable(
        endActionPane: ActionPane(motion: StretchMotion(), children:[
          SlidableAction(onPressed: deletefunction,
            backgroundColor: Colors.red[200]!,
          icon: Icons.delete,

          borderRadius: BorderRadius.circular(12),
          )
        ]),
      child:Container(
        padding: EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: Colors.orange[400],
        borderRadius: BorderRadius.circular(12)

      ),

        child: Row(
          children: [
            Checkbox(value: taskcompleted, onChanged: onChanged, activeColor: Colors.black,),
      Text( taskname,
      style: TextStyle(
        decoration: taskcompleted ? TextDecoration.lineThrough:  TextDecoration.none,
      ),),
  ],),
    ),));
  }
}

