.class public Lcom/espressif/iot/esptouch/protocol/EsptouchGenerator;
.super Ljava/lang/Object;
.source "EsptouchGenerator.java"

# interfaces
.implements Lcom/espressif/iot/esptouch/task/IEsptouchGenerator;


# instance fields
.field private final mDcBytes2:[[B

.field private final mGcBytes2:[[B


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/InetAddress;Z)V
    .locals 10
    .param p1, "apSsid"    # Ljava/lang/String;
    .param p2, "apBssid"    # Ljava/lang/String;
    .param p3, "apPassword"    # Ljava/lang/String;
    .param p4, "inetAddress"    # Ljava/net/InetAddress;
    .param p5, "isSsidHiden"    # Z

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v7, Lcom/espressif/iot/esptouch/protocol/GuideCode;

    invoke-direct {v7}, Lcom/espressif/iot/esptouch/protocol/GuideCode;-><init>()V

    .line 32
    .local v7, "gc":Lcom/espressif/iot/esptouch/protocol/GuideCode;
    invoke-virtual {v7}, Lcom/espressif/iot/esptouch/protocol/GuideCode;->getU8s()[C

    move-result-object v8

    .line 33
    .local v8, "gcU81":[C
    array-length v1, v8

    new-array v1, v1, [[B

    iput-object v1, p0, Lcom/espressif/iot/esptouch/protocol/EsptouchGenerator;->mGcBytes2:[[B

    .line 35
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    iget-object v1, p0, Lcom/espressif/iot/esptouch/protocol/EsptouchGenerator;->mGcBytes2:[[B

    array-length v1, v1

    if-ge v9, v1, :cond_0

    .line 36
    iget-object v1, p0, Lcom/espressif/iot/esptouch/protocol/EsptouchGenerator;->mGcBytes2:[[B

    aget-char v2, v8, v9

    invoke-static {v2}, Lcom/espressif/iot/esptouch/util/ByteUtil;->genSpecBytes(C)[B

    move-result-object v2

    aput-object v2, v1, v9

    .line 35
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 40
    :cond_0
    new-instance v0, Lcom/espressif/iot/esptouch/protocol/DatumCode;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/espressif/iot/esptouch/protocol/DatumCode;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/InetAddress;Z)V

    .line 42
    .local v0, "dc":Lcom/espressif/iot/esptouch/protocol/DatumCode;
    invoke-virtual {v0}, Lcom/espressif/iot/esptouch/protocol/DatumCode;->getU8s()[C

    move-result-object v6

    .line 43
    .local v6, "dcU81":[C
    array-length v1, v6

    new-array v1, v1, [[B

    iput-object v1, p0, Lcom/espressif/iot/esptouch/protocol/EsptouchGenerator;->mDcBytes2:[[B

    .line 45
    const/4 v9, 0x0

    :goto_1
    iget-object v1, p0, Lcom/espressif/iot/esptouch/protocol/EsptouchGenerator;->mDcBytes2:[[B

    array-length v1, v1

    if-ge v9, v1, :cond_1

    .line 46
    iget-object v1, p0, Lcom/espressif/iot/esptouch/protocol/EsptouchGenerator;->mDcBytes2:[[B

    aget-char v2, v6, v9

    invoke-static {v2}, Lcom/espressif/iot/esptouch/util/ByteUtil;->genSpecBytes(C)[B

    move-result-object v2

    aput-object v2, v1, v9

    .line 45
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 48
    :cond_1
    return-void
.end method


# virtual methods
.method public getDCBytes2()[[B
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/espressif/iot/esptouch/protocol/EsptouchGenerator;->mDcBytes2:[[B

    return-object v0
.end method

.method public getGCBytes2()[[B
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/espressif/iot/esptouch/protocol/EsptouchGenerator;->mGcBytes2:[[B

    return-object v0
.end method
