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

c = None # cursor
conn = None # connection

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
    print("Available tables: ")
    print("----Entity Tables----")
    print("1. SpiderPerson")
    print("2. Villian")
    print("3. Mission")
    print("4. Organization")
    print("5. SideCharacter")
    print("6. ResearchNotes")
    print("7. Equipment")
    print("8. AbilitiesSpiderPerson")
    print("9. AbilitiesVillian")
    print("10. AbilitiesSideChar")

    print("----Relationship Tables----")
    print("1. Mentors")
    print("2. FacesOffAgainst")
    print("3. Owns")
    print("4. HeadsMission")
    print("5. MemberOf")
    print("6. AssociatesWith")
    print("7. Hypothesis")
    print("8. Participant")
    print("\nNOTE: Enter NULL for any field that is not applicable (for autoincrement fields)\n")

    print("Enter the table name: ")
    table = input()
    if table == "exit":
        return 0

    query = "INSERT INTO " + table
    query += " SET "

    match table:
        # Entity Tables
        case "SpiderPerson":
            print("Enter the SpiderPersonID: ")
            SpiderPersonID = input()
            if "NULL" not in SpiderPersonID:   
                query += "SpiderIdentifier = " + SpiderPersonID + ", "

            print("Enter the SpiderPerson RealName: ")
            SpiderPersonName = input()
            if "NULL" not in SpiderPersonName:
                query += "RealName = "SpiderPersonName + ", "

            print("Enter the SpiderPerson Dimension-ID: ")
            DimensionID = input()
            if "NULL" not in DimensionID:
                query += "DimensionID = " + DimensionID + ", "

            print("Enter the SpiderPerson HeroName: ")
            HeroName = input()
            if "NULL" not in HeroName:
                query += "HeroName = " + HeroName + ", "

            print("Enter the SpiderPerson MissionLogs: ")
            MissionLogs = input()
            if "NULL" not in MissionLogs:
                query += "MissionLogs = " + MissionLogs + ", "

            print("Enter the SpiderPerson Gender: ")
            Gender = input()
            if "NULL" not in Gender:
                query += "Gender = " + Gender 

        case "Villian":
            print("Enter the VillianID: ")
            VillianID = input()
            if "NULL" not in VillianID:
                query += "VillianIdentifier = " + VillianID + ", "
            
            print("Enter the Villian RealName: ")
            VillianName = input()
            if "NULL" not in VillianName:
                query += "RealName = " + VillianName + ", "
            
            print("Enter the Villian Dimension-ID: ")
            DimensionID = input()
            if "NULL" not in DimensionID:
                query += "DimensionID = " + DimensionID + ", "
            
            print("Enter the Villian Alias: ")
            Alias = input()
            if "NULL" not in Alias:
                query += "VillianName = " + Alias + ", "
            
            print("Enter the Threat Level for the Villian: ")
            ThreatLevel = input()
            if "NULL" not in ThreatLevel:
                query += "ThreatLevel = " + ThreatLevel + ", "
            
            print("Enter the Villian Gender: ")
            Gender = input()
            if "NULL" not in Gender:
                query += "Gender = " + Gender 
            
        case "Mission":
            print("Enter the Mission Title: ")
            MissionTitle = input()
            if "NULL" not in MissionTitle:
                query += "MissionTitle = " + MissionTitle + ", "
            
            print("Enter the Mission Objective: ")
            MissionObjective = input()
            if "NULL" not in MissionObjective:
                query += "Objectives = " + MissionObjective + ", "
            
            print("Enter the Mission Resources Cost: ")
            MissionResourcesCost = input()
            if "NULL" not in MissionResourcesCost:
                query += "ResourcesUsed = " + MissionResourcesCost + ", "
            
            print("Enter the Mission Outcome: ")
            MissionOutcome = input()
            if "NULL" not in MissionOutcome:
                query += "Outcome = " + MissionOutcome + ", "
            
            print("Enter the Mission Location Dimension-ID: ")
            DimensionID = input()
            if "NULL" not in DimensionID:
                query += "DimensionID = " + DimensionID 
       
        case "Organization":
            print("Enter the Organization ID: ")
            OrganizationID = input()
            if "NULL" not in OrganizationID:
                query += "OrganizationIdentifier = " + OrganizationID + ", "
            
            print("Enter the Organization Name: ")
            OrganizationName = input()
            if "NULL" not in OrganizationName:
                query += "Name = " + OrganizationName + ", "
            
            print("Enter the Organization Dimension-ID: ")
            DimensionID = input()
            if "NULL" not in DimensionID:
                query += "DimensionID = " + DimensionID + ", "
            
            print("Enter the Organization Time of Establishment (DD|MM|YYYY): ")
            TimeOfEstablishment = input()
            if "NULL" not in TimeOfEstablishment:
                query += "TimeOfEstablishment = " + TimeOfEstablishment + ", "
            
            print("Enter the Organization Objectives: ")
            Objectives = input()
            if "NULL" not in Objectives:
                query += "Objectives = " + Objectives + ", "
            
            print("Enter the Organization HQ-Location: ")
            Location = input()
            if "NULL" not in Location:
                query += "HeadquartersLocation = " + Location + ", "
            
            print("Enter the Organization Logo (ID): ")
            Logo = input()
            if "NULL" not in Logo:
                query += "Logo = " + Logo 
        
        case "SideCharacter":
            print("Enter the SideCharacter ID: ")
            SideCharacterID = input()
            if "NULL" not in SideCharacterID:
                query += "CharacterIdentifier = " + SideCharacterID + ", "
            
            print("Enter the SideCharacter Name: ")
            SideCharacterName = input()
            if "NULL" not in SideCharacterName:
                query += "Name = " + SideCharacterName + ", "
            
            print("Enter the SideCharacter Dimension-ID: ")
            DimensionID = input()
            if "NULL" not in DimensionID:
                query += "DimensionID = " + DimensionID + ", "
            
            print("Enter the SideCharacter Alias: ")
            Alias = input()
            if "NULL" not in Alias:
                query += "MaskName = " + Alias + ", "
            
            print("Enter the SideCharacter Gender: ")
            Gender = input()
            if "NULL" not in Gender:
                query += "Gender = " + Gender            

        case "ResearchNotes":
            print("Enter the ResearchNotes Date (DD|MM|YYYY): ")
            Date = input()
            if "NULL" not in Date:
                query += "Date = " + Date + ", "
            
            print("Enter the ResearchNotes Title: ")
            Title = input()
            if "NULL" not in Title:
                query += "Topic = " + Title + ", "
            
            print("Enter the ResearchNotes Content: ")
            Content = input()
            if "NULL" not in Content:
                query += "Content = " + Content 
                        
        case "Equipment":
            print("Enter the Equipment Name: ")
            EquipmentName = input()
            if "NULL" not in EquipmentName:
                query += "Name = " + EquipmentName + ", "
            
            print("Enter the Equipment Type: ")
            EquipmentType = input()
            if "NULL" not in EquipmentType:
                query += "Type = " + EquipmentType + ", "
            
            print("Enter the Equipment Description: ")
            EquipmentDescription = input()
            if "NULL" not in EquipmentDescription:
                query += "Description = " + EquipmentDescription
            
        case "AbilitiesSpiderPerson":
            print("Enter the Corresponding SpiderPerson ID: ")
            SpiderPersonID = input()
            if "NULL" not in SpiderPersonID:
                query += "SpiderPersonIdentifier = " + SpiderPersonID + ", "
            
            print("Enter the Ability Name: ")
            AbilityName = input()
            if "NULL" not in AbilityName:
                query += "Ability = " + AbilityName 
        
        case "AbilitiesVillian":    
            print("Enter the Corresponding Villian ID: ")
            VillianID = input()
            if "NULL" not in VillianID:
                query += "VillianIdentifier = " + VillianID + ", "
            
            print("Enter the Ability Name: ")
            AbilityName = input()
            if "NULL" not in AbilityName:
                query += "Ability = " + AbilityName
        
        case "AbilitiesSideChar":
            print("Enter the Corresponding SideCharacter ID: ")
            SideCharacterID = input()
            if "NULL" not in SideCharacterID:
                query += "SideCharacterIdentifier = " + SideCharacterID + ", "
            
            print("Enter the Ability Name: ")
            AbilityName = input()
            if "NULL" not in AbilityName:
                query += "Ability = " + AbilityName
        
        # Relationship Tables
        case "Mentors":
            print("Enter the Student SpiderPerson ID: ")
            StudentID = input()
            if "NULL" not in StudentID:
                query += "SpiderPersonSpiderIdentifier = " + StudentID + ", "
            
            print("Enter the Mentor SpiderPerson ID: ")
            MentorID = input()
            if "NULL" not in MentorID:
                query += "MentorSpiderIdentifier = " + MentorID
            
        case "FacesOffAgainst":
            print("Enter the Villian ID: ")
            VillianID = input()
            if "NULL" not in VillianID:
                query += "VillianIdentifier = " + VillianID + ", "
            
            print("Enter the SpiderPerson ID: ")
            SpiderPersonID = input()
            if "NULL" not in SpiderPersonID:
                query += "SpiderPersonIdentifier = " + SpiderPersonID

        case "Owns":
            print("Enter the SpiderPerson ID: ")
            SpiderPersonID = input()
            if "NULL" not in SpiderPersonID:
                query += "SpiderPersonSpiderIdentifier = " + SpiderPersonID + ", "
            
            print("Enter the Equipment Name: ")
            EquipmentName = input()
            if "NULL" not in EquipmentName:
                query += "EquipmentName = " + EquipmentName
            
        case "HeadsMission":
            print("Enter the Mission Title: ")
            MissionTitle = input()
            if "NULL" not in MissionTitle:
                query += "MissionTitle = " + MissionTitle + ", "
            
            print("Enter the SpiderPerson ID: ")
            SpiderPersonID = input()
            if "NULL" not in SpiderPersonID:
                query += "SpiderPersonSpiderIdentifier = " + SpiderPersonID
            
        case "MemberOf":
            print("Enter the SpiderPerson ID: ")
            SpiderPersonID = input()
            if "NULL" not in SpiderPersonID:
                query += "SpiderPersonSpiderIdentifier = " + SpiderPersonID + ", "
            
            print("Enter the Organization ID: ")
            OrganizationID = input()
            if "NULL" not in OrganizationID:
                query += "OrganizationOrganizationIdentifier = " + OrganizationID

        case "AssociatesWith":
            print("Enter the SpiderPerson ID: ")
            SpiderPersonID = input()
            if "NULL" not in SpiderPersonID:
                query += "SpiderPersonSpiderIdentifier = " + SpiderPersonID + ", "
            
            print("Enter the SideCharacter ID: ")
            SideCharacterID = input()
            if "NULL" not in SideCharacterID:
                query += "SideCharacterCharacterIdentifier = " + SideCharacterID
            
        case "Hypothesis":
            print("Enter the ResearchNotes Title: ")
            ResearchNotesTitle = input()
            if "NULL" not in ResearchNotesTitle:
                query += "ResearchNotesTopic = " + ResearchNotesTitle + ", "
            
            print("Enter the SpiderPerson ID: ")
            SpiderPersonID = input()
            if "NULL" not in SpiderPersonID:
                query += "SpiderPersonSpiderIdentifier = " + SpiderPersonID
        
        case "Participant":
            print("Enter the Mission Title: ")
            MissionTitle = input()
            if "NULL" not in MissionTitle:
                query += "MissionTitle = " + MissionTitle + ", "
            
            print("Enter the SpiderPerson ID: ")
            SpiderPersonID = input()
            if "NULL" not in SpiderPersonID:
                query += "SpiderPersonSpiderIdentifier = " + SpiderPersonID
            
        case _:
            print("Invalid table name")
            return -1
    
    # execute the query
    try:
        c.execute(query)
        return 0
    except sqlite3.Error as e:
        print("An error occurred:", e.args[0])
        return -1

