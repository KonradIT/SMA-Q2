.class public Lcom/accloud/service/ACOTAUpgradeInfo;
.super Ljava/lang/Object;
.source "ACOTAUpgradeInfo.java"


# instance fields
.field private currentVersion:Ljava/lang/String;

.field private files:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/accloud/service/ACOTAFileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private isUpdate:Z

.field private otaMode:I

.field private status:I

.field private targetVersion:Ljava/lang/String;

.field private upgradeLog:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/util/List;)V
    .locals 1
    .param p1, "currentVersion"    # Ljava/lang/String;
    .param p2, "targetVersion"    # Ljava/lang/String;
    .param p3, "otaMode"    # I
    .param p4, "upgradeLog"    # Ljava/lang/String;
    .param p5, "status"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/accloud/service/ACOTAFileInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 29
    .local p6, "files":Ljava/util/List;, "Ljava/util/List<Lcom/accloud/service/ACOTAFileInfo;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/accloud/service/ACOTAUpgradeInfo;->currentVersion:Ljava/lang/String;

    .line 31
    iput-object p2, p0, Lcom/accloud/service/ACOTAUpgradeInfo;->targetVersion:Ljava/lang/String;

    .line 32
    iput p3, p0, Lcom/accloud/service/ACOTAUpgradeInfo;->otaMode:I

    .line 33
    iput-object p4, p0, Lcom/accloud/service/ACOTAUpgradeInfo;->upgradeLog:Ljava/lang/String;

    .line 34
    iput p5, p0, Lcom/accloud/service/ACOTAUpgradeInfo;->status:I

    .line 35
    iput-object p6, p0, Lcom/accloud/service/ACOTAUpgradeInfo;->files:Ljava/util/List;

    .line 36
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/accloud/service/ACOTAUpgradeInfo;->isUpdate:Z

    .line 38
    :cond_0
    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;)V
    .locals 0
    .param p1, "isUpdate"    # Z
    .param p2, "upgradeLog"    # Ljava/lang/String;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-boolean p1, p0, Lcom/accloud/service/ACOTAUpgradeInfo;->isUpdate:Z

    .line 26
    iput-object p2, p0, Lcom/accloud/service/ACOTAUpgradeInfo;->upgradeLog:Ljava/lang/String;

    .line 27
    return-void
.end method


# virtual methods
.method public getCurrentVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/accloud/service/ACOTAUpgradeInfo;->currentVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getFiles()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/accloud/service/ACOTAFileInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 65
    iget-object v0, p0, Lcom/accloud/service/ACOTAUpgradeInfo;->files:Ljava/util/List;

    return-object v0
.end method

.method public getOtaMode()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/accloud/service/ACOTAUpgradeInfo;->otaMode:I

    return v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/accloud/service/ACOTAUpgradeInfo;->status:I

    return v0
.end method

.method public getTargetVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/accloud/service/ACOTAUpgradeInfo;->targetVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getUpgradeLog()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/accloud/service/ACOTAUpgradeInfo;->upgradeLog:Ljava/lang/String;

    return-object v0
.end method

.method public isUpdate()Z
    .locals 1

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/accloud/service/ACOTAUpgradeInfo;->isUpdate:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x27

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ACOTAUpgradeInfo{isUpdate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/accloud/service/ACOTAUpgradeInfo;->isUpdate:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", currentVersion=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/accloud/service/ACOTAUpgradeInfo;->currentVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", targetVersion=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/accloud/service/ACOTAUpgradeInfo;->targetVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", otaMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/accloud/service/ACOTAUpgradeInfo;->otaMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", upgradeLog=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/accloud/service/ACOTAUpgradeInfo;->upgradeLog:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/accloud/service/ACOTAUpgradeInfo;->status:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", files="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/accloud/service/ACOTAUpgradeInfo;->files:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
