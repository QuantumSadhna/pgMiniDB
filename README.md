# pgMiniDB 🐘

A small database project designed using pgModeler and PostgreSQL. This project includes a database schema, example tuples, queries, and a Python connection via JDBC.

## Features ✨
- Database schema designed in **pgModeler**
- Populated with sample data using **pgAdmin**
- Query execution for CRUD operations
- Python integration using **JDBC driver**

## Getting Started 🚀
### Prerequisites
- PostgreSQL installed
- pgAdmin or another database management tool
- Python 3.x
- JDBC driver for PostgreSQL
- `psycopg2` library (if using Python directly)

### Installation 💻
1. Clone this repository:
   ```bash
   git clone https://github.com/QuantumSadhna/pgMiniDB.git
2. Set up the database:
   1.Import the schema using schema.sql.
   2.Populate the database using seed_data.sql.
3.Configure your environment variables:
Create a .env file in the root folder:
```bash
DB_NAME=your_database
DB_USER=your_username
DB_PASSWORD=your_password
DB_HOST=localhost
DB_PORT=5432
```
4. Run the python script
```bash
python app.py
```

## Usage 🛠️
* Use the provided **schema.sql** to create the database structure.
* Populate the database with data from **seed_data.sql** or the CSV files in the **/data** folder.
* Run queries from **queries.sql** or write your own to interact with the database.
* Use **app.py** to explore Python integration with the database.

## License📜 
This project is licensed under the **MIT** License - see the LICENSE file for details.

## Contributing🤝
Contributions are welcome! Feel free to open an issue or submit a pull request for improvements or feature additions.

## Acknowledgments 🙌
* **pgModeler**: For designing the database schema
* **PostgreSQL**: As the database management system
* **Python**: For database connectivity and scripting


