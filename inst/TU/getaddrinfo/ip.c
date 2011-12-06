#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include <sys/ioctl.h> 
#include <sys/socket.h>
#include <sys/types.h>
#include <netinet/in.h>

#include <arpa/inet.h>
#include <net/if.h>

#include <unistd.h>


#define inaddrr(x) (*(struct in_addr *) &ifr->x[sizeof sa.sin_port])
#define IFRSIZE   ((int)(size * sizeof (struct ifreq)))

typedef char ip_address[15+1];

static int
get_addr(char * ifname, ip_address theip) {

    struct ifreq* ifr;
    struct ifreq ifrr;
    struct sockaddr_in sa;
    struct sockaddr ifaddr;
    int sockfd;

    if((sockfd = socket(AF_INET,SOCK_DGRAM,IPPROTO_UDP))==-1)
    {
	printf ("Socket for DGRAM cannot be created\n");
	return -1;
    }

    ifr = &ifrr;

    ifrr.ifr_addr.sa_family = AF_INET;

    strncpy(ifrr.ifr_name, ifname, sizeof(ifrr.ifr_name));

    if (ioctl(sockfd, SIOCGIFADDR, ifr) < 0) {
	printf("No %s interface.\n", ifname);
	return -1;
    }

    ifaddr = ifrr.ifr_addr;
    strncpy(theip,inet_ntoa(inaddrr(ifr_addr.sa_data)),sizeof(ip_address));

    return 0;

}

int main(int argc, char *argv[]){
    ip_address theip;

    char *ip = "en0";
    if(argc > 1)
	ip = argv[1];
    

    if (get_addr(ip, theip)==0)
	printf("The ip for eth0 is:%s\n", theip);
    else  
	printf("Couldn't get ip adress for eth0\n");
    return 0;
}
