import 'package:equatable/equatable.dart';

class SpaceMediaEntity extends Equatable {
  const SpaceMediaEntity(
    this.description,
    this.mediaType,
    this.title,
    this.mediaUrl,
  );

  final String description;
  final String mediaType;
  final String title;
  final String mediaUrl;

  @override
  List<Object?> get props => [
        description,
        mediaType,
        title,
        mediaUrl,
      ];
}
