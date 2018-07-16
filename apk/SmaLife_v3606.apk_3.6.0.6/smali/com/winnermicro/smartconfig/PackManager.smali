.class final Lcom/winnermicro/smartconfig/PackManager;
.super Ljava/lang/Object;
.source "PackManager.java"


# static fields
.field private static final dscrc_table:[C


# instance fields
.field property:Lcom/winnermicro/smartconfig/ConfigProperty;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 11
    const/16 v0, 0x100

    new-array v0, v0, [C

    .line 12
    const/16 v1, 0x91

    aput-char v1, v0, v3

    const/16 v1, 0xe3

    aput-char v1, v0, v4

    const/16 v1, 0x72

    aput-char v1, v0, v5

    const/4 v1, 0x7

    aput-char v1, v0, v6

    const/16 v1, 0x96

    aput-char v1, v0, v7

    const/4 v1, 0x6

    const/16 v2, 0xe4

    aput-char v2, v0, v1

    const/4 v1, 0x7

    const/16 v2, 0x75

    aput-char v2, v0, v1

    const/16 v1, 0x8

    .line 13
    const/16 v2, 0xe

    aput-char v2, v0, v1

    const/16 v1, 0x9

    const/16 v2, 0x9f

    aput-char v2, v0, v1

    const/16 v1, 0xa

    const/16 v2, 0xed

    aput-char v2, v0, v1

    const/16 v1, 0xb

    const/16 v2, 0x7c

    aput-char v2, v0, v1

    const/16 v1, 0xc

    const/16 v2, 0x9

    aput-char v2, v0, v1

    const/16 v1, 0xd

    const/16 v2, 0x98

    aput-char v2, v0, v1

    const/16 v1, 0xe

    const/16 v2, 0xea

    aput-char v2, v0, v1

    const/16 v1, 0xf

    const/16 v2, 0x7b

    aput-char v2, v0, v1

    const/16 v1, 0x10

    .line 14
    const/16 v2, 0x1c

    aput-char v2, v0, v1

    const/16 v1, 0x11

    const/16 v2, 0x8d

    aput-char v2, v0, v1

    const/16 v1, 0x12

    const/16 v2, 0xff

    aput-char v2, v0, v1

    const/16 v1, 0x13

    const/16 v2, 0x6e

    aput-char v2, v0, v1

    const/16 v1, 0x14

    const/16 v2, 0x1b

    aput-char v2, v0, v1

    const/16 v1, 0x15

    const/16 v2, 0x8a

    aput-char v2, v0, v1

    const/16 v1, 0x16

    const/16 v2, 0xf8

    aput-char v2, v0, v1

    const/16 v1, 0x17

    const/16 v2, 0x69

    aput-char v2, v0, v1

    const/16 v1, 0x18

    .line 15
    const/16 v2, 0x12

    aput-char v2, v0, v1

    const/16 v1, 0x19

    const/16 v2, 0x83

    aput-char v2, v0, v1

    const/16 v1, 0x1a

    const/16 v2, 0xf1

    aput-char v2, v0, v1

    const/16 v1, 0x1b

    const/16 v2, 0x60

    aput-char v2, v0, v1

    const/16 v1, 0x1c

    const/16 v2, 0x15

    aput-char v2, v0, v1

    const/16 v1, 0x1d

    const/16 v2, 0x84

    aput-char v2, v0, v1

    const/16 v1, 0x1e

    const/16 v2, 0xf6

    aput-char v2, v0, v1

    const/16 v1, 0x1f

    const/16 v2, 0x67

    aput-char v2, v0, v1

    const/16 v1, 0x20

    .line 16
    const/16 v2, 0x38

    aput-char v2, v0, v1

    const/16 v1, 0x21

    const/16 v2, 0xa9

    aput-char v2, v0, v1

    const/16 v1, 0x22

    const/16 v2, 0xdb

    aput-char v2, v0, v1

    const/16 v1, 0x23

    const/16 v2, 0x4a

    aput-char v2, v0, v1

    const/16 v1, 0x24

    const/16 v2, 0x3f

    aput-char v2, v0, v1

    const/16 v1, 0x25

    const/16 v2, 0xae

    aput-char v2, v0, v1

    const/16 v1, 0x26

    const/16 v2, 0xdc

    aput-char v2, v0, v1

    const/16 v1, 0x27

    const/16 v2, 0x4d

    aput-char v2, v0, v1

    const/16 v1, 0x28

    .line 17
    const/16 v2, 0x36

    aput-char v2, v0, v1

    const/16 v1, 0x29

    const/16 v2, 0xa7

    aput-char v2, v0, v1

    const/16 v1, 0x2a

    const/16 v2, 0xd5

    aput-char v2, v0, v1

    const/16 v1, 0x2b

    const/16 v2, 0x44

    aput-char v2, v0, v1

    const/16 v1, 0x2c

    const/16 v2, 0x31

    aput-char v2, v0, v1

    const/16 v1, 0x2d

    const/16 v2, 0xa0

    aput-char v2, v0, v1

    const/16 v1, 0x2e

    const/16 v2, 0xd2

    aput-char v2, v0, v1

    const/16 v1, 0x2f

    const/16 v2, 0x43

    aput-char v2, v0, v1

    const/16 v1, 0x30

    .line 18
    const/16 v2, 0x24

    aput-char v2, v0, v1

    const/16 v1, 0x31

    const/16 v2, 0xb5

    aput-char v2, v0, v1

    const/16 v1, 0x32

    const/16 v2, 0xc7

    aput-char v2, v0, v1

    const/16 v1, 0x33

    const/16 v2, 0x56

    aput-char v2, v0, v1

    const/16 v1, 0x34

    const/16 v2, 0x23

    aput-char v2, v0, v1

    const/16 v1, 0x35

    const/16 v2, 0xb2

    aput-char v2, v0, v1

    const/16 v1, 0x36

    const/16 v2, 0xc0

    aput-char v2, v0, v1

    const/16 v1, 0x37

    const/16 v2, 0x51

    aput-char v2, v0, v1

    const/16 v1, 0x38

    .line 19
    const/16 v2, 0x2a

    aput-char v2, v0, v1

    const/16 v1, 0x39

    const/16 v2, 0xbb

    aput-char v2, v0, v1

    const/16 v1, 0x3a

    const/16 v2, 0xc9

    aput-char v2, v0, v1

    const/16 v1, 0x3b

    const/16 v2, 0x58

    aput-char v2, v0, v1

    const/16 v1, 0x3c

    const/16 v2, 0x2d

    aput-char v2, v0, v1

    const/16 v1, 0x3d

    const/16 v2, 0xbc

    aput-char v2, v0, v1

    const/16 v1, 0x3e

    const/16 v2, 0xce

    aput-char v2, v0, v1

    const/16 v1, 0x3f

    const/16 v2, 0x5f

    aput-char v2, v0, v1

    const/16 v1, 0x40

    .line 20
    const/16 v2, 0x70

    aput-char v2, v0, v1

    const/16 v1, 0x41

    const/16 v2, 0xe1

    aput-char v2, v0, v1

    const/16 v1, 0x42

    const/16 v2, 0x93

    aput-char v2, v0, v1

    const/16 v1, 0x43

    aput-char v4, v0, v1

    const/16 v1, 0x44

    const/16 v2, 0x77

    aput-char v2, v0, v1

    const/16 v1, 0x45

    const/16 v2, 0xe6

    aput-char v2, v0, v1

    const/16 v1, 0x46

    const/16 v2, 0x94

    aput-char v2, v0, v1

    const/16 v1, 0x47

    aput-char v7, v0, v1

    const/16 v1, 0x48

    .line 21
    const/16 v2, 0x7e

    aput-char v2, v0, v1

    const/16 v1, 0x49

    const/16 v2, 0xef

    aput-char v2, v0, v1

    const/16 v1, 0x4a

    const/16 v2, 0x9d

    aput-char v2, v0, v1

    const/16 v1, 0x4b

    const/16 v2, 0xc

    aput-char v2, v0, v1

    const/16 v1, 0x4c

    const/16 v2, 0x79

    aput-char v2, v0, v1

    const/16 v1, 0x4d

    const/16 v2, 0xe8

    aput-char v2, v0, v1

    const/16 v1, 0x4e

    const/16 v2, 0x9a

    aput-char v2, v0, v1

    const/16 v1, 0x4f

    const/16 v2, 0xb

    aput-char v2, v0, v1

    const/16 v1, 0x50

    .line 22
    const/16 v2, 0x6c

    aput-char v2, v0, v1

    const/16 v1, 0x51

    const/16 v2, 0xfd

    aput-char v2, v0, v1

    const/16 v1, 0x52

    const/16 v2, 0x8f

    aput-char v2, v0, v1

    const/16 v1, 0x53

    const/16 v2, 0x1e

    aput-char v2, v0, v1

    const/16 v1, 0x54

    const/16 v2, 0x6b

    aput-char v2, v0, v1

    const/16 v1, 0x55

    const/16 v2, 0xfa

    aput-char v2, v0, v1

    const/16 v1, 0x56

    const/16 v2, 0x88

    aput-char v2, v0, v1

    const/16 v1, 0x57

    const/16 v2, 0x19

    aput-char v2, v0, v1

    const/16 v1, 0x58

    .line 23
    const/16 v2, 0x62

    aput-char v2, v0, v1

    const/16 v1, 0x59

    const/16 v2, 0xf3

    aput-char v2, v0, v1

    const/16 v1, 0x5a

    const/16 v2, 0x81

    aput-char v2, v0, v1

    const/16 v1, 0x5b

    const/16 v2, 0x10

    aput-char v2, v0, v1

    const/16 v1, 0x5c

    const/16 v2, 0x65

    aput-char v2, v0, v1

    const/16 v1, 0x5d

    const/16 v2, 0xf4

    aput-char v2, v0, v1

    const/16 v1, 0x5e

    const/16 v2, 0x86

    aput-char v2, v0, v1

    const/16 v1, 0x5f

    const/16 v2, 0x17

    aput-char v2, v0, v1

    const/16 v1, 0x60

    .line 24
    const/16 v2, 0x48

    aput-char v2, v0, v1

    const/16 v1, 0x61

    const/16 v2, 0xd9

    aput-char v2, v0, v1

    const/16 v1, 0x62

    const/16 v2, 0xab

    aput-char v2, v0, v1

    const/16 v1, 0x63

    const/16 v2, 0x3a

    aput-char v2, v0, v1

    const/16 v1, 0x64

    const/16 v2, 0x4f

    aput-char v2, v0, v1

    const/16 v1, 0x65

    const/16 v2, 0xde

    aput-char v2, v0, v1

    const/16 v1, 0x66

    const/16 v2, 0xac

    aput-char v2, v0, v1

    const/16 v1, 0x67

    const/16 v2, 0x3d

    aput-char v2, v0, v1

    const/16 v1, 0x68

    .line 25
    const/16 v2, 0x46

    aput-char v2, v0, v1

    const/16 v1, 0x69

    const/16 v2, 0xd7

    aput-char v2, v0, v1

    const/16 v1, 0x6a

    const/16 v2, 0xa5

    aput-char v2, v0, v1

    const/16 v1, 0x6b

    const/16 v2, 0x34

    aput-char v2, v0, v1

    const/16 v1, 0x6c

    const/16 v2, 0x41

    aput-char v2, v0, v1

    const/16 v1, 0x6d

    const/16 v2, 0xd0

    aput-char v2, v0, v1

    const/16 v1, 0x6e

    const/16 v2, 0xa2

    aput-char v2, v0, v1

    const/16 v1, 0x6f

    const/16 v2, 0x33

    aput-char v2, v0, v1

    const/16 v1, 0x70

    .line 26
    const/16 v2, 0x54

    aput-char v2, v0, v1

    const/16 v1, 0x71

    const/16 v2, 0xc5

    aput-char v2, v0, v1

    const/16 v1, 0x72

    const/16 v2, 0xb7

    aput-char v2, v0, v1

    const/16 v1, 0x73

    const/16 v2, 0x26

    aput-char v2, v0, v1

    const/16 v1, 0x74

    const/16 v2, 0x53

    aput-char v2, v0, v1

    const/16 v1, 0x75

    const/16 v2, 0xc2

    aput-char v2, v0, v1

    const/16 v1, 0x76

    const/16 v2, 0xb0

    aput-char v2, v0, v1

    const/16 v1, 0x77

    const/16 v2, 0x21

    aput-char v2, v0, v1

    const/16 v1, 0x78

    .line 27
    const/16 v2, 0x5a

    aput-char v2, v0, v1

    const/16 v1, 0x79

    const/16 v2, 0xcb

    aput-char v2, v0, v1

    const/16 v1, 0x7a

    const/16 v2, 0xb9

    aput-char v2, v0, v1

    const/16 v1, 0x7b

    const/16 v2, 0x28

    aput-char v2, v0, v1

    const/16 v1, 0x7c

    const/16 v2, 0x5d

    aput-char v2, v0, v1

    const/16 v1, 0x7d

    const/16 v2, 0xcc

    aput-char v2, v0, v1

    const/16 v1, 0x7e

    const/16 v2, 0xbe

    aput-char v2, v0, v1

    const/16 v1, 0x7f

    const/16 v2, 0x2f

    aput-char v2, v0, v1

    const/16 v1, 0x80

    .line 28
    const/16 v2, 0xe0

    aput-char v2, v0, v1

    const/16 v1, 0x81

    const/16 v2, 0x71

    aput-char v2, v0, v1

    const/16 v1, 0x82

    aput-char v5, v0, v1

    const/16 v1, 0x83

    const/16 v2, 0x92

    aput-char v2, v0, v1

    const/16 v1, 0x84

    const/16 v2, 0xe7

    aput-char v2, v0, v1

    const/16 v1, 0x85

    const/16 v2, 0x76

    aput-char v2, v0, v1

    const/16 v1, 0x86

    aput-char v6, v0, v1

    const/16 v1, 0x87

    const/16 v2, 0x95

    aput-char v2, v0, v1

    const/16 v1, 0x88

    .line 29
    const/16 v2, 0xee

    aput-char v2, v0, v1

    const/16 v1, 0x89

    const/16 v2, 0x7f

    aput-char v2, v0, v1

    const/16 v1, 0x8a

    const/16 v2, 0xd

    aput-char v2, v0, v1

    const/16 v1, 0x8b

    const/16 v2, 0x9c

    aput-char v2, v0, v1

    const/16 v1, 0x8c

    const/16 v2, 0xe9

    aput-char v2, v0, v1

    const/16 v1, 0x8d

    const/16 v2, 0x78

    aput-char v2, v0, v1

    const/16 v1, 0x8e

    const/16 v2, 0xa

    aput-char v2, v0, v1

    const/16 v1, 0x8f

    const/16 v2, 0x9b

    aput-char v2, v0, v1

    const/16 v1, 0x90

    .line 30
    const/16 v2, 0xfc

    aput-char v2, v0, v1

    const/16 v1, 0x91

    const/16 v2, 0x6d

    aput-char v2, v0, v1

    const/16 v1, 0x92

    const/16 v2, 0x1f

    aput-char v2, v0, v1

    const/16 v1, 0x93

    const/16 v2, 0x8e

    aput-char v2, v0, v1

    const/16 v1, 0x94

    const/16 v2, 0xfb

    aput-char v2, v0, v1

    const/16 v1, 0x95

    const/16 v2, 0x6a

    aput-char v2, v0, v1

    const/16 v1, 0x96

    const/16 v2, 0x18

    aput-char v2, v0, v1

    const/16 v1, 0x97

    const/16 v2, 0x89

    aput-char v2, v0, v1

    const/16 v1, 0x98

    .line 31
    const/16 v2, 0xf2

    aput-char v2, v0, v1

    const/16 v1, 0x99

    const/16 v2, 0x63

    aput-char v2, v0, v1

    const/16 v1, 0x9a

    const/16 v2, 0x11

    aput-char v2, v0, v1

    const/16 v1, 0x9b

    const/16 v2, 0x80

    aput-char v2, v0, v1

    const/16 v1, 0x9c

    const/16 v2, 0xf5

    aput-char v2, v0, v1

    const/16 v1, 0x9d

    const/16 v2, 0x64

    aput-char v2, v0, v1

    const/16 v1, 0x9e

    const/16 v2, 0x16

    aput-char v2, v0, v1

    const/16 v1, 0x9f

    const/16 v2, 0x87

    aput-char v2, v0, v1

    const/16 v1, 0xa0

    .line 32
    const/16 v2, 0xd8

    aput-char v2, v0, v1

    const/16 v1, 0xa1

    const/16 v2, 0x49

    aput-char v2, v0, v1

    const/16 v1, 0xa2

    const/16 v2, 0x3b

    aput-char v2, v0, v1

    const/16 v1, 0xa3

    const/16 v2, 0xaa

    aput-char v2, v0, v1

    const/16 v1, 0xa4

    const/16 v2, 0xdf

    aput-char v2, v0, v1

    const/16 v1, 0xa5

    const/16 v2, 0x4e

    aput-char v2, v0, v1

    const/16 v1, 0xa6

    const/16 v2, 0x3c

    aput-char v2, v0, v1

    const/16 v1, 0xa7

    const/16 v2, 0xad

    aput-char v2, v0, v1

    const/16 v1, 0xa8

    .line 33
    const/16 v2, 0xd6

    aput-char v2, v0, v1

    const/16 v1, 0xa9

    const/16 v2, 0x47

    aput-char v2, v0, v1

    const/16 v1, 0xaa

    const/16 v2, 0x35

    aput-char v2, v0, v1

    const/16 v1, 0xab

    const/16 v2, 0xa4

    aput-char v2, v0, v1

    const/16 v1, 0xac

    const/16 v2, 0xd1

    aput-char v2, v0, v1

    const/16 v1, 0xad

    const/16 v2, 0x40

    aput-char v2, v0, v1

    const/16 v1, 0xae

    const/16 v2, 0x32

    aput-char v2, v0, v1

    const/16 v1, 0xaf

    const/16 v2, 0xa3

    aput-char v2, v0, v1

    const/16 v1, 0xb0

    .line 34
    const/16 v2, 0xc4

    aput-char v2, v0, v1

    const/16 v1, 0xb1

    const/16 v2, 0x55

    aput-char v2, v0, v1

    const/16 v1, 0xb2

    const/16 v2, 0x27

    aput-char v2, v0, v1

    const/16 v1, 0xb3

    const/16 v2, 0xb6

    aput-char v2, v0, v1

    const/16 v1, 0xb4

    const/16 v2, 0xc3

    aput-char v2, v0, v1

    const/16 v1, 0xb5

    const/16 v2, 0x52

    aput-char v2, v0, v1

    const/16 v1, 0xb6

    const/16 v2, 0x20

    aput-char v2, v0, v1

    const/16 v1, 0xb7

    const/16 v2, 0xb1

    aput-char v2, v0, v1

    const/16 v1, 0xb8

    .line 35
    const/16 v2, 0xca

    aput-char v2, v0, v1

    const/16 v1, 0xb9

    const/16 v2, 0x5b

    aput-char v2, v0, v1

    const/16 v1, 0xba

    const/16 v2, 0x29

    aput-char v2, v0, v1

    const/16 v1, 0xbb

    const/16 v2, 0xb8

    aput-char v2, v0, v1

    const/16 v1, 0xbc

    const/16 v2, 0xcd

    aput-char v2, v0, v1

    const/16 v1, 0xbd

    const/16 v2, 0x5c

    aput-char v2, v0, v1

    const/16 v1, 0xbe

    const/16 v2, 0x2e

    aput-char v2, v0, v1

    const/16 v1, 0xbf

    const/16 v2, 0xbf

    aput-char v2, v0, v1

    const/16 v1, 0xc0

    .line 36
    const/16 v2, 0x90

    aput-char v2, v0, v1

    const/16 v1, 0xc1

    aput-char v3, v0, v1

    const/16 v1, 0xc2

    const/16 v2, 0x73

    aput-char v2, v0, v1

    const/16 v1, 0xc3

    const/16 v2, 0xe2

    aput-char v2, v0, v1

    const/16 v1, 0xc4

    const/16 v2, 0x97

    aput-char v2, v0, v1

    const/16 v1, 0xc5

    const/4 v2, 0x6

    aput-char v2, v0, v1

    const/16 v1, 0xc6

    const/16 v2, 0x74

    aput-char v2, v0, v1

    const/16 v1, 0xc7

    const/16 v2, 0xe5

    aput-char v2, v0, v1

    const/16 v1, 0xc8

    .line 37
    const/16 v2, 0x9e

    aput-char v2, v0, v1

    const/16 v1, 0xc9

    const/16 v2, 0xf

    aput-char v2, v0, v1

    const/16 v1, 0xca

    const/16 v2, 0x7d

    aput-char v2, v0, v1

    const/16 v1, 0xcb

    const/16 v2, 0xec

    aput-char v2, v0, v1

    const/16 v1, 0xcc

    const/16 v2, 0x99

    aput-char v2, v0, v1

    const/16 v1, 0xcd

    const/16 v2, 0x8

    aput-char v2, v0, v1

    const/16 v1, 0xce

    const/16 v2, 0x7a

    aput-char v2, v0, v1

    const/16 v1, 0xcf

    const/16 v2, 0xeb

    aput-char v2, v0, v1

    const/16 v1, 0xd0

    .line 38
    const/16 v2, 0x8c

    aput-char v2, v0, v1

    const/16 v1, 0xd1

    const/16 v2, 0x1d

    aput-char v2, v0, v1

    const/16 v1, 0xd2

    const/16 v2, 0x6f

    aput-char v2, v0, v1

    const/16 v1, 0xd3

    const/16 v2, 0xfe

    aput-char v2, v0, v1

    const/16 v1, 0xd4

    const/16 v2, 0x8b

    aput-char v2, v0, v1

    const/16 v1, 0xd5

    const/16 v2, 0x1a

    aput-char v2, v0, v1

    const/16 v1, 0xd6

    const/16 v2, 0x68

    aput-char v2, v0, v1

    const/16 v1, 0xd7

    const/16 v2, 0xf9

    aput-char v2, v0, v1

    const/16 v1, 0xd8

    .line 39
    const/16 v2, 0x82

    aput-char v2, v0, v1

    const/16 v1, 0xd9

    const/16 v2, 0x13

    aput-char v2, v0, v1

    const/16 v1, 0xda

    const/16 v2, 0x61

    aput-char v2, v0, v1

    const/16 v1, 0xdb

    const/16 v2, 0xf0

    aput-char v2, v0, v1

    const/16 v1, 0xdc

    const/16 v2, 0x85

    aput-char v2, v0, v1

    const/16 v1, 0xdd

    const/16 v2, 0x14

    aput-char v2, v0, v1

    const/16 v1, 0xde

    const/16 v2, 0x66

    aput-char v2, v0, v1

    const/16 v1, 0xdf

    const/16 v2, 0xf7

    aput-char v2, v0, v1

    const/16 v1, 0xe0

    .line 40
    const/16 v2, 0xa8

    aput-char v2, v0, v1

    const/16 v1, 0xe1

    const/16 v2, 0x39

    aput-char v2, v0, v1

    const/16 v1, 0xe2

    const/16 v2, 0x4b

    aput-char v2, v0, v1

    const/16 v1, 0xe3

    const/16 v2, 0xda

    aput-char v2, v0, v1

    const/16 v1, 0xe4

    const/16 v2, 0xaf

    aput-char v2, v0, v1

    const/16 v1, 0xe5

    const/16 v2, 0x3e

    aput-char v2, v0, v1

    const/16 v1, 0xe6

    const/16 v2, 0x4c

    aput-char v2, v0, v1

    const/16 v1, 0xe7

    const/16 v2, 0xdd

    aput-char v2, v0, v1

    const/16 v1, 0xe8

    .line 41
    const/16 v2, 0xa6

    aput-char v2, v0, v1

    const/16 v1, 0xe9

    const/16 v2, 0x37

    aput-char v2, v0, v1

    const/16 v1, 0xea

    const/16 v2, 0x45

    aput-char v2, v0, v1

    const/16 v1, 0xeb

    const/16 v2, 0xd4

    aput-char v2, v0, v1

    const/16 v1, 0xec

    const/16 v2, 0xa1

    aput-char v2, v0, v1

    const/16 v1, 0xed

    const/16 v2, 0x30

    aput-char v2, v0, v1

    const/16 v1, 0xee

    const/16 v2, 0x42

    aput-char v2, v0, v1

    const/16 v1, 0xef

    const/16 v2, 0xd3

    aput-char v2, v0, v1

    const/16 v1, 0xf0

    .line 42
    const/16 v2, 0xb4

    aput-char v2, v0, v1

    const/16 v1, 0xf1

    const/16 v2, 0x25

    aput-char v2, v0, v1

    const/16 v1, 0xf2

    const/16 v2, 0x57

    aput-char v2, v0, v1

    const/16 v1, 0xf3

    const/16 v2, 0xc6

    aput-char v2, v0, v1

    const/16 v1, 0xf4

    const/16 v2, 0xb3

    aput-char v2, v0, v1

    const/16 v1, 0xf5

    const/16 v2, 0x22

    aput-char v2, v0, v1

    const/16 v1, 0xf6

    const/16 v2, 0x50

    aput-char v2, v0, v1

    const/16 v1, 0xf7

    const/16 v2, 0xc1

    aput-char v2, v0, v1

    const/16 v1, 0xf8

    .line 43
    const/16 v2, 0xba

    aput-char v2, v0, v1

    const/16 v1, 0xf9

    const/16 v2, 0x2b

    aput-char v2, v0, v1

    const/16 v1, 0xfa

    const/16 v2, 0x59

    aput-char v2, v0, v1

    const/16 v1, 0xfb

    const/16 v2, 0xc8

    aput-char v2, v0, v1

    const/16 v1, 0xfc

    const/16 v2, 0xbd

    aput-char v2, v0, v1

    const/16 v1, 0xfd

    const/16 v2, 0x2c

    aput-char v2, v0, v1

    const/16 v1, 0xfe

    const/16 v2, 0x5e

    aput-char v2, v0, v1

    const/16 v1, 0xff

    const/16 v2, 0xcf

    aput-char v2, v0, v1

    .line 11
    sput-object v0, Lcom/winnermicro/smartconfig/PackManager;->dscrc_table:[C

    .line 43
    return-void
.end method

.method constructor <init>(Lcom/winnermicro/smartconfig/ConfigProperty;)V
    .locals 1
    .param p1, "property"    # Lcom/winnermicro/smartconfig/ConfigProperty;

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/winnermicro/smartconfig/PackManager;->property:Lcom/winnermicro/smartconfig/ConfigProperty;

    .line 48
    iput-object p1, p0, Lcom/winnermicro/smartconfig/PackManager;->property:Lcom/winnermicro/smartconfig/ConfigProperty;

    .line 49
    return-void
.end method

.method private convertData(II[B[B)Ljava/lang/String;
    .locals 11
    .param p1, "s"    # I
    .param p2, "g"    # I
    .param p3, "dll"    # [B
    .param p4, "data"    # [B

    .prologue
    const/16 v10, 0xf

    const/16 v9, 0x78

    .line 85
    array-length v6, p3

    add-int/lit8 v5, v6, 0x6

    .line 86
    .local v5, "tl":I
    const/4 v1, 0x0

    .line 87
    .local v1, "dl":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v6, p3

    if-lt v2, v6, :cond_0

    .line 91
    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 92
    .local v0, "bf":Ljava/nio/ByteBuffer;
    iget-object v6, p0, Lcom/winnermicro/smartconfig/PackManager;->property:Lcom/winnermicro/smartconfig/ConfigProperty;

    iget v6, v6, Lcom/winnermicro/smartconfig/ConfigProperty;->channel:I

    add-int/lit8 v6, v6, 0x40

    int-to-byte v6, v6

    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 93
    invoke-virtual {v0, v9}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 94
    add-int/lit8 v6, p1, 0x40

    int-to-byte v6, v6

    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 95
    add-int/lit8 v6, p2, 0x40

    int-to-byte v6, v6

    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 96
    const/4 v2, 0x0

    :goto_1
    array-length v6, p3

    if-lt v2, v6, :cond_1

    .line 99
    div-int/lit8 v3, v1, 0x2

    .line 100
    .local v3, "length":I
    const/4 v2, 0x0

    :goto_2
    if-lt v2, v3, :cond_2

    .line 108
    const/4 v2, 0x0

    :goto_3
    if-lt v2, v1, :cond_5

    .line 118
    invoke-virtual {v0, v9}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 119
    invoke-virtual {v0, v9}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 120
    new-instance v6, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v7

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8, v5}, Ljava/lang/String;-><init>([BII)V

    return-object v6

    .line 88
    .end local v0    # "bf":Ljava/nio/ByteBuffer;
    .end local v3    # "length":I
    :cond_0
    aget-byte v6, p3, v2

    add-int/2addr v5, v6

    .line 89
    aget-byte v6, p3, v2

    add-int/2addr v1, v6

    .line 87
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 97
    .restart local v0    # "bf":Ljava/nio/ByteBuffer;
    :cond_1
    aget-byte v6, p3, v2

    add-int/lit8 v6, v6, 0x40

    int-to-byte v6, v6

    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 96
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 101
    .restart local v3    # "length":I
    :cond_2
    mul-int/lit8 v6, v2, 0x2

    aget-byte v4, p4, v6

    .line 102
    .local v4, "temp":B
    and-int/lit8 v6, v4, 0xf

    if-eq v6, v10, :cond_3

    mul-int/lit8 v6, v2, 0x2

    add-int/lit8 v6, v6, 0x1

    aget-byte v6, p4, v6

    and-int/lit8 v6, v6, 0xf

    if-ne v6, v10, :cond_4

    .line 100
    :cond_3
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 105
    :cond_4
    mul-int/lit8 v6, v2, 0x2

    mul-int/lit8 v7, v2, 0x2

    add-int/lit8 v7, v7, 0x1

    aget-byte v7, p4, v7

    and-int/lit16 v7, v7, 0xf0

    and-int/lit8 v8, v4, 0xf

    or-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, p4, v6

    .line 106
    mul-int/lit8 v6, v2, 0x2

    add-int/lit8 v6, v6, 0x1

    and-int/lit16 v7, v4, 0xf0

    mul-int/lit8 v8, v2, 0x2

    add-int/lit8 v8, v8, 0x1

    aget-byte v8, p4, v8

    and-int/lit8 v8, v8, 0xf

    or-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, p4, v6

    goto :goto_4

    .line 109
    .end local v4    # "temp":B
    :cond_5
    aget-byte v6, p4, v2

    and-int/lit8 v6, v6, 0xf

    const/4 v7, 0x7

    if-gt v6, v7, :cond_6

    .line 110
    aget-byte v6, p4, v2

    aget-byte v7, p4, v2

    and-int/lit8 v7, v7, 0xf

    add-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, p4, v2

    .line 116
    :goto_5
    aget-byte v6, p4, v2

    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 108
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 114
    :cond_6
    aget-byte v6, p4, v2

    aget-byte v7, p4, v2

    and-int/lit8 v7, v7, 0xf

    rsub-int/lit8 v7, v7, 0xf

    sub-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, p4, v2

    goto :goto_5
.end method

.method private encodePacks(Ljava/util/List;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<[B>;)",
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation

    .prologue
    .local p1, "bytes":Ljava/util/List;, "Ljava/util/List<[B>;"
    const/4 v11, 0x1

    const/4 v9, 0x0

    .line 123
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 124
    .local v7, "ret":Ljava/util/List;, "Ljava/util/List<[B>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    .line 125
    .local v4, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v4, :cond_0

    .line 162
    return-object v7

    .line 126
    :cond_0
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 127
    .local v0, "bs":[B
    rem-int/lit8 v8, v1, 0x2

    if-eq v8, v11, :cond_1

    add-int/lit8 v8, v1, 0x1

    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    aget-byte v8, v8, v9

    if-ne v8, v11, :cond_2

    .line 128
    :cond_1
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 131
    :cond_2
    array-length v3, v0

    .line 132
    .local v3, "len":I
    div-int/lit8 v8, v3, 0x3

    mul-int/lit8 v10, v8, 0x4

    rem-int/lit8 v8, v3, 0x3

    if-lez v8, :cond_3

    rem-int/lit8 v8, v3, 0x3

    add-int/lit8 v8, v8, 0x1

    :goto_2
    add-int v6, v10, v8

    .line 133
    .local v6, "newlen":I
    new-array v5, v6, [B

    .line 134
    .local v5, "newbs":[B
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_3
    if-lt v2, v6, :cond_4

    .line 160
    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .end local v2    # "j":I
    .end local v5    # "newbs":[B
    .end local v6    # "newlen":I
    :cond_3
    move v8, v9

    .line 132
    goto :goto_2

    .line 135
    .restart local v2    # "j":I
    .restart local v5    # "newbs":[B
    .restart local v6    # "newlen":I
    :cond_4
    rem-int/lit8 v8, v2, 0x4

    packed-switch v8, :pswitch_data_0

    .line 134
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 137
    :pswitch_0
    div-int/lit8 v8, v2, 0x4

    mul-int/lit8 v8, v8, 0x3

    aget-byte v8, v0, v8

    shr-int/lit8 v8, v8, 0x2

    and-int/lit8 v8, v8, 0x3f

    add-int/lit8 v8, v8, 0x3f

    int-to-byte v8, v8

    aput-byte v8, v5, v2

    goto :goto_4

    .line 140
    :pswitch_1
    div-int/lit8 v8, v2, 0x4

    mul-int/lit8 v8, v8, 0x3

    add-int/lit8 v8, v8, 0x1

    if-ge v8, v3, :cond_5

    .line 141
    div-int/lit8 v8, v2, 0x4

    mul-int/lit8 v8, v8, 0x3

    aget-byte v8, v0, v8

    shl-int/lit8 v8, v8, 0x4

    and-int/lit8 v8, v8, 0x30

    div-int/lit8 v10, v2, 0x4

    mul-int/lit8 v10, v10, 0x3

    add-int/lit8 v10, v10, 0x1

    aget-byte v10, v0, v10

    shr-int/lit8 v10, v10, 0x4

    and-int/lit8 v10, v10, 0xf

    or-int/2addr v8, v10

    add-int/lit8 v8, v8, 0x3f

    int-to-byte v8, v8

    aput-byte v8, v5, v2

    goto :goto_4

    .line 144
    :cond_5
    div-int/lit8 v8, v2, 0x4

    mul-int/lit8 v8, v8, 0x3

    aget-byte v8, v0, v8

    shl-int/lit8 v8, v8, 0x4

    and-int/lit8 v8, v8, 0x30

    add-int/lit8 v8, v8, 0x3f

    int-to-byte v8, v8

    aput-byte v8, v5, v2

    goto :goto_4

    .line 148
    :pswitch_2
    div-int/lit8 v8, v2, 0x4

    mul-int/lit8 v8, v8, 0x3

    add-int/lit8 v8, v8, 0x2

    if-ge v8, v3, :cond_6

    .line 149
    div-int/lit8 v8, v2, 0x4

    mul-int/lit8 v8, v8, 0x3

    add-int/lit8 v8, v8, 0x1

    aget-byte v8, v0, v8

    shl-int/lit8 v8, v8, 0x2

    and-int/lit8 v8, v8, 0x3c

    div-int/lit8 v10, v2, 0x4

    mul-int/lit8 v10, v10, 0x3

    add-int/lit8 v10, v10, 0x2

    aget-byte v10, v0, v10

    shr-int/lit8 v10, v10, 0x6

    and-int/lit8 v10, v10, 0x3

    or-int/2addr v8, v10

    add-int/lit8 v8, v8, 0x3f

    int-to-byte v8, v8

    aput-byte v8, v5, v2

    goto :goto_4

    .line 152
    :cond_6
    div-int/lit8 v8, v2, 0x4

    mul-int/lit8 v8, v8, 0x3

    add-int/lit8 v8, v8, 0x1

    aget-byte v8, v0, v8

    shl-int/lit8 v8, v8, 0x2

    and-int/lit8 v8, v8, 0x3c

    add-int/lit8 v8, v8, 0x3f

    int-to-byte v8, v8

    aput-byte v8, v5, v2

    goto :goto_4

    .line 156
    :pswitch_3
    div-int/lit8 v8, v2, 0x4

    mul-int/lit8 v8, v8, 0x3

    add-int/lit8 v8, v8, 0x2

    aget-byte v8, v0, v8

    and-int/lit8 v8, v8, 0x3f

    add-int/lit8 v8, v8, 0x3f

    int-to-byte v8, v8

    aput-byte v8, v5, v2

    goto/16 :goto_4

    .line 135
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private isChinese(C)Z
    .locals 2
    .param p1, "c"    # C

    .prologue
    .line 258
    invoke-static {p1}, Ljava/lang/Character$UnicodeBlock;->of(C)Ljava/lang/Character$UnicodeBlock;

    move-result-object v0

    .line 259
    .local v0, "ub":Ljava/lang/Character$UnicodeBlock;
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_0

    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_COMPATIBILITY_IDEOGRAPHS:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_0

    .line 260
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS_EXTENSION_A:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_0

    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS_EXTENSION_B:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_0

    .line 261
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_SYMBOLS_AND_PUNCTUATION:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_0

    sget-object v1, Ljava/lang/Character$UnicodeBlock;->HALFWIDTH_AND_FULLWIDTH_FORMS:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_0

    .line 262
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->GENERAL_PUNCTUATION:Ljava/lang/Character$UnicodeBlock;

    if-ne v0, v1, :cond_1

    .line 263
    :cond_0
    const/4 v1, 0x1

    .line 265
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method calCRC8([BI)B
    .locals 7
    .param p1, "ptr"    # [B
    .param p2, "len"    # I

    .prologue
    .line 53
    const/4 v1, 0x0

    .line 54
    .local v1, "i":I
    const/4 v0, 0x0

    .local v0, "crc":I
    move v2, v1

    .end local v1    # "i":I
    .local v2, "i":I
    move v4, p2

    .line 55
    .end local p2    # "len":I
    .local v4, "len":I
    :goto_0
    add-int/lit8 p2, v4, -0x1

    .end local v4    # "len":I
    .restart local p2    # "len":I
    if-nez v4, :cond_0

    .line 62
    int-to-byte v6, v0

    return v6

    .line 57
    :cond_0
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    aget-byte v5, p1, v2

    .line 58
    .local v5, "p":I
    if-gez v5, :cond_1

    neg-int v6, v5

    rsub-int v5, v6, 0x100

    .line 59
    :cond_1
    xor-int v6, v0, v5

    and-int/lit16 v3, v6, 0xff

    .line 60
    .local v3, "idx":I
    sget-object v6, Lcom/winnermicro/smartconfig/PackManager;->dscrc_table:[C

    aget-char v0, v6, v3

    move v2, v1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    move v4, p2

    .end local p2    # "len":I
    .restart local v4    # "len":I
    goto :goto_0
.end method

.method public getBytes(Ljava/lang/String;)[B
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 288
    invoke-virtual {p0, p1}, Lcom/winnermicro/smartconfig/PackManager;->isChinese(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 289
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->isSupported(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 290
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 295
    :goto_0
    return-object v0

    .line 292
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto :goto_0

    .line 295
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto :goto_0
.end method

.method hexStr2Str(Ljava/lang/String;)[B
    .locals 6
    .param p1, "hexStr"    # Ljava/lang/String;

    .prologue
    .line 71
    const-string v4, "0123456789ABCDEF"

    .line 72
    .local v4, "str":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 73
    .local v1, "hexs":[C
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    new-array v0, v5, [B

    .line 76
    .local v0, "bytes":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v5, v0

    if-lt v2, v5, :cond_0

    .line 82
    return-object v0

    .line 78
    :cond_0
    mul-int/lit8 v5, v2, 0x2

    aget-char v5, v1, v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    mul-int/lit8 v3, v5, 0x10

    .line 79
    .local v3, "n":I
    mul-int/lit8 v5, v2, 0x2

    add-int/lit8 v5, v5, 0x1

    aget-char v5, v1, v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    add-int/2addr v3, v5

    .line 80
    and-int/lit16 v5, v3, 0xff

    int-to-byte v5, v5

    aput-byte v5, v0, v2

    .line 76
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public isAssic(Ljava/lang/String;)Z
    .locals 3
    .param p1, "strName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 281
    if-nez p1, :cond_1

    .line 284
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isChinese(Ljava/lang/String;)Z
    .locals 4
    .param p1, "strName"    # Ljava/lang/String;

    .prologue
    .line 270
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 271
    .local v1, "ch":[C
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-lt v2, v3, :cond_0

    .line 277
    const/4 v3, 0x0

    :goto_1
    return v3

    .line 272
    :cond_0
    aget-char v0, v1, v2

    .line 273
    .local v0, "c":C
    invoke-direct {p0, v0}, Lcom/winnermicro/smartconfig/PackManager;->isChinese(C)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 274
    const/4 v3, 0x1

    goto :goto_1

    .line 271
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method preparePacks(Ljava/util/List;)Ljava/util/List;
    .locals 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<[B>;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 165
    .local p1, "bytes":Ljava/util/List;, "Ljava/util/List<[B>;"
    const/16 v25, 0x0

    .line 166
    .local v25, "s":I
    const/16 v22, 0x0

    .line 167
    .local v22, "ps":I
    const/16 v27, 0x6

    move/from16 v0, v27

    new-array v0, v0, [I

    move-object/from16 v19, v0

    .line 168
    .local v19, "pl":[I
    invoke-direct/range {p0 .. p1}, Lcom/winnermicro/smartconfig/PackManager;->encodePacks(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 169
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v27

    div-int/lit8 v2, v27, 0x2

    .line 170
    .local v2, "bl":I
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 171
    .local v14, "k":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v17, 0x0

    .local v17, "n":I
    :goto_0
    move/from16 v0, v17

    if-lt v0, v2, :cond_0

    .line 243
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v27

    move/from16 v0, v27

    if-lt v12, v0, :cond_e

    .line 253
    return-object v14

    .line 172
    .end local v12    # "i":I
    :cond_0
    mul-int/lit8 v16, v17, 0x2

    .line 173
    .local v16, "m":I
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, [B

    move-object/from16 v0, v27

    array-length v15, v0

    .line 174
    .local v15, "l":I
    add-int/lit8 v27, v16, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, [B

    const/16 v28, 0x0

    aget-byte v5, v27, v28

    .line 175
    .local v5, "cf":I
    move v11, v5

    .line 176
    .local v11, "g":I
    rsub-int/lit8 v24, v22, 0x19

    .line 177
    .local v24, "rl":I
    const/4 v12, 0x0

    .restart local v12    # "i":I
    :goto_2
    move/from16 v0, v22

    if-lt v12, v0, :cond_2

    .line 180
    move/from16 v0, v24

    if-ge v15, v0, :cond_3

    add-int/lit8 v27, v2, -0x1

    move/from16 v0, v17

    move/from16 v1, v27

    if-ge v0, v1, :cond_3

    .line 182
    aput v15, v19, v22

    .line 183
    add-int/lit8 v22, v22, 0x1

    .line 171
    :cond_1
    :goto_3
    add-int/lit8 v17, v17, 0x1

    goto :goto_0

    .line 178
    :cond_2
    aget v27, v19, v12

    sub-int v24, v24, v27

    .line 177
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 186
    :cond_3
    move/from16 v0, v24

    if-ge v15, v0, :cond_4

    .line 187
    move/from16 v24, v15

    .line 189
    :cond_4
    const/16 v18, 0x0

    .line 190
    .local v18, "o":I
    :goto_4
    if-gtz v22, :cond_6

    const/16 v27, 0x19

    move/from16 v0, v24

    move/from16 v1, v27

    if-ge v0, v1, :cond_6

    add-int/lit8 v27, v2, -0x1

    move/from16 v0, v17

    move/from16 v1, v27

    if-ne v0, v1, :cond_5

    if-gtz v24, :cond_6

    .line 238
    :cond_5
    if-lez v24, :cond_1

    .line 239
    aput v24, v19, v22

    .line 240
    add-int/lit8 v22, v22, 0x1

    goto :goto_3

    .line 191
    :cond_6
    rsub-int/lit8 v23, v22, 0x19

    .line 192
    .local v23, "q":I
    const/16 v27, 0x19

    move/from16 v0, v24

    move/from16 v1, v27

    if-ge v0, v1, :cond_7

    .line 193
    move/from16 v23, v24

    .line 194
    const/4 v12, 0x0

    :goto_5
    move/from16 v0, v22

    if-lt v12, v0, :cond_8

    .line 198
    :cond_7
    move/from16 v0, v23

    new-array v4, v0, [B

    .line 199
    .local v4, "cd":[B
    add-int/lit8 v27, v22, 0x1

    move/from16 v0, v27

    new-array v6, v0, [B

    .line 200
    .local v6, "cl":[B
    const/4 v9, 0x0

    .line 201
    .local v9, "curIdx":I
    if-lez v22, :cond_c

    .line 202
    const/16 v21, 0x0

    .line 203
    .local v21, "plTotal":I
    const/16 v20, 0x0

    .line 204
    .local v20, "plIndex":I
    move/from16 v12, v22

    move v10, v9

    .end local v9    # "curIdx":I
    .local v10, "curIdx":I
    :goto_6
    if-gtz v12, :cond_9

    .line 214
    const/4 v12, 0x0

    :goto_7
    move/from16 v0, v24

    if-lt v12, v0, :cond_b

    .line 217
    add-int/lit8 v9, v10, 0x1

    .end local v10    # "curIdx":I
    .restart local v9    # "curIdx":I
    move/from16 v0, v24

    int-to-byte v0, v0

    move/from16 v27, v0

    aput-byte v27, v6, v10

    .line 218
    const/16 v22, 0x0

    .line 219
    add-int v18, v18, v24

    .line 220
    sub-int v24, v15, v24

    .line 222
    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-direct {v0, v1, v11, v6, v4}, Lcom/winnermicro/smartconfig/PackManager;->convertData(II[B[B)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 223
    add-int/lit8 v25, v25, 0x1

    .line 224
    goto :goto_4

    .line 195
    .end local v4    # "cd":[B
    .end local v6    # "cl":[B
    .end local v9    # "curIdx":I
    .end local v20    # "plIndex":I
    .end local v21    # "plTotal":I
    :cond_8
    aget v27, v19, v12

    add-int v23, v23, v27

    .line 194
    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    .line 205
    .restart local v4    # "cd":[B
    .restart local v6    # "cl":[B
    .restart local v10    # "curIdx":I
    .restart local v20    # "plIndex":I
    .restart local v21    # "plTotal":I
    :cond_9
    sub-int v27, v17, v12

    mul-int/lit8 v27, v27, 0x2

    add-int/lit8 v27, v27, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, [B

    const/16 v28, 0x0

    aget-byte v27, v27, v28

    or-int v11, v11, v27

    .line 206
    sub-int v27, v17, v12

    mul-int/lit8 v27, v27, 0x2

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, [B

    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v26, v0

    .line 207
    .local v26, "w":I
    const/4 v13, 0x0

    .local v13, "j":I
    :goto_8
    aget v27, v19, v20

    move/from16 v0, v27

    if-lt v13, v0, :cond_a

    .line 210
    add-int/lit8 v9, v10, 0x1

    .end local v10    # "curIdx":I
    .restart local v9    # "curIdx":I
    aget v27, v19, v20

    move/from16 v0, v27

    int-to-byte v0, v0

    move/from16 v27, v0

    aput-byte v27, v6, v10

    .line 211
    aget v27, v19, v20

    add-int v21, v21, v27

    .line 212
    add-int/lit8 v20, v20, 0x1

    .line 204
    add-int/lit8 v12, v12, -0x1

    move v10, v9

    .end local v9    # "curIdx":I
    .restart local v10    # "curIdx":I
    goto :goto_6

    .line 208
    :cond_a
    add-int v28, v13, v21

    sub-int v27, v17, v12

    mul-int/lit8 v27, v27, 0x2

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, [B

    aget v29, v19, v20

    sub-int v29, v26, v29

    add-int v29, v29, v13

    aget-byte v27, v27, v29

    aput-byte v27, v4, v28

    .line 207
    add-int/lit8 v13, v13, 0x1

    goto :goto_8

    .line 215
    .end local v13    # "j":I
    .end local v26    # "w":I
    :cond_b
    add-int v28, v12, v21

    mul-int/lit8 v27, v17, 0x2

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, [B

    aget-byte v27, v27, v12

    aput-byte v27, v4, v28

    .line 214
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_7

    .line 226
    .end local v10    # "curIdx":I
    .end local v20    # "plIndex":I
    .end local v21    # "plTotal":I
    .restart local v9    # "curIdx":I
    :cond_c
    mul-int/lit8 v27, v17, 0x2

    add-int/lit8 v27, v27, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, [B

    const/16 v28, 0x0

    aget-byte v11, v27, v28

    .line 227
    const/4 v12, 0x0

    :goto_9
    array-length v0, v4

    move/from16 v27, v0

    move/from16 v0, v27

    if-lt v12, v0, :cond_d

    .line 230
    add-int/lit8 v10, v9, 0x1

    .end local v9    # "curIdx":I
    .restart local v10    # "curIdx":I
    array-length v0, v4

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-byte v0, v0

    move/from16 v27, v0

    aput-byte v27, v6, v9

    .line 231
    array-length v0, v4

    move/from16 v27, v0

    add-int v18, v18, v27

    .line 232
    sub-int v24, v15, v18

    .line 234
    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-direct {v0, v1, v11, v6, v4}, Lcom/winnermicro/smartconfig/PackManager;->convertData(II[B[B)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 235
    add-int/lit8 v25, v25, 0x1

    goto/16 :goto_4

    .line 228
    .end local v10    # "curIdx":I
    .restart local v9    # "curIdx":I
    :cond_d
    mul-int/lit8 v27, v17, 0x2

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, [B

    add-int v28, v12, v18

    aget-byte v27, v27, v28

    aput-byte v27, v4, v12

    .line 227
    add-int/lit8 v12, v12, 0x1

    goto :goto_9

    .line 244
    .end local v4    # "cd":[B
    .end local v5    # "cf":I
    .end local v6    # "cl":[B
    .end local v9    # "curIdx":I
    .end local v11    # "g":I
    .end local v15    # "l":I
    .end local v16    # "m":I
    .end local v18    # "o":I
    .end local v23    # "q":I
    .end local v24    # "rl":I
    :cond_e
    invoke-interface {v14, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/lang/String;

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 245
    .local v3, "bs":[B
    const/16 v27, 0x1

    add-int/lit8 v28, v25, 0x40

    move/from16 v0, v28

    int-to-byte v0, v0

    move/from16 v28, v0

    aput-byte v28, v3, v27

    .line 246
    array-length v0, v3

    move/from16 v27, v0

    add-int/lit8 v27, v27, -0x2

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v3, v1}, Lcom/winnermicro/smartconfig/PackManager;->calCRC8([BI)B

    move-result v7

    .line 247
    .local v7, "crc":B
    array-length v0, v3

    move/from16 v27, v0

    add-int/lit8 v27, v27, -0x2

    aput-byte v7, v3, v27

    .line 248
    array-length v0, v3

    move/from16 v27, v0

    add-int/lit8 v27, v27, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v3, v1}, Lcom/winnermicro/smartconfig/PackManager;->calCRC8([BI)B

    move-result v8

    .line 249
    .local v8, "crc2":B
    array-length v0, v3

    move/from16 v27, v0

    add-int/lit8 v27, v27, -0x2

    and-int/lit8 v28, v7, 0x3f

    add-int/lit8 v28, v28, 0x3f

    move/from16 v0, v28

    int-to-byte v0, v0

    move/from16 v28, v0

    aput-byte v28, v3, v27

    .line 250
    array-length v0, v3

    move/from16 v27, v0

    add-int/lit8 v27, v27, -0x1

    and-int/lit8 v28, v8, 0x3f

    add-int/lit8 v28, v28, 0x3f

    move/from16 v0, v28

    int-to-byte v0, v0

    move/from16 v28, v0

    aput-byte v28, v3, v27

    .line 251
    new-instance v27, Ljava/lang/String;

    move-object/from16 v0, v27

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    move-object/from16 v0, v27

    invoke-interface {v14, v12, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 243
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_1
.end method