def HandleDelete():
    pass

def HandleSelect():
    pass

def HandleProjection():
    pass

def HandleAggregate():
    pass

def HandleSearch():
    pass

def HandleAnalytical():
    pass

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
            conn.commit()
        case 3:
            print("----------Delete Operation----------")
            HandleDelete()
        case 4:
            print("----------Select Operation----------")
            HandleSelect()
        case 5:
            print("----------Projection Operation----------")
            HandleProjection()
        case 6:
            print("----------Aggregate Operation----------")
            HandleAggregate()
        case 7:
            print("----------Search Operation----------")
            HandleSearch()
        case 8:
            print("----------Analytical Operation----------")
            HandleAnalytical()
        case _:
            print("Invalid choice")
            return 0    
                
def main():
    # connect to the database and Initialize the cursor
    conn = sqlite3.connect("spiderverse.db")
    c = conn.cursor()

    #Load Images from the Images folder into Images table in the database
    # i = 0
    # for filename in os.listdir("Images"):
    #     with open("Images/" + filename, 'rb') as file:
    #         Ablob = file.read()
    #         c.execute("INSERT INTO Images VALUES (?, ?)", (i, Ablob))
    #         i += 1    

    while True:
        #take input from user
        print("----------Welcome to the Spiderverse Database----------")
        print(" 1. Standard SQL query (Select, Insert, Update, Delete)")
        print(" 2. Insertion Operation")
        print(" 3. Delete Operation")
        print(" 4. Select Operation")
        print(" 5. Projection Operation")
        print(" 6. Aggregate Operation")
        print(" 7. Search Operation")
        print(" 8. Analytical Operation")
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
    conn.commit()
    c.close()
    conn.close()
    return 0

if __name__ == "__main__":
    main()