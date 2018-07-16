.class public Lcom/accloud/common/ACHelper;
.super Ljava/lang/Object;
.source "ACHelper.java"


# static fields
.field private static base:Ljava/lang/String;


# instance fields
.field private random:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-string v0, "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"

    sput-object v0, Lcom/accloud/common/ACHelper;->base:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/accloud/common/ACHelper;->random:Ljava/util/Random;

    .line 14
    return-void
.end method

.method private genNonce(JI)Ljava/lang/String;
    .locals 5
    .param p1, "seed"    # J
    .param p3, "length"    # I

    .prologue
    .line 37
    iget-object v2, p0, Lcom/accloud/common/ACHelper;->random:Ljava/util/Random;

    invoke-virtual {v2, p1, p2}, Ljava/util/Random;->setSeed(J)V

    .line 38
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 39
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_0

    .line 40
    sget-object v2, Lcom/accloud/common/ACHelper;->base:Ljava/lang/String;

    iget-object v3, p0, Lcom/accloud/common/ACHelper;->random:Ljava/util/Random;

    sget-object v4, Lcom/accloud/common/ACHelper;->base:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 39
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 42
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public genRefreshSignature()Lcom/accloud/common/ACSignature;
    .locals 12

    .prologue
    .line 27
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    div-long v2, v8, v10

    .line 28
    .local v2, "timestamp":J
    sget v1, Lcom/accloud/common/ACConfiguration;->AUTH_TIMEOUT:I

    int-to-long v4, v1

    .line 29
    .local v4, "timeout":J
    const/16 v1, 0x10

    invoke-direct {p0, v2, v3, v1}, Lcom/accloud/common/ACHelper;->genNonce(JI)Ljava/lang/String;

    move-result-object v7

    .line 31
    .local v7, "nonce":Ljava/lang/String;
    invoke-static {v2, v3, v4, v5, v7}, Lcom/accloud/common/ACSigner;->genRefreshSignString(JJLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 32
    .local v0, "stringToSign":Ljava/lang/String;
    invoke-static {v0}, Lcom/accloud/common/ACSigner;->genSignature(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 33
    .local v6, "signature":Ljava/lang/String;
    new-instance v1, Lcom/accloud/common/ACSignature;

    invoke-direct/range {v1 .. v7}, Lcom/accloud/common/ACSignature;-><init>(JJLjava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public genSignature()Lcom/accloud/common/ACSignature;
    .locals 12

    .prologue
    .line 17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    div-long v2, v8, v10

    .line 18
    .local v2, "timestamp":J
    sget v1, Lcom/accloud/common/ACConfiguration;->AUTH_TIMEOUT:I

    int-to-long v4, v1

    .line 19
    .local v4, "timeout":J
    const/16 v1, 0x10

    invoke-direct {p0, v2, v3, v1}, Lcom/accloud/common/ACHelper;->genNonce(JI)Ljava/lang/String;

    move-result-object v7

    .line 21
    .local v7, "nonce":Ljava/lang/String;
    invoke-static {v2, v3, v4, v5, v7}, Lcom/accloud/common/ACSigner;->genSignString(JJLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 22
    .local v0, "stringToSign":Ljava/lang/String;
    invoke-static {v0}, Lcom/accloud/common/ACSigner;->genSignature(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 23
    .local v6, "signature":Ljava/lang/String;
    new-instance v1, Lcom/accloud/common/ACSignature;

    invoke-direct/range {v1 .. v7}, Lcom/accloud/common/ACSignature;-><init>(JJLjava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method
