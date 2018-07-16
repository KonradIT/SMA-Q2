.class Lcom/accloud/cloudservice/ACFileManager$7$2;
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

.field final synthetic val$info:Lcom/qiniu/android/http/ResponseInfo;


# direct methods
.method constructor <init>(Lcom/accloud/cloudservice/ACFileManager$7;Lcom/qiniu/android/http/ResponseInfo;)V
    .locals 0

    .prologue
    .line 260
    iput-object p1, p0, Lcom/accloud/cloudservice/ACFileManager$7$2;->this$1:Lcom/accloud/cloudservice/ACFileManager$7;

    iput-object p2, p0, Lcom/accloud/cloudservice/ACFileManager$7$2;->val$info:Lcom/qiniu/android/http/ResponseInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 263
    iget-object v0, p0, Lcom/accloud/cloudservice/ACFileManager$7$2;->this$1:Lcom/accloud/cloudservice/ACFileManager$7;

    iget-object v0, v0, Lcom/accloud/cloudservice/ACFileManager$7;->val$callback:Lcom/accloud/cloudservice/VoidCallback;

    new-instance v1, Lcom/accloud/service/ACException;

    sget v2, Lcom/accloud/service/ACException;->INTERNAL_ERROR:I

    iget-object v3, p0, Lcom/accloud/cloudservice/ACFileManager$7$2;->val$info:Lcom/qiniu/android/http/ResponseInfo;

    iget-object v3, v3, Lcom/qiniu/android/http/ResponseInfo;->error:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/accloud/service/ACException;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/accloud/cloudservice/VoidCallback;->error(Lcom/accloud/service/ACException;)V

    .line 264
    return-void
.end method
