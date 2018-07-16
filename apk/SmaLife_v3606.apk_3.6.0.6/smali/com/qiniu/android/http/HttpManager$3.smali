.class Lcom/qiniu/android/http/HttpManager$3;
.super Ljava/lang/Object;
.source "HttpManager.java"

# interfaces
.implements Lcom/qiniu/android/http/CompletionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qiniu/android/http/HttpManager;->wrap(Lcom/qiniu/android/http/CompletionHandler;)Lcom/qiniu/android/http/CompletionHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qiniu/android/http/HttpManager;

.field final synthetic val$completionHandler:Lcom/qiniu/android/http/CompletionHandler;


# direct methods
.method constructor <init>(Lcom/qiniu/android/http/HttpManager;Lcom/qiniu/android/http/CompletionHandler;)V
    .locals 0

    .prologue
    .line 198
    iput-object p1, p0, Lcom/qiniu/android/http/HttpManager$3;->this$0:Lcom/qiniu/android/http/HttpManager;

    iput-object p2, p0, Lcom/qiniu/android/http/HttpManager$3;->val$completionHandler:Lcom/qiniu/android/http/CompletionHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public complete(Lcom/qiniu/android/http/ResponseInfo;Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "info"    # Lcom/qiniu/android/http/ResponseInfo;
    .param p2, "response"    # Lorg/json/JSONObject;

    .prologue
    .line 201
    iget-object v0, p0, Lcom/qiniu/android/http/HttpManager$3;->val$completionHandler:Lcom/qiniu/android/http/CompletionHandler;

    invoke-interface {v0, p1, p2}, Lcom/qiniu/android/http/CompletionHandler;->complete(Lcom/qiniu/android/http/ResponseInfo;Lorg/json/JSONObject;)V

    .line 202
    invoke-virtual {p1}, Lcom/qiniu/android/http/ResponseInfo;->isOK()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/qiniu/android/http/HttpManager$3;->this$0:Lcom/qiniu/android/http/HttpManager;

    invoke-static {v0}, Lcom/qiniu/android/http/HttpManager;->access$100(Lcom/qiniu/android/http/HttpManager;)Lcom/qiniu/android/http/IReport;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/qiniu/android/http/IReport;->updateSpeedInfo(Lcom/qiniu/android/http/ResponseInfo;)V

    .line 207
    :goto_0
    return-void

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/qiniu/android/http/HttpManager$3;->this$0:Lcom/qiniu/android/http/HttpManager;

    invoke-static {v0}, Lcom/qiniu/android/http/HttpManager;->access$100(Lcom/qiniu/android/http/HttpManager;)Lcom/qiniu/android/http/IReport;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/qiniu/android/http/IReport;->updateErrorInfo(Lcom/qiniu/android/http/ResponseInfo;)V

    goto :goto_0
.end method
