# Spinnaker
The Mathrix Application related to [mathrix.fr] (https://mathrix.fr), running on IOS and Android.



#Setup
Install Dart and flutter  following theses [instructions](https://flutter.dev/docs/get-started/install)

We recommend Android Studio with the Flutter and Dart package, but you can also use VSCode.
Once everything is installed, run ```flutter doctor```, and you are good to go!

##Debug certificate
Facebook and Google login requires you to add your debug certificate to Facebook and Google.
 Contact dimitri@mathrix.fr for this operation (for the moment) if you don't know how to do it.

## Generate graphQL configuration
You may want to add graphQL queries or mutation. Write your queries/mutations under the folder
```graphql/queries```. Be carefull, only one query/mutation per file for the moment.
 Write your fragments under the ```graphql/fragments```` folder.

Remove the files 
```
queries.dart 
queries.graphql.dart 
queries.graphql.g.dart
```
and launch ``flutter pub run build_runner build```

## Architecture overview
TODO
