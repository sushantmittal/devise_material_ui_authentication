import * as React from 'react';
import Button from '@mui/material/Button';
import TextField from '@mui/material/TextField';
import Grid from '@mui/material/Grid';

const NewRegistration = ({ minimumPasswordLength }) =>
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

      <Grid item xs={12}>
        <TextField
          required
          fullWidth
          name="user[password]"
          label="Password"
          type="password"
          id="user_password"
          autoComplete="off"
        />

        <em>(Password must contain at least {minimumPasswordLength} characters)</em>
      </Grid>

      <Grid item xs={12}>
        <TextField
          required
          fullWidth
          name="user[password_confirmation]"
          label="Password confirmation"
          type="password"
          id="user_password_confirmation"
          autoComplete="off"
        />
      </Grid>
    </Grid>

    <Button
      type="submit"
      fullWidth
      variant="contained"
      sx={{ mt: 3, mb: 2 }}
    >
      Sign Up
    </Button>
  </React.Fragment>;

export default NewRegistration;
