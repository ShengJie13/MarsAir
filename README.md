# MarsAir
MarsAir has established itself as the newest commercial spaceship operator. Founded by a group of genius engineers who left NASA a couple of years ago and growing very rapidly, MarsAir has just hired their first Sales Director, Mark.

## Test Approach
1) Exploratory testing used to test the application to gain insights without the knowledge of application 
2) Manual testing can be used to test all the functionalities of the web application
3) Automated testing can be used to test the performance and load of the web application


## Installation

There are a few things needed to install to run the files:
1) Python
2) pip - used for installation for Robot Framework and seleniumLibrary
3) Robot Framework
4) SeleniumLibrary

###  1) Python 
Robot Framework is implemented with Python, so you need to have Python installed: https://www.python.org/downloads/ 

### 2) Pip
Ensure `pip` is installed: https://pip.pypa.io/en/stable/installation/

### 3) Robot Framework 
Robot Framework is an open source automation framework for test automation and robotic process automation (RPA). It is supported by the Robot Framework Foundation and widely used in the industry. 
Its human-friendly and versalite syntax uses keywords and supports extending through libraries in Python, Java, and other languages.
It integrates with other tools for comprehensive automation without licensing fees, bolstered by a rich community with hundreds of 3rd party libraries.
For more information on Robot Framework, visit https://robotframework.org/ 

If you already have Python with pip installed, you can simply run this inyour terminal: 

```javascript
pip install robotframework
```
To check that the installation was successful, run:

```javascript
robot --version
```
### 4) SeleniumLibrary
SeleniumLibrary is a web testing library for Robot Framework. For more information, visit: https://robotframework.org/SeleniumLibrary/

To install SeleniumLibrary, the recommended installation method is using pip:
```javascript
pip install --upgrade robotframework-seleniumlibrary
```

To read on the Documentations on Robot Framework and seleniumLibrary, visit:
1) [Robot Framework documentation](https://robotframework.org/robotframework/)
2) [SeleniumLibrary Documentations](https://robotframework.org/SeleniumLibrary/SeleniumLibrary.html#library-documentation-top)

## Running Test
The directory is arranged as followed:
1) config - Folder that holds all the robot files that shares keywords for all files to use
     - PromoCodeLibrary.py is a python file that generate the voucher code randomly
3) Pages- Folder that holds all the Test cases
4) Tests - Folder that holds all the Test Scenerios 

To run the robot file, run this cmd line in the terminal: 
```javascript
robot Tests/<files you want to run>
```

