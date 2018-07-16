.class public Lcom/accloud/service/ACHome;
.super Ljava/lang/Object;
.source "ACHome.java"


# instance fields
.field private homeId:J

.field private name:Ljava/lang/String;

.field private owner:J


# direct methods
.method public constructor <init>(JJLjava/lang/String;)V
    .locals 1
    .param p1, "homeId"    # J
    .param p3, "owner"    # J
    .param p5, "name"    # Ljava/lang/String;

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-wide p1, p0, Lcom/accloud/service/ACHome;->homeId:J

    .line 15
    iput-wide p3, p0, Lcom/accloud/service/ACHome;->owner:J

    .line 16
    iput-object p5, p0, Lcom/accloud/service/ACHome;->name:Ljava/lang/String;

    .line 17
    return-void
.end method


# virtual methods
.method public getHomeId()J
    .locals 2

    .prologue
    .line 20
    iget-wide v0, p0, Lcom/accloud/service/ACHome;->homeId:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/accloud/service/ACHome;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOwner()J
    .locals 2

    .prologue
    .line 36
    iget-wide v0, p0, Lcom/accloud/service/ACHome;->owner:J

    return-wide v0
.end method

.method public setHomeId(J)V
    .locals 1
    .param p1, "homeId"    # J

    .prologue
    .line 24
    iput-wide p1, p0, Lcom/accloud/service/ACHome;->homeId:J

    .line 25
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/accloud/service/ACHome;->name:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public setOwner(J)V
    .locals 1
    .param p1, "owner"    # J

    .prologue
    .line 40
    iput-wide p1, p0, Lcom/accloud/service/ACHome;->owner:J

    .line 41
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ACHome{homeId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/accloud/service/ACHome;->homeId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", owner="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/accloud/service/ACHome;->owner:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/accloud/service/ACHome;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
