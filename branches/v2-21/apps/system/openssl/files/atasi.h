/***************************************************************************
 * File: atasi.h
 *
 *
 * Version History:
 *	11-14-00	VL	Created for SSl project. 
 *
 * This header file defines the interface to the ATASI module for
 * exponentiation acceleration
 *
 *****************************************************************************/

#ifndef ATASI_H
#define ATASI_H

struct ItemStr {
	unsigned char *data;
	int len;
};
typedef struct ItemStr Item;

struct RSAPrivateKeyStr {
	void *reserved;
	Item version;
	Item modulus;
	Item publicExponent;
	Item privateExponent;
	Item prime[2];
	Item exponent[2];
	Item coefficient;
};
typedef struct RSAPrivateKeyStr RSAPrivateKey;

struct OtherPrimeInfoStr {
	Item prime;
	Item exponent;
	Item coefficient;
};

typedef struct OtherPrimeInfoStr OtherPrimeInfo;

struct RSAPrivateKeyStrMP {
	void *reserved;
	Item version;
	Item modulus;
	Item publicExponent;
	Item privateExponent;
	Item prime[2];
	Item exponent[2];
	Item coefficient;
	OtherPrimeInfo otherPrimeInfo[2];
};

typedef struct RSAPrivateKeyStrMP RSAPrivateKeyMP;

extern int
ASI_GetPerformanceStatistics(long,
			     int,
			     unsigned int *);

extern int 
ASI_GetHardwareConfig(long,
		      unsigned int *);

extern int 
ASI_RSAPrivateKeyOpFn(RSAPrivateKey *rsaKey,
		      unsigned char *output,
		      unsigned char *input,
		      unsigned int modulus_len);

extern int 
ASI_RSAPrivateKeyOpFnCRT(RSAPrivateKeyMP *rsaKey,
		      unsigned char *input,
			 unsigned int input_len,
		      unsigned char *output,
		      unsigned int *output_len);

extern int 
ASI_RSAPrivateKeyOpFnMP3(RSAPrivateKeyMP *rsaKey,
		      unsigned char *input,
			 unsigned int input_len,
		      unsigned char *output,
		      unsigned int *output_len);

extern int 
ASI_RSAPrivateKeyOpFnMP4(RSAPrivateKeyMP *rsaKey,
		      unsigned char *input,
			 unsigned int input_len,
		      unsigned char *output,
		      unsigned int *output_len);


extern int 
SWVersion(char *buffer);

#endif
