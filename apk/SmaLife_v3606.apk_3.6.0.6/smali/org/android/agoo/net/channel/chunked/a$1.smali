.class Lorg/android/agoo/net/channel/chunked/a$1;
.super Ljava/lang/Object;
.source "AbsChunkedChannel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/android/agoo/net/channel/chunked/a;->connect(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;JLorg/android/agoo/net/channel/IPushHandler;Lcom/umeng/message/proguard/aT;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/util/Map;

.field final synthetic c:Lorg/android/agoo/net/channel/chunked/a;


# direct methods
.method constructor <init>(Lorg/android/agoo/net/channel/chunked/a;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Lorg/android/agoo/net/channel/chunked/a$1;->c:Lorg/android/agoo/net/channel/chunked/a;

    iput-object p2, p0, Lorg/android/agoo/net/channel/chunked/a$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lorg/android/agoo/net/channel/chunked/a$1;->b:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 137
    :try_start_0
    iget-object v0, p0, Lorg/android/agoo/net/channel/chunked/a$1;->c:Lorg/android/agoo/net/channel/chunked/a;

    invoke-virtual {v0}, Lorg/android/agoo/net/channel/chunked/a;->a()V

    .line 138
    iget-object v0, p0, Lorg/android/agoo/net/channel/chunked/a$1;->c:Lorg/android/agoo/net/channel/chunked/a;

    iget-object v1, p0, Lorg/android/agoo/net/channel/chunked/a$1;->a:Ljava/lang/String;

    iget-object v2, p0, Lorg/android/agoo/net/channel/chunked/a$1;->b:Ljava/util/Map;

    invoke-virtual {v0, v1, v2}, Lorg/android/agoo/net/channel/chunked/a;->a(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    :goto_0
    return-void

    .line 139
    :catch_0
    move-exception v0

    goto :goto_0
.end method
