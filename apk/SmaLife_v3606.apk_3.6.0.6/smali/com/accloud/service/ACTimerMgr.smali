.class public interface abstract Lcom/accloud/service/ACTimerMgr;
.super Ljava/lang/Object;
.source "ACTimerMgr.java"


# virtual methods
.method public abstract addTask(Lcom/accloud/service/ACTimerTask$OP_TYPE;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/accloud/service/ACDeviceMsg;Lcom/accloud/cloudservice/PayloadCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/accloud/service/ACTimerTask$OP_TYPE;",
            "J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/accloud/service/ACDeviceMsg;",
            "Lcom/accloud/cloudservice/PayloadCallback",
            "<",
            "Lcom/accloud/service/ACTimerTask;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract closeTask(JJLcom/accloud/cloudservice/VoidCallback;)V
.end method

.method public abstract deleteTask(JJLcom/accloud/cloudservice/VoidCallback;)V
.end method

.method public abstract listTasks(JLcom/accloud/cloudservice/PayloadCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/accloud/cloudservice/PayloadCallback",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/accloud/service/ACTimerTask;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public abstract modifyTask(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/accloud/service/ACDeviceMsg;Lcom/accloud/cloudservice/VoidCallback;)V
.end method

.method public abstract openTask(JJLcom/accloud/cloudservice/VoidCallback;)V
.end method
