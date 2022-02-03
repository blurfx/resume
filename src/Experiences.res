module ItemWrapper = %styled.ol(`
  list-style: none;
`)
@react.component
let make = (~title: string, ~items: array<ExperienceItem.experience>) => {
  let items = Belt.SortArray.stableSortBy(items, (a, b) => a.startYear < b.startYear ? 1 : -1);
  let items = Belt.Array.mapWithIndex(
    items,
    (i, experience) => {
      <ExperienceItem key={Belt.Int.toString(i)} item=experience />
    }
  )
  <Section title>
    <ItemWrapper>
      {React.array(items)}
    </ItemWrapper>
  </Section>
}
