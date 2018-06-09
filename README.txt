# Postgresql database connection
dbname: gapsi_db
port: 5432
user: gapsi_dbuser
password: g4sp12018
File gapsi_db.sql is provided.
Spring boot was configured to auto-create the database schema, so you only have to create the database, not the whole schema.

# Packing the application with Maven
Execute maven with these goals: mvn clean dependency:copy-dependencies package

# Deploy the application with Spring boot
To deploy the application execute the com.gapsi.springBoot.SpringBootWebApplication.class java class
Hibernate + JPA were used to interact with the postgresql database server.

# Test the application
There is a way to test the REST API with an example class, please execute the com.gapsi.restClientExample.RestClientExample wich will 
insert, update, show and delete some items in article table.

# Swagger2
After you start the spring boot application, to get the swagger metadata that describes the API execute the following URL in your browser:
http://localhost:8080/v2/api-docs
You can also view the API easly by executing in your browser:
http://localhost:8080/swagger-ui.html