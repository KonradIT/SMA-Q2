.class public final Lcom/qiniu/android/http/StatReport;
.super Ljava/lang/Object;
.source "StatReport.java"

# interfaces
.implements Lcom/qiniu/android/http/IReport;


# instance fields
.field private previousErrorInfo:Lcom/qiniu/android/http/ResponseInfo;

.field private previousSpeedInfo:Lcom/qiniu/android/http/ResponseInfo;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object v0, p0, Lcom/qiniu/android/http/StatReport;->previousErrorInfo:Lcom/qiniu/android/http/ResponseInfo;

    .line 11
    iput-object v0, p0, Lcom/qiniu/android/http/StatReport;->previousSpeedInfo:Lcom/qiniu/android/http/ResponseInfo;

    return-void
.end method


# virtual methods
.method public declared-synchronized appendStatHeaders([Lorg/apache/http/Header;)[Lorg/apache/http/Header;
    .locals 14
    .param p1, "headers"    # [Lorg/apache/http/Header;

    .prologue
    .line 20
    monitor-enter p0

    :try_start_0
    iget-object v5, p0, Lcom/qiniu/android/http/StatReport;->previousErrorInfo:Lcom/qiniu/android/http/ResponseInfo;

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/qiniu/android/http/StatReport;->previousSpeedInfo:Lcom/qiniu/android/http/ResponseInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v5, :cond_0

    .line 48
    .end local p1    # "headers":[Lorg/apache/http/Header;
    :goto_0
    monitor-exit p0

    return-object p1

    .line 23
    .restart local p1    # "headers":[Lorg/apache/http/Header;
    :cond_0
    const/4 v1, 0x1

    .line 24
    .local v1, "count":I
    :try_start_1
    iget-object v5, p0, Lcom/qiniu/android/http/StatReport;->previousErrorInfo:Lcom/qiniu/android/http/ResponseInfo;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/qiniu/android/http/StatReport;->previousSpeedInfo:Lcom/qiniu/android/http/ResponseInfo;

    if-eqz v5, :cond_1

    .line 25
    const/4 v1, 0x2

    .line 29
    :cond_1
    array-length v5, p1

    add-int/2addr v5, v1

    new-array v3, v5, [Lorg/apache/http/Header;

    .line 30
    .local v3, "h":[Lorg/apache/http/Header;
    const/4 v5, 0x0

    const/4 v6, 0x0

    array-length v7, p1

    invoke-static {p1, v5, v3, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 32
    iget-object v5, p0, Lcom/qiniu/android/http/StatReport;->previousErrorInfo:Lcom/qiniu/android/http/ResponseInfo;

    if-eqz v5, :cond_2

    .line 33
    iget-object v2, p0, Lcom/qiniu/android/http/StatReport;->previousErrorInfo:Lcom/qiniu/android/http/ResponseInfo;

    .line 34
    .local v2, "einfo":Lcom/qiniu/android/http/ResponseInfo;
    iget-object v5, v2, Lcom/qiniu/android/http/ResponseInfo;->reqId:Ljava/lang/String;

    if-eqz v5, :cond_4

    iget-object v4, v2, Lcom/qiniu/android/http/ResponseInfo;->reqId:Ljava/lang/String;

    .line 35
    .local v4, "reqId":Ljava/lang/String;
    :goto_1
    iget-object v5, v2, Lcom/qiniu/android/http/ResponseInfo;->xvia:Ljava/lang/String;

    if-eqz v5, :cond_5

    iget-object v0, v2, Lcom/qiniu/android/http/ResponseInfo;->xvia:Ljava/lang/String;

    .line 36
    .local v0, "cdnId":Ljava/lang/String;
    :goto_2
    array-length v5, p1

    new-instance v6, Lorg/apache/http/message/BasicHeader;

    const-string v7, "X-Estat"

    const-string v8, "e1;%d;%s;%s;%s;%f"

    const/4 v9, 0x5

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget v11, v2, Lcom/qiniu/android/http/ResponseInfo;->statusCode:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    aput-object v4, v9, v10

    const/4 v10, 0x2

    aput-object v0, v9, v10

    const/4 v10, 0x3

    iget-object v11, v2, Lcom/qiniu/android/http/ResponseInfo;->ip:Ljava/lang/String;

    aput-object v11, v9, v10

    const/4 v10, 0x4

    iget-wide v12, v2, Lcom/qiniu/android/http/ResponseInfo;->duration:D

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v3, v5

    .line 39
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/qiniu/android/http/StatReport;->previousErrorInfo:Lcom/qiniu/android/http/ResponseInfo;

    .line 42
    .end local v0    # "cdnId":Ljava/lang/String;
    .end local v2    # "einfo":Lcom/qiniu/android/http/ResponseInfo;
    .end local v4    # "reqId":Ljava/lang/String;
    :cond_2
    iget-object v5, p0, Lcom/qiniu/android/http/StatReport;->previousSpeedInfo:Lcom/qiniu/android/http/ResponseInfo;

    if-eqz v5, :cond_3

    .line 43
    array-length v5, p1

    add-int/2addr v5, v1

    add-int/lit8 v5, v5, -0x1

    new-instance v6, Lorg/apache/http/message/BasicHeader;

    const-string v7, "X-Stat"

    const-string v8, "v1;%s;%f;%s;%s"

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/qiniu/android/http/StatReport;->previousSpeedInfo:Lcom/qiniu/android/http/ResponseInfo;

    iget-object v11, v11, Lcom/qiniu/android/http/ResponseInfo;->reqId:Ljava/lang/String;

    aput-object v11, v9, v10

    const/4 v10, 0x1

    iget-object v11, p0, Lcom/qiniu/android/http/StatReport;->previousSpeedInfo:Lcom/qiniu/android/http/ResponseInfo;

    iget-wide v12, v11, Lcom/qiniu/android/http/ResponseInfo;->duration:D

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    iget-object v11, p0, Lcom/qiniu/android/http/StatReport;->previousSpeedInfo:Lcom/qiniu/android/http/ResponseInfo;

    iget-object v11, v11, Lcom/qiniu/android/http/ResponseInfo;->xvia:Ljava/lang/String;

    aput-object v11, v9, v10

    const/4 v10, 0x3

    iget-object v11, p0, Lcom/qiniu/android/http/StatReport;->previousSpeedInfo:Lcom/qiniu/android/http/ResponseInfo;

    iget-object v11, v11, Lcom/qiniu/android/http/ResponseInfo;->ip:Ljava/lang/String;

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v3, v5

    :cond_3
    move-object p1, v3

    .line 48
    goto/16 :goto_0

    .line 34
    .restart local v2    # "einfo":Lcom/qiniu/android/http/ResponseInfo;
    :cond_4
    const-string v4, ""

    goto :goto_1

    .line 35
    .restart local v4    # "reqId":Ljava/lang/String;
    :cond_5
    const-string v0, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 20
    .end local v1    # "count":I
    .end local v2    # "einfo":Lcom/qiniu/android/http/ResponseInfo;
    .end local v3    # "h":[Lorg/apache/http/Header;
    .end local v4    # "reqId":Ljava/lang/String;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public declared-synchronized updateErrorInfo(Lcom/qiniu/android/http/ResponseInfo;)V
    .locals 1
    .param p1, "info"    # Lcom/qiniu/android/http/ResponseInfo;

    .prologue
    .line 52
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/qiniu/android/http/StatReport;->previousErrorInfo:Lcom/qiniu/android/http/ResponseInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    monitor-exit p0

    return-void

    .line 52
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized updateSpeedInfo(Lcom/qiniu/android/http/ResponseInfo;)V
    .locals 1
    .param p1, "info"    # Lcom/qiniu/android/http/ResponseInfo;

    .prologue
    .line 57
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/qiniu/android/http/StatReport;->previousSpeedInfo:Lcom/qiniu/android/http/ResponseInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    monitor-exit p0

    return-void

    .line 57
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
