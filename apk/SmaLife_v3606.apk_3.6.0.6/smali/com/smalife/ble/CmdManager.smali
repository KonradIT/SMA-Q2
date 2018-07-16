.class public Lcom/smalife/ble/CmdManager;
.super Ljava/lang/Object;
.source "CmdManager.java"


# static fields
.field static Ack:[B

.field public static cmd:[B

.field private static final crc16_table:[I

.field public static serialNum:B


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x1

    .line 15
    sput-byte v2, Lcom/smalife/ble/CmdManager;->serialNum:B

    .line 55
    new-array v0, v3, [B

    sput-object v0, Lcom/smalife/ble/CmdManager;->Ack:[B

    .line 93
    const/16 v0, 0x100

    new-array v0, v0, [I

    const v1, 0xc0c1

    aput v1, v0, v2

    const/4 v1, 0x2

    const v2, 0xc181

    aput v2, v0, v1

    const/4 v1, 0x3

    const/16 v2, 0x140

    aput v2, v0, v1

    const/4 v1, 0x4

    .line 94
    const v2, 0xc301

    aput v2, v0, v1

    const/4 v1, 0x5

    const/16 v2, 0x3c0

    aput v2, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0x280

    aput v2, v0, v1

    const/4 v1, 0x7

    const v2, 0xc241

    aput v2, v0, v1

    const v1, 0xc601

    aput v1, v0, v3

    const/16 v1, 0x9

    const/16 v2, 0x6c0

    aput v2, v0, v1

    const/16 v1, 0xa

    const/16 v2, 0x780

    aput v2, v0, v1

    const/16 v1, 0xb

    const v2, 0xc741

    aput v2, v0, v1

    const/16 v1, 0xc

    .line 95
    const/16 v2, 0x500

    aput v2, v0, v1

    const/16 v1, 0xd

    const v2, 0xc5c1

    aput v2, v0, v1

    const/16 v1, 0xe

    const v2, 0xc481

    aput v2, v0, v1

    const/16 v1, 0xf

    const/16 v2, 0x440

    aput v2, v0, v1

    const/16 v1, 0x10

    const v2, 0xcc01

    aput v2, v0, v1

    const/16 v1, 0x11

    const/16 v2, 0xcc0

    aput v2, v0, v1

    const/16 v1, 0x12

    const/16 v2, 0xd80

    aput v2, v0, v1

    const/16 v1, 0x13

    const v2, 0xcd41

    aput v2, v0, v1

    const/16 v1, 0x14

    .line 96
    const/16 v2, 0xf00

    aput v2, v0, v1

    const/16 v1, 0x15

    const v2, 0xcfc1

    aput v2, v0, v1

    const/16 v1, 0x16

    const v2, 0xce81

    aput v2, v0, v1

    const/16 v1, 0x17

    const/16 v2, 0xe40

    aput v2, v0, v1

    const/16 v1, 0x18

    const/16 v2, 0xa00

    aput v2, v0, v1

    const/16 v1, 0x19

    const v2, 0xcac1

    aput v2, v0, v1

    const/16 v1, 0x1a

    const v2, 0xcb81

    aput v2, v0, v1

    const/16 v1, 0x1b

    const/16 v2, 0xb40

    aput v2, v0, v1

    const/16 v1, 0x1c

    .line 97
    const v2, 0xc901

    aput v2, v0, v1

    const/16 v1, 0x1d

    const/16 v2, 0x9c0

    aput v2, v0, v1

    const/16 v1, 0x1e

    const/16 v2, 0x880

    aput v2, v0, v1

    const/16 v1, 0x1f

    const v2, 0xc841

    aput v2, v0, v1

    const/16 v1, 0x20

    const v2, 0xd801

    aput v2, v0, v1

    const/16 v1, 0x21

    const/16 v2, 0x18c0

    aput v2, v0, v1

    const/16 v1, 0x22

    const/16 v2, 0x1980

    aput v2, v0, v1

    const/16 v1, 0x23

    const v2, 0xd941

    aput v2, v0, v1

    const/16 v1, 0x24

    .line 98
    const/16 v2, 0x1b00

    aput v2, v0, v1

    const/16 v1, 0x25

    const v2, 0xdbc1

    aput v2, v0, v1

    const/16 v1, 0x26

    const v2, 0xda81

    aput v2, v0, v1

    const/16 v1, 0x27

    const/16 v2, 0x1a40

    aput v2, v0, v1

    const/16 v1, 0x28

    const/16 v2, 0x1e00

    aput v2, v0, v1

    const/16 v1, 0x29

    const v2, 0xdec1

    aput v2, v0, v1

    const/16 v1, 0x2a

    const v2, 0xdf81

    aput v2, v0, v1

    const/16 v1, 0x2b

    const/16 v2, 0x1f40

    aput v2, v0, v1

    const/16 v1, 0x2c

    .line 99
    const v2, 0xdd01

    aput v2, v0, v1

    const/16 v1, 0x2d

    const/16 v2, 0x1dc0

    aput v2, v0, v1

    const/16 v1, 0x2e

    const/16 v2, 0x1c80

    aput v2, v0, v1

    const/16 v1, 0x2f

    const v2, 0xdc41

    aput v2, v0, v1

    const/16 v1, 0x30

    const/16 v2, 0x1400

    aput v2, v0, v1

    const/16 v1, 0x31

    const v2, 0xd4c1

    aput v2, v0, v1

    const/16 v1, 0x32

    const v2, 0xd581

    aput v2, v0, v1

    const/16 v1, 0x33

    const/16 v2, 0x1540

    aput v2, v0, v1

    const/16 v1, 0x34

    .line 100
    const v2, 0xd701

    aput v2, v0, v1

    const/16 v1, 0x35

    const/16 v2, 0x17c0

    aput v2, v0, v1

    const/16 v1, 0x36

    const/16 v2, 0x1680

    aput v2, v0, v1

    const/16 v1, 0x37

    const v2, 0xd641

    aput v2, v0, v1

    const/16 v1, 0x38

    const v2, 0xd201

    aput v2, v0, v1

    const/16 v1, 0x39

    const/16 v2, 0x12c0

    aput v2, v0, v1

    const/16 v1, 0x3a

    const/16 v2, 0x1380

    aput v2, v0, v1

    const/16 v1, 0x3b

    const v2, 0xd341

    aput v2, v0, v1

    const/16 v1, 0x3c

    .line 101
    const/16 v2, 0x1100

    aput v2, v0, v1

    const/16 v1, 0x3d

    const v2, 0xd1c1

    aput v2, v0, v1

    const/16 v1, 0x3e

    const v2, 0xd081

    aput v2, v0, v1

    const/16 v1, 0x3f

    const/16 v2, 0x1040

    aput v2, v0, v1

    const/16 v1, 0x40

    const v2, 0xf001

    aput v2, v0, v1

    const/16 v1, 0x41

    const/16 v2, 0x30c0

    aput v2, v0, v1

    const/16 v1, 0x42

    const/16 v2, 0x3180

    aput v2, v0, v1

    const/16 v1, 0x43

    const v2, 0xf141

    aput v2, v0, v1

    const/16 v1, 0x44

    .line 102
    const/16 v2, 0x3300

    aput v2, v0, v1

    const/16 v1, 0x45

    const v2, 0xf3c1

    aput v2, v0, v1

    const/16 v1, 0x46

    const v2, 0xf281

    aput v2, v0, v1

    const/16 v1, 0x47

    const/16 v2, 0x3240

    aput v2, v0, v1

    const/16 v1, 0x48

    const/16 v2, 0x3600

    aput v2, v0, v1

    const/16 v1, 0x49

    const v2, 0xf6c1

    aput v2, v0, v1

    const/16 v1, 0x4a

    const v2, 0xf781

    aput v2, v0, v1

    const/16 v1, 0x4b

    const/16 v2, 0x3740

    aput v2, v0, v1

    const/16 v1, 0x4c

    .line 103
    const v2, 0xf501

    aput v2, v0, v1

    const/16 v1, 0x4d

    const/16 v2, 0x35c0

    aput v2, v0, v1

    const/16 v1, 0x4e

    const/16 v2, 0x3480

    aput v2, v0, v1

    const/16 v1, 0x4f

    const v2, 0xf441

    aput v2, v0, v1

    const/16 v1, 0x50

    const/16 v2, 0x3c00

    aput v2, v0, v1

    const/16 v1, 0x51

    const v2, 0xfcc1

    aput v2, v0, v1

    const/16 v1, 0x52

    const v2, 0xfd81

    aput v2, v0, v1

    const/16 v1, 0x53

    const/16 v2, 0x3d40

    aput v2, v0, v1

    const/16 v1, 0x54

    .line 104
    const v2, 0xff01

    aput v2, v0, v1

    const/16 v1, 0x55

    const/16 v2, 0x3fc0

    aput v2, v0, v1

    const/16 v1, 0x56

    const/16 v2, 0x3e80

    aput v2, v0, v1

    const/16 v1, 0x57

    const v2, 0xfe41

    aput v2, v0, v1

    const/16 v1, 0x58

    const v2, 0xfa01

    aput v2, v0, v1

    const/16 v1, 0x59

    const/16 v2, 0x3ac0

    aput v2, v0, v1

    const/16 v1, 0x5a

    const/16 v2, 0x3b80

    aput v2, v0, v1

    const/16 v1, 0x5b

    const v2, 0xfb41

    aput v2, v0, v1

    const/16 v1, 0x5c

    .line 105
    const/16 v2, 0x3900

    aput v2, v0, v1

    const/16 v1, 0x5d

    const v2, 0xf9c1

    aput v2, v0, v1

    const/16 v1, 0x5e

    const v2, 0xf881

    aput v2, v0, v1

    const/16 v1, 0x5f

    const/16 v2, 0x3840

    aput v2, v0, v1

    const/16 v1, 0x60

    const/16 v2, 0x2800

    aput v2, v0, v1

    const/16 v1, 0x61

    const v2, 0xe8c1

    aput v2, v0, v1

    const/16 v1, 0x62

    const v2, 0xe981

    aput v2, v0, v1

    const/16 v1, 0x63

    const/16 v2, 0x2940

    aput v2, v0, v1

    const/16 v1, 0x64

    .line 106
    const v2, 0xeb01

    aput v2, v0, v1

    const/16 v1, 0x65

    const/16 v2, 0x2bc0

    aput v2, v0, v1

    const/16 v1, 0x66

    const/16 v2, 0x2a80

    aput v2, v0, v1

    const/16 v1, 0x67

    const v2, 0xea41

    aput v2, v0, v1

    const/16 v1, 0x68

    const v2, 0xee01

    aput v2, v0, v1

    const/16 v1, 0x69

    const/16 v2, 0x2ec0

    aput v2, v0, v1

    const/16 v1, 0x6a

    const/16 v2, 0x2f80

    aput v2, v0, v1

    const/16 v1, 0x6b

    const v2, 0xef41

    aput v2, v0, v1

    const/16 v1, 0x6c

    .line 107
    const/16 v2, 0x2d00

    aput v2, v0, v1

    const/16 v1, 0x6d

    const v2, 0xedc1

    aput v2, v0, v1

    const/16 v1, 0x6e

    const v2, 0xec81

    aput v2, v0, v1

    const/16 v1, 0x6f

    const/16 v2, 0x2c40

    aput v2, v0, v1

    const/16 v1, 0x70

    const v2, 0xe401

    aput v2, v0, v1

    const/16 v1, 0x71

    const/16 v2, 0x24c0

    aput v2, v0, v1

    const/16 v1, 0x72

    const/16 v2, 0x2580

    aput v2, v0, v1

    const/16 v1, 0x73

    const v2, 0xe541

    aput v2, v0, v1

    const/16 v1, 0x74

    .line 108
    const/16 v2, 0x2700

    aput v2, v0, v1

    const/16 v1, 0x75

    const v2, 0xe7c1

    aput v2, v0, v1

    const/16 v1, 0x76

    const v2, 0xe681

    aput v2, v0, v1

    const/16 v1, 0x77

    const/16 v2, 0x2640

    aput v2, v0, v1

    const/16 v1, 0x78

    const/16 v2, 0x2200

    aput v2, v0, v1

    const/16 v1, 0x79

    const v2, 0xe2c1

    aput v2, v0, v1

    const/16 v1, 0x7a

    const v2, 0xe381

    aput v2, v0, v1

    const/16 v1, 0x7b

    const/16 v2, 0x2340

    aput v2, v0, v1

    const/16 v1, 0x7c

    .line 109
    const v2, 0xe101

    aput v2, v0, v1

    const/16 v1, 0x7d

    const/16 v2, 0x21c0

    aput v2, v0, v1

    const/16 v1, 0x7e

    const/16 v2, 0x2080

    aput v2, v0, v1

    const/16 v1, 0x7f

    const v2, 0xe041

    aput v2, v0, v1

    const/16 v1, 0x80

    const v2, 0xa001

    aput v2, v0, v1

    const/16 v1, 0x81

    const/16 v2, 0x60c0

    aput v2, v0, v1

    const/16 v1, 0x82

    const/16 v2, 0x6180

    aput v2, v0, v1

    const/16 v1, 0x83

    const v2, 0xa141

    aput v2, v0, v1

    const/16 v1, 0x84

    .line 110
    const/16 v2, 0x6300

    aput v2, v0, v1

    const/16 v1, 0x85

    const v2, 0xa3c1

    aput v2, v0, v1

    const/16 v1, 0x86

    const v2, 0xa281

    aput v2, v0, v1

    const/16 v1, 0x87

    const/16 v2, 0x6240

    aput v2, v0, v1

    const/16 v1, 0x88

    const/16 v2, 0x6600

    aput v2, v0, v1

    const/16 v1, 0x89

    const v2, 0xa6c1

    aput v2, v0, v1

    const/16 v1, 0x8a

    const v2, 0xa781

    aput v2, v0, v1

    const/16 v1, 0x8b

    const/16 v2, 0x6740

    aput v2, v0, v1

    const/16 v1, 0x8c

    .line 111
    const v2, 0xa501

    aput v2, v0, v1

    const/16 v1, 0x8d

    const/16 v2, 0x65c0

    aput v2, v0, v1

    const/16 v1, 0x8e

    const/16 v2, 0x6480

    aput v2, v0, v1

    const/16 v1, 0x8f

    const v2, 0xa441

    aput v2, v0, v1

    const/16 v1, 0x90

    const/16 v2, 0x6c00

    aput v2, v0, v1

    const/16 v1, 0x91

    const v2, 0xacc1

    aput v2, v0, v1

    const/16 v1, 0x92

    const v2, 0xad81

    aput v2, v0, v1

    const/16 v1, 0x93

    const/16 v2, 0x6d40

    aput v2, v0, v1

    const/16 v1, 0x94

    .line 112
    const v2, 0xaf01

    aput v2, v0, v1

    const/16 v1, 0x95

    const/16 v2, 0x6fc0

    aput v2, v0, v1

    const/16 v1, 0x96

    const/16 v2, 0x6e80

    aput v2, v0, v1

    const/16 v1, 0x97

    const v2, 0xae41

    aput v2, v0, v1

    const/16 v1, 0x98

    const v2, 0xaa01

    aput v2, v0, v1

    const/16 v1, 0x99

    const/16 v2, 0x6ac0

    aput v2, v0, v1

    const/16 v1, 0x9a

    const/16 v2, 0x6b80

    aput v2, v0, v1

    const/16 v1, 0x9b

    const v2, 0xab41

    aput v2, v0, v1

    const/16 v1, 0x9c

    .line 113
    const/16 v2, 0x6900

    aput v2, v0, v1

    const/16 v1, 0x9d

    const v2, 0xa9c1

    aput v2, v0, v1

    const/16 v1, 0x9e

    const v2, 0xa881

    aput v2, v0, v1

    const/16 v1, 0x9f

    const/16 v2, 0x6840

    aput v2, v0, v1

    const/16 v1, 0xa0

    const/16 v2, 0x7800

    aput v2, v0, v1

    const/16 v1, 0xa1

    const v2, 0xb8c1

    aput v2, v0, v1

    const/16 v1, 0xa2

    const v2, 0xb981

    aput v2, v0, v1

    const/16 v1, 0xa3

    const/16 v2, 0x7940

    aput v2, v0, v1

    const/16 v1, 0xa4

    .line 114
    const v2, 0xbb01

    aput v2, v0, v1

    const/16 v1, 0xa5

    const/16 v2, 0x7bc0

    aput v2, v0, v1

    const/16 v1, 0xa6

    const/16 v2, 0x7a80

    aput v2, v0, v1

    const/16 v1, 0xa7

    const v2, 0xba41

    aput v2, v0, v1

    const/16 v1, 0xa8

    const v2, 0xbe01

    aput v2, v0, v1

    const/16 v1, 0xa9

    const/16 v2, 0x7ec0

    aput v2, v0, v1

    const/16 v1, 0xaa

    const/16 v2, 0x7f80

    aput v2, v0, v1

    const/16 v1, 0xab

    const v2, 0xbf41

    aput v2, v0, v1

    const/16 v1, 0xac

    .line 115
    const/16 v2, 0x7d00

    aput v2, v0, v1

    const/16 v1, 0xad

    const v2, 0xbdc1

    aput v2, v0, v1

    const/16 v1, 0xae

    const v2, 0xbc81

    aput v2, v0, v1

    const/16 v1, 0xaf

    const/16 v2, 0x7c40

    aput v2, v0, v1

    const/16 v1, 0xb0

    const v2, 0xb401

    aput v2, v0, v1

    const/16 v1, 0xb1

    const/16 v2, 0x74c0

    aput v2, v0, v1

    const/16 v1, 0xb2

    const/16 v2, 0x7580

    aput v2, v0, v1

    const/16 v1, 0xb3

    const v2, 0xb541

    aput v2, v0, v1

    const/16 v1, 0xb4

    .line 116
    const/16 v2, 0x7700

    aput v2, v0, v1

    const/16 v1, 0xb5

    const v2, 0xb7c1

    aput v2, v0, v1

    const/16 v1, 0xb6

    const v2, 0xb681

    aput v2, v0, v1

    const/16 v1, 0xb7

    const/16 v2, 0x7640

    aput v2, v0, v1

    const/16 v1, 0xb8

    const/16 v2, 0x7200

    aput v2, v0, v1

    const/16 v1, 0xb9

    const v2, 0xb2c1

    aput v2, v0, v1

    const/16 v1, 0xba

    const v2, 0xb381

    aput v2, v0, v1

    const/16 v1, 0xbb

    const/16 v2, 0x7340

    aput v2, v0, v1

    const/16 v1, 0xbc

    .line 117
    const v2, 0xb101

    aput v2, v0, v1

    const/16 v1, 0xbd

    const/16 v2, 0x71c0

    aput v2, v0, v1

    const/16 v1, 0xbe

    const/16 v2, 0x7080

    aput v2, v0, v1

    const/16 v1, 0xbf

    const v2, 0xb041

    aput v2, v0, v1

    const/16 v1, 0xc0

    const/16 v2, 0x5000

    aput v2, v0, v1

    const/16 v1, 0xc1

    const v2, 0x90c1

    aput v2, v0, v1

    const/16 v1, 0xc2

    const v2, 0x9181

    aput v2, v0, v1

    const/16 v1, 0xc3

    const/16 v2, 0x5140

    aput v2, v0, v1

    const/16 v1, 0xc4

    .line 118
    const v2, 0x9301

    aput v2, v0, v1

    const/16 v1, 0xc5

    const/16 v2, 0x53c0

    aput v2, v0, v1

    const/16 v1, 0xc6

    const/16 v2, 0x5280

    aput v2, v0, v1

    const/16 v1, 0xc7

    const v2, 0x9241

    aput v2, v0, v1

    const/16 v1, 0xc8

    const v2, 0x9601

    aput v2, v0, v1

    const/16 v1, 0xc9

    const/16 v2, 0x56c0

    aput v2, v0, v1

    const/16 v1, 0xca

    const/16 v2, 0x5780

    aput v2, v0, v1

    const/16 v1, 0xcb

    const v2, 0x9741

    aput v2, v0, v1

    const/16 v1, 0xcc

    .line 119
    const/16 v2, 0x5500

    aput v2, v0, v1

    const/16 v1, 0xcd

    const v2, 0x95c1

    aput v2, v0, v1

    const/16 v1, 0xce

    const v2, 0x9481

    aput v2, v0, v1

    const/16 v1, 0xcf

    const/16 v2, 0x5440

    aput v2, v0, v1

    const/16 v1, 0xd0

    const v2, 0x9c01

    aput v2, v0, v1

    const/16 v1, 0xd1

    const/16 v2, 0x5cc0

    aput v2, v0, v1

    const/16 v1, 0xd2

    const/16 v2, 0x5d80

    aput v2, v0, v1

    const/16 v1, 0xd3

    const v2, 0x9d41

    aput v2, v0, v1

    const/16 v1, 0xd4

    .line 120
    const/16 v2, 0x5f00

    aput v2, v0, v1

    const/16 v1, 0xd5

    const v2, 0x9fc1

    aput v2, v0, v1

    const/16 v1, 0xd6

    const v2, 0x9e81

    aput v2, v0, v1

    const/16 v1, 0xd7

    const/16 v2, 0x5e40

    aput v2, v0, v1

    const/16 v1, 0xd8

    const/16 v2, 0x5a00

    aput v2, v0, v1

    const/16 v1, 0xd9

    const v2, 0x9ac1

    aput v2, v0, v1

    const/16 v1, 0xda

    const v2, 0x9b81

    aput v2, v0, v1

    const/16 v1, 0xdb

    const/16 v2, 0x5b40

    aput v2, v0, v1

    const/16 v1, 0xdc

    .line 121
    const v2, 0x9901

    aput v2, v0, v1

    const/16 v1, 0xdd

    const/16 v2, 0x59c0

    aput v2, v0, v1

    const/16 v1, 0xde

    const/16 v2, 0x5880

    aput v2, v0, v1

    const/16 v1, 0xdf

    const v2, 0x9841

    aput v2, v0, v1

    const/16 v1, 0xe0

    const v2, 0x8801

    aput v2, v0, v1

    const/16 v1, 0xe1

    const/16 v2, 0x48c0

    aput v2, v0, v1

    const/16 v1, 0xe2

    const/16 v2, 0x4980

    aput v2, v0, v1

    const/16 v1, 0xe3

    const v2, 0x8941

    aput v2, v0, v1

    const/16 v1, 0xe4

    .line 122
    const/16 v2, 0x4b00

    aput v2, v0, v1

    const/16 v1, 0xe5

    const v2, 0x8bc1

    aput v2, v0, v1

    const/16 v1, 0xe6

    const v2, 0x8a81

    aput v2, v0, v1

    const/16 v1, 0xe7

    const/16 v2, 0x4a40

    aput v2, v0, v1

    const/16 v1, 0xe8

    const/16 v2, 0x4e00

    aput v2, v0, v1

    const/16 v1, 0xe9

    const v2, 0x8ec1

    aput v2, v0, v1

    const/16 v1, 0xea

    const v2, 0x8f81

    aput v2, v0, v1

    const/16 v1, 0xeb

    const/16 v2, 0x4f40

    aput v2, v0, v1

    const/16 v1, 0xec

    .line 123
    const v2, 0x8d01

    aput v2, v0, v1

    const/16 v1, 0xed

    const/16 v2, 0x4dc0

    aput v2, v0, v1

    const/16 v1, 0xee

    const/16 v2, 0x4c80

    aput v2, v0, v1

    const/16 v1, 0xef

    const v2, 0x8c41

    aput v2, v0, v1

    const/16 v1, 0xf0

    const/16 v2, 0x4400

    aput v2, v0, v1

    const/16 v1, 0xf1

    const v2, 0x84c1

    aput v2, v0, v1

    const/16 v1, 0xf2

    const v2, 0x8581

    aput v2, v0, v1

    const/16 v1, 0xf3

    const/16 v2, 0x4540

    aput v2, v0, v1

    const/16 v1, 0xf4

    .line 124
    const v2, 0x8701

    aput v2, v0, v1

    const/16 v1, 0xf5

    const/16 v2, 0x47c0

    aput v2, v0, v1

    const/16 v1, 0xf6

    const/16 v2, 0x4680

    aput v2, v0, v1

    const/16 v1, 0xf7

    const v2, 0x8641

    aput v2, v0, v1

    const/16 v1, 0xf8

    const v2, 0x8201

    aput v2, v0, v1

    const/16 v1, 0xf9

    const/16 v2, 0x42c0

    aput v2, v0, v1

    const/16 v1, 0xfa

    const/16 v2, 0x4380

    aput v2, v0, v1

    const/16 v1, 0xfb

    const v2, 0x8341

    aput v2, v0, v1

    const/16 v1, 0xfc

    .line 125
    const/16 v2, 0x4100

    aput v2, v0, v1

    const/16 v1, 0xfd

    const v2, 0x81c1

    aput v2, v0, v1

    const/16 v1, 0xfe

    const v2, 0x8081

    aput v2, v0, v1

    const/16 v1, 0xff

    const/16 v2, 0x4040

    aput v2, v0, v1

    .line 93
    sput-object v0, Lcom/smalife/ble/CmdManager;->crc16_table:[I

    .line 125
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static GetCmdBytes(BB[B)[B
    .locals 5
    .param p0, "cmdCode"    # B
    .param p1, "key"    # B
    .param p2, "cmd_bytes"    # [B

    .prologue
    const/4 v4, 0x0

    .line 27
    if-nez p2, :cond_0

    .line 28
    const/4 v1, 0x0

    .line 52
    :goto_0
    return-object v1

    .line 30
    :cond_0
    array-length v0, p2

    .line 31
    .local v0, "len":I
    add-int/lit8 v1, v0, 0xd

    new-array v1, v1, [B

    sput-object v1, Lcom/smalife/ble/CmdManager;->cmd:[B

    .line 32
    sget-object v1, Lcom/smalife/ble/CmdManager;->cmd:[B

    const/16 v2, -0x55

    aput-byte v2, v1, v4

    .line 33
    sget-object v1, Lcom/smalife/ble/CmdManager;->cmd:[B

    const/4 v2, 0x1

    aput-byte v4, v1, v2

    .line 35
    sget-object v1, Lcom/smalife/ble/CmdManager;->cmd:[B

    const/4 v2, 0x2

    add-int/lit8 v3, v0, 0x5

    shr-int/lit8 v3, v3, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 36
    sget-object v1, Lcom/smalife/ble/CmdManager;->cmd:[B

    const/4 v2, 0x3

    add-int/lit8 v3, v0, 0x5

    shr-int/lit8 v3, v3, 0x0

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 38
    sget-object v1, Lcom/smalife/ble/CmdManager;->cmd:[B

    const/4 v2, 0x6

    sget-byte v3, Lcom/smalife/ble/CmdManager;->serialNum:B

    shr-int/lit8 v3, v3, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 39
    sget-object v1, Lcom/smalife/ble/CmdManager;->cmd:[B

    const/4 v2, 0x7

    sget-byte v3, Lcom/smalife/ble/CmdManager;->serialNum:B

    shr-int/lit8 v3, v3, 0x0

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 41
    sget-object v1, Lcom/smalife/ble/CmdManager;->cmd:[B

    const/16 v2, 0x8

    aput-byte p0, v1, v2

    .line 43
    sget-object v1, Lcom/smalife/ble/CmdManager;->cmd:[B

    const/16 v2, 0x9

    aput-byte v4, v1, v2

    .line 45
    sget-object v1, Lcom/smalife/ble/CmdManager;->cmd:[B

    const/16 v2, 0xa

    aput-byte p1, v1, v2

    .line 47
    sget-object v1, Lcom/smalife/ble/CmdManager;->cmd:[B

    const/16 v2, 0xb

    shr-int/lit8 v3, v0, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 48
    sget-object v1, Lcom/smalife/ble/CmdManager;->cmd:[B

    const/16 v2, 0xc

    shr-int/lit8 v3, v0, 0x0

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 49
    invoke-static {p2, v0}, Lcom/smalife/ble/CmdManager;->copyValue([BI)[B

    move-result-object v1

    sput-object v1, Lcom/smalife/ble/CmdManager;->cmd:[B

    .line 50
    sget-object v1, Lcom/smalife/ble/CmdManager;->cmd:[B

    invoke-static {v1}, Lcom/smalife/ble/CmdManager;->cmdCRC([B)[B

    move-result-object v1

    sput-object v1, Lcom/smalife/ble/CmdManager;->cmd:[B

    .line 51
    sget-byte v1, Lcom/smalife/ble/CmdManager;->serialNum:B

    add-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    sput-byte v1, Lcom/smalife/ble/CmdManager;->serialNum:B

    .line 52
    sget-object v1, Lcom/smalife/ble/CmdManager;->cmd:[B

    goto/16 :goto_0
.end method

.method private static bd_crc16(I[BI)I
    .locals 4
    .param p0, "crc"    # I
    .param p1, "buffer"    # [B
    .param p2, "len"    # I

    .prologue
    .line 132
    const/16 v1, 0x8

    .local v1, "n":I
    move v2, v1

    .end local v1    # "n":I
    .local v2, "n":I
    move v0, p2

    .line 133
    .end local p2    # "len":I
    .local v0, "len":I
    :goto_0
    add-int/lit8 p2, v0, -0x1

    .end local v0    # "len":I
    .restart local p2    # "len":I
    if-nez v0, :cond_0

    .line 135
    return p0

    .line 134
    :cond_0
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "n":I
    .restart local v1    # "n":I
    aget-byte v3, p1, v2

    invoke-static {p0, v3}, Lcom/smalife/ble/CmdManager;->crc16_byte(IB)I

    move-result p0

    move v2, v1

    .end local v1    # "n":I
    .restart local v2    # "n":I
    move v0, p2

    .end local p2    # "len":I
    .restart local v0    # "len":I
    goto :goto_0
.end method

.method public static cmdCRC([B)[B
    .locals 4
    .param p0, "res"    # [B

    .prologue
    .line 86
    const/4 v1, 0x0

    const/4 v2, 0x2

    aget-byte v2, p0, v2

    shl-int/lit8 v2, v2, 0x8

    const/4 v3, 0x3

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v2, v3

    invoke-static {v1, p0, v2}, Lcom/smalife/ble/CmdManager;->bd_crc16(I[BI)I

    move-result v0

    .line 87
    .local v0, "crc16":I
    const/4 v1, 0x4

    shr-int/lit8 v2, v0, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    .line 88
    const/4 v1, 0x5

    shr-int/lit8 v2, v0, 0x0

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    .line 89
    return-object p0
.end method

.method public static copyValue([BI)[B
    .locals 4
    .param p0, "v"    # [B
    .param p1, "len"    # I

    .prologue
    .line 76
    array-length v1, p0

    if-gt v1, p1, :cond_0

    .line 77
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-lt v0, v1, :cond_1

    .line 81
    .end local v0    # "i":I
    :cond_0
    sget-object v1, Lcom/smalife/ble/CmdManager;->cmd:[B

    return-object v1

    .line 78
    .restart local v0    # "i":I
    :cond_1
    sget-object v1, Lcom/smalife/ble/CmdManager;->cmd:[B

    add-int/lit8 v2, v0, 0xd

    aget-byte v3, p0, v0

    aput-byte v3, v1, v2

    .line 77
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static crc16_byte(IB)I
    .locals 3
    .param p0, "crc"    # I
    .param p1, "data"    # B

    .prologue
    .line 128
    shr-int/lit8 v0, p0, 0x8

    sget-object v1, Lcom/smalife/ble/CmdManager;->crc16_table:[I

    xor-int v2, p0, p1

    and-int/lit16 v2, v2, 0xff

    aget v1, v1, v2

    xor-int/2addr v0, v1

    return v0
.end method

.method public static getSendACK([B)[B
    .locals 5
    .param p0, "rt"    # [B

    .prologue
    const/4 v4, 0x7

    const/4 v3, 0x6

    .line 63
    sget-object v0, Lcom/smalife/ble/CmdManager;->Ack:[B

    const/4 v1, 0x0

    const/16 v2, -0x55

    aput-byte v2, v0, v1

    .line 64
    sget-object v0, Lcom/smalife/ble/CmdManager;->Ack:[B

    const/4 v1, 0x1

    const/16 v2, 0x10

    aput-byte v2, v0, v1

    .line 65
    sget-object v0, Lcom/smalife/ble/CmdManager;->Ack:[B

    sget-object v1, Lcom/smalife/ble/CmdManager;->cmd:[B

    aget-byte v1, v1, v3

    aput-byte v1, v0, v3

    .line 66
    sget-object v0, Lcom/smalife/ble/CmdManager;->Ack:[B

    sget-object v1, Lcom/smalife/ble/CmdManager;->cmd:[B

    aget-byte v1, v1, v4

    aput-byte v1, v0, v4

    .line 67
    sget-object v0, Lcom/smalife/ble/CmdManager;->Ack:[B

    return-object v0
.end method
