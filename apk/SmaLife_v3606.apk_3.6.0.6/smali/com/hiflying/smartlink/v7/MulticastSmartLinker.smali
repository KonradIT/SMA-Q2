.class public Lcom/hiflying/smartlink/v7/MulticastSmartLinker;
.super Lcom/hiflying/smartlink/AbstractSmartLinker;
.source "MulticastSmartLinker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hiflying/smartlink/v7/MulticastSmartLinker$MulticastSmartLinkerInner;
    }
.end annotation


# instance fields
.field private mMixSmartLink3:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/hiflying/smartlink/AbstractSmartLinker;-><init>()V

    .line 12
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hiflying/smartlink/v7/MulticastSmartLinker;->mMixSmartLink3:Z

    .line 10
    return-void
.end method

.method public static getInstance()Lcom/hiflying/smartlink/v7/MulticastSmartLinker;
    .locals 1

    .prologue
    .line 19
    invoke-static {}, Lcom/hiflying/smartlink/v7/MulticastSmartLinker$MulticastSmartLinkerInner;->access$0()Lcom/hiflying/smartlink/v7/MulticastSmartLinker;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public isMixSmartLink3()Z
    .locals 1

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/hiflying/smartlink/v7/MulticastSmartLinker;->mMixSmartLink3:Z

    return v0
.end method

.method public setMaxRetryTimes(I)V
    .locals 0
    .param p1, "maxRetryTimes"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 28
    return-void
.end method

.method public setMixSmartLink3(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/hiflying/smartlink/v7/MulticastSmartLinker;->mMixSmartLink3:Z

    .line 60
    return-void
.end method

.method protected varargs setupSendAction(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/Runnable;
    .locals 8
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "ssid"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 33
    array-length v0, p2

    if-gez v0, :cond_0

    .line 34
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "It must set a ssid in setupSendAction"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 37
    :cond_0
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 39
    .local v7, "runnables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Runnable;>;"
    new-instance v6, Lcom/hiflying/smartlink/v7/MulticastSmartLinkerSendAction;

    iget-object v0, p0, Lcom/hiflying/smartlink/v7/MulticastSmartLinker;->mContext:Landroid/content/Context;

    aget-object v1, p2, v3

    invoke-direct {v6, v0, p0, v1, p1}, Lcom/hiflying/smartlink/v7/MulticastSmartLinkerSendAction;-><init>(Landroid/content/Context;Lcom/hiflying/smartlink/ISmartLinker;Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .local v6, "multicastRunnable":Ljava/lang/Runnable;
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    iget-boolean v0, p0, Lcom/hiflying/smartlink/v7/MulticastSmartLinker;->mMixSmartLink3:Z

    if-eqz v0, :cond_1

    .line 43
    const-string v0, "Mixed with smartlink3!"

    invoke-static {p0, v0}, Lcom/hiflying/commons/log/HFLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    new-instance v0, Lcom/hiflying/smartlink/v3/SnifferSmartLinkerSendAction;

    iget-object v1, p0, Lcom/hiflying/smartlink/v7/MulticastSmartLinker;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/hiflying/smartlink/v7/MulticastSmartLinker;->mSmartConfigSocket:Ljava/net/DatagramSocket;

    aget-object v4, p2, v3

    move-object v3, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/hiflying/smartlink/v3/SnifferSmartLinkerSendAction;-><init>(Landroid/content/Context;Ljava/net/DatagramSocket;Lcom/hiflying/smartlink/ISmartLinker;Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    :cond_1
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Runnable;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Runnable;

    return-object v0
.end method
