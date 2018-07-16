.class public final Lorg/android/agoo/client/MtopSyncResult;
.super Ljava/lang/Object;
.source "MtopSyncResult.java"


# instance fields
.field private volatile data:Ljava/lang/String;

.field private volatile isSuccess:Z

.field private volatile retCode:Ljava/lang/String;

.field private volatile retDesc:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lorg/android/agoo/client/MtopSyncResult;->data:Ljava/lang/String;

    return-object v0
.end method

.method public final getRetCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lorg/android/agoo/client/MtopSyncResult;->retCode:Ljava/lang/String;

    return-object v0
.end method

.method public final getRetDesc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lorg/android/agoo/client/MtopSyncResult;->retDesc:Ljava/lang/String;

    return-object v0
.end method

.method public final isSuccess()Z
    .locals 1

    .prologue
    .line 14
    iget-boolean v0, p0, Lorg/android/agoo/client/MtopSyncResult;->isSuccess:Z

    return v0
.end method

.method public final setData(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lorg/android/agoo/client/MtopSyncResult;->data:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public final setRetCode(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lorg/android/agoo/client/MtopSyncResult;->retCode:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public final setRetDesc(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lorg/android/agoo/client/MtopSyncResult;->retDesc:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public final setSuccess(Z)V
    .locals 0

    .prologue
    .line 21
    iput-boolean p1, p0, Lorg/android/agoo/client/MtopSyncResult;->isSuccess:Z

    .line 22
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Result [isSuccess="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lorg/android/agoo/client/MtopSyncResult;->isSuccess:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/android/agoo/client/MtopSyncResult;->data:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", retDesc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/android/agoo/client/MtopSyncResult;->retDesc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", retCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/android/agoo/client/MtopSyncResult;->retCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
