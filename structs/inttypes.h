#ifndef INTTYPES_H
#define INTTYPES_H

// #define _MACHINE__DEFAULTYPES_H
#ifndef _MACHINE__DEFAULTYPES_H
typedef unsigned char 	uint8_t;
typedef signed char 	int8_t;
typedef unsigned short 	uint16_t;
typedef signed short 	int16_t;
typedef unsigned int	uint32_t;
typedef signed int		int32_t;

#define NULL    ((void*)0)

#endif /* _MACHINE__DEFAULTYPES_H */

typedef unsigned char 	u8;
typedef signed char 	s8;
typedef unsigned short 	u16;
typedef signed short 	s16;
typedef unsigned int	u32;
typedef signed int		s32;

typedef char            bool_t;
#define TRUE            1
#define FALSE           0


#endif // INTTYPES_H
