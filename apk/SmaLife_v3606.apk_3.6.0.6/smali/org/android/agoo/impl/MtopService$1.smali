.class Lorg/android/agoo/impl/MtopService$1;
.super Lorg/android/agoo/net/mtop/MtopResponseHandler;
.source "MtopService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/android/agoo/impl/MtopService;->sendMtop(Landroid/content/Context;Lorg/android/agoo/client/MtopProxyRequest;Lorg/android/agoo/client/MtopProxyResponseHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/android/agoo/client/MtopProxyResponseHandler;

.field final synthetic b:Lorg/android/agoo/impl/MtopService;


# direct methods
.method constructor <init>(Lorg/android/agoo/impl/MtopService;Lorg/android/agoo/client/MtopProxyResponseHandler;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lorg/android/agoo/impl/MtopService$1;->b:Lorg/android/agoo/impl/MtopService;

    iput-object p2, p0, Lorg/android/agoo/impl/MtopService$1;->a:Lorg/android/agoo/client/MtopProxyResponseHandler;

    invoke-direct {p0}, Lorg/android/agoo/net/mtop/MtopResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lorg/android/agoo/impl/MtopService$1;->a:Lorg/android/agoo/client/MtopProxyResponseHandler;

    invoke-interface {v0, p1, p2}, Lorg/android/agoo/client/MtopProxyResponseHandler;->onFailure(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method public final onSuccess(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lorg/android/agoo/impl/MtopService$1;->a:Lorg/android/agoo/client/MtopProxyResponseHandler;

    invoke-interface {v0, p1}, Lorg/android/agoo/client/MtopProxyResponseHandler;->onSuccess(Ljava/lang/String;)V

    .line 38
    return-void
.end method
