.class public Lcom/accloud/service/ACGroup;
.super Ljava/lang/Object;
.source "ACGroup.java"


# static fields
.field public static final ACTIVE:J = 0x1L

.field public static final FROZEN:J = 0x2L

.field public static final INVALID:J


# instance fields
.field private id:J

.field private name:Ljava/lang/String;

.field private owner:J

.field private status:J


# direct methods
.method public constructor <init>(JLjava/lang/String;JLjava/lang/Long;)V
    .locals 2
    .param p1, "id"    # J
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "owner"    # J
    .param p6, "status"    # Ljava/lang/Long;

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-wide p1, p0, Lcom/accloud/service/ACGroup;->id:J

    .line 15
    iput-object p3, p0, Lcom/accloud/service/ACGroup;->name:Ljava/lang/String;

    .line 16
    iput-wide p4, p0, Lcom/accloud/service/ACGroup;->owner:J

    .line 17
    invoke-virtual {p6}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/accloud/service/ACGroup;->status:J

    .line 18
    return-void
.end method


# virtual methods
.method public getId()J
    .locals 2

    .prologue
    .line 21
    iget-wide v0, p0, Lcom/accloud/service/ACGroup;->id:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/accloud/service/ACGroup;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOwner()J
    .locals 2

    .prologue
    .line 29
    iget-wide v0, p0, Lcom/accloud/service/ACGroup;->owner:J

    return-wide v0
.end method

.method public getStatus()J
    .locals 2

    .prologue
    .line 33
    iget-wide v0, p0, Lcom/accloud/service/ACGroup;->status:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ZGroup{id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/accloud/service/ACGroup;->id:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/accloud/service/ACGroup;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", owner="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/accloud/service/ACGroup;->owner:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/accloud/service/ACGroup;->status:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
