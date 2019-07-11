import getpass
from requests import get  # to make GET request

def download(url, filename):
    # open in binary mode
    with open(filename, "wb") as file:
        # get request
        response = get(url)
        # write to file
        file.write(response.content)

print("Batch downloading of menus")

UW_API_KEY = getpass.getpass('Please input your API Key: ')

year_start = int(input("Enter starting year: "))
year_end = int(input("Enter ending year: "))

week_start = int(input("Enter starting week: "))
week_end = int(input("Enter ending week: "))

for year in range(year_start, year_end + 1):
    for week in range(week_start, week_end + 1):
        filename = "{year}-w{week}-menu.json".format(year=year, week=week)
        url = "https://api.uwaterloo.ca/v2/foodservices/{year}/{week}/menu.json?key={api_key}".format(year=year, week=week, api_key = UW_API_KEY)
        print("Downloading file: ", filename)
        download(url, filename)