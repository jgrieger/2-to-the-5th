import datetime

thisYear = datetime.datetime.now().year
isLeapYear = thisYear % 4 == 0 and thisYear % 100 != 0
isSpecialLeapYear = thisYear % 400 == 0

if isSpecialLeapYear or isLeapYear:
    print("This is a leap year.")
else:
    print("This is not a leap year.")