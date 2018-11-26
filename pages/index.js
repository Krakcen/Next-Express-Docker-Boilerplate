import "../semantic/dist/semantic.min.css";
import { Grid, Header, Button } from "semantic-ui-react";

import SegmentComponent from '../components/segment-component'
import '../styles/index.css';

export default () => (
   <div style={{ height: '100vh', display:'flex', justifyContent: 'center', alignItems: 'center' }}>
      <Grid centered columns={3} container>
         <Grid>
           <Button className="custom-button">This is a Less custom button</Button>
            <Header inverted>This is a semantic Header, i styled it in ../semantic/src/site/elements/header.variables</Header>
            <SegmentComponent/>
         </Grid>
      </Grid>
   </div>
);
