/// Response models for the Comment Generator API.

/// API Response wrapper.
class CommentgeneratorResponse {
  final String status;
  final dynamic error;
  final CommentgeneratorData? data;

  CommentgeneratorResponse({
    required this.status,
    this.error,
    this.data,
  });

  factory CommentgeneratorResponse.fromJson(Map<String, dynamic> json) => CommentgeneratorResponse(
    status: json['status'] as String? ?? '',
    error: json['error'],
    data: json['data'] != null ? CommentgeneratorData.fromJson(json['data']) : null,
  );

  Map<String, dynamic> toJson() => {
    'status': status,
    if (error != null) 'error': error,
    if (data != null) 'data': data,
  };
}

/// Response data for the Comment Generator API.

class CommentgeneratorData {
  int? count;
  String? mode;
  String? tone;
  List<String>? comments;

  CommentgeneratorData({
    this.count,
    this.mode,
    this.tone,
    this.comments,
  });

  factory CommentgeneratorData.fromJson(Map<String, dynamic> json) => CommentgeneratorData(
      count: json['count'],
      mode: json['mode'],
      tone: json['tone'],
      comments: (json['comments'] as List?)?.cast<String>(),
    );
}

class CommentgeneratorRequest {
  String mode;
  String? tone;
  int? count;
  bool? emojis;

  CommentgeneratorRequest({
    required this.mode,
    this.tone,
    this.count,
    this.emojis,
  });

  Map<String, dynamic> toJson() => {
      'mode': mode,
      if (tone != null) 'tone': tone,
      if (count != null) 'count': count,
      if (emojis != null) 'emojis': emojis,
    };
}
