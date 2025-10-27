# Technical Assesment PT. Inovasi Daya Solusi

## PORT: 8082
## ENDPOINT: http://localhost:8082/api/data

## Prerequisites:
- Java 21 JDK (or higher)
- Apache Maven 3.6+
- A running MySQL instance (XAMPP's MySQL)

## How to Run the Application: 
### 1. Database setup
- Connect to your local MySQL server
- CREATE DATABASE test2;
- Seed the table in the database using given create+insert.sql

### 2. Configure the services
- Navigate to takehomecaseIDS/src/main/resources/application.properties
- Update the spring.datasource.password with your MySQL root user's password. (Note: if using the default XAMPP setup, the password should be left blank)

### 3. Start the Services
- Run the service by locating the SpringBootApplication\
the service will start on port 8082\

## Testing the API (Postman)
### 1. Get the data
Method: GET\
URL: http://localhost:8082/api/data \
