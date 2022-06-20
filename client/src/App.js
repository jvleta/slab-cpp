import styled from "styled-components";
import { FormGroup, Label, Input, Message } from "./Forms";

const Body = styled.body`
  background: white;
`;

const Title = styled.h1`
  font-size: 1.5em;
  text-align: center;
`;

function App() {
  return (
    <Body>
      <Title>Slabbath</Title>
      <FormGroup>
        <Label>Wind Speed</Label>
        <Input id="windspeed" />
        <Message>This is the validation message</Message>
      </FormGroup>
      <FormGroup>
        <Label>Viscosity of Air</Label>
        <Input id="airviscosity"/>
        <Message>This is the validation message</Message>
      </FormGroup>
    </Body>
  );
}

export default App;
