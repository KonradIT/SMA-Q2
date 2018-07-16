.class Lcom/accloud/cloudservice/ACFileManager$8;
.super Lcom/loopj/android/http/AsyncHttpResponseHandler;
.source "ACFileManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/accloud/cloudservice/ACFileManager;->uploadFileToAws(Ljava/lang/String;Lcom/accloud/service/ACFileInfo;Lcom/accloud/cloudservice/ProgressCallback;Lcom/accloud/cloudservice/VoidCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/accloud/cloudservice/ACFileManager;

.field final synthetic val$callback:Lcom/accloud/cloudservice/VoidCallback;

.field final synthetic val$fileInfo:Lcom/accloud/service/ACFileInfo;

.field final synthetic val$progressCallback:Lcom/accloud/cloudservice/ProgressCallback;


# direct methods
.method constructor <init>(Lcom/accloud/cloudservice/ACFileManager;Lcom/accloud/service/ACFileInfo;Lcom/accloud/cloudservice/ProgressCallback;Lcom/accloud/cloudservice/VoidCallback;)V
    .locals 0

    .prologue
    .line 294
    iput-object p1, p0, Lcom/accloud/cloudservice/ACFileManager$8;->this$0:Lcom/accloud/cloudservice/ACFileManager;

    iput-object p2, p0, Lcom/accloud/cloudservice/ACFileManager$8;->val$fileInfo:Lcom/accloud/service/ACFileInfo;

    iput-object p3, p0, Lcom/accloud/cloudservice/ACFileManager$8;->val$progressCallback:Lcom/accloud/cloudservice/ProgressCallback;

    iput-object p4, p0, Lcom/accloud/cloudservice/ACFileManager$8;->val$callback:Lcom/accloud/cloudservice/VoidCallback;

    invoke-direct {p0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public getTag()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 297
    iget-object v0, p0, Lcom/accloud/cloudservice/ACFileManager$8;->this$0:Lcom/accloud/cloudservice/ACFileManager;

    iget-object v1, p0, Lcom/accloud/cloudservice/ACFileManager$8;->val$fileInfo:Lcom/accloud/service/ACFileInfo;

    invoke-static {v0, v1}, Lcom/accloud/cloudservice/ACFileManager;->access$000(Lcom/accloud/cloudservice/ACFileManager;Lcom/accloud/service/ACFileInfo;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onFailure(I[Lcz/msebera/android/httpclient/Header;[BLjava/lang/Throwable;)V
    .locals 2
    .param p1, "i"    # I
    .param p2, "headers"    # [Lcz/msebera/android/httpclient/Header;
    .param p3, "bytes"    # [B
    .param p4, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 315
    iget-object v0, p0, Lcom/accloud/cloudservice/ACFileManager$8;->val$callback:Lcom/accloud/cloudservice/VoidCallback;

    new-instance v1, Lcom/accloud/service/ACException;

    invoke-direct {v1, p1, p4}, Lcom/accloud/service/ACException;-><init>(ILjava/lang/Throwable;)V

    invoke-interface {v0, v1}, Lcom/accloud/cloudservice/VoidCallback;->error(Lcom/accloud/service/ACException;)V

    .line 316
    return-void
.end method

.method public onProgress(JJ)V
    .locals 7
    .param p1, "bytesWritten"    # J
    .param p3, "totalSize"    # J

    .prologue
    .line 302
    iget-object v1, p0, Lcom/accloud/cloudservice/ACFileManager$8;->val$progressCallback:Lcom/accloud/cloudservice/ProgressCallback;

    if-eqz v1, :cond_0

    .line 303
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "0.00"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 304
    .local v0, "df":Ljava/text/DecimalFormat;
    iget-object v1, p0, Lcom/accloud/cloudservice/ACFileManager$8;->val$progressCallback:Lcom/accloud/cloudservice/ProgressCallback;

    new-instance v2, Ljava/lang/Double;

    long-to-float v3, p1

    const/high16 v4, 0x42c80000    # 100.0f

    mul-float/2addr v3, v4

    long-to-float v4, p3

    div-float/2addr v3, v4

    float-to-double v4, v3

    invoke-virtual {v0, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/Double;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lcom/accloud/cloudservice/ProgressCallback;->progress(D)V

    .line 306
    .end local v0    # "df":Ljava/text/DecimalFormat;
    :cond_0
    return-void
.end method

.method public onSuccess(I[Lcz/msebera/android/httpclient/Header;[B)V
    .locals 1
    .param p1, "i"    # I
    .param p2, "headers"    # [Lcz/msebera/android/httpclient/Header;
    .param p3, "bytes"    # [B

    .prologue
    .line 310
    iget-object v0, p0, Lcom/accloud/cloudservice/ACFileManager$8;->val$callback:Lcom/accloud/cloudservice/VoidCallback;

    invoke-interface {v0}, Lcom/accloud/cloudservice/VoidCallback;->success()V

    .line 311
    return-void
.end method
