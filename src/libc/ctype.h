#ifndef __OPEN__CTYPE_H
#define __OPEN__CTYPE_H 1
/**http://www.cplusplus.com/reference/cctype/**/

#define C_NUL 0x00
#define C_TAB 0x09
#define C_F 0x0A
#define C_V 0x0B
#define C_NL  0x0C
#define C_RL  0x0D
#define C_LASTCONTROLCODE 0x1F
#define C_SPACE 0x20
#define C_PUNCT1_START 0x21
#define C_PUNCT1_END 0x2F
#define C_DIGIT_START 0x30
#define C_DIGIT_END 0x39
#define C_PUNCT2_START 0x3a
#define C_PUNCT2_END 0x40
#define C_ALPHA_UPPER_START 0x41
#define C_ALPHA_UPPER_HEX_END 0x46
#define C_ALPHA_UPPER_END   0x5A
#define C_PUNCT3_START 0x5B
#define C_PUNCT3_END 0x60
#define C_ALPHA_LOWER_START 0x61
#define C_ALPHA_LOWER_HEX_END 0x66
#define C_ALPHA_LOWER_END 0x7A
#define C_PUNCT4_START 0x7B
#define C_PUNCT4_END 0x7E
#define C_DEL 0x7F

/**http://www.cplusplus.com/reference/cctype/isalnum/**/
int isalnum(int);
/**http://www.cplusplus.com/reference/cctype/isalpha/**/
int isalpha(int);
/**http://www.cplusplus.com/reference/cctype/isblank/**/
int isblank(int);
/**http://www.cplusplus.com/reference/cctype/iscntrl/**/
int iscntrl(int);
/**http://www.cplusplus.com/reference/cctype/isdigit/**/    
int isdigit(int);
/**http://www.cplusplus.com/reference/cctype/islower/**/
int islower(int);
/**http://www.cplusplus.com/reference/cctype/isprint/**/
int isprint(int);
/**http://www.cplusplus.com/reference/cctype/isspace/**/
int isspace(int);
/**http://www.cplusplus.com/reference/cctype/isupper/**/
int isupper(int);
/**http://www.cplusplus.com/reference/cctype/isdigit/**/
int isxdigit(int);
#endif