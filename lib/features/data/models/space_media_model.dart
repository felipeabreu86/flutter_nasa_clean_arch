import 'dart:convert';

import 'package:nasa_clean_arch/features/domain/entities/spaces_media_entity.dart';

class SpaceMediaModel extends SpaceMediaEntity {
  const SpaceMediaModel({
    required String description,
    required String mediaType,
    required String title,
    required String mediaUrl,
  }) : super(
          description: description,
          mediaType: mediaType,
          title: title,
          mediaUrl: mediaUrl,
        );

  SpaceMediaModel copyWith({
    String? description,
    String? mediaType,
    String? title,
    String? mediaUrl,
  }) {
    return SpaceMediaModel(
      description: description ?? this.description,
      mediaType: mediaType ?? this.mediaType,
      title: title ?? this.title,
      mediaUrl: mediaUrl ?? this.mediaUrl,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'description': description,
      'mediaType': mediaType,
      'title': title,
      'mediaUrl': mediaUrl,
    };
  }

  factory SpaceMediaModel.fromMap(Map<String, dynamic> map) {
    return SpaceMediaModel(
      description: map['explanation'] ?? '',
      mediaType: map['media_type'] ?? '',
      title: map['title'] ?? '',
      mediaUrl: map['url'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory SpaceMediaModel.fromJson(String source) =>
      SpaceMediaModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'SpaceMediaModel(description: $description, mediaType: $mediaType, title: $title, mediaUrl: $mediaUrl)';
  }
}
