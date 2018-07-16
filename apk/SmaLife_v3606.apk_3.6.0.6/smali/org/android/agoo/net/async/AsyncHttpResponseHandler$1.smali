.class Lorg/android/agoo/net/async/AsyncHttpResponseHandler$1;
.super Landroid/os/Handler;
.source "AsyncHttpResponseHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/android/agoo/net/async/AsyncHttpResponseHandler;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/android/agoo/net/async/AsyncHttpResponseHandler;


# direct methods
.method constructor <init>(Lorg/android/agoo/net/async/AsyncHttpResponseHandler;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lorg/android/agoo/net/async/AsyncHttpResponseHandler$1;->a:Lorg/android/agoo/net/async/AsyncHttpResponseHandler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lorg/android/agoo/net/async/AsyncHttpResponseHandler$1;->a:Lorg/android/agoo/net/async/AsyncHttpResponseHandler;

    invoke-virtual {v0, p1}, Lorg/android/agoo/net/async/AsyncHttpResponseHandler;->a(Landroid/os/Message;)V

    .line 40
    return-void
.end method
