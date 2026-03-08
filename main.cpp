#include "stdio.h"
#include <arpa/inet.h>
#include <stdlib.h>
#include <unistd.h>


#define PORT 8080
#define BUFFER_SIZE 1024



void ReadHTMLFile (FILE* FileName) {


}

void Route (const char* pChars, int nLength) {

    
}


int main () {
    int nServerSocket;

    //AF_INIT is for ipv4 comminucation, SOCK_STREAM is for tcp communication
    if(nServerSocket = socket(AF_INET, SOCK_STREAM, 0) < 0) {
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


    if(bind(nServerSocket, (struct sockaddr *)&serveraddr, sizeof(serveraddr) < 0)) {
        perror("could not bind server to port");
        return -1;
    }

    if (listen(nServerSocket, 20) < 0) {
        perror("could not listen to socket and ip");
        return -1;
    }

    printf("Listening on port: %d\n, PORT");

    while(1) {
        sockaddr_in clientAddr;
        socklen_t clientLen = sizeof(clientAddr);
        int *nClientSocket = (int*)malloc(sizeof(int));
    
        if(*nClientSocket = accept(nServerSocket, (sockaddr *)&clientAddr, &clientLen) < 0) {
            perror("The client could not be accepted!");
            continue;
        }

        printf("Client connected!");


        
        close(*nClientSocket);
        printf("Client Disconnected!");
        free(nClientSocket);
    }

    close(nServerSocket);

    return 0;
}