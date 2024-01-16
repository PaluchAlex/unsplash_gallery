abstract class AppAction {
  const AppAction();
}

abstract class ErrorAction extends AppAction {
  const ErrorAction();

  Object get error;

  StackTrace get stackTrace;
}

typedef ActionResult = void Function(AppAction action);
