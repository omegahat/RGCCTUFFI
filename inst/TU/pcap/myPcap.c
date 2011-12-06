#include <pcap.h>
void
R_size_stats(int *ans)
{
    *ans = sizeof(struct pcap_stat);
}
