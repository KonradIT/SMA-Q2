.class public final Lcom/umeng/message/proguard/bs;
.super Ljava/lang/Object;
.source "Base64.java"


# static fields
.field private static final a:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 103
    const/16 v0, 0x40

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/umeng/message/proguard/bs;->a:[B

    return-void

    :array_0
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2bt
        0x2ft
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    return-void
.end method

.method public static final a([B)[B
    .locals 1

    .prologue
    .line 10
    array-length v0, p0

    invoke-static {p0, v0}, Lcom/umeng/message/proguard/bs;->a([BI)[B

    move-result-object v0

    return-object v0
.end method

.method static a([BI)[B
    .locals 14

    .prologue
    const/16 v12, 0xd

    const/16 v11, 0xa

    const/16 v10, 0x9

    const/4 v6, 0x0

    const/4 v1, 0x0

    .line 14
    if-eqz p0, :cond_0

    if-gtz p1, :cond_1

    :cond_0
    move-object v0, v6

    .line 100
    :goto_0
    return-object v0

    .line 18
    :cond_1
    div-int/lit8 v0, p1, 0x4

    mul-int/lit8 v0, v0, 0x3

    .line 20
    if-nez v0, :cond_2

    move-object v0, v6

    .line 21
    goto :goto_0

    .line 24
    :cond_2
    new-array v8, v0, [B

    move v0, v1

    .line 31
    :goto_1
    add-int/lit8 v2, p1, -0x1

    aget-byte v2, p0, v2

    .line 33
    if-eq v2, v11, :cond_3

    if-eq v2, v12, :cond_3

    const/16 v3, 0x20

    if-eq v2, v3, :cond_3

    if-ne v2, v10, :cond_4

    .line 30
    :cond_3
    :goto_2
    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    .line 36
    :cond_4
    const/16 v3, 0x3d

    if-ne v2, v3, :cond_5

    .line 37
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    move v7, v1

    move v4, v1

    move v5, v1

    move v3, v1

    .line 50
    :goto_3
    if-ge v7, p1, :cond_c

    .line 51
    aget-byte v2, p0, v7

    .line 53
    if-eq v2, v11, :cond_10

    if-eq v2, v12, :cond_10

    const/16 v9, 0x20

    if-eq v2, v9, :cond_10

    if-ne v2, v10, :cond_6

    move v2, v4

    move v4, v3

    move v3, v5

    .line 50
    :goto_4
    add-int/lit8 v5, v7, 0x1

    move v7, v5

    move v5, v3

    move v3, v4

    move v4, v2

    goto :goto_3

    .line 56
    :cond_6
    const/16 v9, 0x41

    if-lt v2, v9, :cond_7

    const/16 v9, 0x5a

    if-gt v2, v9, :cond_7

    .line 60
    add-int/lit8 v2, v2, -0x41

    .line 79
    :goto_5
    shl-int/lit8 v4, v4, 0x6

    int-to-byte v2, v2

    or-int/2addr v4, v2

    .line 80
    rem-int/lit8 v2, v5, 0x4

    const/4 v9, 0x3

    if-ne v2, v9, :cond_f

    .line 82
    add-int/lit8 v2, v3, 0x1

    shr-int/lit8 v9, v4, 0x10

    int-to-byte v9, v9

    aput-byte v9, v8, v3

    .line 83
    add-int/lit8 v3, v2, 0x1

    shr-int/lit8 v9, v4, 0x8

    int-to-byte v9, v9

    aput-byte v9, v8, v2

    .line 84
    add-int/lit8 v2, v3, 0x1

    int-to-byte v9, v4

    aput-byte v9, v8, v3

    .line 86
    :goto_6
    add-int/lit8 v3, v5, 0x1

    move v13, v4

    move v4, v2

    move v2, v13

    goto :goto_4

    .line 61
    :cond_7
    const/16 v9, 0x61

    if-lt v2, v9, :cond_8

    const/16 v9, 0x7a

    if-gt v2, v9, :cond_8

    .line 65
    add-int/lit8 v2, v2, -0x47

    goto :goto_5

    .line 66
    :cond_8
    const/16 v9, 0x30

    if-lt v2, v9, :cond_9

    const/16 v9, 0x39

    if-gt v2, v9, :cond_9

    .line 70
    add-int/lit8 v2, v2, 0x4

    goto :goto_5

    .line 71
    :cond_9
    const/16 v9, 0x2b

    if-ne v2, v9, :cond_a

    .line 72
    const/16 v2, 0x3e

    goto :goto_5

    .line 73
    :cond_a
    const/16 v9, 0x2f

    if-ne v2, v9, :cond_b

    .line 74
    const/16 v2, 0x3f

    goto :goto_5

    :cond_b
    move-object v0, v6

    .line 76
    goto/16 :goto_0

    .line 88
    :cond_c
    if-lez v0, :cond_d

    .line 90
    mul-int/lit8 v2, v0, 0x6

    shl-int/2addr v4, v2

    .line 92
    add-int/lit8 v2, v3, 0x1

    shr-int/lit8 v5, v4, 0x10

    int-to-byte v5, v5

    aput-byte v5, v8, v3

    .line 93
    const/4 v3, 0x1

    if-ne v0, v3, :cond_e

    .line 94
    add-int/lit8 v3, v2, 0x1

    shr-int/lit8 v0, v4, 0x8

    int-to-byte v0, v0

    aput-byte v0, v8, v2

    .line 98
    :cond_d
    :goto_7
    new-array v0, v3, [B

    .line 99
    invoke-static {v8, v1, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_0

    :cond_e
    move v3, v2

    goto :goto_7

    :cond_f
    move v2, v3

    goto :goto_6

    :cond_10
    move v2, v4

    move v4, v3

    move v3, v5

    goto :goto_4
.end method

.method public static final b([B)Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x3d

    const/4 v2, 0x0

    .line 112
    array-length v0, p0

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x4

    div-int/lit8 v0, v0, 0x3

    .line 113
    new-array v4, v0, [B

    .line 114
    array-length v0, p0

    array-length v1, p0

    rem-int/lit8 v1, v1, 0x3

    sub-int v5, v0, v1

    move v1, v2

    move v0, v2

    .line 115
    :goto_0
    if-ge v1, v5, :cond_0

    .line 116
    add-int/lit8 v3, v0, 0x1

    sget-object v6, Lcom/umeng/message/proguard/bs;->a:[B

    aget-byte v7, p0, v1

    and-int/lit16 v7, v7, 0xff

    shr-int/lit8 v7, v7, 0x2

    aget-byte v6, v6, v7

    aput-byte v6, v4, v0

    .line 117
    add-int/lit8 v0, v3, 0x1

    sget-object v6, Lcom/umeng/message/proguard/bs;->a:[B

    aget-byte v7, p0, v1

    and-int/lit8 v7, v7, 0x3

    shl-int/lit8 v7, v7, 0x4

    add-int/lit8 v8, v1, 0x1

    aget-byte v8, p0, v8

    and-int/lit16 v8, v8, 0xff

    shr-int/lit8 v8, v8, 0x4

    or-int/2addr v7, v8

    aget-byte v6, v6, v7

    aput-byte v6, v4, v3

    .line 119
    add-int/lit8 v6, v0, 0x1

    sget-object v3, Lcom/umeng/message/proguard/bs;->a:[B

    add-int/lit8 v7, v1, 0x1

    aget-byte v7, p0, v7

    and-int/lit8 v7, v7, 0xf

    shl-int/lit8 v7, v7, 0x2

    add-int/lit8 v8, v1, 0x2

    aget-byte v8, p0, v8

    and-int/lit16 v8, v8, 0xff

    shr-int/lit8 v8, v8, 0x6

    or-int/2addr v7, v8

    aget-byte v3, v3, v7

    aput-byte v3, v4, v0

    .line 121
    add-int/lit8 v3, v6, 0x1

    sget-object v0, Lcom/umeng/message/proguard/bs;->a:[B

    add-int/lit8 v7, v1, 0x2

    aget-byte v7, p0, v7

    and-int/lit8 v7, v7, 0x3f

    aget-byte v0, v0, v7

    aput-byte v0, v4, v6

    .line 115
    add-int/lit8 v0, v1, 0x3

    move v1, v0

    move v0, v3

    goto :goto_0

    .line 123
    :cond_0
    array-length v1, p0

    rem-int/lit8 v1, v1, 0x3

    packed-switch v1, :pswitch_data_0

    .line 140
    :goto_1
    new-instance v1, Ljava/lang/String;

    const-string v3, "US_ASCII"

    invoke-direct {v1, v4, v2, v0, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    return-object v1

    .line 125
    :pswitch_0
    add-int/lit8 v1, v0, 0x1

    sget-object v3, Lcom/umeng/message/proguard/bs;->a:[B

    aget-byte v6, p0, v5

    and-int/lit16 v6, v6, 0xff

    shr-int/lit8 v6, v6, 0x2

    aget-byte v3, v3, v6

    aput-byte v3, v4, v0

    .line 126
    add-int/lit8 v0, v1, 0x1

    sget-object v3, Lcom/umeng/message/proguard/bs;->a:[B

    aget-byte v5, p0, v5

    and-int/lit8 v5, v5, 0x3

    shl-int/lit8 v5, v5, 0x4

    aget-byte v3, v3, v5

    aput-byte v3, v4, v1

    .line 127
    add-int/lit8 v1, v0, 0x1

    aput-byte v9, v4, v0

    .line 128
    add-int/lit8 v0, v1, 0x1

    aput-byte v9, v4, v1

    goto :goto_1

    .line 131
    :pswitch_1
    add-int/lit8 v1, v0, 0x1

    sget-object v3, Lcom/umeng/message/proguard/bs;->a:[B

    aget-byte v6, p0, v5

    and-int/lit16 v6, v6, 0xff

    shr-int/lit8 v6, v6, 0x2

    aget-byte v3, v3, v6

    aput-byte v3, v4, v0

    .line 132
    add-int/lit8 v0, v1, 0x1

    sget-object v3, Lcom/umeng/message/proguard/bs;->a:[B

    aget-byte v6, p0, v5

    and-int/lit8 v6, v6, 0x3

    shl-int/lit8 v6, v6, 0x4

    add-int/lit8 v7, v5, 0x1

    aget-byte v7, p0, v7

    and-int/lit16 v7, v7, 0xff

    shr-int/lit8 v7, v7, 0x4

    or-int/2addr v6, v7

    aget-byte v3, v3, v6

    aput-byte v3, v4, v1

    .line 134
    add-int/lit8 v1, v0, 0x1

    sget-object v3, Lcom/umeng/message/proguard/bs;->a:[B

    add-int/lit8 v5, v5, 0x1

    aget-byte v5, p0, v5

    and-int/lit8 v5, v5, 0xf

    shl-int/lit8 v5, v5, 0x2

    aget-byte v3, v3, v5

    aput-byte v3, v4, v0

    .line 135
    add-int/lit8 v0, v1, 0x1

    aput-byte v9, v4, v1

    goto :goto_1

    .line 123
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
