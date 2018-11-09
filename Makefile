pip-test:
	@ docker-compose build
	@ docker-compose up -d
	@ docker-compose exec workstation inspec exec pip-requirements-test -t ssh://root:password@target
