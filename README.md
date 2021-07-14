# Parallel Appium Test in Robot Framework via Pabot
- [http://robotframework.org/](http://robotframework.org/)
- [https://pabot.org/](https://pabot.org/)
- [https://appium.io/](https://appium.io/)

### Pre-Requisites
* Python
* Android sdk
* Robot Framework
* Appium
* Java 

### Installation
- Python

Follow the tutorial on how to install Python [here](https://realpython.com/installing-python/)

- Java

Follow the tutorial on how to install Java [here](https://www.javatpoint.com/javafx-how-to-install-java/)


- Appium
```
$ npm install -g appium
```
- Robotframework, Appium Library, and Pabot
```
$ pip install robotframework
$ pip install robotframework-appiumlibrary
$ pip install robotframework-pabot
```
### Run Selenium Grid
```
$ java -jar selenium-server-standalone-3.141.59.jar -role hub -port 4444 -timeout 20000 
```

### Run Appium Nodes
```
$ appium --nodeconfig configOppoF1s.json -p 4723 -bp 5722 --default-capabilities configOppoF1s.json
$ appium --nodeconfig configHuaweiMatepad.json -p 4724 -bp 5724 --default-capabilities capabilities/capsHuaweiMatepad.json
```

### Install APK
Install APK for calculator sample to your devices. Located [here](https://github.com/dnomyar90/RF-Appium-Parallel-Sample/blob/main/asset/calculator.apk)

### How To Run
```
$ ./run-test.sh [tag] [threads] [application name]

./run-test.sh calculator 2 CalculatorV1
```

## Notes
You definitely can improve this sample to automatically install APK and start Appium server instead of having to do it manually. This sample is provided as-is at bare minimum just to give you idea how to do parallel Appium test on Robot Framework.

### Demo
[![Parallel RF Appium Tests](https://j.gifs.com/jZ74m4.gif)](https://www.youtube.com/watch?v=u0nHLsjJnqc)asset