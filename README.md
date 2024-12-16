# pgMiniDB 🐘

A small database project designed using pgModeler and PostgreSQL. This project includes a database schema, example tuples, queries, and a Java connection via JDBC.

## Features ✨
- Database schema designed in **pgModeler**
- Populated with sample data using **pgAdmin**
- Query execution for CRUD operations
- Java-based connection to PostgreSQL database using JDBC.

## Getting Started 🚀
### Prerequisites
- PostgreSQL installed
- pgAdmin or another database management tool
- VS Code
- JDBC driver for PostgreSQL


## Getting Started
### 1. Set up the database:
- Import the database schema using `schema.sql`.
- Populate the database using `seed_data.sql`.

### 2. Configure your environment:
- Make sure your PostgreSQL database is running and the credentials are set.
- Adjust the `DatabaseConnection.java` file to use your PostgreSQL connection credentials (host, port, database name, username, password).

### 3. Set up Maven and JDBC:
#### Download PostgreSQL JDBC Driver:
- Download the PostgreSQL JDBC driver `.jar` file from [here](https://jdbc.postgresql.org/download.html).
- Save the `.jar` file in the `scripts/` folder, or specify the path in your Maven configuration.

#### Configure Maven:
- Ensure that Maven is installed on your system. If not, you can install Maven by following the official instructions [here](https://maven.apache.org/install.html).
- The `pom.xml` file in the `scripts/` folder contains the necessary configuration for Maven. It includes the dependency for the PostgreSQL JDBC driver.

Here's the relevant part of the `pom.xml` file that you should use:

```xml
<dependencies>
    <dependency>
        <groupId>org.postgresql</groupId>
        <artifactId>postgresql</artifactId>
        <version>42.2.5</version>  <!-- Change to the version you downloaded -->
    </dependency>
</dependencies>
```

### 3. Run the Java code:
To run the Java code that interacts with your PostgreSQL database:
```bash
mvn clean install  # Install dependencies using Maven
javac DatabaseConnection.java  # Compile the Java code
java -cp .:<path_to_postgresql_jdbc>.jar DatabaseConnection  # Run the Java code with the JDBC driver
```
## Usage 🛠️
* Use the provided **schema.sql** to create the database structure.
* Populate the database with data from **seed_data.sql**.
* Run queries from **queries.sql** or write your own to interact with the database.
* The **DatabaseConnection.java** file demonstrates how to use JDBC to connect to PostgreSQL and execute queries.

## License📜 
This project is licensed under the **MIT** License - see the LICENSE file for details.

## Contributing🤝
Contributions are welcome! Feel free to open an issue or submit a pull request for improvements or feature additions.

## Acknowledgments 🙌
* **pgModeler**: For designing the database schema
* **PostgreSQL**: As the database management system
* **PostgreSQL JDBC Driver**:For database connectivity and scripting


