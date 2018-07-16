.class Lcom/qiniu/android/storage/ResumeUploader$3;
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

.field final synthetic val$chunkSize:I

.field final synthetic val$host:Ljava/lang/String;

.field final synthetic val$offset:I

.field final synthetic val$retried:I


# direct methods
.method constructor <init>(Lcom/qiniu/android/storage/ResumeUploader;IILjava/lang/String;I)V
    .locals 0

    .prologue
    .line 215
    iput-object p1, p0, Lcom/qiniu/android/storage/ResumeUploader$3;->this$0:Lcom/qiniu/android/storage/ResumeUploader;

    iput p2, p0, Lcom/qiniu/android/storage/ResumeUploader$3;->val$offset:I

    iput p3, p0, Lcom/qiniu/android/storage/ResumeUploader$3;->val$retried:I

    iput-object p4, p0, Lcom/qiniu/android/storage/ResumeUploader$3;->val$host:Ljava/lang/String;

    iput p5, p0, Lcom/qiniu/android/storage/ResumeUploader$3;->val$chunkSize:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public complete(Lcom/qiniu/android/http/ResponseInfo;Lorg/json/JSONObject;)V
    .locals 10
    .param p1, "info"    # Lcom/qiniu/android/http/ResponseInfo;
    .param p2, "response"    # Lorg/json/JSONObject;

    .prologue
    const/4 v9, 0x0

    const/high16 v8, 0x400000

    .line 218
    invoke-virtual {p1}, Lcom/qiniu/android/http/ResponseInfo;->isOK()Z

    move-result v6

    if-nez v6, :cond_6

    .line 219
    iget-object v6, p0, Lcom/qiniu/android/storage/ResumeUploader$3;->this$0:Lcom/qiniu/android/storage/ResumeUploader;

    invoke-static {v6}, Lcom/qiniu/android/storage/ResumeUploader;->access$400(Lcom/qiniu/android/storage/ResumeUploader;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 220
    invoke-static {}, Lcom/qiniu/android/http/ResponseInfo;->cancelled()Lcom/qiniu/android/http/ResponseInfo;

    move-result-object v5

    .line 221
    .local v5, "i":Lcom/qiniu/android/http/ResponseInfo;
    iget-object v6, p0, Lcom/qiniu/android/storage/ResumeUploader$3;->this$0:Lcom/qiniu/android/storage/ResumeUploader;

    invoke-static {v6}, Lcom/qiniu/android/storage/ResumeUploader;->access$300(Lcom/qiniu/android/storage/ResumeUploader;)Lcom/qiniu/android/storage/UpCompletionHandler;

    move-result-object v6

    iget-object v7, p0, Lcom/qiniu/android/storage/ResumeUploader$3;->this$0:Lcom/qiniu/android/storage/ResumeUploader;

    invoke-static {v7}, Lcom/qiniu/android/storage/ResumeUploader;->access$100(Lcom/qiniu/android/storage/ResumeUploader;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7, v5, v9}, Lcom/qiniu/android/storage/UpCompletionHandler;->complete(Ljava/lang/String;Lcom/qiniu/android/http/ResponseInfo;Lorg/json/JSONObject;)V

    .line 262
    .end local v5    # "i":Lcom/qiniu/android/http/ResponseInfo;
    :goto_0
    return-void

    .line 224
    :cond_0
    iget v6, p1, Lcom/qiniu/android/http/ResponseInfo;->statusCode:I

    const/16 v7, 0x2bd

    if-ne v6, v7, :cond_1

    .line 225
    iget-object v6, p0, Lcom/qiniu/android/storage/ResumeUploader$3;->this$0:Lcom/qiniu/android/storage/ResumeUploader;

    iget v7, p0, Lcom/qiniu/android/storage/ResumeUploader$3;->val$offset:I

    div-int/2addr v7, v8

    mul-int/2addr v7, v8

    iget v8, p0, Lcom/qiniu/android/storage/ResumeUploader$3;->val$retried:I

    iget-object v9, p0, Lcom/qiniu/android/storage/ResumeUploader$3;->val$host:Ljava/lang/String;

    invoke-static {v6, v7, v8, v9}, Lcom/qiniu/android/storage/ResumeUploader;->access$800(Lcom/qiniu/android/storage/ResumeUploader;IILjava/lang/String;)V

    goto :goto_0

    .line 228
    :cond_1
    iget-object v6, p0, Lcom/qiniu/android/storage/ResumeUploader$3;->this$0:Lcom/qiniu/android/storage/ResumeUploader;

    invoke-static {v6, p1}, Lcom/qiniu/android/storage/ResumeUploader;->access$500(Lcom/qiniu/android/storage/ResumeUploader;Lcom/qiniu/android/http/ResponseInfo;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 229
    iget-object v6, p0, Lcom/qiniu/android/storage/ResumeUploader$3;->this$0:Lcom/qiniu/android/storage/ResumeUploader;

    const/4 v7, 0x1

    invoke-static {v6, v7}, Lcom/qiniu/android/storage/ResumeUploader;->access$602(Lcom/qiniu/android/storage/ResumeUploader;Z)Z

    .line 231
    :cond_2
    iget-object v6, p0, Lcom/qiniu/android/storage/ResumeUploader$3;->this$0:Lcom/qiniu/android/storage/ResumeUploader;

    invoke-static {v6, p1}, Lcom/qiniu/android/storage/ResumeUploader;->access$500(Lcom/qiniu/android/storage/ResumeUploader;Lcom/qiniu/android/http/ResponseInfo;)Z

    move-result v6

    if-nez v6, :cond_4

    iget v6, p0, Lcom/qiniu/android/storage/ResumeUploader$3;->val$retried:I

    iget-object v7, p0, Lcom/qiniu/android/storage/ResumeUploader$3;->this$0:Lcom/qiniu/android/storage/ResumeUploader;

    invoke-static {v7}, Lcom/qiniu/android/storage/ResumeUploader;->access$700(Lcom/qiniu/android/storage/ResumeUploader;)Lcom/qiniu/android/storage/Configuration;

    move-result-object v7

    iget v7, v7, Lcom/qiniu/android/storage/Configuration;->retryMax:I

    if-ge v6, v7, :cond_3

    invoke-virtual {p1}, Lcom/qiniu/android/http/ResponseInfo;->needRetry()Z

    move-result v6

    if-nez v6, :cond_4

    .line 232
    :cond_3
    iget-object v6, p0, Lcom/qiniu/android/storage/ResumeUploader$3;->this$0:Lcom/qiniu/android/storage/ResumeUploader;

    invoke-static {v6}, Lcom/qiniu/android/storage/ResumeUploader;->access$300(Lcom/qiniu/android/storage/ResumeUploader;)Lcom/qiniu/android/storage/UpCompletionHandler;

    move-result-object v6

    iget-object v7, p0, Lcom/qiniu/android/storage/ResumeUploader$3;->this$0:Lcom/qiniu/android/storage/ResumeUploader;

    invoke-static {v7}, Lcom/qiniu/android/storage/ResumeUploader;->access$100(Lcom/qiniu/android/storage/ResumeUploader;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7, p1, v9}, Lcom/qiniu/android/storage/UpCompletionHandler;->complete(Ljava/lang/String;Lcom/qiniu/android/http/ResponseInfo;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 235
    :cond_4
    iget-object v4, p0, Lcom/qiniu/android/storage/ResumeUploader$3;->val$host:Ljava/lang/String;

    .line 236
    .local v4, "host2":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/qiniu/android/http/ResponseInfo;->needSwitchServer()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 237
    iget-object v6, p0, Lcom/qiniu/android/storage/ResumeUploader$3;->this$0:Lcom/qiniu/android/storage/ResumeUploader;

    invoke-static {v6}, Lcom/qiniu/android/storage/ResumeUploader;->access$700(Lcom/qiniu/android/storage/ResumeUploader;)Lcom/qiniu/android/storage/Configuration;

    move-result-object v6

    iget-object v4, v6, Lcom/qiniu/android/storage/Configuration;->upHostBackup:Ljava/lang/String;

    .line 239
    :cond_5
    iget-object v6, p0, Lcom/qiniu/android/storage/ResumeUploader$3;->this$0:Lcom/qiniu/android/storage/ResumeUploader;

    iget v7, p0, Lcom/qiniu/android/storage/ResumeUploader$3;->val$offset:I

    iget v8, p0, Lcom/qiniu/android/storage/ResumeUploader$3;->val$retried:I

    add-int/lit8 v8, v8, 0x1

    invoke-static {v6, v7, v8, v4}, Lcom/qiniu/android/storage/ResumeUploader;->access$800(Lcom/qiniu/android/storage/ResumeUploader;IILjava/lang/String;)V

    goto :goto_0

    .line 242
    .end local v4    # "host2":Ljava/lang/String;
    :cond_6
    const/4 v0, 0x0

    .line 244
    .local v0, "context":Ljava/lang/String;
    if-nez p2, :cond_7

    .line 245
    iget-object v6, p0, Lcom/qiniu/android/storage/ResumeUploader$3;->this$0:Lcom/qiniu/android/storage/ResumeUploader;

    iget v7, p0, Lcom/qiniu/android/storage/ResumeUploader$3;->val$offset:I

    iget v8, p0, Lcom/qiniu/android/storage/ResumeUploader$3;->val$retried:I

    add-int/lit8 v8, v8, 0x1

    iget-object v9, p0, Lcom/qiniu/android/storage/ResumeUploader$3;->val$host:Ljava/lang/String;

    invoke-static {v6, v7, v8, v9}, Lcom/qiniu/android/storage/ResumeUploader;->access$800(Lcom/qiniu/android/storage/ResumeUploader;IILjava/lang/String;)V

    goto :goto_0

    .line 248
    :cond_7
    const-wide/16 v2, 0x0

    .line 250
    .local v2, "crc":J
    :try_start_0
    const-string v6, "ctx"

    invoke-virtual {p2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 251
    const-string v6, "crc32"

    invoke-virtual {p2, v6}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 255
    :goto_1
    if-eqz v0, :cond_8

    iget-object v6, p0, Lcom/qiniu/android/storage/ResumeUploader$3;->this$0:Lcom/qiniu/android/storage/ResumeUploader;

    invoke-static {v6}, Lcom/qiniu/android/storage/ResumeUploader;->access$1000(Lcom/qiniu/android/storage/ResumeUploader;)J

    move-result-wide v6

    cmp-long v6, v2, v6

    if-eqz v6, :cond_9

    .line 256
    :cond_8
    iget-object v6, p0, Lcom/qiniu/android/storage/ResumeUploader$3;->this$0:Lcom/qiniu/android/storage/ResumeUploader;

    iget v7, p0, Lcom/qiniu/android/storage/ResumeUploader$3;->val$offset:I

    iget v8, p0, Lcom/qiniu/android/storage/ResumeUploader$3;->val$retried:I

    add-int/lit8 v8, v8, 0x1

    iget-object v9, p0, Lcom/qiniu/android/storage/ResumeUploader$3;->val$host:Ljava/lang/String;

    invoke-static {v6, v7, v8, v9}, Lcom/qiniu/android/storage/ResumeUploader;->access$800(Lcom/qiniu/android/storage/ResumeUploader;IILjava/lang/String;)V

    goto/16 :goto_0

    .line 252
    :catch_0
    move-exception v1

    .line 253
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 259
    .end local v1    # "e":Lorg/json/JSONException;
    :cond_9
    iget-object v6, p0, Lcom/qiniu/android/storage/ResumeUploader$3;->this$0:Lcom/qiniu/android/storage/ResumeUploader;

    invoke-static {v6}, Lcom/qiniu/android/storage/ResumeUploader;->access$1100(Lcom/qiniu/android/storage/ResumeUploader;)[Ljava/lang/String;

    move-result-object v6

    iget v7, p0, Lcom/qiniu/android/storage/ResumeUploader$3;->val$offset:I

    div-int/2addr v7, v8

    aput-object v0, v6, v7

    .line 260
    iget-object v6, p0, Lcom/qiniu/android/storage/ResumeUploader$3;->this$0:Lcom/qiniu/android/storage/ResumeUploader;

    iget v7, p0, Lcom/qiniu/android/storage/ResumeUploader$3;->val$offset:I

    iget v8, p0, Lcom/qiniu/android/storage/ResumeUploader$3;->val$chunkSize:I

    add-int/2addr v7, v8

    invoke-static {v6, v7}, Lcom/qiniu/android/storage/ResumeUploader;->access$1200(Lcom/qiniu/android/storage/ResumeUploader;I)V

    .line 261
    iget-object v6, p0, Lcom/qiniu/android/storage/ResumeUploader$3;->this$0:Lcom/qiniu/android/storage/ResumeUploader;

    iget v7, p0, Lcom/qiniu/android/storage/ResumeUploader$3;->val$offset:I

    iget v8, p0, Lcom/qiniu/android/storage/ResumeUploader$3;->val$chunkSize:I

    add-int/2addr v7, v8

    iget v8, p0, Lcom/qiniu/android/storage/ResumeUploader$3;->val$retried:I

    iget-object v9, p0, Lcom/qiniu/android/storage/ResumeUploader$3;->val$host:Ljava/lang/String;

    invoke-static {v6, v7, v8, v9}, Lcom/qiniu/android/storage/ResumeUploader;->access$800(Lcom/qiniu/android/storage/ResumeUploader;IILjava/lang/String;)V

    goto/16 :goto_0
.end method
