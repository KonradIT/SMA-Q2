.class Lcom/accloud/cloudservice/ACFileManager$3;
.super Lcom/loopj/android/http/RangeFileAsyncHttpResponseHandler;
.source "ACFileManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/accloud/cloudservice/ACFileManager;->downloadFile(Ljava/io/File;Ljava/lang/String;ILcom/accloud/cloudservice/ProgressCallback;Lcom/accloud/cloudservice/VoidCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/accloud/cloudservice/ACFileManager;

.field final synthetic val$callback:Lcom/accloud/cloudservice/VoidCallback;

.field final synthetic val$crc:I

.field final synthetic val$progressCallback:Lcom/accloud/cloudservice/ProgressCallback;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/accloud/cloudservice/ACFileManager;Ljava/io/File;Ljava/lang/String;Lcom/accloud/cloudservice/VoidCallback;ILcom/accloud/cloudservice/ProgressCallback;)V
    .locals 0
    .param p2, "x0"    # Ljava/io/File;

    .prologue
    .line 138
    iput-object p1, p0, Lcom/accloud/cloudservice/ACFileManager$3;->this$0:Lcom/accloud/cloudservice/ACFileManager;

    iput-object p3, p0, Lcom/accloud/cloudservice/ACFileManager$3;->val$url:Ljava/lang/String;

    iput-object p4, p0, Lcom/accloud/cloudservice/ACFileManager$3;->val$callback:Lcom/accloud/cloudservice/VoidCallback;

    iput p5, p0, Lcom/accloud/cloudservice/ACFileManager$3;->val$crc:I

    iput-object p6, p0, Lcom/accloud/cloudservice/ACFileManager$3;->val$progressCallback:Lcom/accloud/cloudservice/ProgressCallback;

    invoke-direct {p0, p2}, Lcom/loopj/android/http/RangeFileAsyncHttpResponseHandler;-><init>(Ljava/io/File;)V

    return-void
.end method


# virtual methods
.method public getTag()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/accloud/cloudservice/ACFileManager$3;->val$url:Ljava/lang/String;

    return-object v0
.end method

.method public onCrcMessage(I)V
    .locals 4
    .param p1, "getCrc"    # I

    .prologue
    .line 157
    iget v0, p0, Lcom/accloud/cloudservice/ACFileManager$3;->val$crc:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/accloud/cloudservice/ACFileManager$3;->val$crc:I

    if-eq v0, p1, :cond_0

    .line 158
    iget-object v0, p0, Lcom/accloud/cloudservice/ACFileManager$3;->val$callback:Lcom/accloud/cloudservice/VoidCallback;

    new-instance v1, Lcom/accloud/service/ACException;

    sget v2, Lcom/accloud/service/ACException;->CHECK_CRC_FAILURE:I

    const-string v3, "check crc failed"

    invoke-direct {v1, v2, v3}, Lcom/accloud/service/ACException;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/accloud/cloudservice/VoidCallback;->error(Lcom/accloud/service/ACException;)V

    .line 159
    iget-object v0, p0, Lcom/accloud/cloudservice/ACFileManager$3;->this$0:Lcom/accloud/cloudservice/ACFileManager;

    iget-object v0, v0, Lcom/accloud/cloudservice/ACFileManager;->isCrcSuccess:Ljava/util/Map;

    iget-object v1, p0, Lcom/accloud/cloudservice/ACFileManager$3;->val$url:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    :cond_0
    return-void
.end method

.method public onFailure(I[Lcz/msebera/android/httpclient/Header;Ljava/lang/Throwable;Ljava/io/File;)V
    .locals 2
    .param p1, "i"    # I
    .param p2, "headers"    # [Lcz/msebera/android/httpclient/Header;
    .param p3, "throwable"    # Ljava/lang/Throwable;
    .param p4, "file"    # Ljava/io/File;

    .prologue
    .line 146
    iget-object v0, p0, Lcom/accloud/cloudservice/ACFileManager$3;->val$callback:Lcom/accloud/cloudservice/VoidCallback;

    new-instance v1, Lcom/accloud/service/ACException;

    invoke-direct {v1, p1, p3}, Lcom/accloud/service/ACException;-><init>(ILjava/lang/Throwable;)V

    invoke-interface {v0, v1}, Lcom/accloud/cloudservice/VoidCallback;->error(Lcom/accloud/service/ACException;)V

    .line 147
    return-void
.end method

.method public onProgress(JJ)V
    .locals 7
    .param p1, "bytesWritten"    # J
    .param p3, "totalSize"    # J

    .prologue
    .line 165
    iget-object v1, p0, Lcom/accloud/cloudservice/ACFileManager$3;->val$progressCallback:Lcom/accloud/cloudservice/ProgressCallback;

    if-eqz v1, :cond_0

    .line 166
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "0.00"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 167
    .local v0, "df":Ljava/text/DecimalFormat;
    iget-object v1, p0, Lcom/accloud/cloudservice/ACFileManager$3;->val$progressCallback:Lcom/accloud/cloudservice/ProgressCallback;

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

    .line 169
    .end local v0    # "df":Ljava/text/DecimalFormat;
    :cond_0
    return-void
.end method

.method public onSuccess(I[Lcz/msebera/android/httpclient/Header;Ljava/io/File;)V
    .locals 2
    .param p1, "i"    # I
    .param p2, "headers"    # [Lcz/msebera/android/httpclient/Header;
    .param p3, "file"    # Ljava/io/File;

    .prologue
    .line 151
    iget-object v0, p0, Lcom/accloud/cloudservice/ACFileManager$3;->this$0:Lcom/accloud/cloudservice/ACFileManager;

    iget-object v0, v0, Lcom/accloud/cloudservice/ACFileManager;->isCrcSuccess:Ljava/util/Map;

    iget-object v1, p0, Lcom/accloud/cloudservice/ACFileManager$3;->val$url:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/accloud/cloudservice/ACFileManager$3;->val$callback:Lcom/accloud/cloudservice/VoidCallback;

    invoke-interface {v0}, Lcom/accloud/cloudservice/VoidCallback;->success()V

    .line 153
    :cond_0
    return-void
.end method
