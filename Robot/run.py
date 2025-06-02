'''
Run Test File 
robot Robot_framework\testsuit.robot

Run All Tests in a folder
robot Robot_framework\

Run a Specific Test cases
robot --test "Testcase_name" Robot_framework\testsuit.robot

Run Test Cases using Tags 
Include
robot --i Regression Robot_framework\testsuit.robot
exclude
robot --exclude Regression Robot_framework\testsuit.robot

Test setup --> Runs before each test cases
Test Teardown --> Runs after each test cases

Suit setup --> Runs before All test cases
Suit Teardown --> Runs After All test cases


'''


'''
pip install robotframework-datadriver
pip install --upgrade robotframework-datadriver[XLS]

'''