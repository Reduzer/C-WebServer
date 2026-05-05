#include <stdio.h>
#include "stdint.h"
#include "winsock2.h"
#include "WS2tcpip.h"
#include "vector.h"

#define BUFFERSIZE 1024
#define PORT 8080
#define PROTOCOL "HTTP"
#define ERRORRETURN -1
#define IPADDRESS "127.0.0.1"
#define MAX_THREADS 8

int ThreadCount = 0;
FILE* pFile;

HANDLE hThreads[MAX_THREADS] = {NULL};

void Chunking(){

}

void Route (const char* pRequested) {
	
	if (pRequested == "Home") {
		pFile = fopen("home.html", "r");
	} else if (pRequested == "test") {
		pFile = fopen("test.html", "r");
	} else if (pRequested == "") {
		perror("Malte ist geistig eingeschränkt");
	}
}

void ShutDownThreads () {
	//ReleaseMutex();

	while (ThreadCount > 0) {
		WaitForSingleObject(hThreads[--ThreadCount], INFINITE);
	}
}

int main (const char* args) {	
	//Struct for socket to listen to
	SOCKET ListeningSocket;
	ListeningSocket = socket(AF_INET, SOCK_STREAM, IPPROTO_TCP);

	//Checking if the socket was created correctly
	if (ListeningSocket == INVALID_SOCKET) {
		perror("Could not create socket");
		WSACleanup();
		return -1;
	}
	
	//Specifying the ip and port the socket should bind to
	struct sockaddr_in service;
	service.sin_family = AF_INET;
	service.sin_port = htons(PORT);
	inet_pton(AF_INET, IPADDRESS, &service);

	//Bind socket
	if (bind(ListeningSocket, (SOCKADDR *) &service, sizeof(service) == SOCKET_ERROR )) {
		perror("Could not bind socket to port and ip");
		WSACleanup();
		return -1;
	}

	//Listen for requests
	if (listen(ListeningSocket, 1) == SOCKET_ERROR) {
		perror("Could not listen");
		closesocket(ListeningSocket);
		WSACleanup();
		return -1;
	}

	//Socket for requests
	SOCKET AcceptSocket;
	printf("Waiting for client");

	//Accept connection
	AcceptSocket = accept(ListeningSocket, NULL, NULL);
		if (AcceptSocket == INVALID_SOCKET) {
			perror("Could not accept client");
			closesocket(ListeningSocket);
			WSACleanup();
			return -1;
		}
	printf("a client has connected");
	
	//Create Thread for handeling
	

	//Handle request
	

	//Wait for child threads to finish
	ShutDownThreads();
	
	//Cleanup
	closesocket(ListeningSocket);
	if (AcceptSocket) {
		closesocket(AcceptSocket);
	}
	WSACleanup();

	return 0;
}