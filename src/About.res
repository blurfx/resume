module Content = %styled.p((~color=#var("color-secondary")) => `
  color: $(color);
`)


@react.component
let make = (~children: string) => {
  <Section title="About">
    <Content>(children -> React.string)</Content>
  </Section>
}
