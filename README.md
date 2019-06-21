# Udacity-Linux-Deploy-Project

Visit my Portfolio at: [nicklobo](http://nicklobo.com.br/)

# What it is
Flask web application deployed to AWS using Lightsail.

Technologies used:
- [Postgres](https://www.postgresql.org/) - SQL database engine.
- [SQLAlchemy](https://www.sqlalchemy.org/) - Python SQL toolkit and Object Relational Mapper.
- [Flask](http://flask.pocoo.org/) - microframework for Python.
- [New Google Sign-in](https://developers.google.com/identity/sign-in/web/)
- [google-auth](https://google-auth.readthedocs.io/en/latest/) - Updated library as of 2019.
- [Facebook for developers](https://developers.facebook.com/docs/facebook-login/web) - Login with facebook.

Tools:
- [Lightsail](https://aws.amazon.com/lightsail/) - AWS Lightsail


## Table of Contents
- [What it is](https://github.com/nicholasinatel/financial-wallet-catalog/#what-it-is)
- [Reviewer](https://github.com/nicholasinatel/financial-wallet-catalog/#reviewer)
- [Configuration](https://github.com/nicholasinatel/financial-wallet-catalog/#configuration)
- [Details](https://github.com/nicholasinatel/financial-wallet-catalog/#details)
- [License](https://github.com/nicholasinatel/financial-wallet-catalog/#license)

## Reviewer
- IP: 34.202.26.193
- SSH_PORT: 2200
- [SSH_KEY_PAIR](https://drive.google.com/open?id=1GJA2_ybTKei0H2kw1FAQ06DA39x1T7AV): Download the key pair 

## Configuration
Enter the Server by:

```
ssh grader@34.202.26.193 -p 2200 -i <grader-udacity.perm>
```

## Summary
Configurations made:
- I have changed the default SSH port from 22 to 2200
- Created a username: grader so the reviewer can access my application and evaluate. 
- There is a special key pair also for this user created throw ssh-keygen.
- Configured and enabled Ubuntu Firewall to only accept, ssh(2200), http(80) and 123/UDP incomming connections and any outgoing connections.
- Postgres is configured to only accept local connections.

## Third-party resources
- Amazon Web Services Lightsail with Ubuntu 16 LTS configured.
- Used Winscp to upload files.
- Used Github to deploy as well.
- Used finger to manage users in ubuntu.
- Used Apache, WSGI, pip to install and deploy online the web application.
- Web application originally developed with SQLite and now modified to Postgres.

## License
MIT License

Copyright (c) [2018] [Nicholas Lobo]

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.