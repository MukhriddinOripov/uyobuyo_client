import 'package:flutter_bloc/flutter_bloc.dart';

class AppBlocObserver extends BlocObserver {
  @override
  void onCreate(BlocBase bloc) {
    super.onCreate(bloc);
    print("Bloc onCreate: $bloc");
  }

  @override
  void onEvent(Bloc bloc, Object? event) {
    super.onEvent(bloc, event);
    print("Bloc onEvent: bloc-$bloc - event-$event");
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    print("Bloc onError: bloc-$bloc - error-$error");
    super.onError(bloc, error, stackTrace);
  }

  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    print("Bloc onChange: bloc-$bloc - change-$change");
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    super.onTransition(bloc, transition);
    print("Bloc onTransition: bloc-$bloc - transition-$transition");
  }
}
