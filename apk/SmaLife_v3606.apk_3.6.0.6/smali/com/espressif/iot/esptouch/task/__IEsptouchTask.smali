.class public interface abstract Lcom/espressif/iot/esptouch/task/__IEsptouchTask;
.super Ljava/lang/Object;
.source "__IEsptouchTask.java"


# static fields
.field public static final DEBUG:Z = true


# virtual methods
.method public abstract executeForResult()Lcom/espressif/iot/esptouch/IEsptouchResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation
.end method

.method public abstract executeForResults(I)Ljava/util/List;
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
.end method

.method public abstract interrupt()V
.end method

.method public abstract isCancelled()Z
.end method
