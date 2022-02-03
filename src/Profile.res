module Container = %styled.div(`
  display: flex;
  flex-direction: row;
  align-items: center;
`)

module ProfileImageContainer = %styled.div(`
  margin-right: 1rem;
  align-self: flex-end;
`)

module ProfileImage = %styled.div(`
  width: 5.5rem;
  height: 5.5rem;
  border-radius: 50%;

  background-image: url('https://randomuser.me/api/portraits/men/20.jpg');
  background-size: contain;
`)

module ProfileWrapper = %styled.div(`
  display: grid;
  flex: 1 1;
`)

module Name = %styled.h1(`
  font-size: 1.4rem;
  font-weight: 600;
`)

module Description = %styled.p(`
  font-size: 1rem;
`)

@react.component
let make = () => {
  <Container>
    <ProfileImageContainer>
      <ProfileImage />
    </ProfileImageContainer>
    <ProfileWrapper>
      <Name>("John Doe" -> React.string)</Name>
      <Description>("lorem ipsum blah blah blah" -> React.string)</Description>
    </ProfileWrapper>
  </Container>
}
