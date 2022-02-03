module Container = %styled.section(`
  margin: 3rem 0;
`)

module Title = %styled.h2(`
  padding-bottom: 0.5rem;

  font-size: 1.15rem;
  font-weight: normal;
`)

@react.component
let make = (~title: string, ~children: React.element) => {
  <Container>
    <Title>(title -> React.string)</Title>
    children
  </Container>
}
