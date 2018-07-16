.class Lcom/qiniu/android/http/HttpManager$2;
.super Ljava/lang/Object;
.source "HttpManager.java"

# interfaces
.implements Lcom/qiniu/android/http/CompletionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qiniu/android/http/HttpManager;->postEntity(Ljava/lang/String;Lorg/apache/http/HttpEntity;[Lorg/apache/http/Header;Lcom/qiniu/android/http/ProgressHandler;Lcom/qiniu/android/http/CompletionHandler;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qiniu/android/http/HttpManager;

.field final synthetic val$completionHandler:Lcom/qiniu/android/http/CompletionHandler;

.field final synthetic val$entity:Lorg/apache/http/HttpEntity;

.field final synthetic val$h2:[Lorg/apache/http/Header;

.field final synthetic val$ip2:Ljava/lang/String;

.field final synthetic val$progressHandler:Lcom/qiniu/android/http/ProgressHandler;

.field final synthetic val$uri:Ljava/net/URI;


# direct methods
.method constructor <init>(Lcom/qiniu/android/http/HttpManager;Ljava/net/URI;Lcom/qiniu/android/http/CompletionHandler;Ljava/lang/String;Lcom/qiniu/android/http/ProgressHandler;[Lorg/apache/http/Header;Lorg/apache/http/HttpEntity;)V
    .locals 0

    .prologue
    .line 139
    iput-object p1, p0, Lcom/qiniu/android/http/HttpManager$2;->this$0:Lcom/qiniu/android/http/HttpManager;

    iput-object p2, p0, Lcom/qiniu/android/http/HttpManager$2;->val$uri:Ljava/net/URI;

    iput-object p3, p0, Lcom/qiniu/android/http/HttpManager$2;->val$completionHandler:Lcom/qiniu/android/http/CompletionHandler;

    iput-object p4, p0, Lcom/qiniu/android/http/HttpManager$2;->val$ip2:Ljava/lang/String;

    iput-object p5, p0, Lcom/qiniu/android/http/HttpManager$2;->val$progressHandler:Lcom/qiniu/android/http/ProgressHandler;

    iput-object p6, p0, Lcom/qiniu/android/http/HttpManager$2;->val$h2:[Lorg/apache/http/Header;

    iput-object p7, p0, Lcom/qiniu/android/http/HttpManager$2;->val$entity:Lorg/apache/http/HttpEntity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public complete(Lcom/qiniu/android/http/ResponseInfo;Lorg/json/JSONObject;)V
    .locals 10
    .param p1, "info"    # Lcom/qiniu/android/http/ResponseInfo;
    .param p2, "response"    # Lorg/json/JSONObject;

    .prologue
    const/16 v1, 0x50

    const/4 v9, 0x0

    .line 142
    iget-object v0, p0, Lcom/qiniu/android/http/HttpManager$2;->val$uri:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->getPort()I

    move-result v0

    if-eq v0, v1, :cond_0

    iget v0, p1, Lcom/qiniu/android/http/ResponseInfo;->statusCode:I

    const/16 v1, -0x3ec

    if-eq v0, v1, :cond_1

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/qiniu/android/http/HttpManager$2;->val$completionHandler:Lcom/qiniu/android/http/CompletionHandler;

    invoke-interface {v0, p1, p2}, Lcom/qiniu/android/http/CompletionHandler;->complete(Lcom/qiniu/android/http/ResponseInfo;Lorg/json/JSONObject;)V

    .line 154
    :goto_0
    return-void

    .line 146
    :cond_1
    const/4 v2, 0x0

    .line 148
    .local v2, "newUrl80":Ljava/lang/String;
    :try_start_0
    new-instance v0, Ljava/net/URI;

    iget-object v1, p0, Lcom/qiniu/android/http/HttpManager$2;->val$uri:Ljava/net/URI;

    invoke-virtual {v1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/qiniu/android/http/HttpManager$2;->val$ip2:Ljava/lang/String;

    .end local v2    # "newUrl80":Ljava/lang/String;
    const/16 v4, 0x50

    iget-object v5, p0, Lcom/qiniu/android/http/HttpManager$2;->val$uri:Ljava/net/URI;

    invoke-virtual {v5}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v5

    iget-object v7, p0, Lcom/qiniu/android/http/HttpManager$2;->val$uri:Ljava/net/URI;

    invoke-virtual {v7}, Ljava/net/URI;->getQuery()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 152
    .restart local v2    # "newUrl80":Ljava/lang/String;
    new-instance v6, Lcom/qiniu/android/http/ResponseHandler;

    iget-object v0, p0, Lcom/qiniu/android/http/HttpManager$2;->val$completionHandler:Lcom/qiniu/android/http/CompletionHandler;

    iget-object v1, p0, Lcom/qiniu/android/http/HttpManager$2;->val$progressHandler:Lcom/qiniu/android/http/ProgressHandler;

    invoke-direct {v6, v2, v0, v1}, Lcom/qiniu/android/http/ResponseHandler;-><init>(Ljava/lang/String;Lcom/qiniu/android/http/CompletionHandler;Lcom/qiniu/android/http/ProgressHandler;)V

    .line 153
    .local v6, "handler3":Lcom/qiniu/android/http/ResponseHandler;
    iget-object v0, p0, Lcom/qiniu/android/http/HttpManager$2;->this$0:Lcom/qiniu/android/http/HttpManager;

    invoke-static {v0}, Lcom/qiniu/android/http/HttpManager;->access$000(Lcom/qiniu/android/http/HttpManager;)Lcom/qiniu/android/http/AsyncHttpClientMod;

    move-result-object v0

    iget-object v3, p0, Lcom/qiniu/android/http/HttpManager$2;->val$h2:[Lorg/apache/http/Header;

    iget-object v4, p0, Lcom/qiniu/android/http/HttpManager$2;->val$entity:Lorg/apache/http/HttpEntity;

    move-object v1, v9

    move-object v5, v9

    invoke-virtual/range {v0 .. v6}, Lcom/qiniu/android/http/AsyncHttpClientMod;->post(Landroid/content/Context;Ljava/lang/String;[Lorg/apache/http/Header;Lorg/apache/http/HttpEntity;Ljava/lang/String;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;

    goto :goto_0

    .line 149
    .end local v2    # "newUrl80":Ljava/lang/String;
    .end local v6    # "handler3":Lcom/qiniu/android/http/ResponseHandler;
    :catch_0
    move-exception v8

    .line 150
    .local v8, "e":Ljava/net/URISyntaxException;
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, v8}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method
