.class public Lcom/xlwtech/util/XlwSmart;
.super Ljava/lang/Object;
.source "XlwSmart.java"


# static fields
.field private static final BASE_LEN:I = 0x1e

.field private static final CHAR_INTERVAL:I = 0xa

.field private static final __crc8_tbl:[B

.field private static instance:Lcom/xlwtech/util/XlwSmart;

.field public static pass:Ljava/lang/String;

.field public static progress:I

.field public static runFlag:Z

.field private static service:Ljava/util/concurrent/ScheduledExecutorService;

.field public static ssid:Ljava/lang/String;

.field public static timeOut:J


# instance fields
.field private future:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 19
    const/4 v0, 0x0

    sput-boolean v0, Lcom/xlwtech/util/XlwSmart;->runFlag:Z

    .line 24
    const/16 v0, 0x100

    new-array v0, v0, [B

    .line 25
    const/16 v1, -0x6f

    aput-byte v1, v0, v3

    const/16 v1, -0x1d

    aput-byte v1, v0, v4

    const/16 v1, 0x72

    aput-byte v1, v0, v5

    const/4 v1, 0x7

    aput-byte v1, v0, v6

    const/16 v1, -0x6a

    aput-byte v1, v0, v7

    const/4 v1, 0x6

    const/16 v2, -0x1c

    aput-byte v2, v0, v1

    const/4 v1, 0x7

    const/16 v2, 0x75

    aput-byte v2, v0, v1

    const/16 v1, 0x8

    .line 26
    const/16 v2, 0xe

    aput-byte v2, v0, v1

    const/16 v1, 0x9

    const/16 v2, -0x61

    aput-byte v2, v0, v1

    const/16 v1, 0xa

    const/16 v2, -0x13

    aput-byte v2, v0, v1

    const/16 v1, 0xb

    const/16 v2, 0x7c

    aput-byte v2, v0, v1

    const/16 v1, 0xc

    const/16 v2, 0x9

    aput-byte v2, v0, v1

    const/16 v1, 0xd

    const/16 v2, -0x68

    aput-byte v2, v0, v1

    const/16 v1, 0xe

    const/16 v2, -0x16

    aput-byte v2, v0, v1

    const/16 v1, 0xf

    const/16 v2, 0x7b

    aput-byte v2, v0, v1

    const/16 v1, 0x10

    .line 27
    const/16 v2, 0x1c

    aput-byte v2, v0, v1

    const/16 v1, 0x11

    const/16 v2, -0x73

    aput-byte v2, v0, v1

    const/16 v1, 0x12

    const/4 v2, -0x1

    aput-byte v2, v0, v1

    const/16 v1, 0x13

    const/16 v2, 0x6e

    aput-byte v2, v0, v1

    const/16 v1, 0x14

    const/16 v2, 0x1b

    aput-byte v2, v0, v1

    const/16 v1, 0x15

    const/16 v2, -0x76

    aput-byte v2, v0, v1

    const/16 v1, 0x16

    const/4 v2, -0x8

    aput-byte v2, v0, v1

    const/16 v1, 0x17

    const/16 v2, 0x69

    aput-byte v2, v0, v1

    const/16 v1, 0x18

    .line 28
    const/16 v2, 0x12

    aput-byte v2, v0, v1

    const/16 v1, 0x19

    const/16 v2, -0x7d

    aput-byte v2, v0, v1

    const/16 v1, 0x1a

    const/16 v2, -0xf

    aput-byte v2, v0, v1

    const/16 v1, 0x1b

    const/16 v2, 0x60

    aput-byte v2, v0, v1

    const/16 v1, 0x1c

    const/16 v2, 0x15

    aput-byte v2, v0, v1

    const/16 v1, 0x1d

    const/16 v2, -0x7c

    aput-byte v2, v0, v1

    const/16 v1, 0x1e

    const/16 v2, -0xa

    aput-byte v2, v0, v1

    const/16 v1, 0x1f

    const/16 v2, 0x67

    aput-byte v2, v0, v1

    const/16 v1, 0x20

    .line 29
    const/16 v2, 0x38

    aput-byte v2, v0, v1

    const/16 v1, 0x21

    const/16 v2, -0x57

    aput-byte v2, v0, v1

    const/16 v1, 0x22

    const/16 v2, -0x25

    aput-byte v2, v0, v1

    const/16 v1, 0x23

    const/16 v2, 0x4a

    aput-byte v2, v0, v1

    const/16 v1, 0x24

    const/16 v2, 0x3f

    aput-byte v2, v0, v1

    const/16 v1, 0x25

    const/16 v2, -0x52

    aput-byte v2, v0, v1

    const/16 v1, 0x26

    const/16 v2, -0x24

    aput-byte v2, v0, v1

    const/16 v1, 0x27

    const/16 v2, 0x4d

    aput-byte v2, v0, v1

    const/16 v1, 0x28

    .line 30
    const/16 v2, 0x36

    aput-byte v2, v0, v1

    const/16 v1, 0x29

    const/16 v2, -0x59

    aput-byte v2, v0, v1

    const/16 v1, 0x2a

    const/16 v2, -0x2b

    aput-byte v2, v0, v1

    const/16 v1, 0x2b

    const/16 v2, 0x44

    aput-byte v2, v0, v1

    const/16 v1, 0x2c

    const/16 v2, 0x31

    aput-byte v2, v0, v1

    const/16 v1, 0x2d

    const/16 v2, -0x60

    aput-byte v2, v0, v1

    const/16 v1, 0x2e

    const/16 v2, -0x2e

    aput-byte v2, v0, v1

    const/16 v1, 0x2f

    const/16 v2, 0x43

    aput-byte v2, v0, v1

    const/16 v1, 0x30

    .line 31
    const/16 v2, 0x24

    aput-byte v2, v0, v1

    const/16 v1, 0x31

    const/16 v2, -0x4b

    aput-byte v2, v0, v1

    const/16 v1, 0x32

    const/16 v2, -0x39

    aput-byte v2, v0, v1

    const/16 v1, 0x33

    const/16 v2, 0x56

    aput-byte v2, v0, v1

    const/16 v1, 0x34

    const/16 v2, 0x23

    aput-byte v2, v0, v1

    const/16 v1, 0x35

    const/16 v2, -0x4e

    aput-byte v2, v0, v1

    const/16 v1, 0x36

    const/16 v2, -0x40

    aput-byte v2, v0, v1

    const/16 v1, 0x37

    const/16 v2, 0x51

    aput-byte v2, v0, v1

    const/16 v1, 0x38

    .line 32
    const/16 v2, 0x2a

    aput-byte v2, v0, v1

    const/16 v1, 0x39

    const/16 v2, -0x45

    aput-byte v2, v0, v1

    const/16 v1, 0x3a

    const/16 v2, -0x37

    aput-byte v2, v0, v1

    const/16 v1, 0x3b

    const/16 v2, 0x58

    aput-byte v2, v0, v1

    const/16 v1, 0x3c

    const/16 v2, 0x2d

    aput-byte v2, v0, v1

    const/16 v1, 0x3d

    const/16 v2, -0x44

    aput-byte v2, v0, v1

    const/16 v1, 0x3e

    const/16 v2, -0x32

    aput-byte v2, v0, v1

    const/16 v1, 0x3f

    const/16 v2, 0x5f

    aput-byte v2, v0, v1

    const/16 v1, 0x40

    .line 33
    const/16 v2, 0x70

    aput-byte v2, v0, v1

    const/16 v1, 0x41

    const/16 v2, -0x1f

    aput-byte v2, v0, v1

    const/16 v1, 0x42

    const/16 v2, -0x6d

    aput-byte v2, v0, v1

    const/16 v1, 0x43

    aput-byte v4, v0, v1

    const/16 v1, 0x44

    const/16 v2, 0x77

    aput-byte v2, v0, v1

    const/16 v1, 0x45

    const/16 v2, -0x1a

    aput-byte v2, v0, v1

    const/16 v1, 0x46

    const/16 v2, -0x6c

    aput-byte v2, v0, v1

    const/16 v1, 0x47

    aput-byte v7, v0, v1

    const/16 v1, 0x48

    .line 34
    const/16 v2, 0x7e

    aput-byte v2, v0, v1

    const/16 v1, 0x49

    const/16 v2, -0x11

    aput-byte v2, v0, v1

    const/16 v1, 0x4a

    const/16 v2, -0x63

    aput-byte v2, v0, v1

    const/16 v1, 0x4b

    const/16 v2, 0xc

    aput-byte v2, v0, v1

    const/16 v1, 0x4c

    const/16 v2, 0x79

    aput-byte v2, v0, v1

    const/16 v1, 0x4d

    const/16 v2, -0x18

    aput-byte v2, v0, v1

    const/16 v1, 0x4e

    const/16 v2, -0x66

    aput-byte v2, v0, v1

    const/16 v1, 0x4f

    const/16 v2, 0xb

    aput-byte v2, v0, v1

    const/16 v1, 0x50

    .line 35
    const/16 v2, 0x6c

    aput-byte v2, v0, v1

    const/16 v1, 0x51

    const/4 v2, -0x3

    aput-byte v2, v0, v1

    const/16 v1, 0x52

    const/16 v2, -0x71

    aput-byte v2, v0, v1

    const/16 v1, 0x53

    const/16 v2, 0x1e

    aput-byte v2, v0, v1

    const/16 v1, 0x54

    const/16 v2, 0x6b

    aput-byte v2, v0, v1

    const/16 v1, 0x55

    const/4 v2, -0x6

    aput-byte v2, v0, v1

    const/16 v1, 0x56

    const/16 v2, -0x78

    aput-byte v2, v0, v1

    const/16 v1, 0x57

    const/16 v2, 0x19

    aput-byte v2, v0, v1

    const/16 v1, 0x58

    .line 36
    const/16 v2, 0x62

    aput-byte v2, v0, v1

    const/16 v1, 0x59

    const/16 v2, -0xd

    aput-byte v2, v0, v1

    const/16 v1, 0x5a

    const/16 v2, -0x7f

    aput-byte v2, v0, v1

    const/16 v1, 0x5b

    const/16 v2, 0x10

    aput-byte v2, v0, v1

    const/16 v1, 0x5c

    const/16 v2, 0x65

    aput-byte v2, v0, v1

    const/16 v1, 0x5d

    const/16 v2, -0xc

    aput-byte v2, v0, v1

    const/16 v1, 0x5e

    const/16 v2, -0x7a

    aput-byte v2, v0, v1

    const/16 v1, 0x5f

    const/16 v2, 0x17

    aput-byte v2, v0, v1

    const/16 v1, 0x60

    .line 37
    const/16 v2, 0x48

    aput-byte v2, v0, v1

    const/16 v1, 0x61

    const/16 v2, -0x27

    aput-byte v2, v0, v1

    const/16 v1, 0x62

    const/16 v2, -0x55

    aput-byte v2, v0, v1

    const/16 v1, 0x63

    const/16 v2, 0x3a

    aput-byte v2, v0, v1

    const/16 v1, 0x64

    const/16 v2, 0x4f

    aput-byte v2, v0, v1

    const/16 v1, 0x65

    const/16 v2, -0x22

    aput-byte v2, v0, v1

    const/16 v1, 0x66

    const/16 v2, -0x54

    aput-byte v2, v0, v1

    const/16 v1, 0x67

    const/16 v2, 0x3d

    aput-byte v2, v0, v1

    const/16 v1, 0x68

    .line 38
    const/16 v2, 0x46

    aput-byte v2, v0, v1

    const/16 v1, 0x69

    const/16 v2, -0x29

    aput-byte v2, v0, v1

    const/16 v1, 0x6a

    const/16 v2, -0x5b

    aput-byte v2, v0, v1

    const/16 v1, 0x6b

    const/16 v2, 0x34

    aput-byte v2, v0, v1

    const/16 v1, 0x6c

    const/16 v2, 0x41

    aput-byte v2, v0, v1

    const/16 v1, 0x6d

    const/16 v2, -0x30

    aput-byte v2, v0, v1

    const/16 v1, 0x6e

    const/16 v2, -0x5e

    aput-byte v2, v0, v1

    const/16 v1, 0x6f

    const/16 v2, 0x33

    aput-byte v2, v0, v1

    const/16 v1, 0x70

    .line 39
    const/16 v2, 0x54

    aput-byte v2, v0, v1

    const/16 v1, 0x71

    const/16 v2, -0x3b

    aput-byte v2, v0, v1

    const/16 v1, 0x72

    const/16 v2, -0x49

    aput-byte v2, v0, v1

    const/16 v1, 0x73

    const/16 v2, 0x26

    aput-byte v2, v0, v1

    const/16 v1, 0x74

    const/16 v2, 0x53

    aput-byte v2, v0, v1

    const/16 v1, 0x75

    const/16 v2, -0x3e

    aput-byte v2, v0, v1

    const/16 v1, 0x76

    const/16 v2, -0x50

    aput-byte v2, v0, v1

    const/16 v1, 0x77

    const/16 v2, 0x21

    aput-byte v2, v0, v1

    const/16 v1, 0x78

    .line 40
    const/16 v2, 0x5a

    aput-byte v2, v0, v1

    const/16 v1, 0x79

    const/16 v2, -0x35

    aput-byte v2, v0, v1

    const/16 v1, 0x7a

    const/16 v2, -0x47

    aput-byte v2, v0, v1

    const/16 v1, 0x7b

    const/16 v2, 0x28

    aput-byte v2, v0, v1

    const/16 v1, 0x7c

    const/16 v2, 0x5d

    aput-byte v2, v0, v1

    const/16 v1, 0x7d

    const/16 v2, -0x34

    aput-byte v2, v0, v1

    const/16 v1, 0x7e

    const/16 v2, -0x42

    aput-byte v2, v0, v1

    const/16 v1, 0x7f

    const/16 v2, 0x2f

    aput-byte v2, v0, v1

    const/16 v1, 0x80

    .line 41
    const/16 v2, -0x20

    aput-byte v2, v0, v1

    const/16 v1, 0x81

    const/16 v2, 0x71

    aput-byte v2, v0, v1

    const/16 v1, 0x82

    aput-byte v5, v0, v1

    const/16 v1, 0x83

    const/16 v2, -0x6e

    aput-byte v2, v0, v1

    const/16 v1, 0x84

    const/16 v2, -0x19

    aput-byte v2, v0, v1

    const/16 v1, 0x85

    const/16 v2, 0x76

    aput-byte v2, v0, v1

    const/16 v1, 0x86

    aput-byte v6, v0, v1

    const/16 v1, 0x87

    const/16 v2, -0x6b

    aput-byte v2, v0, v1

    const/16 v1, 0x88

    .line 42
    const/16 v2, -0x12

    aput-byte v2, v0, v1

    const/16 v1, 0x89

    const/16 v2, 0x7f

    aput-byte v2, v0, v1

    const/16 v1, 0x8a

    const/16 v2, 0xd

    aput-byte v2, v0, v1

    const/16 v1, 0x8b

    const/16 v2, -0x64

    aput-byte v2, v0, v1

    const/16 v1, 0x8c

    const/16 v2, -0x17

    aput-byte v2, v0, v1

    const/16 v1, 0x8d

    const/16 v2, 0x78

    aput-byte v2, v0, v1

    const/16 v1, 0x8e

    const/16 v2, 0xa

    aput-byte v2, v0, v1

    const/16 v1, 0x8f

    const/16 v2, -0x65

    aput-byte v2, v0, v1

    const/16 v1, 0x90

    .line 43
    const/4 v2, -0x4

    aput-byte v2, v0, v1

    const/16 v1, 0x91

    const/16 v2, 0x6d

    aput-byte v2, v0, v1

    const/16 v1, 0x92

    const/16 v2, 0x1f

    aput-byte v2, v0, v1

    const/16 v1, 0x93

    const/16 v2, -0x72

    aput-byte v2, v0, v1

    const/16 v1, 0x94

    const/4 v2, -0x5

    aput-byte v2, v0, v1

    const/16 v1, 0x95

    const/16 v2, 0x6a

    aput-byte v2, v0, v1

    const/16 v1, 0x96

    const/16 v2, 0x18

    aput-byte v2, v0, v1

    const/16 v1, 0x97

    const/16 v2, -0x77

    aput-byte v2, v0, v1

    const/16 v1, 0x98

    .line 44
    const/16 v2, -0xe

    aput-byte v2, v0, v1

    const/16 v1, 0x99

    const/16 v2, 0x63

    aput-byte v2, v0, v1

    const/16 v1, 0x9a

    const/16 v2, 0x11

    aput-byte v2, v0, v1

    const/16 v1, 0x9b

    const/16 v2, -0x80

    aput-byte v2, v0, v1

    const/16 v1, 0x9c

    const/16 v2, -0xb

    aput-byte v2, v0, v1

    const/16 v1, 0x9d

    const/16 v2, 0x64

    aput-byte v2, v0, v1

    const/16 v1, 0x9e

    const/16 v2, 0x16

    aput-byte v2, v0, v1

    const/16 v1, 0x9f

    const/16 v2, -0x79

    aput-byte v2, v0, v1

    const/16 v1, 0xa0

    .line 45
    const/16 v2, -0x28

    aput-byte v2, v0, v1

    const/16 v1, 0xa1

    const/16 v2, 0x49

    aput-byte v2, v0, v1

    const/16 v1, 0xa2

    const/16 v2, 0x3b

    aput-byte v2, v0, v1

    const/16 v1, 0xa3

    const/16 v2, -0x56

    aput-byte v2, v0, v1

    const/16 v1, 0xa4

    const/16 v2, -0x21

    aput-byte v2, v0, v1

    const/16 v1, 0xa5

    const/16 v2, 0x4e

    aput-byte v2, v0, v1

    const/16 v1, 0xa6

    const/16 v2, 0x3c

    aput-byte v2, v0, v1

    const/16 v1, 0xa7

    const/16 v2, -0x53

    aput-byte v2, v0, v1

    const/16 v1, 0xa8

    .line 46
    const/16 v2, -0x2a

    aput-byte v2, v0, v1

    const/16 v1, 0xa9

    const/16 v2, 0x47

    aput-byte v2, v0, v1

    const/16 v1, 0xaa

    const/16 v2, 0x35

    aput-byte v2, v0, v1

    const/16 v1, 0xab

    const/16 v2, -0x5c

    aput-byte v2, v0, v1

    const/16 v1, 0xac

    const/16 v2, -0x2f

    aput-byte v2, v0, v1

    const/16 v1, 0xad

    const/16 v2, 0x40

    aput-byte v2, v0, v1

    const/16 v1, 0xae

    const/16 v2, 0x32

    aput-byte v2, v0, v1

    const/16 v1, 0xaf

    const/16 v2, -0x5d

    aput-byte v2, v0, v1

    const/16 v1, 0xb0

    .line 47
    const/16 v2, -0x3c

    aput-byte v2, v0, v1

    const/16 v1, 0xb1

    const/16 v2, 0x55

    aput-byte v2, v0, v1

    const/16 v1, 0xb2

    const/16 v2, 0x27

    aput-byte v2, v0, v1

    const/16 v1, 0xb3

    const/16 v2, -0x4a

    aput-byte v2, v0, v1

    const/16 v1, 0xb4

    const/16 v2, -0x3d

    aput-byte v2, v0, v1

    const/16 v1, 0xb5

    const/16 v2, 0x52

    aput-byte v2, v0, v1

    const/16 v1, 0xb6

    const/16 v2, 0x20

    aput-byte v2, v0, v1

    const/16 v1, 0xb7

    const/16 v2, -0x4f

    aput-byte v2, v0, v1

    const/16 v1, 0xb8

    .line 48
    const/16 v2, -0x36

    aput-byte v2, v0, v1

    const/16 v1, 0xb9

    const/16 v2, 0x5b

    aput-byte v2, v0, v1

    const/16 v1, 0xba

    const/16 v2, 0x29

    aput-byte v2, v0, v1

    const/16 v1, 0xbb

    const/16 v2, -0x48

    aput-byte v2, v0, v1

    const/16 v1, 0xbc

    const/16 v2, -0x33

    aput-byte v2, v0, v1

    const/16 v1, 0xbd

    const/16 v2, 0x5c

    aput-byte v2, v0, v1

    const/16 v1, 0xbe

    const/16 v2, 0x2e

    aput-byte v2, v0, v1

    const/16 v1, 0xbf

    const/16 v2, -0x41

    aput-byte v2, v0, v1

    const/16 v1, 0xc0

    .line 49
    const/16 v2, -0x70

    aput-byte v2, v0, v1

    const/16 v1, 0xc1

    aput-byte v3, v0, v1

    const/16 v1, 0xc2

    const/16 v2, 0x73

    aput-byte v2, v0, v1

    const/16 v1, 0xc3

    const/16 v2, -0x1e

    aput-byte v2, v0, v1

    const/16 v1, 0xc4

    const/16 v2, -0x69

    aput-byte v2, v0, v1

    const/16 v1, 0xc5

    const/4 v2, 0x6

    aput-byte v2, v0, v1

    const/16 v1, 0xc6

    const/16 v2, 0x74

    aput-byte v2, v0, v1

    const/16 v1, 0xc7

    const/16 v2, -0x1b

    aput-byte v2, v0, v1

    const/16 v1, 0xc8

    .line 50
    const/16 v2, -0x62

    aput-byte v2, v0, v1

    const/16 v1, 0xc9

    const/16 v2, 0xf

    aput-byte v2, v0, v1

    const/16 v1, 0xca

    const/16 v2, 0x7d

    aput-byte v2, v0, v1

    const/16 v1, 0xcb

    const/16 v2, -0x14

    aput-byte v2, v0, v1

    const/16 v1, 0xcc

    const/16 v2, -0x67

    aput-byte v2, v0, v1

    const/16 v1, 0xcd

    const/16 v2, 0x8

    aput-byte v2, v0, v1

    const/16 v1, 0xce

    const/16 v2, 0x7a

    aput-byte v2, v0, v1

    const/16 v1, 0xcf

    const/16 v2, -0x15

    aput-byte v2, v0, v1

    const/16 v1, 0xd0

    .line 51
    const/16 v2, -0x74

    aput-byte v2, v0, v1

    const/16 v1, 0xd1

    const/16 v2, 0x1d

    aput-byte v2, v0, v1

    const/16 v1, 0xd2

    const/16 v2, 0x6f

    aput-byte v2, v0, v1

    const/16 v1, 0xd3

    const/4 v2, -0x2

    aput-byte v2, v0, v1

    const/16 v1, 0xd4

    const/16 v2, -0x75

    aput-byte v2, v0, v1

    const/16 v1, 0xd5

    const/16 v2, 0x1a

    aput-byte v2, v0, v1

    const/16 v1, 0xd6

    const/16 v2, 0x68

    aput-byte v2, v0, v1

    const/16 v1, 0xd7

    const/4 v2, -0x7

    aput-byte v2, v0, v1

    const/16 v1, 0xd8

    .line 52
    const/16 v2, -0x7e

    aput-byte v2, v0, v1

    const/16 v1, 0xd9

    const/16 v2, 0x13

    aput-byte v2, v0, v1

    const/16 v1, 0xda

    const/16 v2, 0x61

    aput-byte v2, v0, v1

    const/16 v1, 0xdb

    const/16 v2, -0x10

    aput-byte v2, v0, v1

    const/16 v1, 0xdc

    const/16 v2, -0x7b

    aput-byte v2, v0, v1

    const/16 v1, 0xdd

    const/16 v2, 0x14

    aput-byte v2, v0, v1

    const/16 v1, 0xde

    const/16 v2, 0x66

    aput-byte v2, v0, v1

    const/16 v1, 0xdf

    const/16 v2, -0x9

    aput-byte v2, v0, v1

    const/16 v1, 0xe0

    .line 53
    const/16 v2, -0x58

    aput-byte v2, v0, v1

    const/16 v1, 0xe1

    const/16 v2, 0x39

    aput-byte v2, v0, v1

    const/16 v1, 0xe2

    const/16 v2, 0x4b

    aput-byte v2, v0, v1

    const/16 v1, 0xe3

    const/16 v2, -0x26

    aput-byte v2, v0, v1

    const/16 v1, 0xe4

    const/16 v2, -0x51

    aput-byte v2, v0, v1

    const/16 v1, 0xe5

    const/16 v2, 0x3e

    aput-byte v2, v0, v1

    const/16 v1, 0xe6

    const/16 v2, 0x4c

    aput-byte v2, v0, v1

    const/16 v1, 0xe7

    const/16 v2, -0x23

    aput-byte v2, v0, v1

    const/16 v1, 0xe8

    .line 54
    const/16 v2, -0x5a

    aput-byte v2, v0, v1

    const/16 v1, 0xe9

    const/16 v2, 0x37

    aput-byte v2, v0, v1

    const/16 v1, 0xea

    const/16 v2, 0x45

    aput-byte v2, v0, v1

    const/16 v1, 0xeb

    const/16 v2, -0x2c

    aput-byte v2, v0, v1

    const/16 v1, 0xec

    const/16 v2, -0x5f

    aput-byte v2, v0, v1

    const/16 v1, 0xed

    const/16 v2, 0x30

    aput-byte v2, v0, v1

    const/16 v1, 0xee

    const/16 v2, 0x42

    aput-byte v2, v0, v1

    const/16 v1, 0xef

    const/16 v2, -0x2d

    aput-byte v2, v0, v1

    const/16 v1, 0xf0

    .line 55
    const/16 v2, -0x4c

    aput-byte v2, v0, v1

    const/16 v1, 0xf1

    const/16 v2, 0x25

    aput-byte v2, v0, v1

    const/16 v1, 0xf2

    const/16 v2, 0x57

    aput-byte v2, v0, v1

    const/16 v1, 0xf3

    const/16 v2, -0x3a

    aput-byte v2, v0, v1

    const/16 v1, 0xf4

    const/16 v2, -0x4d

    aput-byte v2, v0, v1

    const/16 v1, 0xf5

    const/16 v2, 0x22

    aput-byte v2, v0, v1

    const/16 v1, 0xf6

    const/16 v2, 0x50

    aput-byte v2, v0, v1

    const/16 v1, 0xf7

    const/16 v2, -0x3f

    aput-byte v2, v0, v1

    const/16 v1, 0xf8

    .line 56
    const/16 v2, -0x46

    aput-byte v2, v0, v1

    const/16 v1, 0xf9

    const/16 v2, 0x2b

    aput-byte v2, v0, v1

    const/16 v1, 0xfa

    const/16 v2, 0x59

    aput-byte v2, v0, v1

    const/16 v1, 0xfb

    const/16 v2, -0x38

    aput-byte v2, v0, v1

    const/16 v1, 0xfc

    const/16 v2, -0x43

    aput-byte v2, v0, v1

    const/16 v1, 0xfd

    const/16 v2, 0x2c

    aput-byte v2, v0, v1

    const/16 v1, 0xfe

    const/16 v2, 0x5e

    aput-byte v2, v0, v1

    const/16 v1, 0xff

    const/16 v2, -0x31

    aput-byte v2, v0, v1

    .line 24
    sput-object v0, Lcom/xlwtech/util/XlwSmart;->__crc8_tbl:[B

    .line 76
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    .line 75
    sput-object v0, Lcom/xlwtech/util/XlwSmart;->service:Ljava/util/concurrent/ScheduledExecutorService;

    .line 76
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private BuildConfig(Ljava/lang/String;Ljava/lang/String;[B)I
    .locals 9
    .param p1, "ssid"    # Ljava/lang/String;
    .param p2, "pass"    # Ljava/lang/String;
    .param p3, "data"    # [B

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 125
    const/16 v5, 0x100

    new-array v4, v5, [B

    .line 127
    .local v4, "temp":[B
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 128
    .local v3, "lenSsid":I
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    .line 129
    .local v2, "lenPass":I
    int-to-byte v5, v3

    aput-byte v5, v4, v7

    .line 130
    int-to-byte v5, v2

    aput-byte v5, v4, v8

    .line 132
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    const/4 v6, 0x2

    invoke-static {v5, v7, v4, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 133
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    add-int/lit8 v6, v3, 0x2

    invoke-static {v5, v7, v4, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 135
    add-int v1, v3, v2

    .line 136
    .local v1, "len":I
    add-int/lit8 v5, v1, 0x2

    invoke-static {v4, v5}, Lcom/xlwtech/util/XlwSmart;->getCrc8([BI)B

    move-result v0

    .line 137
    .local v0, "crc":I
    int-to-byte v5, v0

    aput-byte v5, p3, v7

    .line 138
    add-int/lit8 v5, v1, 0x2

    invoke-static {v4, v7, p3, v8, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 141
    add-int/lit8 v5, v1, 0x3

    return v5
.end method

.method private DoConfig()V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 146
    new-instance v8, Lcom/xlwtech/util/XlwUdp;

    invoke-direct {v8}, Lcom/xlwtech/util/XlwUdp;-><init>()V

    .line 147
    .local v8, "udp":Lcom/xlwtech/util/XlwUdp;
    const/16 v9, 0x80

    new-array v0, v9, [B

    .line 148
    .local v0, "data":[B
    const/16 v9, 0x400

    new-array v7, v9, [B

    .line 149
    .local v7, "temp":[B
    const-string v9, "xlw"

    const-string v10, ".........."

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    sget-object v9, Lcom/xlwtech/util/XlwSmart;->ssid:Ljava/lang/String;

    sget-object v10, Lcom/xlwtech/util/XlwSmart;->pass:Ljava/lang/String;

    invoke-direct {p0, v9, v10, v0}, Lcom/xlwtech/util/XlwSmart;->BuildConfig(Ljava/lang/String;Ljava/lang/String;[B)I

    move-result v6

    .line 156
    .local v6, "len":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/16 v9, 0x400

    if-lt v2, v9, :cond_2

    .line 158
    :cond_0
    sget-boolean v9, Lcom/xlwtech/util/XlwSmart;->runFlag:Z

    if-nez v9, :cond_3

    .line 188
    :cond_1
    const/4 v9, 0x0

    sput-boolean v9, Lcom/xlwtech/util/XlwSmart;->runFlag:Z

    .line 189
    invoke-static {}, Lcom/xlwtech/util/XlwSmartResponse;->getInstance()Lcom/xlwtech/util/XlwSmartResponse;

    move-result-object v9

    invoke-virtual {v9}, Lcom/xlwtech/util/XlwSmartResponse;->cancel()V

    .line 190
    return-void

    .line 156
    :cond_2
    div-int/lit8 v9, v2, 0x4

    int-to-byte v9, v9

    aput-byte v9, v7, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 160
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 161
    .local v4, "iTickNow":J
    sget-wide v10, Lcom/xlwtech/util/XlwSmart;->timeOut:J

    const-wide/16 v12, 0x0

    cmp-long v9, v10, v12

    if-eqz v9, :cond_4

    sget-wide v10, Lcom/xlwtech/util/XlwSmart;->timeOut:J

    cmp-long v9, v4, v10

    if-gtz v9, :cond_1

    .line 162
    :cond_4
    sget-boolean v9, Lcom/xlwtech/util/XlwSmart;->runFlag:Z

    if-eqz v9, :cond_1

    .line 165
    const-string v1, "239.88.0.0"

    .line 166
    .local v1, "host":Ljava/lang/String;
    const/4 v2, 0x0

    :goto_1
    const/4 v9, 0x3

    if-lt v2, v9, :cond_6

    .line 174
    :cond_5
    const/4 v2, 0x0

    const/4 v3, 0x0

    .local v3, "j":I
    :goto_2
    if-ge v2, v6, :cond_0

    .line 176
    rem-int/lit8 v9, v3, 0x2

    if-nez v9, :cond_7

    const-string v9, "239.76.%d.%d"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aget-byte v12, v0, v2

    and-int/lit16 v12, v12, 0xff

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    add-int/lit8 v12, v2, 0x1

    aget-byte v12, v0, v12

    and-int/lit16 v12, v12, 0xff

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 180
    :goto_3
    const/16 v9, 0x61a8

    add-int/lit8 v10, v3, 0x1e

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v8, v1, v9, v7, v10}, Lcom/xlwtech/util/XlwUdp;->SocketSend(Ljava/lang/String;I[BI)Z

    .line 181
    const-wide/16 v10, 0xa

    invoke-static {v10, v11}, Landroid/os/SystemClock;->sleep(J)V

    .line 182
    sget v9, Lcom/xlwtech/util/XlwSmart;->progress:I

    add-int/lit8 v9, v9, 0x1

    sput v9, Lcom/xlwtech/util/XlwSmart;->progress:I

    .line 183
    add-int/lit8 v2, v2, 0x1

    .line 184
    sget-boolean v9, Lcom/xlwtech/util/XlwSmart;->runFlag:Z

    if-eqz v9, :cond_0

    .line 174
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 168
    .end local v3    # "j":I
    :cond_6
    const/16 v9, 0x61a8

    const/16 v10, 0x1e

    invoke-virtual {v8, v1, v9, v7, v10}, Lcom/xlwtech/util/XlwUdp;->SocketSend(Ljava/lang/String;I[BI)Z

    .line 169
    const-wide/16 v10, 0xa

    invoke-static {v10, v11}, Landroid/os/SystemClock;->sleep(J)V

    .line 170
    sget v9, Lcom/xlwtech/util/XlwSmart;->progress:I

    add-int/lit8 v9, v9, 0x1

    sput v9, Lcom/xlwtech/util/XlwSmart;->progress:I

    .line 171
    sget-boolean v9, Lcom/xlwtech/util/XlwSmart;->runFlag:Z

    if-eqz v9, :cond_5

    .line 166
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 177
    .restart local v3    # "j":I
    :cond_7
    const-string v9, "239.87.%d.%d"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aget-byte v12, v0, v2

    and-int/lit16 v12, v12, 0xff

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    add-int/lit8 v12, v2, 0x1

    aget-byte v12, v0, v12

    and-int/lit16 v12, v12, 0xff

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_3
.end method

.method static synthetic access$0(Lcom/xlwtech/util/XlwSmart;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/xlwtech/util/XlwSmart;->DoConfig()V

    return-void
.end method

.method public static getCrc8([BI)B
    .locals 7
    .param p0, "ptr"    # [B
    .param p1, "len"    # I

    .prologue
    .line 63
    const/4 v0, 0x0

    .line 64
    .local v0, "crc8":B
    const/4 v2, 0x0

    .local v2, "i":I
    move v3, v2

    .end local v2    # "i":I
    .local v3, "i":I
    move v4, p1

    .line 65
    .end local p1    # "len":I
    .local v4, "len":I
    :goto_0
    add-int/lit8 p1, v4, -0x1

    .end local v4    # "len":I
    .restart local p1    # "len":I
    if-nez v4, :cond_0

    .line 70
    return v0

    .line 67
    :cond_0
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    aget-byte v1, p0, v3

    .line 68
    .local v1, "data":B
    sget-object v5, Lcom/xlwtech/util/XlwSmart;->__crc8_tbl:[B

    xor-int v6, v0, v1

    add-int/lit16 v6, v6, 0x100

    rem-int/lit16 v6, v6, 0x100

    aget-byte v0, v5, v6

    move v3, v2

    .end local v2    # "i":I
    .restart local v3    # "i":I
    move v4, p1

    .end local p1    # "len":I
    .restart local v4    # "len":I
    goto :goto_0
.end method

.method public static getInstance()Lcom/xlwtech/util/XlwSmart;
    .locals 1

    .prologue
    .line 82
    sget-object v0, Lcom/xlwtech/util/XlwSmart;->instance:Lcom/xlwtech/util/XlwSmart;

    if-nez v0, :cond_0

    .line 84
    :try_start_0
    sget-object v0, Lcom/xlwtech/util/XlwSmart;->instance:Lcom/xlwtech/util/XlwSmart;

    if-nez v0, :cond_0

    .line 85
    new-instance v0, Lcom/xlwtech/util/XlwSmart;

    invoke-direct {v0}, Lcom/xlwtech/util/XlwSmart;-><init>()V

    sput-object v0, Lcom/xlwtech/util/XlwSmart;->instance:Lcom/xlwtech/util/XlwSmart;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    :cond_0
    sget-object v0, Lcom/xlwtech/util/XlwSmart;->instance:Lcom/xlwtech/util/XlwSmart;

    return-object v0

    .line 87
    :catchall_0
    move-exception v0

    .line 89
    throw v0
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    .line 110
    const/4 v0, 0x0

    sput-boolean v0, Lcom/xlwtech/util/XlwSmart;->runFlag:Z

    .line 111
    iget-object v0, p0, Lcom/xlwtech/util/XlwSmart;->future:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xlwtech/util/XlwSmart;->future:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 112
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xlwtech/util/XlwSmart;->future:Ljava/util/concurrent/ScheduledFuture;

    .line 113
    return-void
.end method

.method public run()V
    .locals 5

    .prologue
    .line 95
    const/4 v0, 0x1

    sput-boolean v0, Lcom/xlwtech/util/XlwSmart;->runFlag:Z

    .line 96
    const/4 v0, 0x0

    sput v0, Lcom/xlwtech/util/XlwSmart;->progress:I

    .line 97
    sget-object v0, Lcom/xlwtech/util/XlwSmart;->service:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/xlwtech/util/XlwSmart$1;

    invoke-direct {v1, p0}, Lcom/xlwtech/util/XlwSmart$1;-><init>(Lcom/xlwtech/util/XlwSmart;)V

    .line 106
    const-wide/16 v2, 0x1

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 97
    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/xlwtech/util/XlwSmart;->future:Ljava/util/concurrent/ScheduledFuture;

    .line 107
    return-void
.end method

.method public shutdown()V
    .locals 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/xlwtech/util/XlwSmart;->future:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/xlwtech/util/XlwSmart;->future:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 118
    :cond_0
    sget-object v0, Lcom/xlwtech/util/XlwSmart;->service:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_1

    .line 119
    sget-object v0, Lcom/xlwtech/util/XlwSmart;->service:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    .line 120
    :cond_1
    return-void
.end method
