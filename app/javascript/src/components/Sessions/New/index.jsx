import * as React from 'react';
import Button from '@mui/material/Button';
import TextField from '@mui/material/TextField';
import FormControlLabel from '@mui/material/FormControlLabel';
import Checkbox from '@mui/material/Checkbox';
import Grid from '@mui/material/Grid';

const NewSession = () =>
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
      </Grid>

      <Grid item xs={12}>
        <FormControlLabel
          control={<Checkbox value="remember" color="primary" name="user[remember_me]" id="user_remember_me" />}
          label="Remember me"
        />
      </Grid>
    </Grid>

    <Button
      type="submit"
      fullWidth
      variant="contained"
      sx={{ mt: 3, mb: 2 }}
    >
      Log in
    </Button>
  </React.Fragment>;

export default NewSession;
