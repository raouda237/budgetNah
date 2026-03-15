// Exercise 2 : Model network request state with sealed class

// Classe abstraite pour représenter l'état d'une requête réseau
abstract class NetworkState {}

// État de chargement
class Loading extends NetworkState {}

// État de succès avec des données
class Success extends NetworkState {
  final String data;

  Success(this.data);
}

// État d'erreur avec un message
class Error extends NetworkState {
  final String message;

  Error(this.message);
}

// Fonction qui traite l'état
void handleState(NetworkState state) {
  if (state is Loading) {
    print("Loading data...");
  } 
  else if (state is Success) {
    print("Success: ${state.data}");
  } 
  else if (state is Error) {
    print("Error: ${state.message}");
  }
}

// Fonction principale
void main() {

  var states = [
    Loading(),
    Success("User data loaded"),
    Error("Network timeout")
  ];

  // Parcourir la liste et traiter chaque état
  for (var state in states) {
    handleState(state);
  }
}