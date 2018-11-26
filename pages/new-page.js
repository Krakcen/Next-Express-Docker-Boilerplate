import "../semantic/dist/semantic.min.css";
import { Grid, Header, Button } from "semantic-ui-react";

import '../styles/index.css';

export default () => (
   <div style={{ height: '100vh', display:'flex', justifyContent: 'center', alignItems: 'center' }}>
      <Grid centered columns={3} container>
         A new Page
      </Grid>
   </div>
);
