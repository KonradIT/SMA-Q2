.class public Lorg/android/agoo/net/mtop/MtopAsyncClientV3;
.super Lorg/android/agoo/net/async/AsyncHttpClient;
.source "MtopAsyncClientV3.java"

# interfaces
.implements Lorg/android/agoo/net/mtop/IMtopAsynClient;


# static fields
.field private static final a:Ljava/lang/String; = "MtopAsyncClientV3"


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lorg/android/agoo/net/async/AsyncHttpClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final getV3(Landroid/content/Context;Lorg/android/agoo/net/mtop/MtopRequest;Lorg/android/agoo/net/mtop/MtopResponseHandler;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 37
    .line 39
    :try_start_0
    iget-object v0, p0, Lorg/android/agoo/net/mtop/MtopAsyncClientV3;->b:Ljava/lang/String;

    iget-object v1, p0, Lorg/android/agoo/net/mtop/MtopAsyncClientV3;->c:Ljava/lang/String;

    invoke-static {p2, v0, v1}, Lorg/android/agoo/net/mtop/MtopRequestHelper;->checkAppKeyAndAppSecret(Lorg/android/agoo/net/mtop/MtopRequest;Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    invoke-static {p1, p2}, Lorg/android/agoo/net/mtop/MtopRequestHelper;->getUrlWithRequestParams(Landroid/content/Context;Lorg/android/agoo/net/mtop/MtopRequest;)Lorg/android/agoo/net/async/RequestParams;

    move-result-object v0

    .line 43
    iget-object v1, p0, Lorg/android/agoo/net/mtop/MtopAsyncClientV3;->d:Ljava/lang/String;

    invoke-virtual {p0, p1, v1, v0, p3}, Lorg/android/agoo/net/mtop/MtopAsyncClientV3;->get(Landroid/content/Context;Ljava/lang/String;Lorg/android/agoo/net/async/RequestParams;Lorg/android/agoo/net/async/AsyncHttpResponseHandler;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    :goto_0
    return-void

    .line 44
    :catch_0
    move-exception v0

    .line 45
    const-string v1, "MtopAsyncClientV3"

    const-string v2, "getV3"

    invoke-static {v1, v2, v0}, Lcom/umeng/message/proguard/aK;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 46
    invoke-virtual {p3, v0, v3, v3}, Lorg/android/agoo/net/mtop/MtopResponseHandler;->onFailure(Ljava/lang/Throwable;Ljava/util/Map;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final setBaseUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lorg/android/agoo/net/mtop/MtopAsyncClientV3;->d:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public final setDefaultAppSecret(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lorg/android/agoo/net/mtop/MtopAsyncClientV3;->c:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public final setDefaultAppkey(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lorg/android/agoo/net/mtop/MtopAsyncClientV3;->b:Ljava/lang/String;

    .line 27
    return-void
.end method
