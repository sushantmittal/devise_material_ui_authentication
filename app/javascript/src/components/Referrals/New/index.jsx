import * as React from 'react';
import Button from '@mui/material/Button';
import TextField from '@mui/material/TextField';
import Grid from '@mui/material/Grid';

const NewReferral = () =>
  <React.Fragment>
    <Grid container spacing={2}>
      <Grid item xs={12}>
        <TextField
          required
          fullWidth
          id="user_email"
          label="Email"
          type="email"
          name="user[email]"
          autoFocus={true}
        />
      </Grid>
    </Grid>

    <Button
      type="submit"
      fullWidth
      variant="contained"
      sx={{ mt: 3, mb: 2 }}
    >
      Refer
    </Button>
  </React.Fragment>;

export default NewReferral;
