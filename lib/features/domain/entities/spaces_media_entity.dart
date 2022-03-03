import 'package:equatable/equatable.dart';

class SpaceMediaEntity extends Equatable {
  const SpaceMediaEntity({
    required this.description,
    required this.mediaType,
    required this.title,
    required this.mediaUrl,
  });

  final String description;
  final String mediaType;
  final String title;
  final String mediaUrl;

  @override
  List<Object> get props => [description, mediaType, title, mediaUrl];
}
