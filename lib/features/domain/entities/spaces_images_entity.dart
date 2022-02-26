import 'package:equatable/equatable.dart';

class SpaceImagesEntity extends Equatable {
  const SpaceImagesEntity(
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
