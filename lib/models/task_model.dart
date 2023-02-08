
import 'package:equatable/equatable.dart';

class TaskModel extends Equatable{
  final String title;
  bool? isDone;
  bool?isDeleted;
  TaskModel({
    required this.title,
    this.isDone,
    this.isDeleted,
  }){
    isDone= isDone?? false;
    isDeleted=isDeleted??false;
  }
    
  TaskModel copyWith({
    String? title,
    bool? isDone,
    bool? isDelete,
    
  }) {
    return TaskModel(
      title: title ?? this.title,
      isDone: isDone ?? this.isDone,
      isDeleted: isDeleted ?? this.isDeleted,
    );
  }
   factory TaskModel.fromMap(Map<String, dynamic> map) {
    return TaskModel(
      title: map['title'] as String,
      isDone: map['isDone'] != null ? map['isDone'] as bool : null,
      isDeleted: map['isDelete'] != null ? map['isDelete'] as bool : null,
    
    );
  }
  
  @override
  // TODO: implement props
  List<Object?> get props =>[
     title,
     isDone,
     isDeleted,
  ];

}