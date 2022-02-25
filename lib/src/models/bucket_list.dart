part of dart_appwrite.models;

/// Buckets List
class BucketList {
    /// Total number of items available on the server.
    final int sum;
    /// List of buckets.
    final List<Bucket> buckets;

    BucketList({
        required this.sum,
        required this.buckets,
    });

    factory BucketList.fromMap(Map<String, dynamic> map) {
        return BucketList(
            sum: map['sum'],
            buckets: List<Bucket>.from(map['buckets'].map((p) => Bucket.fromMap(p))),
        );
    }

    Map<String, dynamic> toMap() {
        return {
            "sum": sum,
            "buckets": buckets.map((p) => p.toMap()),
        };
    }
}
