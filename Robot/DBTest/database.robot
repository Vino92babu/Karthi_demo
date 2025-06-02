*** Settings ***
# Library    SeleniumLibrary
# Library    DatabaseLibrary
# Library    OperatingSystem
# Suite Setup    Connect To Database    pymysql   ${DBName}    ${DBuser}    ${DBpass}    ${DBhost}    ${DBport}
# Suite Teardown    Disconnect From Database

# *** Variables ***
# ${DBName}    demo_practice
# ${DBuser}    root
# ${DBpass}    Vino@09
# ${DBhost}    127.0.0.1
# ${DBport}    3306

*** Test Cases ***
# Create Dummy_Stud table
#     ${output}    Execute Sql String    Create table Dummy_Stud2(id integer,First_Name varchar(29),Last_Name varchar(20));
#     Log To Console    ${output}
#     Should Be Equal As Strings    ${output}    None

# Insert Data in Table
# Single insert
#     ${output}    Execute Sql String    Insert Into Dummy_Stud2 values(102,"Vino","Babu")
#     Log To Console    ${output}
    # Should Be Equal As Strings    ${output}    None
# Multiple Insert
#     ${output}    Execute Sql Script    DBTest/SCriptfile.sql
#     Log To Console    ${output}
#     Should Be Equal As Strings    ${output}    None

# Chk David record is present or not
#     Check If Exists In Database    Select * from Dummy_Stud where First_Name = "David";

# Chk tom record Shouldnot be avabl 
#     Check If Not Exists In Database    Select * from Dummy_Stud where First_Name = "David";

# Chk Table name is avabl
#     Table Must Exist    Dummy_Stud2

# Row Count
#     Row Count Is 0    Select * from Dummy_Stud where First_Name = "toy";

# Know the row Count
#     ${Count}    Row Count    Select * from Dummy_Stud2 where First_Name = "John";
#     Log To Console    ${Count}

# Verify count is eqal to some values
#     Row Count Is Equal To X    Select * from Dummy_Stud2 where First_Name = "John";    3

# Upadte table 
#     Execute Sql String    Update Dummy_Stud2 set First_Name = "Karthik" where id = 203;
#     ${abc}    Query    Select * from Dummy_Stud2 where First_Name = "Karthik";    
#     Log To Console    ${abc}

# Retriview Data from Table 
#     ${QueryResult}    Query    Select * from Dummy_Stud;
#     Log To Console    ${QueryResult}


# Delete Data from Table 
#     ${output}    Execute Sql String    delete from dummy_Stud2;
#     Log To Console    ${output}
#     Should Be Equal As Strings    ${output}    None