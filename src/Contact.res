type contact = {
  name: string,
  value: string,
  link: option<string>,
}

module ItemWrapper = %styled.ol(`
  list-style: none;
`)

module Item = %styled.li(`
  display: grid;
  grid-template-columns: 8rem auto;
  width: 100%;
`)

@react.component
let make = (~items: array<contact>) => {
  let items = Belt.Array.mapWithIndex(
    items,
    (i, item) => {
      let description = switch item.link {
      | None => {item.value -> React.string}
      | Some(href) => <ExperienceItem.Link href>{item.value -> React.string}</ExperienceItem.Link>
      }
      <Item key=Belt.Int.toString(i)>
        <ExperienceItem.Title>{item.name -> React.string}</ExperienceItem.Title>
          <ExperienceItem.Description>description</ExperienceItem.Description>
      </Item>
    }
  )
  <Section title="Contact">
    <Experiences.ItemWrapper>
      {React.array(items)}
    </Experiences.ItemWrapper>
  </Section>
}
