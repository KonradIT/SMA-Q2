.class public Lcom/accloud/service/ACContext;
.super Ljava/lang/Object;
.source "ACContext.java"


# instance fields
.field private accessMode:Ljava/lang/String;

.field private helper:Lcom/accloud/common/ACHelper;

.field private majorDomain:Ljava/lang/String;

.field private majorDomainId:Ljava/lang/Long;

.field private methodVersion:Ljava/lang/Long;

.field private nonce:Ljava/lang/String;

.field private phoneId:Ljava/lang/String;

.field private signature:Ljava/lang/String;

.field private subDomain:Ljava/lang/String;

.field private timeout:Ljava/lang/String;

.field private timestamp:Ljava/lang/String;

.field private traceId:Ljava/lang/String;

.field private traceStartTime:Ljava/lang/String;

.field private userId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 5
    .param p1, "majorDomain"    # Ljava/lang/String;
    .param p2, "subDomain"    # Ljava/lang/String;
    .param p3, "userId"    # J

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/accloud/service/ACContext;->majorDomain:Ljava/lang/String;

    .line 31
    iput-object p2, p0, Lcom/accloud/service/ACContext;->subDomain:Ljava/lang/String;

    .line 32
    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/accloud/service/ACContext;->userId:Ljava/lang/String;

    .line 34
    new-instance v1, Lcom/accloud/common/ACHelper;

    invoke-direct {v1}, Lcom/accloud/common/ACHelper;-><init>()V

    iput-object v1, p0, Lcom/accloud/service/ACContext;->helper:Lcom/accloud/common/ACHelper;

    .line 35
    iget-object v1, p0, Lcom/accloud/service/ACContext;->helper:Lcom/accloud/common/ACHelper;

    invoke-virtual {v1}, Lcom/accloud/common/ACHelper;->genSignature()Lcom/accloud/common/ACSignature;

    move-result-object v0

    .line 36
    .local v0, "zSignature":Lcom/accloud/common/ACSignature;
    invoke-virtual {v0}, Lcom/accloud/common/ACSignature;->getTimestamp()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/accloud/service/ACContext;->timestamp:Ljava/lang/String;

    .line 37
    invoke-virtual {v0}, Lcom/accloud/common/ACSignature;->getTimeout()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/accloud/service/ACContext;->timeout:Ljava/lang/String;

    .line 38
    invoke-virtual {v0}, Lcom/accloud/common/ACSignature;->getNonce()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/accloud/service/ACContext;->nonce:Ljava/lang/String;

    .line 39
    invoke-virtual {v0}, Lcom/accloud/common/ACSignature;->getSignature()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/accloud/service/ACContext;->signature:Ljava/lang/String;

    .line 40
    sget-object v1, Lcom/accloud/cloudservice/AC;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/accloud/utils/ACUtils;->getPhoneId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/accloud/service/ACContext;->phoneId:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 6
    .param p1, "majorDomain"    # Ljava/lang/String;
    .param p2, "refreshToken"    # Z

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/accloud/service/ACContext;->majorDomain:Ljava/lang/String;

    .line 46
    if-eqz p2, :cond_0

    .line 47
    sget-object v1, Lcom/accloud/cloudservice/AC;->context:Landroid/content/Context;

    const-string v2, "ablecloud_private_userId"

    const-wide/16 v4, 0x0

    invoke-static {v1, v2, v4, v5}, Lcom/accloud/utils/PreferencesUtils;->getLong(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/accloud/service/ACContext;->userId:Ljava/lang/String;

    .line 48
    new-instance v1, Lcom/accloud/common/ACHelper;

    invoke-direct {v1}, Lcom/accloud/common/ACHelper;-><init>()V

    iput-object v1, p0, Lcom/accloud/service/ACContext;->helper:Lcom/accloud/common/ACHelper;

    .line 49
    iget-object v1, p0, Lcom/accloud/service/ACContext;->helper:Lcom/accloud/common/ACHelper;

    invoke-virtual {v1}, Lcom/accloud/common/ACHelper;->genRefreshSignature()Lcom/accloud/common/ACSignature;

    move-result-object v0

    .line 50
    .local v0, "zSignature":Lcom/accloud/common/ACSignature;
    invoke-virtual {v0}, Lcom/accloud/common/ACSignature;->getTimestamp()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/accloud/service/ACContext;->timestamp:Ljava/lang/String;

    .line 51
    invoke-virtual {v0}, Lcom/accloud/common/ACSignature;->getTimeout()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/accloud/service/ACContext;->timeout:Ljava/lang/String;

    .line 52
    invoke-virtual {v0}, Lcom/accloud/common/ACSignature;->getSignature()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/accloud/service/ACContext;->signature:Ljava/lang/String;

    .line 53
    invoke-virtual {v0}, Lcom/accloud/common/ACSignature;->getNonce()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/accloud/service/ACContext;->nonce:Ljava/lang/String;

    .line 55
    .end local v0    # "zSignature":Lcom/accloud/common/ACSignature;
    :cond_0
    sget-object v1, Lcom/accloud/cloudservice/AC;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/accloud/utils/ACUtils;->getPhoneId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/accloud/service/ACContext;->phoneId:Ljava/lang/String;

    .line 56
    return-void
.end method


# virtual methods
.method public getAccessMode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/accloud/service/ACContext;->accessMode:Ljava/lang/String;

    return-object v0
.end method

.method public getMajorDomain()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/accloud/service/ACContext;->majorDomain:Ljava/lang/String;

    return-object v0
.end method

.method public getMajorDomainId()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/accloud/service/ACContext;->majorDomainId:Ljava/lang/Long;

    return-object v0
.end method

.method public getMethodVersion()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/accloud/service/ACContext;->methodVersion:Ljava/lang/Long;

    return-object v0
.end method

.method public getNonce()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/accloud/service/ACContext;->nonce:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/accloud/service/ACContext;->phoneId:Ljava/lang/String;

    return-object v0
.end method

.method public getSignature()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/accloud/service/ACContext;->signature:Ljava/lang/String;

    return-object v0
.end method

.method public getSubDomain()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/accloud/service/ACContext;->subDomain:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeout()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/accloud/service/ACContext;->timeout:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestamp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/accloud/service/ACContext;->timestamp:Ljava/lang/String;

    return-object v0
.end method

.method public getTraceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/accloud/service/ACContext;->traceId:Ljava/lang/String;

    return-object v0
.end method

.method public getTraceStartTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/accloud/service/ACContext;->traceStartTime:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/accloud/service/ACContext;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public setAccessMode(Ljava/lang/String;)V
    .locals 0
    .param p1, "accessMode"    # Ljava/lang/String;

    .prologue
    .line 131
    iput-object p1, p0, Lcom/accloud/service/ACContext;->accessMode:Ljava/lang/String;

    .line 132
    return-void
.end method

.method public setMajorDomain(Ljava/lang/String;)V
    .locals 0
    .param p1, "majorDomain"    # Ljava/lang/String;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/accloud/service/ACContext;->majorDomain:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public setMajorDomainId(J)V
    .locals 1
    .param p1, "majorDomainId"    # J

    .prologue
    .line 63
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/accloud/service/ACContext;->majorDomainId:Ljava/lang/Long;

    .line 64
    return-void
.end method

.method public setMethodVersion(Ljava/lang/Long;)V
    .locals 0
    .param p1, "methodVersion"    # Ljava/lang/Long;

    .prologue
    .line 147
    iput-object p1, p0, Lcom/accloud/service/ACContext;->methodVersion:Ljava/lang/Long;

    .line 148
    return-void
.end method

.method public setNonce(Ljava/lang/String;)V
    .locals 0
    .param p1, "nonce"    # Ljava/lang/String;

    .prologue
    .line 119
    iput-object p1, p0, Lcom/accloud/service/ACContext;->nonce:Ljava/lang/String;

    .line 120
    return-void
.end method

.method public setPhoneId(Ljava/lang/String;)V
    .locals 0
    .param p1, "phoneId"    # Ljava/lang/String;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/accloud/service/ACContext;->phoneId:Ljava/lang/String;

    .line 140
    return-void
.end method

.method public setSignature(Ljava/lang/String;)V
    .locals 0
    .param p1, "signature"    # Ljava/lang/String;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/accloud/service/ACContext;->signature:Ljava/lang/String;

    .line 112
    return-void
.end method

.method public setSubDomain(Ljava/lang/String;)V
    .locals 0
    .param p1, "subDomain"    # Ljava/lang/String;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/accloud/service/ACContext;->subDomain:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public setTimestamp(Ljava/lang/String;)V
    .locals 0
    .param p1, "timestamp"    # Ljava/lang/String;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/accloud/service/ACContext;->timestamp:Ljava/lang/String;

    .line 100
    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0
    .param p1, "userId"    # Ljava/lang/String;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/accloud/service/ACContext;->userId:Ljava/lang/String;

    .line 88
    return-void
.end method
