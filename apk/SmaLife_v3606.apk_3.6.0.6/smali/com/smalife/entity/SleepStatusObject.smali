.class public Lcom/smalife/entity/SleepStatusObject;
.super Ljava/lang/Object;
.source "SleepStatusObject.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private action_long:I

.field private action_time:I

.field private action_type:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput v0, p0, Lcom/smalife/entity/SleepStatusObject;->action_time:I

    .line 18
    iput v0, p0, Lcom/smalife/entity/SleepStatusObject;->action_long:I

    .line 23
    const/4 v0, -0x1

    iput v0, p0, Lcom/smalife/entity/SleepStatusObject;->action_type:I

    .line 5
    return-void
.end method


# virtual methods
.method public getAction_long()I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/smalife/entity/SleepStatusObject;->action_long:I

    return v0
.end method

.method public getAction_time()I
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lcom/smalife/entity/SleepStatusObject;->action_time:I

    return v0
.end method

.method public getAction_type()I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/smalife/entity/SleepStatusObject;->action_type:I

    return v0
.end method

.method public setAction_long(I)V
    .locals 0
    .param p1, "action_long"    # I

    .prologue
    .line 38
    iput p1, p0, Lcom/smalife/entity/SleepStatusObject;->action_long:I

    .line 39
    return-void
.end method

.method public setAction_time(I)V
    .locals 0
    .param p1, "action_time"    # I

    .prologue
    .line 30
    iput p1, p0, Lcom/smalife/entity/SleepStatusObject;->action_time:I

    .line 31
    return-void
.end method

.method public setAction_type(I)V
    .locals 0
    .param p1, "action_type"    # I

    .prologue
    .line 46
    iput p1, p0, Lcom/smalife/entity/SleepStatusObject;->action_type:I

    .line 47
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SleepStatusObject [action_time="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/smalife/entity/SleepStatusObject;->action_time:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 52
    const-string v1, ", action_long="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/smalife/entity/SleepStatusObject;->action_long:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", action_type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 53
    iget v1, p0, Lcom/smalife/entity/SleepStatusObject;->action_type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 51
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
