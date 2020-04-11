import 'package:appwrite/appwrite.dart';
//const fs = require('fs');

// Init SDK
Client client = Client();
Storage storage = Storage(client);

client
    .setProject('5df5acd0d48c2') // Your project ID
;

Future result = storage.createFile(
    file: new File('./image.jpg'),
    read: [],
    write: [],
);

result
  .then((response) {
    print(response);
  }).catchError((error) {
    print(error);
  });