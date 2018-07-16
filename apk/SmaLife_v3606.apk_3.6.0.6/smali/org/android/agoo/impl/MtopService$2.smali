.class Lorg/android/agoo/impl/MtopService$2;
.super Lorg/android/agoo/net/mtop/MtopResponseHandler;
.source "MtopService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/android/agoo/impl/MtopService;->sendMtop(Landroid/content/Context;Lorg/android/agoo/client/MtopProxyRequest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/android/agoo/impl/MtopService;


# direct methods
.method constructor <init>(Lorg/android/agoo/impl/MtopService;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lorg/android/agoo/impl/MtopService$2;->a:Lorg/android/agoo/impl/MtopService;

    invoke-direct {p0}, Lorg/android/agoo/net/mtop/MtopResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 73
    return-void
.end method

.method public final onSuccess(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 70
    return-void
.end method
