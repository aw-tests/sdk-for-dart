# Examples

Init your Appwrite client:

```dart
  Client client = Client();

  client
      .setEndpoint(&#039;https://localhost/v1&#039;) // Your Appwrite Endpoint
      .setProject(&#039;5e8cf4f46b5e8&#039;) // Your project ID
      .setSelfSigned()
  ;

```

Create a new user and session:

```dart
  Account account = Account(client);

 Response user = await account.create(email: &#039;me@appwrite.io&#039;, password: &#039;password&#039;, name: &#039;My Name&#039;);
 
 Response session = await account.createSession(email: &#039;me@appwrite.io&#039;, password: &#039;password&#039;);

```

Fetch user profile:

```dart
Account account = Account(client);

Response profile = await account.get();
```

Upload File:

```dart
Storage storage = Storage(client);

MultipartFile file = MultipartFile.fromFile(&#039;./path-to-file/image.jpg&#039;, filename: &#039;image.jpg&#039;);

storage.createFile(
    file: file,
    read: [&#039;*&#039;],
    write: []
)
.then((response) {
    print(response); // File uploaded!
})
.catchError((error) {
    print(error.response);
});
```

All examples and API features are available at the [official Appwrite docs](https://appwrite.io/docs)