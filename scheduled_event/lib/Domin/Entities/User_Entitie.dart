import 'package:equatable/equatable.dart';

class UserEntitie extends Equatable {
  final int id;
  final String? imageKey;

  UserEntitie({required this.id, required this.imageKey});

  @override
  List<Object?> get props => [id, imageKey];
}
