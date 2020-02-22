# Phone book!

This application has **CRUD** functions for users with n amount of emails and phone numbers.
It's all setup in a docker environment, we also have the .sql file that allows us to have a ready script to start using our API. It's a LNMP setup (Linux, Nginx, MySQL, PHP); This setup requires that you have docker install in your machine.


# Application setup

The commands that will help us get things going are:

1) `docker-compose up` you can add `-d` at the end in order to detach the console from the command execution so that we can use the same terminal for other scripts (If something goes wrong the terminal without the detach will let us know). 

2) `docker exec test_php composer install` this will install our dependencies and will also setup the autoload for the php files.



## Database setup

Personally I have IntelliJ IDE; it has a Database plugin. You guys can use the tool you want and we need to setup the database connection like this:
![Database config](https://imgur.com/uS5UEZQ)

Once you have that ready you will only need to run the script inside a console that points to that connection.


## API Reference

We are also including a postman collection in the root of the project, you just use the import option and it will be ready.
(phonebook.postman_collection.json)

{main_route} = app/Phonebook/Routes/

|Endpoint route  				   |Type | Parameters	| Description                 |
|----------------------------------|-----|--------------|-----------------------------|
|{main_route}/CreateUser.php       |POST |first_name, last_name, emails, phone_numbers| This creates a new user in the database.|
|{main_route}/GetUsers.php         |GET	 |first_name, last_name, emails, phone_numbers| Based on the parameter we search by that parameter the value that matches it|
|{main_route}/UpdateUser.php       |POST |first_name, last_name                       | Updated the first_name or last_name from a user|
|{main_route}/DeleteUser.php       |POST |id            | Removes the user and it's related emails and phone numbers|


#####CreateUser request example
```
{ 
    "name":"foo", 
    last_name": "bar, 
    "emails": ["foo.bar@mail.com], 
    "phone_numbers": [523454357876]
}
```
#####Get request example
`{value} = id,first_name|last_name,email,phone_number`
```
{ 
    "{value}":"foo"
}
```
#####Update request example
`{value} = first_name|last_name`
```
{ 
    "id": 1
    "{value}":"foo"
}
```

#####Delete request example
```
{ 
    "id": 1
}
```
