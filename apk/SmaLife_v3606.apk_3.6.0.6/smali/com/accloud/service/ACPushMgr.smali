.class public interface abstract Lcom/accloud/service/ACPushMgr;
.super Ljava/lang/Object;
.source "ACPushMgr.java"


# virtual methods
.method public abstract connect(Lcom/accloud/cloudservice/VoidCallback;)V
.end method

.method public abstract disconnect()V
.end method

.method public abstract onReceive(Lcom/accloud/cloudservice/PayloadCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/accloud/cloudservice/PayloadCallback",
            "<",
            "Lcom/accloud/service/ACPushReceive;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract unwatch(Lcom/accloud/service/ACPushTable;Lcom/accloud/cloudservice/VoidCallback;)V
.end method

.method public abstract watch(Lcom/accloud/service/ACPushTable;Lcom/accloud/cloudservice/VoidCallback;)V
.end method
