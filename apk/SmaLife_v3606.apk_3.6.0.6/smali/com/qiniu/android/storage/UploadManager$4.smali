.class Lcom/qiniu/android/storage/UploadManager$4;
.super Ljava/lang/Object;
.source "UploadManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qiniu/android/storage/UploadManager;->put(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Lcom/qiniu/android/storage/UpCompletionHandler;Lcom/qiniu/android/storage/UploadOptions;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qiniu/android/storage/UploadManager;

.field final synthetic val$completionHandler:Lcom/qiniu/android/storage/UpCompletionHandler;

.field final synthetic val$info:Lcom/qiniu/android/http/ResponseInfo;

.field final synthetic val$key:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/qiniu/android/storage/UploadManager;Lcom/qiniu/android/storage/UpCompletionHandler;Ljava/lang/String;Lcom/qiniu/android/http/ResponseInfo;)V
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Lcom/qiniu/android/storage/UploadManager$4;->this$0:Lcom/qiniu/android/storage/UploadManager;

    iput-object p2, p0, Lcom/qiniu/android/storage/UploadManager$4;->val$completionHandler:Lcom/qiniu/android/storage/UpCompletionHandler;

    iput-object p3, p0, Lcom/qiniu/android/storage/UploadManager$4;->val$key:Ljava/lang/String;

    iput-object p4, p0, Lcom/qiniu/android/storage/UploadManager$4;->val$info:Lcom/qiniu/android/http/ResponseInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 131
    iget-object v0, p0, Lcom/qiniu/android/storage/UploadManager$4;->val$completionHandler:Lcom/qiniu/android/storage/UpCompletionHandler;

    iget-object v1, p0, Lcom/qiniu/android/storage/UploadManager$4;->val$key:Ljava/lang/String;

    iget-object v2, p0, Lcom/qiniu/android/storage/UploadManager$4;->val$info:Lcom/qiniu/android/http/ResponseInfo;

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/qiniu/android/storage/UpCompletionHandler;->complete(Ljava/lang/String;Lcom/qiniu/android/http/ResponseInfo;Lorg/json/JSONObject;)V

    .line 132
    return-void
.end method
