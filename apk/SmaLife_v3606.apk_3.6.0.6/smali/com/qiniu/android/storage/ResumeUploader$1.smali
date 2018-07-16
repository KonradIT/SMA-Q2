.class Lcom/qiniu/android/storage/ResumeUploader$1;
.super Ljava/lang/Object;
.source "ResumeUploader.java"

# interfaces
.implements Lcom/qiniu/android/http/CompletionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qiniu/android/storage/ResumeUploader;->nextTask(IILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qiniu/android/storage/ResumeUploader;

.field final synthetic val$host:Ljava/lang/String;

.field final synthetic val$offset:I

.field final synthetic val$retried:I


# direct methods
.method constructor <init>(Lcom/qiniu/android/storage/ResumeUploader;IILjava/lang/String;)V
    .locals 0

    .prologue
    .line 172
    iput-object p1, p0, Lcom/qiniu/android/storage/ResumeUploader$1;->this$0:Lcom/qiniu/android/storage/ResumeUploader;

    iput p2, p0, Lcom/qiniu/android/storage/ResumeUploader$1;->val$retried:I

    iput p3, p0, Lcom/qiniu/android/storage/ResumeUploader$1;->val$offset:I

    iput-object p4, p0, Lcom/qiniu/android/storage/ResumeUploader$1;->val$host:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public complete(Lcom/qiniu/android/http/ResponseInfo;Lorg/json/JSONObject;)V
    .locals 6
    .param p1, "info"    # Lcom/qiniu/android/http/ResponseInfo;
    .param p2, "response"    # Lorg/json/JSONObject;

    .prologue
    .line 175
    invoke-virtual {p1}, Lcom/qiniu/android/http/ResponseInfo;->isOK()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 176
    iget-object v1, p0, Lcom/qiniu/android/storage/ResumeUploader$1;->this$0:Lcom/qiniu/android/storage/ResumeUploader;

    invoke-static {v1}, Lcom/qiniu/android/storage/ResumeUploader;->access$000(Lcom/qiniu/android/storage/ResumeUploader;)V

    .line 177
    iget-object v1, p0, Lcom/qiniu/android/storage/ResumeUploader$1;->this$0:Lcom/qiniu/android/storage/ResumeUploader;

    invoke-static {v1}, Lcom/qiniu/android/storage/ResumeUploader;->access$200(Lcom/qiniu/android/storage/ResumeUploader;)Lcom/qiniu/android/storage/UploadOptions;

    move-result-object v1

    iget-object v1, v1, Lcom/qiniu/android/storage/UploadOptions;->progressHandler:Lcom/qiniu/android/storage/UpProgressHandler;

    iget-object v2, p0, Lcom/qiniu/android/storage/ResumeUploader$1;->this$0:Lcom/qiniu/android/storage/ResumeUploader;

    invoke-static {v2}, Lcom/qiniu/android/storage/ResumeUploader;->access$100(Lcom/qiniu/android/storage/ResumeUploader;)Ljava/lang/String;

    move-result-object v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    invoke-interface {v1, v2, v4, v5}, Lcom/qiniu/android/storage/UpProgressHandler;->progress(Ljava/lang/String;D)V

    .line 178
    iget-object v1, p0, Lcom/qiniu/android/storage/ResumeUploader$1;->this$0:Lcom/qiniu/android/storage/ResumeUploader;

    invoke-static {v1}, Lcom/qiniu/android/storage/ResumeUploader;->access$300(Lcom/qiniu/android/storage/ResumeUploader;)Lcom/qiniu/android/storage/UpCompletionHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/qiniu/android/storage/ResumeUploader$1;->this$0:Lcom/qiniu/android/storage/ResumeUploader;

    invoke-static {v2}, Lcom/qiniu/android/storage/ResumeUploader;->access$100(Lcom/qiniu/android/storage/ResumeUploader;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1, p2}, Lcom/qiniu/android/storage/UpCompletionHandler;->complete(Ljava/lang/String;Lcom/qiniu/android/http/ResponseInfo;Lorg/json/JSONObject;)V

    .line 197
    :goto_0
    return-void

    .line 182
    :cond_0
    iget-object v1, p0, Lcom/qiniu/android/storage/ResumeUploader$1;->this$0:Lcom/qiniu/android/storage/ResumeUploader;

    invoke-static {v1}, Lcom/qiniu/android/storage/ResumeUploader;->access$400(Lcom/qiniu/android/storage/ResumeUploader;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 183
    invoke-static {}, Lcom/qiniu/android/http/ResponseInfo;->cancelled()Lcom/qiniu/android/http/ResponseInfo;

    move-result-object v0

    .line 184
    .local v0, "i":Lcom/qiniu/android/http/ResponseInfo;
    iget-object v1, p0, Lcom/qiniu/android/storage/ResumeUploader$1;->this$0:Lcom/qiniu/android/storage/ResumeUploader;

    invoke-static {v1}, Lcom/qiniu/android/storage/ResumeUploader;->access$300(Lcom/qiniu/android/storage/ResumeUploader;)Lcom/qiniu/android/storage/UpCompletionHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/qiniu/android/storage/ResumeUploader$1;->this$0:Lcom/qiniu/android/storage/ResumeUploader;

    invoke-static {v2}, Lcom/qiniu/android/storage/ResumeUploader;->access$100(Lcom/qiniu/android/storage/ResumeUploader;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v0, v3}, Lcom/qiniu/android/storage/UpCompletionHandler;->complete(Ljava/lang/String;Lcom/qiniu/android/http/ResponseInfo;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 188
    .end local v0    # "i":Lcom/qiniu/android/http/ResponseInfo;
    :cond_1
    iget-object v1, p0, Lcom/qiniu/android/storage/ResumeUploader$1;->this$0:Lcom/qiniu/android/storage/ResumeUploader;

    invoke-static {v1, p1}, Lcom/qiniu/android/storage/ResumeUploader;->access$500(Lcom/qiniu/android/storage/ResumeUploader;Lcom/qiniu/android/http/ResponseInfo;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 189
    iget-object v1, p0, Lcom/qiniu/android/storage/ResumeUploader$1;->this$0:Lcom/qiniu/android/storage/ResumeUploader;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/qiniu/android/storage/ResumeUploader;->access$602(Lcom/qiniu/android/storage/ResumeUploader;Z)Z

    .line 192
    :cond_2
    iget-object v1, p0, Lcom/qiniu/android/storage/ResumeUploader$1;->this$0:Lcom/qiniu/android/storage/ResumeUploader;

    invoke-static {v1, p1}, Lcom/qiniu/android/storage/ResumeUploader;->access$500(Lcom/qiniu/android/storage/ResumeUploader;Lcom/qiniu/android/http/ResponseInfo;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p1}, Lcom/qiniu/android/http/ResponseInfo;->needRetry()Z

    move-result v1

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/qiniu/android/storage/ResumeUploader$1;->val$retried:I

    iget-object v2, p0, Lcom/qiniu/android/storage/ResumeUploader$1;->this$0:Lcom/qiniu/android/storage/ResumeUploader;

    invoke-static {v2}, Lcom/qiniu/android/storage/ResumeUploader;->access$700(Lcom/qiniu/android/storage/ResumeUploader;)Lcom/qiniu/android/storage/Configuration;

    move-result-object v2

    iget v2, v2, Lcom/qiniu/android/storage/Configuration;->retryMax:I

    if-ge v1, v2, :cond_4

    .line 193
    :cond_3
    iget-object v1, p0, Lcom/qiniu/android/storage/ResumeUploader$1;->this$0:Lcom/qiniu/android/storage/ResumeUploader;

    iget v2, p0, Lcom/qiniu/android/storage/ResumeUploader$1;->val$offset:I

    iget v3, p0, Lcom/qiniu/android/storage/ResumeUploader$1;->val$retried:I

    add-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Lcom/qiniu/android/storage/ResumeUploader$1;->val$host:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4}, Lcom/qiniu/android/storage/ResumeUploader;->access$800(Lcom/qiniu/android/storage/ResumeUploader;IILjava/lang/String;)V

    goto :goto_0

    .line 196
    :cond_4
    iget-object v1, p0, Lcom/qiniu/android/storage/ResumeUploader$1;->this$0:Lcom/qiniu/android/storage/ResumeUploader;

    invoke-static {v1}, Lcom/qiniu/android/storage/ResumeUploader;->access$300(Lcom/qiniu/android/storage/ResumeUploader;)Lcom/qiniu/android/storage/UpCompletionHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/qiniu/android/storage/ResumeUploader$1;->this$0:Lcom/qiniu/android/storage/ResumeUploader;

    invoke-static {v2}, Lcom/qiniu/android/storage/ResumeUploader;->access$100(Lcom/qiniu/android/storage/ResumeUploader;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1, p2}, Lcom/qiniu/android/storage/UpCompletionHandler;->complete(Ljava/lang/String;Lcom/qiniu/android/http/ResponseInfo;Lorg/json/JSONObject;)V

    goto :goto_0
.end method
