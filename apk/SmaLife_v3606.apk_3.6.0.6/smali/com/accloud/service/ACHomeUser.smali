.class public Lcom/accloud/service/ACHomeUser;
.super Ljava/lang/Object;
.source "ACHomeUser.java"


# instance fields
.field private email:Ljava/lang/String;

.field private homeId:J

.field private name:Ljava/lang/String;

.field private phone:Ljava/lang/String;

.field private userId:J

.field private userType:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method

.method public constructor <init>(JJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "userId"    # J
    .param p3, "homeId"    # J
    .param p5, "userType"    # J
    .param p7, "phone"    # Ljava/lang/String;
    .param p8, "email"    # Ljava/lang/String;
    .param p9, "name"    # Ljava/lang/String;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-wide p1, p0, Lcom/accloud/service/ACHomeUser;->userId:J

    .line 29
    iput-wide p3, p0, Lcom/accloud/service/ACHomeUser;->homeId:J

    .line 30
    iput-wide p5, p0, Lcom/accloud/service/ACHomeUser;->userType:J

    .line 31
    iput-object p7, p0, Lcom/accloud/service/ACHomeUser;->phone:Ljava/lang/String;

    .line 32
    iput-object p8, p0, Lcom/accloud/service/ACHomeUser;->email:Ljava/lang/String;

    .line 33
    iput-object p9, p0, Lcom/accloud/service/ACHomeUser;->name:Ljava/lang/String;

    .line 34
    return-void
.end method


# virtual methods
.method public getEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/accloud/service/ACHomeUser;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getHomeId()J
    .locals 2

    .prologue
    .line 53
    iget-wide v0, p0, Lcom/accloud/service/ACHomeUser;->homeId:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/accloud/service/ACHomeUser;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPhone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/accloud/service/ACHomeUser;->phone:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()J
    .locals 2

    .prologue
    .line 45
    iget-wide v0, p0, Lcom/accloud/service/ACHomeUser;->userId:J

    return-wide v0
.end method

.method public getUserType()J
    .locals 2

    .prologue
    .line 61
    iget-wide v0, p0, Lcom/accloud/service/ACHomeUser;->userType:J

    return-wide v0
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 0
    .param p1, "email"    # Ljava/lang/String;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/accloud/service/ACHomeUser;->email:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public setHomeId(J)V
    .locals 1
    .param p1, "homeId"    # J

    .prologue
    .line 57
    iput-wide p1, p0, Lcom/accloud/service/ACHomeUser;->homeId:J

    .line 58
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/accloud/service/ACHomeUser;->name:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public setPhone(Ljava/lang/String;)V
    .locals 0
    .param p1, "phone"    # Ljava/lang/String;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/accloud/service/ACHomeUser;->phone:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public setUserId(J)V
    .locals 1
    .param p1, "userId"    # J

    .prologue
    .line 49
    iput-wide p1, p0, Lcom/accloud/service/ACHomeUser;->userId:J

    .line 50
    return-void
.end method

.method public setUserType(J)V
    .locals 1
    .param p1, "userType"    # J

    .prologue
    .line 65
    iput-wide p1, p0, Lcom/accloud/service/ACHomeUser;->userType:J

    .line 66
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v4, 0x27

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ACDeviceUser{userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/accloud/service/ACHomeUser;->userId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", homeId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/accloud/service/ACHomeUser;->homeId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", userType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/accloud/service/ACHomeUser;->userType:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", phone=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/accloud/service/ACHomeUser;->phone:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", email=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/accloud/service/ACHomeUser;->email:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/accloud/service/ACHomeUser;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
