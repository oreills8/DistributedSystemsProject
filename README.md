# DistributedSystemsProject

This project has the code for the distributed systems project. 
files client1.rb to client5.rb are for testing the project.
files testDirectoryFileServe.rb, testFileAccess.rb and testLockServer.rb all test the individual servers.
General Files:
----------------------------------------------
Each of the servers contain client, server, error and startServer files.
startServer - sets up the threads that will handle different clients and initalises the server and client classes. This file contains the code for accepting clients. 

server - contains the main file for the server. all messages pass through this class. all the messages first go the client class.

client - a client class is created for each of the clients that connect to the server. depending on the contents of the message the  message goes on to different classes. 

errors - this file contains a detailed list of all the potential errors in the program. each of this errors has an id associated with it. if an error occurs in the server the discription of this error is forwarded to the connected client, for whom the error occured.


Some servers then contain additional files:

clientProxyServer:
----------------------------------------------
chatroom - this class contains all the functions nessesary for chatroom communication. and a class for the messages that are forwarded in the chatroom.

fileManagement - this file is used for uploading and downloading files. This file coordinates all the access to different servers in order to download or upload different files. 

directoryServer - this file communicates with the directory server

fileServer - this file communicates with the file server

lockServer - this file communicates with the lock server

cache - this file caches files in the client proxy server

cacheAccess - this file contains functions to access the cached files

DirectoryServer:
----------------------------------------------
directory - this file contains the reference name and server for all files

fileServer:
----------------------------------------------
contains sample text files that can be downloaded

FileAccess - contains functons to access the files stored in this server

lockServer:
----------------------------------------------
FileServerAccess - contains functions for communicating with the file server

lockManagement - contains functions for locking and unlocking files



