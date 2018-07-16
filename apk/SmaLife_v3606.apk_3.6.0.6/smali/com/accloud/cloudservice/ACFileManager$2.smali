.class Lcom/accloud/cloudservice/ACFileManager$2;
.super Lcom/loopj/android/http/AsyncHttpResponseHandler;
.source "ACFileManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/accloud/cloudservice/ACFileManager;->downloadFile(Ljava/lang/String;ILcom/accloud/cloudservice/ProgressCallback;Lcom/accloud/cloudservice/PayloadCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/accloud/cloudservice/ACFileManager;

.field final synthetic val$callback:Lcom/accloud/cloudservice/PayloadCallback;

.field final synthetic val$crc:I

.field final synthetic val$progressCallback:Lcom/accloud/cloudservice/ProgressCallback;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/accloud/cloudservice/ACFileManager;Ljava/lang/String;Lcom/accloud/cloudservice/PayloadCallback;Lcom/accloud/cloudservice/ProgressCallback;I)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcom/accloud/cloudservice/ACFileManager$2;->this$0:Lcom/accloud/cloudservice/ACFileManager;

    iput-object p2, p0, Lcom/accloud/cloudservice/ACFileManager$2;->val$url:Ljava/lang/String;

    iput-object p3, p0, Lcom/accloud/cloudservice/ACFileManager$2;->val$callback:Lcom/accloud/cloudservice/PayloadCallback;

    iput-object p4, p0, Lcom/accloud/cloudservice/ACFileManager$2;->val$progressCallback:Lcom/accloud/cloudservice/ProgressCallback;

    iput p5, p0, Lcom/accloud/cloudservice/ACFileManager$2;->val$crc:I

    invoke-direct {p0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public getTag()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/accloud/cloudservice/ACFileManager$2;->val$url:Ljava/lang/String;

    return-object v0
.end method

.method public onCrcMessage(I)V
    .locals 4
    .param p1, "getCrc"    # I

    .prologue
    .line 121
    iget v0, p0, Lcom/accloud/cloudservice/ACFileManager$2;->val$crc:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/accloud/cloudservice/ACFileManager$2;->val$crc:I

    if-eq v0, p1, :cond_0

    .line 122
    iget-object v0, p0, Lcom/accloud/cloudservice/ACFileManager$2;->val$callback:Lcom/accloud/cloudservice/PayloadCallback;

    new-instance v1, Lcom/accloud/service/ACException;

    sget v2, Lcom/accloud/service/ACException;->CHECK_CRC_FAILURE:I

    const-string v3, "check crc failed"

    invoke-direct {v1, v2, v3}, Lcom/accloud/service/ACException;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/accloud/cloudservice/PayloadCallback;->error(Lcom/accloud/service/ACException;)V

    .line 123
    iget-object v0, p0, Lcom/accloud/cloudservice/ACFileManager$2;->this$0:Lcom/accloud/cloudservice/ACFileManager;

    iget-object v0, v0, Lcom/accloud/cloudservice/ACFileManager;->isCrcSuccess:Ljava/util/Map;

    iget-object v1, p0, Lcom/accloud/cloudservice/ACFileManager$2;->val$url:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    :cond_0
    return-void
.end method

.method public onFailure(I[Lcz/msebera/android/httpclient/Header;[BLjava/lang/Throwable;)V
    .locals 2
    .param p1, "i"    # I
    .param p2, "headers"    # [Lcz/msebera/android/httpclient/Header;
    .param p3, "bytes"    # [B
    .param p4, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/accloud/cloudservice/ACFileManager$2;->val$callback:Lcom/accloud/cloudservice/PayloadCallback;

    new-instance v1, Lcom/accloud/service/ACException;

    invoke-direct {v1, p1, p4}, Lcom/accloud/service/ACException;-><init>(ILjava/lang/Throwable;)V

    invoke-interface {v0, v1}, Lcom/accloud/cloudservice/PayloadCallback;->error(Lcom/accloud/service/ACException;)V

    .line 130
    return-void
.end method

.method public onProgress(JJ)V
    .locals 7
    .param p1, "bytesWritten"    # J
    .param p3, "totalSize"    # J

    .prologue
    .line 113
    iget-object v1, p0, Lcom/accloud/cloudservice/ACFileManager$2;->val$progressCallback:Lcom/accloud/cloudservice/ProgressCallback;

    if-eqz v1, :cond_0

    .line 114
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "0.00"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 115
    .local v0, "df":Ljava/text/DecimalFormat;
    iget-object v1, p0, Lcom/accloud/cloudservice/ACFileManager$2;->val$progressCallback:Lcom/accloud/cloudservice/ProgressCallback;

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

    .line 117
    .end local v0    # "df":Ljava/text/DecimalFormat;
    :cond_0
    return-void
.end method

.method public onSuccess(I[Lcz/msebera/android/httpclient/Header;[B)V
    .locals 2
    .param p1, "i"    # I
    .param p2, "headers"    # [Lcz/msebera/android/httpclient/Header;
    .param p3, "bytes"    # [B

    .prologue
    .line 107
    iget-object v0, p0, Lcom/accloud/cloudservice/ACFileManager$2;->this$0:Lcom/accloud/cloudservice/ACFileManager;

    iget-object v0, v0, Lcom/accloud/cloudservice/ACFileManager;->isCrcSuccess:Ljava/util/Map;

    iget-object v1, p0, Lcom/accloud/cloudservice/ACFileManager$2;->val$url:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/accloud/cloudservice/ACFileManager$2;->val$callback:Lcom/accloud/cloudservice/PayloadCallback;

    invoke-interface {v0, p3}, Lcom/accloud/cloudservice/PayloadCallback;->success(Ljava/lang/Object;)V

    .line 109
    :cond_0
    return-void
.end method
