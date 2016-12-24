#ifndef  __XTEA_H_ZDFjMmNkMDUyYzIx
#define  __XTEA_H_ZDFjMmNkMDUyYzIx

class XTEA
{
	static const int BLOCK_SIZE;
	static const char VERSION;
        uint32_t key[4];
	void xtea_encipher(unsigned int num_rounds, uint32_t v[2]);
	void xtea_decipher(unsigned int num_rounds, uint32_t v[2]);
   public:
	XTEA();
	void FileCrypt(string filename,bool encrypt);
        void StringCrypt(char *inout,int len,bool encrypt);
	void updateKey(uint32_t *newkey);
};

const int XTEA::BLOCK_SIZE=8;
const char XTEA::VERSION=1;


#endif
