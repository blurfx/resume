module Container = %styled.div(`
  margin: 4rem auto;
  width: 100%;
  max-width: 500px;
`)


let workExperiences: array<ExperienceItem.experience> = [
  {
    startYear: 2010,
    endYear: Now,
    title: "Software Engineer at Amazon",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. 3",
    link: Some("https://amazon.com"),
  },
  {
    startYear: 2005,
    endYear: Number(2010),
    title: "Software Engineer at Google",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. 2",
    link: Some("https://gooogle.com"),
  },
  {
    startYear: 2000,
    endYear: Number(2005),
    title: "Software Engineer at ACME",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
    link: None,
  }
]

let educations: array<ExperienceItem.experience> = [
  {
    startYear: 2010,
    endYear: Number(2015),
    title: "Computer Science at University of Washington",
    description: "",
    link: None,
  }
]

let contacts: array<Contact.contact> = [
  {
    name: "Email",
    value: "foo@example.com",
    link: Some("mailto:foo@example.com"),
  },
  {
    name: "Tel.",
    value: "+82 10-1234-5678",
    link: None,
  }
]

@react.component
let make = () => {
  <main className="App">
    <Container>
      <ThemeSwitch />
      <Profile />
      <Status />
      <About>
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
      </About>
      <Experiences title="Work Experiences" items=workExperiences />
      <Experiences title="Education" items=educations />
      <Contact items=contacts />
    </Container>
  </main>
}
