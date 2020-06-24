import requests
import json
import jsonpath

#API URL
url = "https://reqres.in/api/users"

def test_create_user():
    #read input json file
    file=open("C:\\Users\\Narayana\\Desktop\\Harini\\Python\\Notepad\\CreateUser.json","r")
    #it is a string
    json_input=file.read()
    request_json=json.loads(json_input)
    print(request_json)

    #Make POST request with json input body
    response=requests.post(url,request_json)
    print(response.status_code)
    assert response.status_code==201


def test_create_other_user():
    # read input json file
    file = open("C:\\Users\\Narayana\\Desktop\\Harini\\Python\\Notepad\\CreateUser.json", "r")
    # it is a string
    json_input = file.read()
    request_json = json.loads(json_input)
    print(request_json)

    # Make POST request with json input body
    response = requests.post(url, request_json)

    # parse response to JSON format
    json_response = json.loads(response.text)
    print(json_response)

    # pick id using JSON path
    id = jsonpath.jsonpath(json_response, "id")

    print(id)
    print(id[0])

