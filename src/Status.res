
module StatusContainer = %styled.div((
  ~backgroundColor=#var("color-primary"),
  ~color=#var("color-tertiary")
  ) => `
  position: relative;

  margin-top: 1rem;
  margin-bottom: 2rem;
  padding: 1.125rem 1.5rem;
  border-radius: 1.5rem;
  
  background-color: $(backgroundColor);
  color: $(color);

  ::before {
    position: absolute;
    top: -0.7rem;
    left: 4rem;

    width: 0;
    height: 0;

    border-style: solid;
    border-width: 0 0.75rem 0.75rem 0.75rem;
    border-color: transparent;
    border-bottom-color: $(backgroundColorGet);

    content: '';
  }
`)

@react.component
let make = () => {
  <StatusContainer>
    ("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum." -> React.string)
  </StatusContainer>
}
