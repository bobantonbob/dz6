import logging
from psycopg2 import DatabaseError

from connect import create_connection


def create_table(conn, sql_expression: str):
    """ create a table from the create_table_sql statement
    :param sql_expression:
    :param conn: Connection object
    :return:
    """
    c = conn.cursor()
    try:
        c.execute(sql_expression)
        conn.commit()
    except DatabaseError as e:
        logging.error(e)
        conn.rollback()
    finally:
        c.close()


if __name__ == '__main__':
    sql_create_users_table = """
    CREATE TABLE IF NOT EXISTS users (
     id SERIAL PRIMARY KEY,
     name VARCHAR(100),
     email VARCHAR(100),
     password VARCHAR(100),
     age smallint CHECK(age > 18 AND age < 60)
    );
    """

    try:
        with create_connection() as conn:
            if conn is not None:
                create_table(conn, sql_create_users_table)
            else:
                print("Error! cannot create the database connection.")
    except RuntimeError as err:
        logging.error(err)