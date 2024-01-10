# mysql_python_pseudonyms_db
## A repository to practice connecting to a MySQL database using Python

The goal of this repository is to create and populate a MySQL database using Python. Python will also be used to query the database and to alter the data.

The database will be called 'pseudonym_db' and will contain the pseudonyms and the real names of famous historical figures (Voltaire, Leo Trotzki, Stendhal...).

The database consists of four tables:
1. **'pseudonmys'**: All the pseudonyms
2. **'names'**: All the real names of the historical figures
3. **'categories'**: All the categories the historical figures belonged to (Literature, Politics, Architecture...)
4. **'relationship'**: The connection between the three other tables

The repository contains files:

1. **er-diagram_pseudonym_db.png**
This file shows the entity-relationship-diagram of the pseudonyms database.

2. **er_diagram_pseudonym_db.mwb**
The entity-relationship-diagram of the pseudonyms database as a MySQL-Workbench file.

3. **python-mysql-pseudonym.ipynb**
This Jupyter Notebook contains the Python code to connect to MySQL and create the database, populate it with data, query and change the data.

4. **pseudonym_db_dump.sql**
The setup and the date of the newly created pseudonyms database.

5. **list_of_pseudonyms.csv**
This file contains the data of the pseudonyms database.
