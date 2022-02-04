module Container = %styled.div(`
  display: flex;
  align-items: flex-start;
  justify-content: flex-end;
`)

module Button = %styled.button(`
  padding: 0;
  border-width: 0px;
  border-style: none;
  border-radius: 50%;

  background: none;

  font-size: 2rem;
  inline-size: 2rem;
  block-size: 2rem;

  cursor: pointer;
  touch-action: manipulation;
  -webkit-tap-highlight-color: transparent;
  outline-offset: 5px;

  & > svg {
    inline-size: 100%;
    block-size: 100%;
    stroke-linecap: round;
  }
`)


let useDarkModeConfig: DarkMode.config = {
  classNameDark: Some("dark"),
  classNameLight: Some("light"),
  element: ReactDOM.querySelector("html"),
  onChange: None,
  storageKey: None,
  storageProvider: None,
}

@react.component
let make = () => {
  let darkMode = DarkMode.use(. Some(false), Some(useDarkModeConfig));

  let onClick= (_: ReactEvent.Mouse.t) => {
    darkMode.toggle();
  }

  let icon = switch darkMode.value {
    | true => React.string(`🌙`)
    | false => React.string(`🌞`)
  }

  <Container>
    <Button ariaLabel="auto" onClick>icon</Button>
  </Container>
}
