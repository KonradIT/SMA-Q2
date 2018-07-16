.class public Lcom/accloud/service/ACPushReceive;
.super Ljava/lang/Object;
.source "ACPushReceive.java"


# instance fields
.field private className:Ljava/lang/String;

.field private opType:J

.field private payload:Lcom/accloud/service/ACObject;


# direct methods
.method public constructor <init>(Ljava/lang/String;JLcom/accloud/service/ACObject;)V
    .locals 0
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "opType"    # J
    .param p4, "payload"    # Lcom/accloud/service/ACObject;

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/accloud/service/ACPushReceive;->className:Ljava/lang/String;

    .line 16
    iput-wide p2, p0, Lcom/accloud/service/ACPushReceive;->opType:J

    .line 17
    iput-object p4, p0, Lcom/accloud/service/ACPushReceive;->payload:Lcom/accloud/service/ACObject;

    .line 18
    return-void
.end method


# virtual methods
.method public getClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/accloud/service/ACPushReceive;->className:Ljava/lang/String;

    return-object v0
.end method

.method public getOpType()J
    .locals 2

    .prologue
    .line 25
    iget-wide v0, p0, Lcom/accloud/service/ACPushReceive;->opType:J

    return-wide v0
.end method

.method public getPayload()Lcom/accloud/service/ACObject;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/accloud/service/ACPushReceive;->payload:Lcom/accloud/service/ACObject;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ACPushReceive{className=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/accloud/service/ACPushReceive;->className:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", opType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/accloud/service/ACPushReceive;->opType:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", payload="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/accloud/service/ACPushReceive;->payload:Lcom/accloud/service/ACObject;

    invoke-virtual {v1}, Lcom/accloud/service/ACObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
