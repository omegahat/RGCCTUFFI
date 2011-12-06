const int *  // const  // last const is ignored
ok(int len, const int * in, int * out)
{
    int i;
    for(i = 0; i < len ; i++)
	out[i] = 2 * in[i];
    return in;
}

const int *  // const  // last const is ignored
bar(int len, const int * in, int * const out)
{
    int i;
    for(i = 0; i < len ; i++)
	out[i] = 2 * in[i];
    return in;
}
