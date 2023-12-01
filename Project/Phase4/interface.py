# python interfeace to the database for project database
# Functionalities to be implemented:
# 1. Simple Sql query (Select, Insert, Update, Delete)
# 2. Complex Projection Query 
# 3. Aggreate Query
# 4. Nested Query
# Example: Villian Opposition Network report
# Example: Spider Person Efficiency report
# Example: Equipment Usage report
# Example: Mission Completion report

import sqlite3
import os
import sys

def HandleSimpleSQL(query):
    # execute the query
    try:
        c.execute(query)
    except sqlite3.Error as e:
        print("An error occurred:", e.args[0])
        return -1

    # print the result
    for row in c.fetchall():
        print(row)
    
    return 0

def HandleInsert():
    print("NOTE: Enter NULL for any field that is not applicable")

    print("Enter the table name: ")
    table = input()
    if table == "exit":
        return 0

    query = "INSERT INTO " + table

    match table:
        case "SpiderPerson":
            query += " VALUES ("

            print("Enter the SpiderPersonID: ")
            SpiderPersonID = input()
            query += SpiderPersonID + ", "

            print("Enter the SpiderPerson RealName: ")
            SpiderPersonName = input()
            query += SpiderPersonName + ", "

            print("Enter the SpiderPerson Dimension-ID: ")
            DimensionID = input()
            query += DimensionID + ", "

            print("Enter the SpiderPerson HeroName: ")
            HeroName = input()
            query += HeroName + ", "

            print("Enter the SpiderPerson MissionLogs: ")
            MissionLogs = input()
            query += MissionLogs + ", "

            print("Enter the SpiderPerson Gender: ")
            Gender = input()
            query += Gender 

            query += ")"
        
        case "Dimension":

            

def HandleChoice(choice):
    match choice:
        case 1:
            print("----------Simple SQL query----------")
            print("Enter your query: ")
            query = input()
            if query == "exit":
                return 0

            # check if query is valid
            if query.split()[0].lower() != "select":
                print("Invalid query")
                return 0

            HandleSimpleSQL(query)
        case 2:
            print("----------Insert Operation----------")
            HandleInsert()
        case 3:
            print("----------Update Operation----------")
            HandleUpdate()
        case 4:
            print("----------Delete Operation----------")
            HandleDelete()
        case 5:
            print("----------Select Operation----------")
            HandleSelect()
        case 6:
            print("----------Projection Operation----------")
            HandleProjection()
        case 7:
            print("----------Aggregate Operation----------")
            HandleAggregate()
        case 8:
            print("----------Search Operation----------")
            HandleSearch()
        case 9:
            print("----------Analytical Operation----------")
            HandleAnalytical()
        case _:
            print("Invalid choice")
            return 0    
                
def main()
    # connect to the database
    conn = sqlite3.connect("spiderverse.db")
    c = conn.cursor()

    while True:
        #take input from user
        print("----------Welcome to the Spiderverse Database----------")
        print(" 1. Standard SQL query (Select, Insert, Update, Delete)")
        print(" 2. Insertion Operation")
        print(" 3. Update Operation")
        print(" 4. Delete Operation")
        print(" 5. Select Operation")
        print(" 6. Projection Operation")
        print(" 7. Aggregate Operation")
        print(" 8. Search Operation")
        print(" 9. Analytical Operation")
        print("-------------------------------------------")

        while True:
            choice = input("\nEnter your choice: ")
            if type(choice) is not int:
                print("Please enter a valid integer")
                continue
            break

        HandleChoice(choice)
        Continue = input("Do you want to continue? (Y/N): ")
        if Continue == "Y" or Continue == "y":
            continue

    print("----------Thank you for using the Spiderverse Database----------")
    return 0

if __name__ == "__main__":
    main()