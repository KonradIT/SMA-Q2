.class public Lcom/smalife/ota/OtaHelper;
.super Ljava/lang/Object;
.source "OtaHelper.java"


# static fields
.field public static final crc16_table:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0xa1

    .line 5
    const/16 v0, 0x100

    new-array v0, v0, [I

    const/4 v1, 0x1

    .line 6
    const/16 v2, 0x1021

    aput v2, v0, v1

    const/4 v1, 0x2

    const/16 v2, 0x2042

    aput v2, v0, v1

    const/4 v1, 0x3

    const/16 v2, 0x3063

    aput v2, v0, v1

    const/4 v1, 0x4

    const/16 v2, 0x4084

    aput v2, v0, v1

    const/4 v1, 0x5

    const/16 v2, 0x50a5

    aput v2, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0x60c6

    aput v2, v0, v1

    const/4 v1, 0x7

    const/16 v2, 0x70e7

    aput v2, v0, v1

    const/16 v1, 0x8

    .line 7
    const v2, 0x8108

    aput v2, v0, v1

    const/16 v1, 0x9

    const v2, 0x9129

    aput v2, v0, v1

    const/16 v1, 0xa

    const v2, 0xa14a

    aput v2, v0, v1

    const/16 v1, 0xb

    const v2, 0xb16b

    aput v2, v0, v1

    const/16 v1, 0xc

    const v2, 0xc18c

    aput v2, v0, v1

    const/16 v1, 0xd

    const v2, 0xd1ad

    aput v2, v0, v1

    const/16 v1, 0xe

    const v2, 0xe1ce

    aput v2, v0, v1

    const/16 v1, 0xf

    const v2, 0xf1ef

    aput v2, v0, v1

    const/16 v1, 0x10

    .line 8
    const/16 v2, 0x1231

    aput v2, v0, v1

    const/16 v1, 0x11

    const/16 v2, 0x210

    aput v2, v0, v1

    const/16 v1, 0x12

    const/16 v2, 0x3273

    aput v2, v0, v1

    const/16 v1, 0x13

    const/16 v2, 0x2252

    aput v2, v0, v1

    const/16 v1, 0x14

    const/16 v2, 0x52b5

    aput v2, v0, v1

    const/16 v1, 0x15

    const/16 v2, 0x4294

    aput v2, v0, v1

    const/16 v1, 0x16

    const/16 v2, 0x72f7

    aput v2, v0, v1

    const/16 v1, 0x17

    const/16 v2, 0x62d6

    aput v2, v0, v1

    const/16 v1, 0x18

    .line 9
    const v2, 0x9339

    aput v2, v0, v1

    const/16 v1, 0x19

    const v2, 0x8318

    aput v2, v0, v1

    const/16 v1, 0x1a

    const v2, 0xb37b

    aput v2, v0, v1

    const/16 v1, 0x1b

    const v2, 0xa35a

    aput v2, v0, v1

    const/16 v1, 0x1c

    const v2, 0xd3bd

    aput v2, v0, v1

    const/16 v1, 0x1d

    const v2, 0xc39c

    aput v2, v0, v1

    const/16 v1, 0x1e

    const v2, 0xf3ff

    aput v2, v0, v1

    const/16 v1, 0x1f

    const v2, 0xe3de

    aput v2, v0, v1

    const/16 v1, 0x20

    .line 10
    const/16 v2, 0x2462

    aput v2, v0, v1

    const/16 v1, 0x21

    const/16 v2, 0x3443

    aput v2, v0, v1

    const/16 v1, 0x22

    const/16 v2, 0x420

    aput v2, v0, v1

    const/16 v1, 0x23

    const/16 v2, 0x1401

    aput v2, v0, v1

    const/16 v1, 0x24

    const/16 v2, 0x64e6

    aput v2, v0, v1

    const/16 v1, 0x25

    const/16 v2, 0x74c7

    aput v2, v0, v1

    const/16 v1, 0x26

    const/16 v2, 0x44a4

    aput v2, v0, v1

    const/16 v1, 0x27

    const/16 v2, 0x5485

    aput v2, v0, v1

    const/16 v1, 0x28

    .line 11
    const v2, 0xa56a

    aput v2, v0, v1

    const/16 v1, 0x29

    const v2, 0xb54b

    aput v2, v0, v1

    const/16 v1, 0x2a

    const v2, 0x8528

    aput v2, v0, v1

    const/16 v1, 0x2b

    const v2, 0x9509

    aput v2, v0, v1

    const/16 v1, 0x2c

    const v2, 0xe5ee

    aput v2, v0, v1

    const/16 v1, 0x2d

    const v2, 0xf5cf

    aput v2, v0, v1

    const/16 v1, 0x2e

    const v2, 0xc5ac

    aput v2, v0, v1

    const/16 v1, 0x2f

    const v2, 0xd58d

    aput v2, v0, v1

    const/16 v1, 0x30

    .line 12
    const/16 v2, 0x3653

    aput v2, v0, v1

    const/16 v1, 0x31

    const/16 v2, 0x2672

    aput v2, v0, v1

    const/16 v1, 0x32

    const/16 v2, 0x1611

    aput v2, v0, v1

    const/16 v1, 0x33

    const/16 v2, 0x630

    aput v2, v0, v1

    const/16 v1, 0x34

    const/16 v2, 0x76d7

    aput v2, v0, v1

    const/16 v1, 0x35

    const/16 v2, 0x66f6

    aput v2, v0, v1

    const/16 v1, 0x36

    const/16 v2, 0x5695

    aput v2, v0, v1

    const/16 v1, 0x37

    const/16 v2, 0x46b4

    aput v2, v0, v1

    const/16 v1, 0x38

    .line 13
    const v2, 0xb75b

    aput v2, v0, v1

    const/16 v1, 0x39

    const v2, 0xa77a

    aput v2, v0, v1

    const/16 v1, 0x3a

    const v2, 0x9719

    aput v2, v0, v1

    const/16 v1, 0x3b

    const v2, 0x8738

    aput v2, v0, v1

    const/16 v1, 0x3c

    const v2, 0xf7df

    aput v2, v0, v1

    const/16 v1, 0x3d

    const v2, 0xe7fe

    aput v2, v0, v1

    const/16 v1, 0x3e

    const v2, 0xd79d

    aput v2, v0, v1

    const/16 v1, 0x3f

    const v2, 0xc7bc

    aput v2, v0, v1

    const/16 v1, 0x40

    .line 14
    const/16 v2, 0x48c4

    aput v2, v0, v1

    const/16 v1, 0x41

    const/16 v2, 0x58e5

    aput v2, v0, v1

    const/16 v1, 0x42

    const/16 v2, 0x6886

    aput v2, v0, v1

    const/16 v1, 0x43

    const/16 v2, 0x78a7

    aput v2, v0, v1

    const/16 v1, 0x44

    const/16 v2, 0x840

    aput v2, v0, v1

    const/16 v1, 0x45

    const/16 v2, 0x1861

    aput v2, v0, v1

    const/16 v1, 0x46

    const/16 v2, 0x2802

    aput v2, v0, v1

    const/16 v1, 0x47

    const/16 v2, 0x3823

    aput v2, v0, v1

    const/16 v1, 0x48

    .line 15
    const v2, 0xc9cc

    aput v2, v0, v1

    const/16 v1, 0x49

    const v2, 0xd9ed

    aput v2, v0, v1

    const/16 v1, 0x4a

    const v2, 0xe98e

    aput v2, v0, v1

    const/16 v1, 0x4b

    const v2, 0xf9af

    aput v2, v0, v1

    const/16 v1, 0x4c

    const v2, 0x8948

    aput v2, v0, v1

    const/16 v1, 0x4d

    const v2, 0x9969

    aput v2, v0, v1

    const/16 v1, 0x4e

    const v2, 0xa90a

    aput v2, v0, v1

    const/16 v1, 0x4f

    const v2, 0xb92b

    aput v2, v0, v1

    const/16 v1, 0x50

    .line 16
    const/16 v2, 0x5af5

    aput v2, v0, v1

    const/16 v1, 0x51

    const/16 v2, 0x4ad4

    aput v2, v0, v1

    const/16 v1, 0x52

    const/16 v2, 0x7ab7

    aput v2, v0, v1

    const/16 v1, 0x53

    const/16 v2, 0x6a96

    aput v2, v0, v1

    const/16 v1, 0x54

    const/16 v2, 0x1a71

    aput v2, v0, v1

    const/16 v1, 0x55

    const/16 v2, 0xa50

    aput v2, v0, v1

    const/16 v1, 0x56

    const/16 v2, 0x3a33

    aput v2, v0, v1

    const/16 v1, 0x57

    const/16 v2, 0x2a12

    aput v2, v0, v1

    const/16 v1, 0x58

    .line 17
    const v2, 0xdbfd

    aput v2, v0, v1

    const/16 v1, 0x59

    const v2, 0xcbdc

    aput v2, v0, v1

    const/16 v1, 0x5a

    const v2, 0xfbbf

    aput v2, v0, v1

    const/16 v1, 0x5b

    const v2, 0xeb9e

    aput v2, v0, v1

    const/16 v1, 0x5c

    const v2, 0x9b79

    aput v2, v0, v1

    const/16 v1, 0x5d

    const v2, 0x8b58

    aput v2, v0, v1

    const/16 v1, 0x5e

    const v2, 0xbb3b

    aput v2, v0, v1

    const/16 v1, 0x5f

    const v2, 0xab1a

    aput v2, v0, v1

    const/16 v1, 0x60

    .line 18
    const/16 v2, 0x6ca6

    aput v2, v0, v1

    const/16 v1, 0x61

    const/16 v2, 0x7c87

    aput v2, v0, v1

    const/16 v1, 0x62

    const/16 v2, 0x4ce4

    aput v2, v0, v1

    const/16 v1, 0x63

    const/16 v2, 0x5cc5

    aput v2, v0, v1

    const/16 v1, 0x64

    const/16 v2, 0x2c22

    aput v2, v0, v1

    const/16 v1, 0x65

    const/16 v2, 0x3c03

    aput v2, v0, v1

    const/16 v1, 0x66

    const/16 v2, 0xc60

    aput v2, v0, v1

    const/16 v1, 0x67

    const/16 v2, 0x1c41

    aput v2, v0, v1

    const/16 v1, 0x68

    .line 19
    const v2, 0xedae

    aput v2, v0, v1

    const/16 v1, 0x69

    const v2, 0xfd8f

    aput v2, v0, v1

    const/16 v1, 0x6a

    const v2, 0xcdec

    aput v2, v0, v1

    const/16 v1, 0x6b

    const v2, 0xddcd

    aput v2, v0, v1

    const/16 v1, 0x6c

    const v2, 0xad2a

    aput v2, v0, v1

    const/16 v1, 0x6d

    const v2, 0xbd0b

    aput v2, v0, v1

    const/16 v1, 0x6e

    const v2, 0x8d68

    aput v2, v0, v1

    const/16 v1, 0x6f

    const v2, 0x9d49

    aput v2, v0, v1

    const/16 v1, 0x70

    .line 20
    const/16 v2, 0x7e97

    aput v2, v0, v1

    const/16 v1, 0x71

    const/16 v2, 0x6eb6

    aput v2, v0, v1

    const/16 v1, 0x72

    const/16 v2, 0x5ed5

    aput v2, v0, v1

    const/16 v1, 0x73

    const/16 v2, 0x4ef4

    aput v2, v0, v1

    const/16 v1, 0x74

    const/16 v2, 0x3e13

    aput v2, v0, v1

    const/16 v1, 0x75

    const/16 v2, 0x2e32

    aput v2, v0, v1

    const/16 v1, 0x76

    const/16 v2, 0x1e51

    aput v2, v0, v1

    const/16 v1, 0x77

    const/16 v2, 0xe70

    aput v2, v0, v1

    const/16 v1, 0x78

    .line 21
    const v2, 0xff9f

    aput v2, v0, v1

    const/16 v1, 0x79

    const v2, 0xefbe

    aput v2, v0, v1

    const/16 v1, 0x7a

    const v2, 0xdfdd

    aput v2, v0, v1

    const/16 v1, 0x7b

    const v2, 0xcffc

    aput v2, v0, v1

    const/16 v1, 0x7c

    const v2, 0xbf1b

    aput v2, v0, v1

    const/16 v1, 0x7d

    const v2, 0xaf3a

    aput v2, v0, v1

    const/16 v1, 0x7e

    const v2, 0x9f59

    aput v2, v0, v1

    const/16 v1, 0x7f

    const v2, 0x8f78

    aput v2, v0, v1

    const/16 v1, 0x80

    .line 22
    const v2, 0x9188

    aput v2, v0, v1

    const/16 v1, 0x81

    const v2, 0x81a9

    aput v2, v0, v1

    const/16 v1, 0x82

    const v2, 0xb1ca

    aput v2, v0, v1

    const/16 v1, 0x83

    const v2, 0xa1eb

    aput v2, v0, v1

    const/16 v1, 0x84

    const v2, 0xd10c

    aput v2, v0, v1

    const/16 v1, 0x85

    const v2, 0xc12d

    aput v2, v0, v1

    const/16 v1, 0x86

    const v2, 0xf14e

    aput v2, v0, v1

    const/16 v1, 0x87

    const v2, 0xe16f

    aput v2, v0, v1

    const/16 v1, 0x88

    .line 23
    const/16 v2, 0x1080

    aput v2, v0, v1

    const/16 v1, 0x89

    aput v3, v0, v1

    const/16 v1, 0x8a

    const/16 v2, 0x30c2

    aput v2, v0, v1

    const/16 v1, 0x8b

    const/16 v2, 0x20e3

    aput v2, v0, v1

    const/16 v1, 0x8c

    const/16 v2, 0x5004

    aput v2, v0, v1

    const/16 v1, 0x8d

    const/16 v2, 0x4025

    aput v2, v0, v1

    const/16 v1, 0x8e

    const/16 v2, 0x7046

    aput v2, v0, v1

    const/16 v1, 0x8f

    const/16 v2, 0x6067

    aput v2, v0, v1

    const/16 v1, 0x90

    .line 24
    const v2, 0x83b9

    aput v2, v0, v1

    const/16 v1, 0x91

    const v2, 0x9398

    aput v2, v0, v1

    const/16 v1, 0x92

    const v2, 0xa3fb

    aput v2, v0, v1

    const/16 v1, 0x93

    const v2, 0xb3da

    aput v2, v0, v1

    const/16 v1, 0x94

    const v2, 0xc33d

    aput v2, v0, v1

    const/16 v1, 0x95

    const v2, 0xd31c

    aput v2, v0, v1

    const/16 v1, 0x96

    const v2, 0xe37f

    aput v2, v0, v1

    const/16 v1, 0x97

    const v2, 0xf35e

    aput v2, v0, v1

    const/16 v1, 0x98

    .line 25
    const/16 v2, 0x2b1

    aput v2, v0, v1

    const/16 v1, 0x99

    const/16 v2, 0x1290

    aput v2, v0, v1

    const/16 v1, 0x9a

    const/16 v2, 0x22f3

    aput v2, v0, v1

    const/16 v1, 0x9b

    const/16 v2, 0x32d2

    aput v2, v0, v1

    const/16 v1, 0x9c

    const/16 v2, 0x4235

    aput v2, v0, v1

    const/16 v1, 0x9d

    const/16 v2, 0x5214

    aput v2, v0, v1

    const/16 v1, 0x9e

    const/16 v2, 0x6277

    aput v2, v0, v1

    const/16 v1, 0x9f

    const/16 v2, 0x7256

    aput v2, v0, v1

    const/16 v1, 0xa0

    .line 26
    const v2, 0xb5ea

    aput v2, v0, v1

    const v1, 0xa5cb

    aput v1, v0, v3

    const/16 v1, 0xa2

    const v2, 0x95a8

    aput v2, v0, v1

    const/16 v1, 0xa3

    const v2, 0x8589

    aput v2, v0, v1

    const/16 v1, 0xa4

    const v2, 0xf56e

    aput v2, v0, v1

    const/16 v1, 0xa5

    const v2, 0xe54f

    aput v2, v0, v1

    const/16 v1, 0xa6

    const v2, 0xd52c

    aput v2, v0, v1

    const/16 v1, 0xa7

    const v2, 0xc50d

    aput v2, v0, v1

    const/16 v1, 0xa8

    .line 27
    const/16 v2, 0x34e2

    aput v2, v0, v1

    const/16 v1, 0xa9

    const/16 v2, 0x24c3

    aput v2, v0, v1

    const/16 v1, 0xaa

    const/16 v2, 0x14a0

    aput v2, v0, v1

    const/16 v1, 0xab

    const/16 v2, 0x481

    aput v2, v0, v1

    const/16 v1, 0xac

    const/16 v2, 0x7466

    aput v2, v0, v1

    const/16 v1, 0xad

    const/16 v2, 0x6447

    aput v2, v0, v1

    const/16 v1, 0xae

    const/16 v2, 0x5424

    aput v2, v0, v1

    const/16 v1, 0xaf

    const/16 v2, 0x4405

    aput v2, v0, v1

    const/16 v1, 0xb0

    .line 28
    const v2, 0xa7db

    aput v2, v0, v1

    const/16 v1, 0xb1

    const v2, 0xb7fa

    aput v2, v0, v1

    const/16 v1, 0xb2

    const v2, 0x8799

    aput v2, v0, v1

    const/16 v1, 0xb3

    const v2, 0x97b8

    aput v2, v0, v1

    const/16 v1, 0xb4

    const v2, 0xe75f    # 8.3E-41f

    aput v2, v0, v1

    const/16 v1, 0xb5

    const v2, 0xf77e

    aput v2, v0, v1

    const/16 v1, 0xb6

    const v2, 0xc71d

    aput v2, v0, v1

    const/16 v1, 0xb7

    const v2, 0xd73c

    aput v2, v0, v1

    const/16 v1, 0xb8

    .line 29
    const/16 v2, 0x26d3

    aput v2, v0, v1

    const/16 v1, 0xb9

    const/16 v2, 0x36f2

    aput v2, v0, v1

    const/16 v1, 0xba

    const/16 v2, 0x691

    aput v2, v0, v1

    const/16 v1, 0xbb

    const/16 v2, 0x16b0

    aput v2, v0, v1

    const/16 v1, 0xbc

    const/16 v2, 0x6657

    aput v2, v0, v1

    const/16 v1, 0xbd

    const/16 v2, 0x7676

    aput v2, v0, v1

    const/16 v1, 0xbe

    const/16 v2, 0x4615

    aput v2, v0, v1

    const/16 v1, 0xbf

    const/16 v2, 0x5634

    aput v2, v0, v1

    const/16 v1, 0xc0

    .line 30
    const v2, 0xd94c

    aput v2, v0, v1

    const/16 v1, 0xc1

    const v2, 0xc96d

    aput v2, v0, v1

    const/16 v1, 0xc2

    const v2, 0xf90e

    aput v2, v0, v1

    const/16 v1, 0xc3

    const v2, 0xe92f

    aput v2, v0, v1

    const/16 v1, 0xc4

    const v2, 0x99c8

    aput v2, v0, v1

    const/16 v1, 0xc5

    const v2, 0x89e9

    aput v2, v0, v1

    const/16 v1, 0xc6

    const v2, 0xb98a

    aput v2, v0, v1

    const/16 v1, 0xc7

    const v2, 0xa9ab

    aput v2, v0, v1

    const/16 v1, 0xc8

    .line 31
    const/16 v2, 0x5844

    aput v2, v0, v1

    const/16 v1, 0xc9

    const/16 v2, 0x4865

    aput v2, v0, v1

    const/16 v1, 0xca

    const/16 v2, 0x7806

    aput v2, v0, v1

    const/16 v1, 0xcb

    const/16 v2, 0x6827

    aput v2, v0, v1

    const/16 v1, 0xcc

    const/16 v2, 0x18c0

    aput v2, v0, v1

    const/16 v1, 0xcd

    const/16 v2, 0x8e1

    aput v2, v0, v1

    const/16 v1, 0xce

    const/16 v2, 0x3882

    aput v2, v0, v1

    const/16 v1, 0xcf

    const/16 v2, 0x28a3

    aput v2, v0, v1

    const/16 v1, 0xd0

    .line 32
    const v2, 0xcb7d

    aput v2, v0, v1

    const/16 v1, 0xd1

    const v2, 0xdb5c

    aput v2, v0, v1

    const/16 v1, 0xd2

    const v2, 0xeb3f

    aput v2, v0, v1

    const/16 v1, 0xd3

    const v2, 0xfb1e

    aput v2, v0, v1

    const/16 v1, 0xd4

    const v2, 0x8bf9

    aput v2, v0, v1

    const/16 v1, 0xd5

    const v2, 0x9bd8

    aput v2, v0, v1

    const/16 v1, 0xd6

    const v2, 0xabbb

    aput v2, v0, v1

    const/16 v1, 0xd7

    const v2, 0xbb9a

    aput v2, v0, v1

    const/16 v1, 0xd8

    .line 33
    const/16 v2, 0x4a75

    aput v2, v0, v1

    const/16 v1, 0xd9

    const/16 v2, 0x5a54

    aput v2, v0, v1

    const/16 v1, 0xda

    const/16 v2, 0x6a37

    aput v2, v0, v1

    const/16 v1, 0xdb

    const/16 v2, 0x7a16

    aput v2, v0, v1

    const/16 v1, 0xdc

    const/16 v2, 0xaf1

    aput v2, v0, v1

    const/16 v1, 0xdd

    const/16 v2, 0x1ad0

    aput v2, v0, v1

    const/16 v1, 0xde

    const/16 v2, 0x2ab3

    aput v2, v0, v1

    const/16 v1, 0xdf

    const/16 v2, 0x3a92

    aput v2, v0, v1

    const/16 v1, 0xe0

    .line 34
    const v2, 0xfd2e

    aput v2, v0, v1

    const/16 v1, 0xe1

    const v2, 0xed0f

    aput v2, v0, v1

    const/16 v1, 0xe2

    const v2, 0xdd6c

    aput v2, v0, v1

    const/16 v1, 0xe3

    const v2, 0xcd4d

    aput v2, v0, v1

    const/16 v1, 0xe4

    const v2, 0xbdaa

    aput v2, v0, v1

    const/16 v1, 0xe5

    const v2, 0xad8b

    aput v2, v0, v1

    const/16 v1, 0xe6

    const v2, 0x9de8

    aput v2, v0, v1

    const/16 v1, 0xe7

    const v2, 0x8dc9

    aput v2, v0, v1

    const/16 v1, 0xe8

    .line 35
    const/16 v2, 0x7c26

    aput v2, v0, v1

    const/16 v1, 0xe9

    const/16 v2, 0x6c07

    aput v2, v0, v1

    const/16 v1, 0xea

    const/16 v2, 0x5c64

    aput v2, v0, v1

    const/16 v1, 0xeb

    const/16 v2, 0x4c45

    aput v2, v0, v1

    const/16 v1, 0xec

    const/16 v2, 0x3ca2

    aput v2, v0, v1

    const/16 v1, 0xed

    const/16 v2, 0x2c83

    aput v2, v0, v1

    const/16 v1, 0xee

    const/16 v2, 0x1ce0

    aput v2, v0, v1

    const/16 v1, 0xef

    const/16 v2, 0xcc1

    aput v2, v0, v1

    const/16 v1, 0xf0

    .line 36
    const v2, 0xef1f

    aput v2, v0, v1

    const/16 v1, 0xf1

    const v2, 0xff3e

    aput v2, v0, v1

    const/16 v1, 0xf2

    const v2, 0xcf5d

    aput v2, v0, v1

    const/16 v1, 0xf3

    const v2, 0xdf7c

    aput v2, v0, v1

    const/16 v1, 0xf4

    const v2, 0xaf9b

    aput v2, v0, v1

    const/16 v1, 0xf5

    const v2, 0xbfba

    aput v2, v0, v1

    const/16 v1, 0xf6

    const v2, 0x8fd9

    aput v2, v0, v1

    const/16 v1, 0xf7

    const v2, 0x9ff8

    aput v2, v0, v1

    const/16 v1, 0xf8

    .line 37
    const/16 v2, 0x6e17

    aput v2, v0, v1

    const/16 v1, 0xf9

    const/16 v2, 0x7e36

    aput v2, v0, v1

    const/16 v1, 0xfa

    const/16 v2, 0x4e55

    aput v2, v0, v1

    const/16 v1, 0xfb

    const/16 v2, 0x5e74

    aput v2, v0, v1

    const/16 v1, 0xfc

    const/16 v2, 0x2e93

    aput v2, v0, v1

    const/16 v1, 0xfd

    const/16 v2, 0x3eb2

    aput v2, v0, v1

    const/16 v1, 0xfe

    const/16 v2, 0xed1

    aput v2, v0, v1

    const/16 v1, 0xff

    const/16 v2, 0x1ef0

    aput v2, v0, v1

    .line 5
    sput-object v0, Lcom/smalife/ota/OtaHelper;->crc16_table:[I

    .line 38
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bytesToHexString([B)Ljava/lang/String;
    .locals 6
    .param p0, "src"    # [B

    .prologue
    .line 53
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 54
    .local v2, "stringBuilder":Ljava/lang/StringBuilder;
    if-eqz p0, :cond_0

    array-length v4, p0

    if-gtz v4, :cond_1

    .line 55
    :cond_0
    const/4 v4, 0x0

    .line 65
    :goto_0
    return-object v4

    .line 57
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v4, p0

    if-lt v1, v4, :cond_2

    .line 65
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 58
    :cond_2
    aget-byte v4, p0, v1

    and-int/lit16 v3, v4, 0xff

    .line 59
    .local v3, "v":I
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 60
    .local v0, "hv":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x2

    if-ge v4, v5, :cond_3

    .line 61
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 63
    :cond_3
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static putShort([BSI)V
    .locals 2
    .param p0, "b"    # [B
    .param p1, "s"    # S
    .param p2, "index"    # I

    .prologue
    .line 48
    add-int/lit8 v0, p2, 0x0

    shr-int/lit8 v1, p1, 0x8

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 49
    add-int/lit8 v0, p2, 0x1

    shr-int/lit8 v1, p1, 0x0

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 50
    return-void
.end method
