#include <sys/types.h>
#include <sys/socket.h>
#include <netdb.h>

#include <stdio.h>

void
R_getaddrinfo(char **host)
{
    struct addrinfo *ptr, tmp;
    ptr = &tmp;
    getaddrinfo(host[0], (char *) NULL,  NULL, &ptr);
    fprintf(stderr, "%s\n", ptr->ai_canonname);
    fprintf(stderr, "%s\n", ptr->ai_addr->sa_data);

}


#include <sys/utsname.h>

#include <stddef.h>

typedef struct utsname utsname;
void
R_utsname_offsets()
{
    fprintf(stderr, "sysname = %d, nodename = %d, release = %d, version = %d, machine = %d\n",
	    (int) offsetof(utsname, sysname),
	    (int) offsetof(utsname, nodename),
	    (int) offsetof(utsname, release),
	    (int) offsetof(utsname, version),
	    (int) offsetof(utsname, machine));
}

void
R_utsname()
{
  struct utsname n;
  uname(&n);
    fprintf(stderr, "sysname = %s, nodename = %s, release = %s, version = %s, machine = %s\n",
	    n.sysname, n.nodename, n.release, n.version, n.machine);

}
