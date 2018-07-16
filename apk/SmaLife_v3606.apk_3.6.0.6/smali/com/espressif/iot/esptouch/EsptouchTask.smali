.class public Lcom/espressif/iot/esptouch/EsptouchTask;
.super Ljava/lang/Object;
.source "EsptouchTask.java"

# interfaces
.implements Lcom/espressif/iot/esptouch/IEsptouchTask;


# instance fields
.field public _mEsptouchTask:Lcom/espressif/iot/esptouch/task/__EsptouchTask;

.field private _mParameter:Lcom/espressif/iot/esptouch/task/IEsptouchTaskParameter;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILandroid/content/Context;)V
    .locals 7
    .param p1, "apSsid"    # Ljava/lang/String;
    .param p2, "apBssid"    # Ljava/lang/String;
    .param p3, "apPassword"    # Ljava/lang/String;
    .param p4, "isSsidHidden"    # Z
    .param p5, "timeoutMillisecond"    # I
    .param p6, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Lcom/espressif/iot/esptouch/task/EsptouchTaskParameter;

    invoke-direct {v0}, Lcom/espressif/iot/esptouch/task/EsptouchTaskParameter;-><init>()V

    iput-object v0, p0, Lcom/espressif/iot/esptouch/EsptouchTask;->_mParameter:Lcom/espressif/iot/esptouch/task/IEsptouchTaskParameter;

    .line 54
    iget-object v0, p0, Lcom/espressif/iot/esptouch/EsptouchTask;->_mParameter:Lcom/espressif/iot/esptouch/task/IEsptouchTaskParameter;

    invoke-interface {v0, p5}, Lcom/espressif/iot/esptouch/task/IEsptouchTaskParameter;->setWaitUdpTotalMillisecond(I)V

    .line 55
    new-instance v0, Lcom/espressif/iot/esptouch/task/__EsptouchTask;

    iget-object v5, p0, Lcom/espressif/iot/esptouch/EsptouchTask;->_mParameter:Lcom/espressif/iot/esptouch/task/IEsptouchTaskParameter;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p6

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/espressif/iot/esptouch/task/__EsptouchTask;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/espressif/iot/esptouch/task/IEsptouchTaskParameter;Z)V

    iput-object v0, p0, Lcom/espressif/iot/esptouch/EsptouchTask;->_mEsptouchTask:Lcom/espressif/iot/esptouch/task/__EsptouchTask;

    .line 56
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)V
    .locals 7
    .param p1, "apSsid"    # Ljava/lang/String;
    .param p2, "apBssid"    # Ljava/lang/String;
    .param p3, "apPassword"    # Ljava/lang/String;
    .param p4, "isSsidHidden"    # Z
    .param p5, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Lcom/espressif/iot/esptouch/task/EsptouchTaskParameter;

    invoke-direct {v0}, Lcom/espressif/iot/esptouch/task/EsptouchTaskParameter;-><init>()V

    iput-object v0, p0, Lcom/espressif/iot/esptouch/EsptouchTask;->_mParameter:Lcom/espressif/iot/esptouch/task/IEsptouchTaskParameter;

    .line 33
    new-instance v0, Lcom/espressif/iot/esptouch/task/__EsptouchTask;

    iget-object v5, p0, Lcom/espressif/iot/esptouch/EsptouchTask;->_mParameter:Lcom/espressif/iot/esptouch/task/IEsptouchTaskParameter;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p5

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/espressif/iot/esptouch/task/__EsptouchTask;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/espressif/iot/esptouch/task/IEsptouchTaskParameter;Z)V

    iput-object v0, p0, Lcom/espressif/iot/esptouch/EsptouchTask;->_mEsptouchTask:Lcom/espressif/iot/esptouch/task/__EsptouchTask;

    .line 34
    return-void
.end method


# virtual methods
.method public executeForResult()Lcom/espressif/iot/esptouch/IEsptouchResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 66
    iget-object v0, p0, Lcom/espressif/iot/esptouch/EsptouchTask;->_mEsptouchTask:Lcom/espressif/iot/esptouch/task/__EsptouchTask;

    invoke-virtual {v0}, Lcom/espressif/iot/esptouch/task/__EsptouchTask;->executeForResult()Lcom/espressif/iot/esptouch/IEsptouchResult;

    move-result-object v0

    return-object v0
.end method

.method public executeForResults(I)Ljava/util/List;
    .locals 1
    .param p1, "expectTaskResultCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/espressif/iot/esptouch/IEsptouchResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 77
    if-gtz p1, :cond_0

    .line 78
    const p1, 0x7fffffff

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/espressif/iot/esptouch/EsptouchTask;->_mEsptouchTask:Lcom/espressif/iot/esptouch/task/__EsptouchTask;

    invoke-virtual {v0, p1}, Lcom/espressif/iot/esptouch/task/__EsptouchTask;->executeForResults(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public interrupt()V
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/espressif/iot/esptouch/EsptouchTask;->_mEsptouchTask:Lcom/espressif/iot/esptouch/task/__EsptouchTask;

    invoke-virtual {v0}, Lcom/espressif/iot/esptouch/task/__EsptouchTask;->interrupt()V

    .line 62
    return-void
.end method

.method public isCancelled()Z
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/espressif/iot/esptouch/EsptouchTask;->_mEsptouchTask:Lcom/espressif/iot/esptouch/task/__EsptouchTask;

    invoke-virtual {v0}, Lcom/espressif/iot/esptouch/task/__EsptouchTask;->isCancelled()Z

    move-result v0

    return v0
.end method
