.class Lcom/accloud/cloudservice/ACFileManager$7$1;
.super Ljava/lang/Object;
.source "ACFileManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/accloud/cloudservice/ACFileManager$7;->complete(Ljava/lang/String;Lcom/qiniu/android/http/ResponseInfo;Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/accloud/cloudservice/ACFileManager$7;


# direct methods
.method constructor <init>(Lcom/accloud/cloudservice/ACFileManager$7;)V
    .locals 0

    .prologue
    .line 253
    iput-object p1, p0, Lcom/accloud/cloudservice/ACFileManager$7$1;->this$1:Lcom/accloud/cloudservice/ACFileManager$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/accloud/cloudservice/ACFileManager$7$1;->this$1:Lcom/accloud/cloudservice/ACFileManager$7;

    iget-object v0, v0, Lcom/accloud/cloudservice/ACFileManager$7;->val$callback:Lcom/accloud/cloudservice/VoidCallback;

    invoke-interface {v0}, Lcom/accloud/cloudservice/VoidCallback;->success()V

    .line 257
    return-void
.end method
