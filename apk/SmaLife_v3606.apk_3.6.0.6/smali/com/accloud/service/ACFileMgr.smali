.class public interface abstract Lcom/accloud/service/ACFileMgr;
.super Ljava/lang/Object;
.source "ACFileMgr.java"


# virtual methods
.method public abstract cancelDownload(Ljava/lang/String;)V
.end method

.method public abstract cancelUpload(Lcom/accloud/service/ACFileInfo;)V
.end method

.method public abstract downloadFile(Ljava/io/File;Ljava/lang/String;ILcom/accloud/cloudservice/ProgressCallback;Lcom/accloud/cloudservice/VoidCallback;)V
.end method

.method public abstract downloadFile(Ljava/lang/String;ILcom/accloud/cloudservice/ProgressCallback;Lcom/accloud/cloudservice/PayloadCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lcom/accloud/cloudservice/ProgressCallback;",
            "Lcom/accloud/cloudservice/PayloadCallback",
            "<[B>;)V"
        }
    .end annotation
.end method

.method public abstract getDownloadUrl(Lcom/accloud/service/ACFileInfo;JLcom/accloud/cloudservice/PayloadCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/accloud/service/ACFileInfo;",
            "J",
            "Lcom/accloud/cloudservice/PayloadCallback",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract uploadFile(Lcom/accloud/service/ACFileInfo;Lcom/accloud/cloudservice/ProgressCallback;Lcom/accloud/cloudservice/VoidCallback;)V
.end method
