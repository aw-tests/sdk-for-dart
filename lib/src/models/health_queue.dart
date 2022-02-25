part of dart_appwrite.models;

/// Health Queue
class HealthQueue {
    /// Amount of actions in the queue.
    final int size;

    HealthQueue({
        required this.size,
    });

    factory HealthQueue.fromMap(Map<String, dynamic> map) {
        return HealthQueue(
            size: map['size'],
        );
    }

    Map<String, dynamic> toMap() {
        return {
            "size": size,
        };
    }
}
