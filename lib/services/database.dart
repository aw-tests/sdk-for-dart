part of dart_appwrite;

class Database extends Service {
    Database(Client client): super(client);

     /// List Collections
     ///
     /// Get a list of all the user collections. You can use the query params to
     /// filter your results. On admin mode, this endpoint will return a list of all
     /// of the project's collections. [Learn more about different API
     /// modes](/docs/admin).
     ///
     Future listCollections({String? search, int? limit, int? offset, String? cursor, String? cursorDirection, String? orderType}) async {
        final String path = '/database/collections';

        final Map<String, dynamic> params = {
            'search': search,
            'limit': limit,
            'offset': offset,
            'cursor': cursor,
            'cursorDirection': cursorDirection,
            'orderType': orderType,
        };

        final Map<String, String> headers = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.get, path: path, params: params, headers: headers);
        return  res.data;
    }

     /// Create Collection
     ///
     /// Create a new Collection.
     ///
     Future createCollection({required String collectionId, required String name, required String permission, required String read, required String write}) async {
        final String path = '/database/collections';

        final Map<String, dynamic> params = {
            'collectionId': collectionId,
            'name': name,
            'permission': permission,
            'read': read,
            'write': write,
        };

        final Map<String, String> headers = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.post, path: path, params: params, headers: headers);
        return  res.data;
    }

     /// Get Collection
     ///
     /// Get a collection by its unique ID. This endpoint response returns a JSON
     /// object with the collection metadata.
     ///
     Future getCollection({required String collectionId}) async {
        final String path = '/database/collections/{collectionId}'.replaceAll(RegExp('{collectionId}'), collectionId);

        final Map<String, dynamic> params = {
        };

        final Map<String, String> headers = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.get, path: path, params: params, headers: headers);
        return  res.data;
    }

     /// Update Collection
     ///
     /// Update a collection by its unique ID.
     ///
     Future updateCollection({required String collectionId, required String name, required String permission, String? read, String? write}) async {
        final String path = '/database/collections/{collectionId}'.replaceAll(RegExp('{collectionId}'), collectionId);

        final Map<String, dynamic> params = {
            'name': name,
            'permission': permission,
            'read': read,
            'write': write,
        };

        final Map<String, String> headers = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.put, path: path, params: params, headers: headers);
        return  res.data;
    }

     /// Delete Collection
     ///
     /// Delete a collection by its unique ID. Only users with write permissions
     /// have access to delete this resource.
     ///
     Future deleteCollection({required String collectionId}) async {
        final String path = '/database/collections/{collectionId}'.replaceAll(RegExp('{collectionId}'), collectionId);

        final Map<String, dynamic> params = {
        };

        final Map<String, String> headers = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.delete, path: path, params: params, headers: headers);
        return  res.data;
    }

     /// List Attributes
     Future listAttributes({required String collectionId}) async {
        final String path = '/database/collections/{collectionId}/attributes'.replaceAll(RegExp('{collectionId}'), collectionId);

        final Map<String, dynamic> params = {
        };

        final Map<String, String> headers = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.get, path: path, params: params, headers: headers);
        return  res.data;
    }

     /// Create Boolean Attribute
     ///
     /// Create a boolean attribute.
     /// 
     ///
     Future createBooleanAttribute({required String collectionId, required String attributeId, required bool xrequired, bool? xdefault, bool? array}) async {
        final String path = '/database/collections/{collectionId}/attributes/boolean'.replaceAll(RegExp('{collectionId}'), collectionId);

        final Map<String, dynamic> params = {
            'attributeId': attributeId,
            'required': xrequired,
            'default': xdefault,
            'array': array,
        };

        final Map<String, String> headers = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.post, path: path, params: params, headers: headers);
        return  res.data;
    }

     /// Create Email Attribute
     ///
     /// Create an email attribute.
     /// 
     ///
     Future createEmailAttribute({required String collectionId, required String attributeId, required bool xrequired, String? xdefault, bool? array}) async {
        final String path = '/database/collections/{collectionId}/attributes/email'.replaceAll(RegExp('{collectionId}'), collectionId);

        final Map<String, dynamic> params = {
            'attributeId': attributeId,
            'required': xrequired,
            'default': xdefault,
            'array': array,
        };

        final Map<String, String> headers = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.post, path: path, params: params, headers: headers);
        return  res.data;
    }

     /// Create Enum Attribute
     Future createEnumAttribute({required String collectionId, required String attributeId, required List elements, required bool xrequired, String? xdefault, bool? array}) async {
        final String path = '/database/collections/{collectionId}/attributes/enum'.replaceAll(RegExp('{collectionId}'), collectionId);

        final Map<String, dynamic> params = {
            'attributeId': attributeId,
            'elements': elements,
            'required': xrequired,
            'default': xdefault,
            'array': array,
        };

        final Map<String, String> headers = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.post, path: path, params: params, headers: headers);
        return  res.data;
    }

     /// Create Float Attribute
     ///
     /// Create a float attribute. Optionally, minimum and maximum values can be
     /// provided.
     /// 
     ///
     Future createFloatAttribute({required String collectionId, required String attributeId, required bool xrequired, String? min, String? max, String? xdefault, bool? array}) async {
        final String path = '/database/collections/{collectionId}/attributes/float'.replaceAll(RegExp('{collectionId}'), collectionId);

        final Map<String, dynamic> params = {
            'attributeId': attributeId,
            'required': xrequired,
            'min': min,
            'max': max,
            'default': xdefault,
            'array': array,
        };

        final Map<String, String> headers = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.post, path: path, params: params, headers: headers);
        return  res.data;
    }

     /// Create Integer Attribute
     ///
     /// Create an integer attribute. Optionally, minimum and maximum values can be
     /// provided.
     /// 
     ///
     Future createIntegerAttribute({required String collectionId, required String attributeId, required bool xrequired, int? min, int? max, int? xdefault, bool? array}) async {
        final String path = '/database/collections/{collectionId}/attributes/integer'.replaceAll(RegExp('{collectionId}'), collectionId);

        final Map<String, dynamic> params = {
            'attributeId': attributeId,
            'required': xrequired,
            'min': min,
            'max': max,
            'default': xdefault,
            'array': array,
        };

        final Map<String, String> headers = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.post, path: path, params: params, headers: headers);
        return  res.data;
    }

     /// Create IP Address Attribute
     ///
     /// Create IP address attribute.
     /// 
     ///
     Future createIpAttribute({required String collectionId, required String attributeId, required bool xrequired, String? xdefault, bool? array}) async {
        final String path = '/database/collections/{collectionId}/attributes/ip'.replaceAll(RegExp('{collectionId}'), collectionId);

        final Map<String, dynamic> params = {
            'attributeId': attributeId,
            'required': xrequired,
            'default': xdefault,
            'array': array,
        };

        final Map<String, String> headers = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.post, path: path, params: params, headers: headers);
        return  res.data;
    }

     /// Create String Attribute
     ///
     /// Create a new string attribute.
     /// 
     ///
     Future createStringAttribute({required String collectionId, required String attributeId, required int size, required bool xrequired, String? xdefault, bool? array}) async {
        final String path = '/database/collections/{collectionId}/attributes/string'.replaceAll(RegExp('{collectionId}'), collectionId);

        final Map<String, dynamic> params = {
            'attributeId': attributeId,
            'size': size,
            'required': xrequired,
            'default': xdefault,
            'array': array,
        };

        final Map<String, String> headers = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.post, path: path, params: params, headers: headers);
        return  res.data;
    }

     /// Create URL Attribute
     ///
     /// Create a URL attribute.
     /// 
     ///
     Future createUrlAttribute({required String collectionId, required String attributeId, required bool xrequired, String? xdefault, bool? array}) async {
        final String path = '/database/collections/{collectionId}/attributes/url'.replaceAll(RegExp('{collectionId}'), collectionId);

        final Map<String, dynamic> params = {
            'attributeId': attributeId,
            'required': xrequired,
            'default': xdefault,
            'array': array,
        };

        final Map<String, String> headers = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.post, path: path, params: params, headers: headers);
        return  res.data;
    }

     /// Get Attribute
     Future getAttribute({required String collectionId, required String attributeId}) async {
        final String path = '/database/collections/{collectionId}/attributes/{attributeId}'.replaceAll(RegExp('{collectionId}'), collectionId).replaceAll(RegExp('{attributeId}'), attributeId);

        final Map<String, dynamic> params = {
        };

        final Map<String, String> headers = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.get, path: path, params: params, headers: headers);
        return  res.data;
    }

     /// Delete Attribute
     Future deleteAttribute({required String collectionId, required String attributeId}) async {
        final String path = '/database/collections/{collectionId}/attributes/{attributeId}'.replaceAll(RegExp('{collectionId}'), collectionId).replaceAll(RegExp('{attributeId}'), attributeId);

        final Map<String, dynamic> params = {
        };

        final Map<String, String> headers = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.delete, path: path, params: params, headers: headers);
        return  res.data;
    }

     /// List Documents
     ///
     /// Get a list of all the user documents. You can use the query params to
     /// filter your results. On admin mode, this endpoint will return a list of all
     /// of the project's documents. [Learn more about different API
     /// modes](/docs/admin).
     ///
     Future listDocuments({required String collectionId, List? queries, int? limit, int? offset, String? cursor, String? cursorDirection, List? orderAttributes, List? orderTypes}) async {
        final String path = '/database/collections/{collectionId}/documents'.replaceAll(RegExp('{collectionId}'), collectionId);

        final Map<String, dynamic> params = {
            'queries': queries,
            'limit': limit,
            'offset': offset,
            'cursor': cursor,
            'cursorDirection': cursorDirection,
            'orderAttributes': orderAttributes,
            'orderTypes': orderTypes,
        };

        final Map<String, String> headers = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.get, path: path, params: params, headers: headers);
        return  res.data;
    }

     /// Create Document
     ///
     /// Create a new Document. Before using this route, you should create a new
     /// collection resource using either a [server
     /// integration](/docs/server/database#databaseCreateCollection) API or
     /// directly from your database console.
     ///
     Future createDocument({required String collectionId, required String documentId, required Map data, String? read, String? write}) async {
        final String path = '/database/collections/{collectionId}/documents'.replaceAll(RegExp('{collectionId}'), collectionId);

        final Map<String, dynamic> params = {
            'documentId': documentId,
            'data': data,
            'read': read,
            'write': write,
        };

        final Map<String, String> headers = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.post, path: path, params: params, headers: headers);
        return  res.data;
    }

     /// Get Document
     ///
     /// Get a document by its unique ID. This endpoint response returns a JSON
     /// object with the document data.
     ///
     Future getDocument({required String collectionId, required String documentId}) async {
        final String path = '/database/collections/{collectionId}/documents/{documentId}'.replaceAll(RegExp('{collectionId}'), collectionId).replaceAll(RegExp('{documentId}'), documentId);

        final Map<String, dynamic> params = {
        };

        final Map<String, String> headers = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.get, path: path, params: params, headers: headers);
        return  res.data;
    }

     /// Update Document
     ///
     /// Update a document by its unique ID. Using the patch method you can pass
     /// only specific fields that will get updated.
     ///
     Future updateDocument({required String collectionId, required String documentId, required Map data, String? read, String? write}) async {
        final String path = '/database/collections/{collectionId}/documents/{documentId}'.replaceAll(RegExp('{collectionId}'), collectionId).replaceAll(RegExp('{documentId}'), documentId);

        final Map<String, dynamic> params = {
            'data': data,
            'read': read,
            'write': write,
        };

        final Map<String, String> headers = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.patch, path: path, params: params, headers: headers);
        return  res.data;
    }

     /// Delete Document
     ///
     /// Delete a document by its unique ID. This endpoint deletes only the parent
     /// documents, its attributes and relations to other documents. Child documents
     /// **will not** be deleted.
     ///
     Future deleteDocument({required String collectionId, required String documentId}) async {
        final String path = '/database/collections/{collectionId}/documents/{documentId}'.replaceAll(RegExp('{collectionId}'), collectionId).replaceAll(RegExp('{documentId}'), documentId);

        final Map<String, dynamic> params = {
        };

        final Map<String, String> headers = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.delete, path: path, params: params, headers: headers);
        return  res.data;
    }

     /// List Indexes
     Future listIndexes({required String collectionId}) async {
        final String path = '/database/collections/{collectionId}/indexes'.replaceAll(RegExp('{collectionId}'), collectionId);

        final Map<String, dynamic> params = {
        };

        final Map<String, String> headers = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.get, path: path, params: params, headers: headers);
        return  res.data;
    }

     /// Create Index
     Future createIndex({required String collectionId, required String indexId, required String type, required List attributes, List? orders}) async {
        final String path = '/database/collections/{collectionId}/indexes'.replaceAll(RegExp('{collectionId}'), collectionId);

        final Map<String, dynamic> params = {
            'indexId': indexId,
            'type': type,
            'attributes': attributes,
            'orders': orders,
        };

        final Map<String, String> headers = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.post, path: path, params: params, headers: headers);
        return  res.data;
    }

     /// Get Index
     Future getIndex({required String collectionId, required String indexId}) async {
        final String path = '/database/collections/{collectionId}/indexes/{indexId}'.replaceAll(RegExp('{collectionId}'), collectionId).replaceAll(RegExp('{indexId}'), indexId);

        final Map<String, dynamic> params = {
        };

        final Map<String, String> headers = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.get, path: path, params: params, headers: headers);
        return  res.data;
    }

     /// Delete Index
     Future deleteIndex({required String collectionId, required String indexId}) async {
        final String path = '/database/collections/{collectionId}/indexes/{indexId}'.replaceAll(RegExp('{collectionId}'), collectionId).replaceAll(RegExp('{indexId}'), indexId);

        final Map<String, dynamic> params = {
        };

        final Map<String, String> headers = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.delete, path: path, params: params, headers: headers);
        return  res.data;
    }
}