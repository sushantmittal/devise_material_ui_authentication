## About

This project contains following functionalities:
- Devise signup/login functionality integrated with material-ui.

- signup/login is possible using json APIs as well. We can send curl request or send request using any api platform.

- A user can send a referral email to any email address. After that non-user can use the link sent in the referral mail for signup. Then, that non-user will be created with `referred_by_id`. So that, We can find all referrals of a user.

### Requirements

- Install Ruby version: 3.0.1.
- Install `postgresql` and start it.

## Local Development Setup

```
bin/setup
```

Start the server by executing the following command.

```
bin/dev
```
We can visit the app at  http://localhost:3000.

## Testing
```
rails test
```
