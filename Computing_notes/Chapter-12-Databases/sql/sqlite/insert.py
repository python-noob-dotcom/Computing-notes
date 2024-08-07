import sqlite3

# conn = sqlite3.connect('./library.db')

# SQL Statement - insecure SQL Statement

statement = "INSERT INTO Book(ID, Title) \
            VALUES (5, 'Example Book 10')"

# conn.execute(statement)
# conn.commit() # to prevent DB from being locked 

# conn.close()


# try except block to handle exceptions
# Lump multiple statements together, if there is any that fail, prevent partial commit of the statements
# save data consistency and integrity
with sqlite3.connect('./library_2.db') as conn:
    cur = conn.cursor()

    try:
        cur.execute("BEGIN TRANSACTION")
        cur.execute("CREATE TABLE IF NOT EXISTS Book \
                    (ID INTEGER PRIMARY KEY AUTOINCREMENT, \
                    Title TEXT)")
        cur.execute("INSERT INTO Book(ID, Title) \
                     VALUES (5, 'SampleBook_10')")
        conn.commit()

    except sqlite3.Error:
        print('SQL Error')
        conn.rollback()
    
    except:
        print('an error occured')
        conn.rollback()

    finally:
        pass

