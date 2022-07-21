import * as React from 'react';
import AppBar from '@mui/material/AppBar';
import Toolbar from '@mui/material/Toolbar';
import Typography from '@mui/material/Typography';
import { makeStyles } from '@mui/styles';

const useStyles = makeStyles(() => ({
  toolbar: {
    display: "flex",
    justifyContent: "space-between",
  },
  menuButton: {
    color: "#fff"
  }
}));

const AppHeader = ({email, logoutPath}) => {
  const { toolbar, menuButton } = useStyles();

  return (
    <header>
      <AppBar>
        <Toolbar className={toolbar}>
          <Typography variant="h6" component="h1">
            Hi {email}
          </Typography>

          <a href={logoutPath} data-turbo-method="delete" className={menuButton}>Log Out</a>
        </Toolbar>
      </AppBar>
    </header>
  );
}

export default AppHeader;
