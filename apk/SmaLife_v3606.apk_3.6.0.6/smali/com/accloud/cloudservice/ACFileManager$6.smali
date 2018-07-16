.class Lcom/accloud/cloudservice/ACFileManager$6;
.super Ljava/lang/Object;
.source "ACFileManager.java"

# interfaces
.implements Lcom/qiniu/android/storage/UpCancellationSignal;


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

.field final synthetic val$file:Lcom/accloud/service/ACFileInfo;


# direct methods
.method constructor <init>(Lcom/accloud/cloudservice/ACFileManager;Lcom/accloud/service/ACFileInfo;)V
    .locals 0

    .prologue
    .line 241
    iput-object p1, p0, Lcom/accloud/cloudservice/ACFileManager$6;->this$0:Lcom/accloud/cloudservice/ACFileManager;

    iput-object p2, p0, Lcom/accloud/cloudservice/ACFileManager$6;->val$file:Lcom/accloud/service/ACFileInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isCancelled()Z
    .locals 3

    .prologue
    .line 243
    iget-object v1, p0, Lcom/accloud/cloudservice/ACFileManager$6;->this$0:Lcom/accloud/cloudservice/ACFileManager;

    iget-object v2, p0, Lcom/accloud/cloudservice/ACFileManager$6;->val$file:Lcom/accloud/service/ACFileInfo;

    invoke-static {v1, v2}, Lcom/accloud/cloudservice/ACFileManager;->access$000(Lcom/accloud/cloudservice/ACFileManager;Lcom/accloud/service/ACFileInfo;)Ljava/lang/String;

    move-result-object v0

    .line 244
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Lcom/accloud/cloudservice/ACFileManager$6;->this$0:Lcom/accloud/cloudservice/ACFileManager;

    iget-object v1, v1, Lcom/accloud/cloudservice/ACFileManager;->uploadCancelledMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/accloud/cloudservice/ACFileManager$6;->this$0:Lcom/accloud/cloudservice/ACFileManager;

    iget-object v1, v1, Lcom/accloud/cloudservice/ACFileManager;->uploadCancelledMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 245
    const/4 v1, 0x1

    .line 246
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
