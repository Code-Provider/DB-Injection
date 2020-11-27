# Database Injections

Spring Boot App I did during my internship at Computime to inject data from a certain DB (of type MySQL, Microsoft Access or SQLServer) to a MySQL DB according to the mapping between tables and fields configured. 

You have to reference the database.properties file path in the **/src/main/resources/application.properties** file. Feel free to cut the **database.properties** file from the project folder and paste it wherever you want as long as you reference it's path in the application.properties file, it's really important.

Then run the project as a Springboot app and navigate to localhost:8081 (you can change the server port in the application.properties file, I set it to 8081 for example). Firstly set all the data about the databases in the database configuration page (db user, db password, db name, port etc...) so the app is aware of the Databases. Then go to the mapping page and set for each 2 databases the mapping between the tables and then map their fields (just please don't map types that aren't compatible such as a number with a datetime cause it won't work lol).

Then as long as the mapping is done between 2 databases. MySQL and SQLServer for example, feel free to inject data from SQLServer to MySQL using the navbar inject dropdown and it is worth noting that redundant data will not be added (redundency test is done with the mapped fields and ignore fields which aren't mapped though).

Also you can configure in the injection configuration page which type of injection happens each 2 seconds to stop bothering about manually injecting (If you enable SQLServer to MySQL for example, SQLServer data will be injected to MySQL each 2 seconds automatically and is run as a service in the background as long as the server is up and running). 



