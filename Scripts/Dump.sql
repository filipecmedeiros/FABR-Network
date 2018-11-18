Dump database:
pg_dump -h <host> -U <user> -f <file.sql> <database_name>


Local restore:
$ psql -h localhost -U <user> -d <database> -f <file.sql>
