.class Lcom/accloud/cloudservice/ACFileManager$5;
.super Ljava/lang/Object;
.source "ACFileManager.java"

# interfaces
.implements Lcom/qiniu/android/storage/UpProgressHandler;


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

.field final synthetic val$progressCallback:Lcom/accloud/cloudservice/ProgressCallback;


# direct methods
.method constructor <init>(Lcom/accloud/cloudservice/ACFileManager;Lcom/accloud/cloudservice/ProgressCallback;)V
    .locals 0

    .prologue
    .line 228
    iput-object p1, p0, Lcom/accloud/cloudservice/ACFileManager$5;->this$0:Lcom/accloud/cloudservice/ACFileManager;

    iput-object p2, p0, Lcom/accloud/cloudservice/ACFileManager$5;->val$progressCallback:Lcom/accloud/cloudservice/ProgressCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public progress(Ljava/lang/String;D)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "percent"    # D

    .prologue
    .line 230
    iget-object v0, p0, Lcom/accloud/cloudservice/ACFileManager$5;->val$progressCallback:Lcom/accloud/cloudservice/ProgressCallback;

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/accloud/cloudservice/ACFileManager$5;->this$0:Lcom/accloud/cloudservice/ACFileManager;

    iget-object v0, v0, Lcom/accloud/cloudservice/ACFileManager;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/accloud/cloudservice/ACFileManager$5$1;

    invoke-direct {v1, p0, p2, p3}, Lcom/accloud/cloudservice/ACFileManager$5$1;-><init>(Lcom/accloud/cloudservice/ACFileManager$5;D)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 239
    :cond_0
    return-void
.end method
