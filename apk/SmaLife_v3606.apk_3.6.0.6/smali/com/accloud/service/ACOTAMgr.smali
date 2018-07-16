.class public interface abstract Lcom/accloud/service/ACOTAMgr;
.super Ljava/lang/Object;
.source "ACOTAMgr.java"


# virtual methods
.method public abstract checkUpdate(Ljava/lang/String;Lcom/accloud/service/ACOTACheckInfo;Lcom/accloud/cloudservice/PayloadCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/accloud/service/ACOTACheckInfo;",
            "Lcom/accloud/cloudservice/PayloadCallback",
            "<",
            "Lcom/accloud/service/ACOTAUpgradeInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract confirmUpdate(Ljava/lang/String;JLjava/lang/String;ILcom/accloud/cloudservice/VoidCallback;)V
.end method

.method public abstract otaMediaDone(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/accloud/cloudservice/VoidCallback;)V
.end method
