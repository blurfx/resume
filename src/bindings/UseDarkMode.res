
@module("use-dark-mode")
type darkModeConfig = {
  classNameDark: option<string>,
  classNameLight: option<string>,
  element: option<Dom.element>,
  onChange: option<(option<bool>) => unit>,
  storageKey: option<string>,
  storageProvider: option<Dom.Storage.t>,
}

@module("use-dark-mode")
type darkMode = {
  value: bool,
  enable: unit => unit,
  disable: unit => unit,
  toggle: unit => unit,
}

@module("use-dark-mode")
external use: (~initialState: option<bool>=?, ~config: option<darkModeConfig>=?, unit) => darkMode = "default"
