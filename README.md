# DemoProject

In this project, test scripts were written to automate some testing scenarios related to real life actions on different type of applications using __Robot Framework__.

---

__Set-Up__

1. Python 3 interpreter
2. Pycharm community edition for IDE

---

__Automation Framework__

In this project, __Robot Framework__ was used as a Automation Framework to write the test scripts.

Robot Framework is a generic open source automation framework for acceptance testing, acceptance test driven development (ATDD), and robotic process automation (RPA). It has simple plain text syntax and it can be extended easily with libraries implemented using Python or Java. The core framework is implemented using Python and also runs on Jython (JVM) and IronPython (.NET).

The syntax for describing these test cases is based on a __Keyword Driven Testing__ approach and a __table format__.

KEYWORD-DRIVEN TESTING is a scripting technique that uses data files to contain the keywords related to the application being tested. These keywords describe the set of actions that is required to perform a specific step.

- __Installation__

  > If Python and pip installed, run the below command in command prompt
    ```
    pip install --upgrade robotframework
   
    ```
   
  > Install the package __robotframework__ in project interpreter settings of current project on Pycharm.

---

__Applications Used__

In this project, the test scripts were written on the below type of applications

  - __UI__ [link](https://demo.nopcommerce.com/)
  - __API__ [link](https://robotmetrics.netlify.com/)
  - __Hybrid__ (combination of both UI and API) [UI-link](https://github.com/) and [API-link](https://api.github.com/)

---

__Libraries Used__

In this project, below libraries are used:-

__1.__ __SeleniumLibrary__

SeleniumLibrary is a web testing library for Robot Framework that utilizes the Selenium tool internally.

- __Installation__

  > For SeleniumLibrary installation, run the below command in command prompt
    ```
    pip install --upgrade robotframework
   
    ```
  
  > Install the package __robotframework-seleniumlibrary__ in project interpreter settings of current project on Pycharm.
 
  > Install all the required browsers and operating system specific browser drivers used in the project. The general approach to install a browser driver is downloading a right     driver, such as chromedriver for Chrome, and placing it into a directory that is in PATH.
  
  > Add __IntelliBot@seleniumlibrary__ plugin on Pycharm
  
__2.__ __RequestsLibrary__
   
RequestsLibrary is used to help in making the HTTP requests to a API.

- __Installation__

  > For RequestsLibrary installation, run the below command in command prompt
    ```
    pip install robotframework-requests
   
    ```
  
  > Install the package __robotframework-requests__ in project interpreter settings of current project on Pycharm.

 __3.__ __Collections__
   
Collections is Robot Framework's standard library that provides a set of keywords for handling Python lists and dictionaries. This library has keywords, for example, for modifying and getting values from lists and dictionaries (e.g. Append To List, Get From Dictionary) and for verifying their contents (e.g. Lists Should Be Equal, Dictionary Should Contain Value)

---

__Page Object Model__

In this project, used to create the test scripts based on Page Object Model(POM).

Here all the locators related to the web page and user-defined keywords are created in Resource File. This file is imported to the test file and required keywords are used for the actions to get happened.

---

__Data Driven Testing__

In this project, approached a concept of Data Driven Testing while writing the test scripts.

DATA DRIVEN TESTING is a test automation framework that stores test data in a table or spreadsheet format. This allows automation engineers to have a single test script that can execute tests for all the test data in the table.

__DataDriver__ is used/imported as Library but does not provide keywords which can be used in a test. DataDriver uses the Listener Interface Version 3 to manipulate the test cases and creates new test cases based on a Data-File that contains the data for Data-Driven Testing. These data file may be .csv , .xls or .xlsx files.

- __Installation__

  > For Data installation, run the below command in command prompt
    ```
    pip install --upgrade robotframework-datadriver
   
    ```
  
  > Install the package __robotframework-datadriver__ in project interpreter settings of current project on Pycharm.
  
  > For excel file support of xls or xlsx file you need to install the extra XLS or the dependencies. It contains the dependencies of pandas, numpy and xlrd.
    ```
    pip install --upgrade robotframework-datadriver[XLS]
   
    ```

__Packages Used__

Below are other packages used in the project:-

__1.__ __robotframework-jsonlibrary__
   
This package is a Robot Framework test library for manipulating JSON object.

- __Installation__

  > For robotframework-jsonlibrary installation, run the below command in command prompt
    ```
    pip install -U robotframework-jsonlibrary
   
    ```
  
  > Install the package __robotframework-jsonlibrary__ in project interpreter settings of current project on Pycharm.
  
  
 __2.__ __robotframework-pabot__
   
This package is a Robot Framework parallel test runner used for running the test scripts parallely at one time.

- __Installation__

  > For robotframework-pabot installation, run the below command in command prompt
    ```
    pip install -U robotframework-pabot
   
    ```
  
  > Install the package __robotframework-pabot__ in project interpreter settings of current project on Pycharm.
  
 - __Example__
 
  > Following is the command can be used to run 3 processes parallely by giving its directory name alone where these test scripts are stored and also can store the resultant         report files (log.html, output.xml and report.html) in a desired directory
    ```
    pabot --processes 3 --outputdir UI_DEMO/Results UI_DEMO/
   
    ```
      




   
  




   
   
   
   
   
 

  




  


   
   
    
