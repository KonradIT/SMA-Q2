.class public final Lorg/android/agoo/net/mtop/MtopSyncClientV3;
.super Lorg/android/agoo/net/async/SyncHttpClient;
.source "MtopSyncClientV3.java"

# interfaces
.implements Lorg/android/agoo/net/mtop/IMtopSynClient;


# instance fields
.field private volatile a:Ljava/lang/String;

.field private volatile b:Ljava/lang/String;

.field private volatile c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lorg/android/agoo/net/async/SyncHttpClient;-><init>()V

    return-void
.end method

.method private final b(Ljava/lang/String;Lorg/android/agoo/net/async/RequestParams;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 42
    if-eqz p2, :cond_0

    .line 43
    invoke-virtual {p2}, Lorg/android/agoo/net/async/RequestParams;->getParamString()Ljava/lang/String;

    move-result-object v0

    .line 44
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 46
    :cond_0
    return-object p1
.end method


# virtual methods
.method public final getV3(Landroid/content/Context;Lorg/android/agoo/net/mtop/MtopRequest;)Lorg/android/agoo/net/mtop/Result;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 51
    .line 55
    :try_start_0
    iget-object v0, p0, Lorg/android/agoo/net/mtop/MtopSyncClientV3;->a:Ljava/lang/String;

    iget-object v1, p0, Lorg/android/agoo/net/mtop/MtopSyncClientV3;->b:Ljava/lang/String;

    invoke-static {p2, v0, v1}, Lorg/android/agoo/net/mtop/MtopRequestHelper;->checkAppKeyAndAppSecret(Lorg/android/agoo/net/mtop/MtopRequest;Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    invoke-static {p1, p2}, Lorg/android/agoo/net/mtop/MtopRequestHelper;->getUrlWithRequestParams(Landroid/content/Context;Lorg/android/agoo/net/mtop/MtopRequest;)Lorg/android/agoo/net/async/RequestParams;

    move-result-object v0

    .line 59
    iget-object v1, p0, Lorg/android/agoo/net/mtop/MtopSyncClientV3;->c:Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lorg/android/agoo/net/mtop/MtopSyncClientV3;->b(Ljava/lang/String;Lorg/android/agoo/net/async/RequestParams;)Ljava/lang/String;

    .line 60
    iget-object v1, p0, Lorg/android/agoo/net/mtop/MtopSyncClientV3;->c:Ljava/lang/String;

    invoke-virtual {p0, p1, v1, v0}, Lorg/android/agoo/net/mtop/MtopSyncClientV3;->get(Landroid/content/Context;Ljava/lang/String;Lorg/android/agoo/net/async/RequestParams;)Lorg/android/agoo/net/async/SyncHttpClient$a;

    move-result-object v1

    .line 61
    iget-object v0, v1, Lorg/android/agoo/net/async/SyncHttpClient$a;->c:Ljava/lang/String;

    .line 62
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 63
    new-instance v0, Lorg/android/agoo/net/mtop/Result;

    invoke-direct {v0}, Lorg/android/agoo/net/mtop/Result;-><init>()V

    .line 64
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/android/agoo/net/mtop/Result;->setSuccess(Z)V

    .line 65
    const-string v1, "request result is null"

    invoke-virtual {v0, v1}, Lorg/android/agoo/net/mtop/Result;->setRetDesc(Ljava/lang/String;)V

    .line 75
    :goto_0
    return-object v0

    .line 68
    :cond_0
    invoke-static {v0}, Lorg/android/agoo/net/mtop/MtopResponseHelper;->parse(Ljava/lang/String;)Lorg/android/agoo/net/mtop/Result;

    move-result-object v0

    .line 69
    iget-object v1, v1, Lorg/android/agoo/net/async/SyncHttpClient$a;->b:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lorg/android/agoo/net/mtop/Result;->setHeaders(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 70
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 71
    new-instance v0, Lorg/android/agoo/net/mtop/Result;

    invoke-direct {v0}, Lorg/android/agoo/net/mtop/Result;-><init>()V

    .line 72
    invoke-virtual {v0, v3}, Lorg/android/agoo/net/mtop/Result;->setSuccess(Z)V

    .line 73
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/android/agoo/net/mtop/Result;->setRetDesc(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getV3ForRegister(Landroid/content/Context;Lorg/android/agoo/net/mtop/MtopRequest;)Ljava/util/Map;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 80
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 83
    const/4 v1, 0x0

    .line 85
    :try_start_0
    iget-object v0, p0, Lorg/android/agoo/net/mtop/MtopSyncClientV3;->a:Ljava/lang/String;

    iget-object v3, p0, Lorg/android/agoo/net/mtop/MtopSyncClientV3;->b:Ljava/lang/String;

    invoke-static {p2, v0, v3}, Lorg/android/agoo/net/mtop/MtopRequestHelper;->checkAppKeyAndAppSecret(Lorg/android/agoo/net/mtop/MtopRequest;Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    invoke-static {p1, p2}, Lorg/android/agoo/net/mtop/MtopRequestHelper;->getUrlWithRequestParams(Landroid/content/Context;Lorg/android/agoo/net/mtop/MtopRequest;)Lorg/android/agoo/net/async/RequestParams;

    move-result-object v3

    .line 89
    iget-object v0, p0, Lorg/android/agoo/net/mtop/MtopSyncClientV3;->c:Ljava/lang/String;

    invoke-direct {p0, v0, v3}, Lorg/android/agoo/net/mtop/MtopSyncClientV3;->b(Ljava/lang/String;Lorg/android/agoo/net/async/RequestParams;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 90
    :try_start_1
    iget-object v1, p0, Lorg/android/agoo/net/mtop/MtopSyncClientV3;->c:Ljava/lang/String;

    invoke-virtual {p0, p1, v1, v3}, Lorg/android/agoo/net/mtop/MtopSyncClientV3;->get(Landroid/content/Context;Ljava/lang/String;Lorg/android/agoo/net/async/RequestParams;)Lorg/android/agoo/net/async/SyncHttpClient$a;

    move-result-object v3

    .line 91
    iget-object v1, v3, Lorg/android/agoo/net/async/SyncHttpClient$a;->c:Ljava/lang/String;

    .line 92
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 93
    new-instance v1, Lorg/android/agoo/net/mtop/Result;

    invoke-direct {v1}, Lorg/android/agoo/net/mtop/Result;-><init>()V

    .line 94
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lorg/android/agoo/net/mtop/Result;->setSuccess(Z)V

    .line 95
    const-string v3, "request result is null"

    invoke-virtual {v1, v3}, Lorg/android/agoo/net/mtop/Result;->setRetDesc(Ljava/lang/String;)V

    .line 96
    const-string v3, "result"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    const-string v1, "requestUrl"

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v2

    .line 109
    :goto_0
    return-object v0

    .line 100
    :cond_0
    invoke-static {v1}, Lorg/android/agoo/net/mtop/MtopResponseHelper;->parse(Ljava/lang/String;)Lorg/android/agoo/net/mtop/Result;

    move-result-object v1

    .line 101
    iget-object v3, v3, Lorg/android/agoo/net/async/SyncHttpClient$a;->b:Ljava/util/Map;

    invoke-virtual {v1, v3}, Lorg/android/agoo/net/mtop/Result;->setHeaders(Ljava/util/Map;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 107
    :goto_1
    const-string v3, "result"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    const-string v1, "requestUrl"

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v2

    .line 109
    goto :goto_0

    .line 102
    :catch_0
    move-exception v0

    move-object v3, v0

    move-object v0, v1

    .line 103
    :goto_2
    new-instance v1, Lorg/android/agoo/net/mtop/Result;

    invoke-direct {v1}, Lorg/android/agoo/net/mtop/Result;-><init>()V

    .line 104
    invoke-virtual {v1, v5}, Lorg/android/agoo/net/mtop/Result;->setSuccess(Z)V

    .line 105
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/android/agoo/net/mtop/Result;->setRetDesc(Ljava/lang/String;)V

    goto :goto_1

    .line 102
    :catch_1
    move-exception v1

    move-object v3, v1

    goto :goto_2
.end method

.method public final setBaseUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lorg/android/agoo/net/mtop/MtopSyncClientV3;->c:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public final setDefaultAppSecret(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lorg/android/agoo/net/mtop/MtopSyncClientV3;->b:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public final setDefaultAppkey(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lorg/android/agoo/net/mtop/MtopSyncClientV3;->a:Ljava/lang/String;

    .line 29
    return-void
.end method
