.class Lorg/android/agoo/net/channel/chunked/a$4;
.super Ljava/lang/Object;
.source "AbsChunkedChannel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/android/agoo/net/channel/chunked/a;->shutdown()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/android/agoo/net/channel/chunked/a;


# direct methods
.method constructor <init>(Lorg/android/agoo/net/channel/chunked/a;)V
    .locals 0

    .prologue
    .line 413
    iput-object p1, p0, Lorg/android/agoo/net/channel/chunked/a$4;->a:Lorg/android/agoo/net/channel/chunked/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 416
    iget-object v0, p0, Lorg/android/agoo/net/channel/chunked/a$4;->a:Lorg/android/agoo/net/channel/chunked/a;

    invoke-virtual {v0}, Lorg/android/agoo/net/channel/chunked/a;->close()V

    .line 417
    return-void
.end method
