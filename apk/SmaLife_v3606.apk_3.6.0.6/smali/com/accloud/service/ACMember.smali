.class public Lcom/accloud/service/ACMember;
.super Ljava/lang/Object;
.source "ACMember.java"


# static fields
.field public static final ACTIVE:J = 0x1L

.field public static final FROZEN:J = 0x2L

.field public static final INVALID:J


# instance fields
.field private groupId:J

.field private name:Ljava/lang/String;

.field private status:J

.field private type:J

.field private userId:J


# direct methods
.method public constructor <init>(JJLjava/lang/String;JJ)V
    .locals 0
    .param p1, "groupId"    # J
    .param p3, "userId"    # J
    .param p5, "name"    # Ljava/lang/String;
    .param p6, "status"    # J
    .param p8, "type"    # J

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-wide p1, p0, Lcom/accloud/service/ACMember;->groupId:J

    .line 27
    iput-wide p3, p0, Lcom/accloud/service/ACMember;->userId:J

    .line 28
    iput-object p5, p0, Lcom/accloud/service/ACMember;->name:Ljava/lang/String;

    .line 29
    iput-wide p6, p0, Lcom/accloud/service/ACMember;->status:J

    .line 30
    iput-wide p8, p0, Lcom/accloud/service/ACMember;->type:J

    .line 31
    return-void
.end method


# virtual methods
.method public getGroupId()J
    .locals 2

    .prologue
    .line 34
    iget-wide v0, p0, Lcom/accloud/service/ACMember;->groupId:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/accloud/service/ACMember;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()J
    .locals 2

    .prologue
    .line 46
    iget-wide v0, p0, Lcom/accloud/service/ACMember;->status:J

    return-wide v0
.end method

.method public getType()J
    .locals 2

    .prologue
    .line 50
    iget-wide v0, p0, Lcom/accloud/service/ACMember;->type:J

    return-wide v0
.end method

.method public getUserId()J
    .locals 2

    .prologue
    .line 38
    iget-wide v0, p0, Lcom/accloud/service/ACMember;->userId:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ZMember{groupId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/accloud/service/ACMember;->groupId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/accloud/service/ACMember;->userId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/accloud/service/ACMember;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/accloud/service/ACMember;->status:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/accloud/service/ACMember;->type:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
