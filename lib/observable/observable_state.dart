// State, but only when the submit event is fired
// Events
// method for listening events
// method for firing events

class AssetNomineeMap {
  AssetNomineeMap({required this.assetId, required this.nominees});

  int assetId;
  List<Nominee> nominees;
}

class Nominee {
  Nominee({required this.nomineeId, required this.share});

  int nomineeId;
  int share;
}

class ObservableState {
  // List<AssetNomineeMap> state = [];
  var state = [];
  List<Function> observers = [];

  getState() {
    return state;
  }

  setState(newState) {
    state = newState;
  }

  subscribe(Function fn) {
    observers.add(fn);
    return (() => observers.remove(fn));
  }

  notify() {
    observers.forEach((observer) {
      observer(state, setState);
    });
  }
}

void fn(state, setState) {
  var localState;
  // Check if local state is there
  if (true) {
    var newState = [...state, localState];
    setState(newState);
  } else {
    var localState = null;
    var newState = [...state, localState];
    setState(newState);
  }
}
