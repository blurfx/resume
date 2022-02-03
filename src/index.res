let _ = switch ReactDOM.querySelector("#root") {
| None => Js.log("Error")
| Some(element) => ReactDOM.render(<App />, element)
}