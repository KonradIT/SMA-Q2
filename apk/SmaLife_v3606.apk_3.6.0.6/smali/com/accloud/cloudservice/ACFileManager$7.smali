.class Lcom/accloud/cloudservice/ACFileManager$7;
.super Ljava/lang/Object;
.source "ACFileManager.java"

# interfaces
.implements Lcom/qiniu/android/storage/UpCompletionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/accloud/cloudservice/ACFileManager;->uploadFileToQiniu(Ljava/lang/String;Lcom/accloud/service/ACFileInfo;Lcom/accloud/cloudservice/ProgressCallback;Lcom/accloud/cloudservice/VoidCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/accloud/cloudservice/ACFileManager;

.field final synthetic val$callback:Lcom/accloud/cloudservice/VoidCallback;


# direct methods
.method constructor <init>(Lcom/accloud/cloudservice/ACFileManager;Lcom/accloud/cloudservice/VoidCallback;)V
    .locals 0

    .prologue
    .line 249
    iput-object p1, p0, Lcom/accloud/cloudservice/ACFileManager$7;->this$0:Lcom/accloud/cloudservice/ACFileManager;

    iput-object p2, p0, Lcom/accloud/cloudservice/ACFileManager$7;->val$callback:Lcom/accloud/cloudservice/VoidCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public complete(Ljava/lang/String;Lcom/qiniu/android/http/ResponseInfo;Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "info"    # Lcom/qiniu/android/http/ResponseInfo;
    .param p3, "response"    # Lorg/json/JSONObject;

    .prologue
    .line 252
    invoke-virtual {p2}, Lcom/qiniu/android/http/ResponseInfo;->isOK()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/accloud/cloudservice/ACFileManager$7;->this$0:Lcom/accloud/cloudservice/ACFileManager;

    iget-object v0, v0, Lcom/accloud/cloudservice/ACFileManager;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/accloud/cloudservice/ACFileManager$7$1;

    invoke-direct {v1, p0}, Lcom/accloud/cloudservice/ACFileManager$7$1;-><init>(Lcom/accloud/cloudservice/ACFileManager$7;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 267
    :goto_0
    return-void

    .line 260
    :cond_0
    iget-object v0, p0, Lcom/accloud/cloudservice/ACFileManager$7;->this$0:Lcom/accloud/cloudservice/ACFileManager;

    iget-object v0, v0, Lcom/accloud/cloudservice/ACFileManager;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/accloud/cloudservice/ACFileManager$7$2;

    invoke-direct {v1, p0, p2}, Lcom/accloud/cloudservice/ACFileManager$7$2;-><init>(Lcom/accloud/cloudservice/ACFileManager$7;Lcom/qiniu/android/http/ResponseInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
