from appium import webdriver

desired_caps = {
  "platformName": "Android",
  "platformVersion": "12.0",
  "deviceName": "emulator-5554",
  "appPackage": "com.example.myapplication",
  "appActivity": "com.example.myapplication.MainActivity"
}

driver = webdriver.Remote('http://localhost:4723/wd/hub', desired_caps)
print(driver.desired_capabilities)
driver.quit()
