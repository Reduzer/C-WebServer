#include "stdio.h"
#include <netinet/in.h>
#include <sys/socket.h>
#include <arpa/inet.h>
#include <stdlib.h>
#include <unistd.h>
#include <string.h>


#define PORT 9090
#define BUFFER_SIZE 1024

void parseRoute (const char* pChars, int nLength) {

    
}

void ReadHTMLFile (int *nSocket, const char* pFile) {
    FILE* pHTML = fopen(pFile, "r");
    if (!pFile) {
        perror("Could not open file!");
        return; 
    }

    char cBuffer[BUFFER_SIZE] = {0};
    size_t nRead = 0;

    const char* pHeader = "HTTP/1.1 200 OK\r\nContent-Type: text/html\r\n\r\n";
    send(*nSocket, pHeader, strlen(pHeader), 0);

    while ((nRead = fread(cBuffer, sizeof(cBuffer), BUFFER_SIZE, pHTML)) > 0) {
        send(*nSocket, cBuffer, nRead, 0);
    }

    fclose(pHTML);
}

int main () {
    int nServerStarted = 0;
    int nServerSocket;

    //AF_INIT is for ipv4 comminucation, SOCK_STREAM is for tcp communication
    if((nServerSocket = socket(AF_INET, SOCK_STREAM, 0)) < 0) {
        perror("The server socket was not able to be created");
        return -1;
    }

    sockaddr_in serveraddr;
    //use ipv4
    serveraddr.sin_family = AF_INET;
    //use any network device on the device running this code
    serveraddr.sin_addr.s_addr = INADDR_ANY;
    //byte order for little endian
    serveraddr.sin_port = htons(PORT); 

    if((bind(nServerSocket, (sockaddr *)&serveraddr, sizeof(serveraddr))) < 0) {
        perror("could not bind server to port");
        return -1;
    }

    printf("bound server to to ip and port");

    if (listen(nServerSocket, 5) < 0) {
        perror("could not listen to socket and ip");
        return -1;
    }

    printf("Listening on port: %d\n", PORT);

    while(true) {    
        if(nServerStarted == 0) {
            printf("The server started and is ready to handle connectins!");
            nServerStarted = 1;
        }    
        sockaddr_in clientAddr;
        socklen_t clientLen = sizeof(clientAddr);
        int *nClientSocket = (int*)malloc(sizeof(int));

        
        if (nClientSocket) {
            printf("a client wants to connect!");
        }

        if((*nClientSocket = accept(nServerSocket, (sockaddr *)&clientAddr, &clientLen)) < 0) {
            perror("The client could not be accepted!");
            continue;
        }

        printf("Client connected!");

        char recBuff[BUFFER_SIZE] = {0};
        recv(*nClientSocket, recBuff, BUFFER_SIZE, 0);

        //read the first bytes from the request
        char *pToken = recBuff + 5;
        char *pRoute = strtok(pToken, " ");

        const char *File = parseRoute(pRoute, );

        //ReadHTMLFile(nClientSocket, "static/index.html");
        
        close(*nClientSocket);
        printf("Client Disconnected!");
        free(nClientSocket);
    }

    printf("Program is done and closing!");

    close(nServerSocket);

    return 0;
}