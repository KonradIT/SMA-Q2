.class public Lcom/accloud/common/ACSignature;
.super Ljava/lang/Object;
.source "ACSignature.java"


# instance fields
.field private nonce:Ljava/lang/String;

.field private signature:Ljava/lang/String;

.field private timeout:J

.field private timestamp:J


# direct methods
.method public constructor <init>(JJLjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "timestamp"    # J
    .param p3, "timeout"    # J
    .param p5, "signature"    # Ljava/lang/String;
    .param p6, "nonce"    # Ljava/lang/String;

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-wide p1, p0, Lcom/accloud/common/ACSignature;->timestamp:J

    .line 14
    iput-wide p3, p0, Lcom/accloud/common/ACSignature;->timeout:J

    .line 15
    iput-object p5, p0, Lcom/accloud/common/ACSignature;->signature:Ljava/lang/String;

    .line 16
    iput-object p6, p0, Lcom/accloud/common/ACSignature;->nonce:Ljava/lang/String;

    .line 17
    return-void
.end method


# virtual methods
.method public getNonce()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/accloud/common/ACSignature;->nonce:Ljava/lang/String;

    return-object v0
.end method

.method public getSignature()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/accloud/common/ACSignature;->signature:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeout()J
    .locals 2

    .prologue
    .line 24
    iget-wide v0, p0, Lcom/accloud/common/ACSignature;->timeout:J

    return-wide v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 20
    iget-wide v0, p0, Lcom/accloud/common/ACSignature;->timestamp:J

    return-wide v0
.end method
