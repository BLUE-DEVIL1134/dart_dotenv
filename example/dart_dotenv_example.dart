import 'package:dart_dotenv/dart_dotenv.dart';
 
void main(List<String> args) {
  final dotEnv = DotEnv(filePath: '.env');

  // Check if file exists or not.
  print('.env exists ? - ${dotEnv.exists()}');
  // Create a new [filePath] file if not exists.
  print('.env Created New ? - ${dotEnv.createNew()}');
  // Get a specific value from [.env] file.
  print('.env value of "someSpecificKey" ? - ${dotEnv.get("someSpecificKey")}');
  // Get the whole data of [.env] file as [Map<String, String>].
  print('.env data ? - ${dotEnv.getDotEnv()}');
  // Set a new value to and existing key or a completely new set of key and value.
  print('.env append new data ? - ${dotEnv.set("newKey", "newValue")}');
  // Save the new data to `[filePath]` file.
  print('.env save to file ? - ${dotEnv.saveDotEnv()}');
}