%%raw("import './style.css'")

%styled.global(`
  * {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
  }
`)

let _ = switch ReactDOM.querySelector("#root") {
| None => Js.log("Error")
| Some(element) => ReactDOM.render(<App />, element)
}
