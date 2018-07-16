.class public Lcom/accloud/utils/Crc16Util;
.super Ljava/lang/Object;
.source "Crc16Util.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static GetCrc16([BI)I
    .locals 6
    .param p0, "data"    # [B
    .param p1, "length"    # I

    .prologue
    .line 16
    if-nez p0, :cond_1

    .line 17
    const/4 v1, 0x0

    .line 35
    :cond_0
    return v1

    .line 19
    :cond_1
    const/16 v0, 0x1021

    .line 20
    .local v0, "CRC_CCITT":I
    const/4 v1, 0x0

    .line 22
    .local v1, "crc":I
    const/4 v3, 0x0

    .local v3, "j":I
    move v4, p1

    .line 23
    .end local p1    # "length":I
    .local v4, "length":I
    :goto_0
    add-int/lit8 p1, v4, -0x1

    .end local v4    # "length":I
    .restart local p1    # "length":I
    if-eqz v4, :cond_0

    .line 24
    const/16 v2, 0x80

    .local v2, "i":I
    :goto_1
    if-eqz v2, :cond_4

    .line 25
    mul-int/lit8 v1, v1, 0x2

    .line 26
    and-int/lit8 v1, v1, -0x1

    .line 27
    const/high16 v5, 0x10000

    and-int/2addr v5, v1

    if-eqz v5, :cond_2

    .line 28
    const v5, 0x11021

    xor-int/2addr v1, v5

    .line 29
    :cond_2
    aget-byte v5, p0, v3

    and-int/2addr v5, v2

    if-eqz v5, :cond_3

    .line 30
    xor-int/2addr v1, v0

    .line 24
    :cond_3
    div-int/lit8 v2, v2, 0x2

    goto :goto_1

    .line 32
    :cond_4
    add-int/lit8 v3, v3, 0x1

    move v4, p1

    .end local p1    # "length":I
    .restart local v4    # "length":I
    goto :goto_0
.end method
