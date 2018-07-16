.class Lcom/qiniu/android/storage/UploadManager$3;
.super Ljava/lang/Object;
.source "UploadManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qiniu/android/storage/UploadManager;->put([BLjava/lang/String;Ljava/lang/String;Lcom/qiniu/android/storage/UpCompletionHandler;Lcom/qiniu/android/storage/UploadOptions;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qiniu/android/storage/UploadManager;

.field final synthetic val$completionHandler:Lcom/qiniu/android/storage/UpCompletionHandler;

.field final synthetic val$data:[B

.field final synthetic val$decodedToken:Lcom/qiniu/android/storage/UpToken;

.field final synthetic val$key:Ljava/lang/String;

.field final synthetic val$options:Lcom/qiniu/android/storage/UploadOptions;


# direct methods
.method constructor <init>(Lcom/qiniu/android/storage/UploadManager;[BLjava/lang/String;Lcom/qiniu/android/storage/UpToken;Lcom/qiniu/android/storage/UpCompletionHandler;Lcom/qiniu/android/storage/UploadOptions;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/qiniu/android/storage/UploadManager$3;->this$0:Lcom/qiniu/android/storage/UploadManager;

    iput-object p2, p0, Lcom/qiniu/android/storage/UploadManager$3;->val$data:[B

    iput-object p3, p0, Lcom/qiniu/android/storage/UploadManager$3;->val$key:Ljava/lang/String;

    iput-object p4, p0, Lcom/qiniu/android/storage/UploadManager$3;->val$decodedToken:Lcom/qiniu/android/storage/UpToken;

    iput-object p5, p0, Lcom/qiniu/android/storage/UploadManager$3;->val$completionHandler:Lcom/qiniu/android/storage/UpCompletionHandler;

    iput-object p6, p0, Lcom/qiniu/android/storage/UploadManager$3;->val$options:Lcom/qiniu/android/storage/UploadOptions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 92
    iget-object v0, p0, Lcom/qiniu/android/storage/UploadManager$3;->this$0:Lcom/qiniu/android/storage/UploadManager;

    invoke-static {v0}, Lcom/qiniu/android/storage/UploadManager;->access$000(Lcom/qiniu/android/storage/UploadManager;)Lcom/qiniu/android/http/HttpManager;

    move-result-object v0

    iget-object v1, p0, Lcom/qiniu/android/storage/UploadManager$3;->this$0:Lcom/qiniu/android/storage/UploadManager;

    invoke-static {v1}, Lcom/qiniu/android/storage/UploadManager;->access$100(Lcom/qiniu/android/storage/UploadManager;)Lcom/qiniu/android/storage/Configuration;

    move-result-object v1

    iget-object v2, p0, Lcom/qiniu/android/storage/UploadManager$3;->val$data:[B

    iget-object v3, p0, Lcom/qiniu/android/storage/UploadManager$3;->val$key:Ljava/lang/String;

    iget-object v4, p0, Lcom/qiniu/android/storage/UploadManager$3;->val$decodedToken:Lcom/qiniu/android/storage/UpToken;

    iget-object v5, p0, Lcom/qiniu/android/storage/UploadManager$3;->val$completionHandler:Lcom/qiniu/android/storage/UpCompletionHandler;

    iget-object v6, p0, Lcom/qiniu/android/storage/UploadManager$3;->val$options:Lcom/qiniu/android/storage/UploadOptions;

    invoke-static/range {v0 .. v6}, Lcom/qiniu/android/storage/FormUploader;->upload(Lcom/qiniu/android/http/HttpManager;Lcom/qiniu/android/storage/Configuration;[BLjava/lang/String;Lcom/qiniu/android/storage/UpToken;Lcom/qiniu/android/storage/UpCompletionHandler;Lcom/qiniu/android/storage/UploadOptions;)V

    .line 93
    return-void
.end method
