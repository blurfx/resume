type yearOrNow =
  | Number(int)
  | Now;

type experience = {
  startYear: int,
  endYear: yearOrNow,
  title: string,
  description: string,
  link: option<string>
}

module Item = %styled.li(`
  display: grid;
  grid-template-columns: 8rem auto;
  margin: 2rem 0;
  width: 100%;

  &:first-child {
    margin-top: 0.5rem;
  }
`)

module Duration = %styled.div(`
  margin-right: 2rem;
  
  text-align: left;
  white-space: nowrap;
`)

module Detail = %styled.div(`
  width: 100%;
  flex: 1 1;
`)

module Title = %styled.p(`
  margin-bottom: 1rem;
  
`);

module Link = %styled.a((~color=#var("color-primary")) => `
  color: $(color);
`)

module Description = %styled.p(`
`)


@react.component
let make = (~item: experience) => {
  let companyTitle = {item.title -> React.string}
  let company = switch item.link {
    | None => companyTitle
    | Some(href) => <Link  href>companyTitle</Link>
  }
  let duration = switch item.endYear {
    | Now => <Duration>{`${Belt.Int.toString(item.startYear)} — Now`-> React.string}</Duration>
    | Number(endYear) => <Duration>{`${Belt.Int.toString(item.startYear)} — ${Belt.Int.toString(endYear)}`-> React.string}</Duration>
  }

  <Item>
    duration
    <Detail>
      <Title>company</Title>
      <Description>{item.description -> React.string}</Description>
    </Detail>
  </Item>
}
