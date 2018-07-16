.class public Lcom/accloud/service/ACRoom;
.super Ljava/lang/Object;
.source "ACRoom.java"


# instance fields
.field private homeId:J

.field private name:Ljava/lang/String;

.field private owner:J

.field private roomId:J


# direct methods
.method public constructor <init>(JJJLjava/lang/String;)V
    .locals 1
    .param p1, "homeId"    # J
    .param p3, "roomId"    # J
    .param p5, "owner"    # J
    .param p7, "name"    # Ljava/lang/String;

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-wide p1, p0, Lcom/accloud/service/ACRoom;->homeId:J

    .line 16
    iput-wide p5, p0, Lcom/accloud/service/ACRoom;->owner:J

    .line 17
    iput-object p7, p0, Lcom/accloud/service/ACRoom;->name:Ljava/lang/String;

    .line 18
    iput-wide p3, p0, Lcom/accloud/service/ACRoom;->roomId:J

    .line 19
    return-void
.end method


# virtual methods
.method public getHomeId()J
    .locals 2

    .prologue
    .line 22
    iget-wide v0, p0, Lcom/accloud/service/ACRoom;->homeId:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/accloud/service/ACRoom;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOwner()J
    .locals 2

    .prologue
    .line 30
    iget-wide v0, p0, Lcom/accloud/service/ACRoom;->owner:J

    return-wide v0
.end method

.method public getRoomId()J
    .locals 2

    .prologue
    .line 46
    iget-wide v0, p0, Lcom/accloud/service/ACRoom;->roomId:J

    return-wide v0
.end method

.method public setHomeId(J)V
    .locals 1
    .param p1, "homeId"    # J

    .prologue
    .line 26
    iput-wide p1, p0, Lcom/accloud/service/ACRoom;->homeId:J

    .line 27
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/accloud/service/ACRoom;->name:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public setOwner(J)V
    .locals 1
    .param p1, "owner"    # J

    .prologue
    .line 34
    iput-wide p1, p0, Lcom/accloud/service/ACRoom;->owner:J

    .line 35
    return-void
.end method

.method public setRoomId(J)V
    .locals 1
    .param p1, "roomId"    # J

    .prologue
    .line 50
    iput-wide p1, p0, Lcom/accloud/service/ACRoom;->roomId:J

    .line 51
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ACRoom{homeId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/accloud/service/ACRoom;->homeId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", owner="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/accloud/service/ACRoom;->owner:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", roomId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/accloud/service/ACRoom;->roomId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/accloud/service/ACRoom;->name:Ljava/lang/String;

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
