.class public Lcom/accloud/service/ACOpenIdInfo;
.super Ljava/lang/Object;
.source "ACOpenIdInfo.java"


# instance fields
.field private openId:Ljava/lang/String;

.field private thirdPlatform:Lcom/accloud/service/ACThirdPlatform;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    return-void
.end method

.method public constructor <init>(Lcom/accloud/service/ACThirdPlatform;Ljava/lang/String;)V
    .locals 0
    .param p1, "thirdPlatform"    # Lcom/accloud/service/ACThirdPlatform;
    .param p2, "openId"    # Ljava/lang/String;

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/accloud/service/ACOpenIdInfo;->thirdPlatform:Lcom/accloud/service/ACThirdPlatform;

    .line 15
    iput-object p2, p0, Lcom/accloud/service/ACOpenIdInfo;->openId:Ljava/lang/String;

    .line 16
    return-void
.end method


# virtual methods
.method public getOpenId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/accloud/service/ACOpenIdInfo;->openId:Ljava/lang/String;

    return-object v0
.end method

.method public getThirdPlatform()Lcom/accloud/service/ACThirdPlatform;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/accloud/service/ACOpenIdInfo;->thirdPlatform:Lcom/accloud/service/ACThirdPlatform;

    return-object v0
.end method

.method public setOpenId(Ljava/lang/String;)V
    .locals 0
    .param p1, "openId"    # Ljava/lang/String;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/accloud/service/ACOpenIdInfo;->openId:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public setThirdPlatform(Lcom/accloud/service/ACThirdPlatform;)V
    .locals 0
    .param p1, "thirdPlatform"    # Lcom/accloud/service/ACThirdPlatform;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/accloud/service/ACOpenIdInfo;->thirdPlatform:Lcom/accloud/service/ACThirdPlatform;

    .line 32
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x27

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ACOpenIdInfo{ACThirdPlatform=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/accloud/service/ACOpenIdInfo;->thirdPlatform:Lcom/accloud/service/ACThirdPlatform;

    iget-object v1, v1, Lcom/accloud/service/ACThirdPlatform;->provider:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", openId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/accloud/service/ACOpenIdInfo;->openId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
