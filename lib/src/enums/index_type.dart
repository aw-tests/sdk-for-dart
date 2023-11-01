part of dart_appwrite.enums;

enum IndexType {
    key(value: 'key'),
    fulltext(value: 'fulltext'),
    unique(value: 'unique'),
    spatial(value: 'spatial'),
    array(value: 'array');

    const IndexType({
        required this.value
    });

    final String value;

    String toJson() => value;
}