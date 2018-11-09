## Explanation of the profile

- The profile pip-requirements-test is meant to run compliance tests on a docker container. The main purpose is to ensure the docker container has installed the correctly versioned packages specified by the control policy. 

## Scope

- The profile's scope is only for requirements that the application needs at the time it was developed. This means that future pip installations of other dependencies are not captured in the test. It also means that removal of installations or version bumping may make the tests fail.
- The profile only tests for installed requirements under a **detect phase** with no **correct phase** at the moment.

## Usage

### Versions Used
* Operating platform
```
Darwin [SPII Redacted] 17.5.0 Darwin Kernel Version 17.5.0: Mon Mar  5 22:24:32 PST 2018; root:xnu-4570.51.1~1/RELEASE_X86_64 x86_64
```
* Docker
```
Client:
 Version:      18.03.1-ce
 API version:  1.37
 Go version:   go1.9.5
 Git commit:   9ee9f40
 Built:        Thu Apr 26 07:13:02 2018
 OS/Arch:      darwin/amd64
 Experimental: false
 Orchestrator: swarm

Server:
 Engine:
  Version:      18.03.1-ce
  API version:  1.37 (minimum version 1.12)
  Go version:   go1.9.5
  Git commit:   9ee9f40
  Built:        Thu Apr 26 07:22:38 2018
  OS/Arch:      linux/amd64
  Experimental: true
```
* Docker Compose
```
docker-compose version 1.21.1, build 5a3f1a3
docker-py version: 3.3.0
CPython version: 3.6.4
OpenSSL version: OpenSSL 1.0.2o  27 Mar 2018
```

### Run the profile

Simply run the command `make pip-test` on the root of the repository
