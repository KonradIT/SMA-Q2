.class public Lcom/accloud/service/ACTimerTask;
.super Ljava/lang/Object;
.source "ACTimerTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/accloud/service/ACTimerTask$OP_TYPE;
    }
.end annotation


# static fields
.field public static final TASK_CLOSE:I = 0x0

.field public static final TASK_OPEN:I = 0x1


# instance fields
.field private createTime:Ljava/lang/String;

.field private description:Ljava/lang/String;

.field private modifyTime:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private nickName:Ljava/lang/String;

.field private status:I

.field private taskId:J

.field private taskType:Ljava/lang/String;

.field private timeCycle:Ljava/lang/String;

.field private timePoint:Ljava/lang/String;

.field private timeZone:Ljava/lang/String;

.field private userId:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    return-void
.end method

.method public constructor <init>(JLjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "taskId"    # J
    .param p3, "taskType"    # Ljava/lang/String;
    .param p4, "userId"    # J
    .param p6, "nickName"    # Ljava/lang/String;
    .param p7, "name"    # Ljava/lang/String;
    .param p8, "description"    # Ljava/lang/String;
    .param p9, "timeZone"    # Ljava/lang/String;
    .param p10, "timePoint"    # Ljava/lang/String;
    .param p11, "timeCycle"    # Ljava/lang/String;
    .param p12, "createTime"    # Ljava/lang/String;
    .param p13, "modifyTime"    # Ljava/lang/String;
    .param p14, "status"    # I

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-wide p1, p0, Lcom/accloud/service/ACTimerTask;->taskId:J

    .line 45
    iput-object p3, p0, Lcom/accloud/service/ACTimerTask;->taskType:Ljava/lang/String;

    .line 46
    iput-wide p4, p0, Lcom/accloud/service/ACTimerTask;->userId:J

    .line 47
    iput-object p6, p0, Lcom/accloud/service/ACTimerTask;->nickName:Ljava/lang/String;

    .line 48
    iput-object p7, p0, Lcom/accloud/service/ACTimerTask;->name:Ljava/lang/String;

    .line 49
    iput-object p8, p0, Lcom/accloud/service/ACTimerTask;->description:Ljava/lang/String;

    .line 50
    iput-object p9, p0, Lcom/accloud/service/ACTimerTask;->timeZone:Ljava/lang/String;

    .line 51
    iput-object p10, p0, Lcom/accloud/service/ACTimerTask;->timePoint:Ljava/lang/String;

    .line 52
    iput-object p11, p0, Lcom/accloud/service/ACTimerTask;->timeCycle:Ljava/lang/String;

    .line 53
    iput-object p12, p0, Lcom/accloud/service/ACTimerTask;->createTime:Ljava/lang/String;

    .line 54
    iput-object p13, p0, Lcom/accloud/service/ACTimerTask;->modifyTime:Ljava/lang/String;

    .line 55
    iput p14, p0, Lcom/accloud/service/ACTimerTask;->status:I

    .line 56
    return-void
.end method


# virtual methods
.method public getCreateTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/accloud/service/ACTimerTask;->createTime:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/accloud/service/ACTimerTask;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getModifyTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/accloud/service/ACTimerTask;->modifyTime:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/accloud/service/ACTimerTask;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNickName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/accloud/service/ACTimerTask;->nickName:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 139
    iget v0, p0, Lcom/accloud/service/ACTimerTask;->status:I

    return v0
.end method

.method public getTaskId()J
    .locals 2

    .prologue
    .line 59
    iget-wide v0, p0, Lcom/accloud/service/ACTimerTask;->taskId:J

    return-wide v0
.end method

.method public getTaskType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/accloud/service/ACTimerTask;->taskType:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeCycle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/accloud/service/ACTimerTask;->timeCycle:Ljava/lang/String;

    return-object v0
.end method

.method public getTimePoint()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/accloud/service/ACTimerTask;->timePoint:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeZone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/accloud/service/ACTimerTask;->timeZone:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()J
    .locals 2

    .prologue
    .line 75
    iget-wide v0, p0, Lcom/accloud/service/ACTimerTask;->userId:J

    return-wide v0
.end method

.method public setCreateTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "createTime"    # Ljava/lang/String;

    .prologue
    .line 127
    iput-object p1, p0, Lcom/accloud/service/ACTimerTask;->createTime:Ljava/lang/String;

    .line 128
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/accloud/service/ACTimerTask;->description:Ljava/lang/String;

    .line 96
    return-void
.end method

.method public setModifyTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "modifyTime"    # Ljava/lang/String;

    .prologue
    .line 135
    iput-object p1, p0, Lcom/accloud/service/ACTimerTask;->modifyTime:Ljava/lang/String;

    .line 136
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 151
    iput-object p1, p0, Lcom/accloud/service/ACTimerTask;->name:Ljava/lang/String;

    .line 152
    return-void
.end method

.method public setNickName(Ljava/lang/String;)V
    .locals 0
    .param p1, "nickName"    # Ljava/lang/String;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/accloud/service/ACTimerTask;->nickName:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public setStatus(I)V
    .locals 0
    .param p1, "status"    # I

    .prologue
    .line 143
    iput p1, p0, Lcom/accloud/service/ACTimerTask;->status:I

    .line 144
    return-void
.end method

.method public setTaskId(J)V
    .locals 1
    .param p1, "taskId"    # J

    .prologue
    .line 63
    iput-wide p1, p0, Lcom/accloud/service/ACTimerTask;->taskId:J

    .line 64
    return-void
.end method

.method public setTaskType(Ljava/lang/String;)V
    .locals 0
    .param p1, "taskType"    # Ljava/lang/String;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/accloud/service/ACTimerTask;->taskType:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public setTimeCycle(Ljava/lang/String;)V
    .locals 0
    .param p1, "timeCycle"    # Ljava/lang/String;

    .prologue
    .line 119
    iput-object p1, p0, Lcom/accloud/service/ACTimerTask;->timeCycle:Ljava/lang/String;

    .line 120
    return-void
.end method

.method public setTimePoint(Ljava/lang/String;)V
    .locals 0
    .param p1, "timePoint"    # Ljava/lang/String;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/accloud/service/ACTimerTask;->timePoint:Ljava/lang/String;

    .line 112
    return-void
.end method

.method public setTimeZone(Ljava/lang/String;)V
    .locals 0
    .param p1, "timeZone"    # Ljava/lang/String;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/accloud/service/ACTimerTask;->timeZone:Ljava/lang/String;

    .line 104
    return-void
.end method

.method public setUserId(J)V
    .locals 1
    .param p1, "userId"    # J

    .prologue
    .line 79
    iput-wide p1, p0, Lcom/accloud/service/ACTimerTask;->userId:J

    .line 80
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v4, 0x27

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ACTimerTask{taskId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/accloud/service/ACTimerTask;->taskId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", taskType=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/accloud/service/ACTimerTask;->taskType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/accloud/service/ACTimerTask;->userId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", nickName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/accloud/service/ACTimerTask;->nickName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/accloud/service/ACTimerTask;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", description=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/accloud/service/ACTimerTask;->description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", TimeZone=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/accloud/service/ACTimerTask;->timeZone:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", timePoint=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/accloud/service/ACTimerTask;->timePoint:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", timeCycle=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/accloud/service/ACTimerTask;->timeCycle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", createTime=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/accloud/service/ACTimerTask;->createTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", modifyTime=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/accloud/service/ACTimerTask;->modifyTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", status=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/accloud/service/ACTimerTask;->status:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

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
