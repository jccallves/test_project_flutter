// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Counter {
  final int counter;
  Counter({
    required this.counter,
  });

  Counter copyWith({
    int? counter,
  }) {
    return Counter(
      counter: counter ?? this.counter,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'counter': counter,
    };
  }

  factory Counter.fromMap(Map<String, dynamic> map) {
    return Counter(
      counter: map['counter'] as int,
    );
  }

  String toJson() => json.encode(toMap());

  factory Counter.fromJson(String source) =>
      Counter.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'Counter(counter: $counter)';

  @override
  bool operator ==(covariant Counter other) {
    if (identical(this, other)) return true;

    return other.counter == counter;
  }

  @override
  int get hashCode => counter.hashCode;
}
