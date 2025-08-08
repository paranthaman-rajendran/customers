# Customer Management Application

A Spring Boot application for managing customer information with an in-memory H2 database and a simple web interface.

## Technology Stack

- **Backend Framework:** Spring Boot 3.2.0
- **Build Tool:** Gradle
- **Database:** H2 (in-memory)
- **ORM:** JPA/Hibernate
- **Frontend:** HTML, CSS, JavaScript

## Architecture

The application follows a layered architecture:

1. **Presentation Layer**

   - Static HTML/CSS/JS frontend
   - RESTful API endpoints

2. **Business Layer**

   - Service layer for business logic
   - Data validation and processing

3. **Persistence Layer**
   - JPA entities
   - Repository interfaces
   - H2 in-memory database

## Prerequisites

- Java Development Kit (JDK) 17 or later
- Gradle (included via wrapper)

## Getting Started

1. **Clone the repository**

   ```powershell
   git clone [repository-url]
   cd customer-app
   ```

2. **Build the application**

   ```powershell
   ./gradlew build
   ```

3. **Run the application**
   ```powershell
   ./gradlew bootRun
   ```

## Accessing the Application

- **Main Application:** Open http://localhost:8080 in your web browser
- **H2 Database Console:** Available at http://localhost:8080/h2-console
  - JDBC URL: jdbc:h2:mem:customerdb
  - Username: sa
  - Password: password

## Database Configuration

The application uses an H2 in-memory database configured in `application.properties`:

- Database automatically initializes on startup
- Sample data loaded through `import.sql`
- Database resets each time the application restarts

## Features

- View customer list
- Add new customers
- Update existing customer information
- Delete customers
- In-memory database management

## Development

The project uses Gradle as the build tool. Common tasks include:

- `./gradlew clean`: Clean the build directory
- `./gradlew test`: Run tests
- `./gradlew bootRun`: Run the application
- `./gradlew build`: Build the application

## Project Structure

```
customer-app/
├── src/
│   ├── main/
│   │   ├── java/
│   │   │   └── com/example/customer/
│   │   │       ├── controller/
│   │   │       ├── model/
│   │   │       ├── repository/
│   │   │       └── service/
│   │   └── resources/
│   │       ├── static/
│   │       ├── templates/
│   │       ├── application.properties
│   │       └── import.sql
│   └── test/
├── build.gradle
├── gradlew
└── README.md
```

## Contributing

1. Fork the repository
2. Create your feature branch
3. Commit your changes
4. Push to the branch
5. Create a new Pull Request

## License

This project is licensed under the MIT License - see the LICENSE file for details.
