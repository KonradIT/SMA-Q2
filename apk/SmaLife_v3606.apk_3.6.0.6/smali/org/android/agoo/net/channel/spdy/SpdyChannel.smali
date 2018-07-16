.class public Lorg/android/agoo/net/channel/spdy/SpdyChannel;
.super Ljava/lang/Object;
.source "SpdyChannel.java"

# interfaces
.implements Lorg/android/agoo/net/channel/IDataChannel;
.implements Lorg/android/spdy/Spdycb;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/android/agoo/net/channel/spdy/SpdyChannel$a;
    }
.end annotation


# static fields
.field public static final b:Ljava/lang/String; = "agoo_push_errorid"

.field public static final c:Ljava/lang/String; = "agoo_push_path"

.field public static final d:Ljava/lang/String; = "agoo_connect_type"

.field private static final h:Ljava/lang/String; = "SpdyClient"

.field private static final i:Ljava/lang/String; = ":status"


# instance fields
.field protected volatile a:Lorg/android/agoo/net/channel/ChannelState;

.field protected volatile e:Landroid/content/Context;

.field protected volatile f:Lcom/umeng/message/proguard/aT;

.field protected volatile g:Lcom/umeng/message/proguard/aV;

.field private volatile j:Lorg/android/spdy/SpdyAgent;

.field private volatile k:Lorg/android/spdy/SpdySession;

.field private volatile l:Ljava/lang/String;

.field private volatile m:Lorg/android/agoo/net/channel/IPushHandler;

.field private volatile n:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/android/agoo/net/channel/spdy/SpdyChannel$a;",
            ">;"
        }
    .end annotation
.end field

.field private volatile o:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lorg/android/agoo/net/channel/IPullHandler;",
            ">;>;"
        }
    .end annotation
.end field

.field private p:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private volatile q:J

.field private volatile r:Ljava/net/URL;

.field private volatile s:Ljava/lang/Object;

.field private volatile t:J

.field private volatile u:J

.field private final v:Lorg/android/spdy/SessionCb;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    const/4 v1, 0x0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object v1, p0, Lorg/android/agoo/net/channel/spdy/SpdyChannel;->j:Lorg/android/spdy/SpdyAgent;

    .line 47
    iput-object v1, p0, Lorg/android/agoo/net/channel/spdy/SpdyChannel;->k:Lorg/android/spdy/SpdySession;

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/android/agoo/net/channel/spdy/SpdyChannel;->n:Ljava/util/Map;

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/android/agoo/net/channel/spdy/SpdyChannel;->o:Ljava/util/Map;

    .line 53
    iput-wide v2, p0, Lorg/android/agoo/net/channel/spdy/SpdyChannel;->q:J

    .line 55
    iput-object v1, p0, Lorg/android/agoo/net/channel/spdy/SpdyChannel;->s:Ljava/lang/Object;

    .line 56
    sget-object v0, Lorg/android/agoo/net/channel/ChannelState;->d:Lorg/android/agoo/net/channel/ChannelState;

    iput-object v0, p0, Lorg/android/agoo/net/channel/spdy/SpdyChannel;->a:Lorg/android/agoo/net/channel/ChannelState;

    .line 64
    iput-object v1, p0, Lorg/android/agoo/net/channel/spdy/SpdyChannel;->f:Lcom/umeng/message/proguard/aT;

    .line 65
    iput-object v1, p0, Lorg/android/agoo/net/channel/spdy/SpdyChannel;->g:Lcom/umeng/message/proguard/aV;

    .line 344
    iput-wide v2, p0, Lorg/android/agoo/net/channel/spdy/SpdyChannel;->t:J

    .line 391
    iput-wide v2, p0, Lorg/android/agoo/net/channel/spdy/SpdyChannel;->u:J

    .line 473
    new-instance v0, Lorg/android/agoo/net/channel/spdy/SpdyChannel$2;

    invoke-direct {v0, p0}, Lorg/android/agoo/net/channel/spdy/SpdyChannel$2;-><init>(Lorg/android/agoo/net/channel/spdy/SpdyChannel;)V

    iput-object v0, p0, Lorg/android/agoo/net/channel/spdy/SpdyChannel;->v:Lorg/android/spdy/SessionCb;

    .line 69
    :try_start_0
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lorg/android/agoo/net/channel/spdy/SpdyChannel;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 70
    iget-object v0, p0, Lorg/android/agoo/net/channel/spdy/SpdyChannel;->e:Landroid/content/Context;

    sget-object v1, Lorg/android/spdy/SpdyVersion;->SPDY3:Lorg/android/spdy/SpdyVersion;

    sget-object v2, Lorg/android/spdy/SpdySessionKind;->NONE_SESSION:Lorg/android/spdy/SpdySessionKind;

    invoke-static {v0, v1, v2}, Lorg/android/spdy/SpdyAgent;->getInstance(Landroid/content/Context;Lorg/android/spdy/SpdyVersion;Lorg/android/spdy/SpdySessionKind;)Lorg/android/spdy/SpdyAgent;

    move-result-object v0

    iput-object v0, p0, Lorg/android/agoo/net/channel/spdy/SpdyChannel;->j:Lorg/android/spdy/SpdyAgent;
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 82
    :goto_0
    return-void

    .line 71
    :catch_0
    move-exception v0

    .line 72
    iget-object v1, p0, Lorg/android/agoo/net/channel/spdy/SpdyChannel;->f:Lcom/umeng/message/proguard/aT;

    sget-object v2, Lorg/android/agoo/net/channel/ChannelError;->g:Lorg/android/agoo/net/channel/ChannelError;

    invoke-virtual {v2}, Lorg/android/agoo/net/channel/ChannelError;->getErrorCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/umeng/message/proguard/aT;->f(Ljava/lang/String;)V

    .line 73
    iget-object v1, p0, Lorg/android/agoo/net/channel/spdy/SpdyChannel;->f:Lcom/umeng/message/proguard/aT;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/umeng/message/proguard/bd;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/umeng/message/proguard/aT;->i(Ljava/lang/String;)V

    .line 74
    sget-object v1, Lorg/android/agoo/net/channel/ChannelError;->g:Lorg/android/agoo/net/channel/ChannelError;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iget-object v3, p0, Lorg/android/agoo/net/channel/spdy/SpdyChannel;->f:Lcom/umeng/message/proguard/aT;

    invoke-direct {p0, v1, v2, v0, v3}, Lorg/android/agoo/net/channel/spdy/SpdyChannel;->a(Lorg/android/agoo/net/channel/ChannelError;Ljava/util/Map;Ljava/lang/Throwable;Lcom/umeng/message/proguard/aT;)V

    goto :goto_0

    .line 76
    :catch_1
    move-exception v0

    .line 77
    iget-object v1, p0, Lorg/android/agoo/net/channel/spdy/SpdyChannel;->f:Lcom/umeng/message/proguard/aT;

    sget-object v2, Lorg/android/agoo/net/channel/ChannelError;->f:Lorg/android/agoo/net/channel/ChannelError;

    invoke-virtual {v2}, Lorg/android/agoo/net/channel/ChannelError;->getErrorCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/umeng/message/proguard/aT;->f(Ljava/lang/String;)V

    .line 78
    iget-object v1, p0, Lorg/android/agoo/net/channel/spdy/SpdyChannel;->f:Lcom/umeng/message/proguard/aT;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/umeng/message/proguard/bd;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/umeng/message/proguard/aT;->i(Ljava/lang/String;)V

    .line 79
    sget-object v1, Lorg/android/agoo/net/channel/ChannelError;->f:Lorg/android/agoo/net/channel/ChannelError;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iget-object v3, p0, Lorg/android/agoo/net/channel/spdy/SpdyChannel;->f:Lcom/umeng/message/proguard/aT;

    invoke-direct {p0, v1, v2, v0, v3}, Lorg/android/agoo/net/channel/spdy/SpdyChannel;->a(Lorg/android/agoo/net/channel/ChannelError;Ljava/util/Map;Ljava/lang/Throwable;Lcom/umeng/message/proguard/aT;)V

    goto :goto_0
.end method

.method static synthetic a(Lorg/android/agoo/net/channel/spdy/SpdyChannel;J)J
    .locals 1

    .prologue
    .line 43
    iput-wide p1, p0, Lorg/android/agoo/net/channel/spdy/SpdyChannel;->q:J

    return-wide p1
.end method

.method private final a(Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 450
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 451
    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    .line 452
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 453
    add-int/lit8 v0, v3, -0x1

    if-ge v1, v0, :cond_0

    .line 454
    const-string v0, ","

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 451
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 457
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lorg/android/agoo/net/channel/spdy/SpdyChannel;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lorg/android/agoo/net/channel/spdy/SpdyChannel;->l:Ljava/lang/String;

    return-object v0
.end method

.method private final a(Ljava/util/Map;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 422
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 424
    :try_start_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 428
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 429
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 430
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 431
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 434
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-direct {p0, v0}, Lorg/android/agoo/net/channel/spdy/SpdyChannel;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 435
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 438
    const-string v4, ":"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 439
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 441
    :cond_1
    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 443
    :catch_0
    move-exception v0

    .line 446
    :cond_2
    return-object v2
.end method

.method private final a()V
    .locals 4

    .prologue
    .line 213
    iget-object v0, p0, Lorg/android/agoo/net/channel/spdy/SpdyChannel;->k:Lorg/android/spdy/SpdySession;

    if-eqz v0, :cond_0

    .line 215
    :try_start_0
    const-string v0, "SpdyClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "session.streamReset("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lorg/android/agoo/net/channel/spdy/SpdyChannel;->t:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/umeng/message/proguard/aK;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    iget-object v0, p0, Lorg/android/agoo/net/channel/spdy/SpdyChannel;->k:Lorg/android/spdy/SpdySession;

    iget-wide v2, p0, Lorg/android/agoo/net/channel/spdy/SpdyChannel;->t:J

    const/16 v1, -0x7de

    invoke-virtual {v0, v2, v3, v1}, Lorg/android/spdy/SpdySession;->streamReset(JI)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 220
    :goto_0
    :try_start_1
    const-string v0, "SpdyClient"

    const-string v1, "session.close()"

    invoke-static {v0, v1}, Lcom/umeng/message/proguard/aK;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    iget-object v0, p0, Lorg/android/agoo/net/channel/spdy/SpdyChannel;->k:Lorg/android/spdy/SpdySession;

    invoke-virtual {v0}, Lorg/android/spdy/SpdySession;->closeSession()I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 226
    :goto_1
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/android/agoo/net/channel/spdy/SpdyChannel;->k:Lorg/android/spdy/SpdySession;

    .line 228
    :cond_0
    return-void

    .line 223
    :catch_0
    move-exception v0

    .line 224
    const-string v1, "SpdyClient"

    const-string v2, "disconnect"

    invoke-static {v1, v2, v0}, Lcom/umeng/message/proguard/aK;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 217
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method private final a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 462
    :try_start_0
    const-string v0, "AppStore"

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 464
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 465
    const-string v1, "agoo_push_errorid"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 466
    const-string v1, "agoo_push_path"

    invoke-interface {v0, v1, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 467
    const-string v1, "agoo_connect_type"

    const-string v2, "spdy"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 468
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 471
    :goto_0
    return-void

    .line 469
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private final a(Ljava/lang/String;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 402
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 403
    const-string v0, "SpdyClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connect url["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/umeng/message/proguard/aK;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    :cond_0
    if-eqz p2, :cond_2

    .line 407
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 408
    if-eqz v0, :cond_1

    .line 411
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 412
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 413
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 414
    const-string v3, "SpdyClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "header--->["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ":"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/umeng/message/proguard/aK;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 419
    :cond_2
    return-void
.end method

.method private final a(Lorg/android/agoo/net/channel/ChannelError;Ljava/util/Map;Ljava/lang/Throwable;Lcom/umeng/message/proguard/aT;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/android/agoo/net/channel/ChannelError;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Throwable;",
            "Lcom/umeng/message/proguard/aT;",
            ")V"
        }
    .end annotation

    .prologue
    .line 588
    iget-object v0, p0, Lorg/android/agoo/net/channel/spdy/SpdyChannel;->m:Lorg/android/agoo/net/channel/IPushHandler;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/android/agoo/net/channel/spdy/SpdyChannel;->hasCallError()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 589
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/android/agoo/net/channel/spdy/SpdyChannel;->callError(Z)V

    .line 590
    sget-object v0, Lorg/android/agoo/net/channel/ChannelState;->d:Lorg/android/agoo/net/channel/ChannelState;

    iput-object v0, p0, Lorg/android/agoo/net/channel/spdy/SpdyChannel;->a:Lorg/android/agoo/net/channel/ChannelState;

    .line 591
    iget-object v0, p0, Lorg/android/agoo/net/channel/spdy/SpdyChannel;->m:Lorg/android/agoo/net/channel/IPushHandler;

    iget-object v1, p0, Lorg/android/agoo/net/channel/spdy/SpdyChannel;->s:Ljava/lang/Object;

    iget-wide v2, p0, Lorg/android/agoo/net/channel/spdy/SpdyChannel;->t:J

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-interface/range {v0 .. v7}, Lorg/android/agoo/net/channel/IPushHandler;->onError(Ljava/lang/Object;JLorg/android/agoo/net/channel/ChannelError;Ljava/util/Map;Ljava/lang/Throwable;Lcom/umeng/message/proguard/aT;)V

    .line 594
    :cond_0
    return-void
.end method

.method static synthetic a(Lorg/android/agoo/net/channel/spdy/SpdyChannel;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3}, Lorg/android/agoo/net/channel/spdy/SpdyChannel;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lorg/android/agoo/net/channel/spdy/SpdyChannel;Lorg/android/agoo/net/channel/ChannelError;Ljava/util/Map;Ljava/lang/Throwable;Lcom/umeng/message/proguard/aT;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/android/agoo/net/channel/spdy/SpdyChannel;->a(Lorg/android/agoo/net/channel/ChannelError;Ljava/util/Map;Ljava/lang/Throwable;Lcom/umeng/message/proguard/aT;)V

    return-void
.end method

.method static synthetic b(Lorg/android/agoo/net/channel/spdy/SpdyChannel;J)J
    .locals 1

    .prologue
    .line 43
    iput-wide p1, p0, Lorg/android/agoo/net/channel/spdy/SpdyChannel;->u:J

    return-wide p1
.end method

.method static synthetic b(Lorg/android/agoo/net/channel/spdy/SpdyChannel;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lorg/android/agoo/net/channel/spdy/SpdyChannel;->a()V

    return-void
.end method

.method static synthetic c(Lorg/android/agoo/net/channel/spdy/SpdyChannel;)J
    .locals 2

    .prologue
    .line 43
    iget-wide v0, p0, Lorg/android/agoo/net/channel/spdy/SpdyChannel;->u:J

    return-wide v0
.end method

.method static synthetic d(Lorg/android/agoo/net/channel/spdy/SpdyChannel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lorg/android/agoo/net/channel/spdy/SpdyChannel;->s:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic e(Lorg/android/agoo/net/channel/spdy/SpdyChannel;)Lorg/android/agoo/net/channel/IPushHandler;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lorg/android/agoo/net/channel/spdy/SpdyChannel;->m:Lorg/android/agoo/net/channel/IPushHandler;

    return-object v0
.end method

.method static synthetic f(Lorg/android/agoo/net/channel/spdy/SpdyChannel;)J
    .locals 2

    .prologue
    .line 43
    iget-wide v0, p0, Lorg/android/agoo/net/channel/spdy/SpdyChannel;->t:J

    return-wide v0
.end method


# virtual methods
.method public final asyncDisconnect()V
    .locals 1

    .prologue
    .line 232
    sget-object v0, Lorg/android/agoo/net/channel/ChannelState;->c:Lorg/android/agoo/net/channel/ChannelState;

    iput-object v0, p0, Lorg/android/agoo/net/channel/spdy/SpdyChannel;->a:Lorg/android/agoo/net/channel/ChannelState;

    .line 233
    invoke-direct {p0}, Lorg/android/agoo/net/channel/spdy/SpdyChannel;->a()V

    .line 234
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/android/agoo/net/channel/spdy/SpdyChannel;->callError(Z)V

    .line 235
    sget-object v0, Lorg/android/agoo/net/channel/ChannelState;->d:Lorg/android/agoo/net/channel/ChannelState;

    iput-object v0, p0, Lorg/android/agoo/net/channel/spdy/SpdyChannel;->a:Lorg/android/agoo/net/channel/ChannelState;

    .line 236
    return-void
.end method

.method public final callError(Z)V
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lorg/android/agoo/net/channel/spdy/SpdyChannel;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 86
    return-void
.end method

.method public final close()V
    .locals 2

    .prologue
    .line 241
    :try_start_0
    iget-object v0, p0, Lorg/android/agoo/net/channel/spdy/SpdyChannel;->j:Lorg/android/spdy/SpdyAgent;

    if-eqz v0, :cond_0

    .line 242
    const-string v0, "SpdyClient"

    const-string v1, "closing"

    invoke-static {v0, v1}, Lcom/umeng/message/proguard/aK;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    invoke-direct {p0}, Lorg/android/agoo/net/channel/spdy/SpdyChannel;->a()V

    .line 244
    iget-object v0, p0, Lorg/android/agoo/net/channel/spdy/SpdyChannel;->j:Lorg/android/spdy/SpdyAgent;

    invoke-virtual {v0}, Lorg/android/spdy/SpdyAgent;->close()V

    .line 245
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/android/agoo/net/channel/spdy/SpdyChannel;->j:Lorg/android/spdy/SpdyAgent;

    .line 246
    const-string v0, "SpdyClient"

    const-string v1, "closed"

    invoke-static {v0, v1}, Lcom/umeng/message/proguard/aK;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 250
    :cond_0
    :goto_0
    return-void

    .line 248
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final connect(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;JLorg/android/agoo/net/channel/IPushHandler;Lcom/umeng/message/proguard/aT;Ljava/lang/String;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;J",
            "Lorg/android/agoo/net/channel/IPushHandler;",
            "Lcom/umeng/message/proguard/aT;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 99
    move-object/from16 v0, p8

    iput-object v0, p0, Lorg/android/agoo/net/channel/spdy/SpdyChannel;->f:Lcom/umeng/message/proguard/aT;

    .line 100
    if-eqz p1, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    if-nez p7, :cond_1

    .line 101
    :cond_0
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "connectContext==null||url==null || eventHandler==null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 103
    :cond_1
    iput-object p2, p0, Lorg/android/agoo/net/channel/spdy/SpdyChannel;->e:Landroid/content/Context;

    .line 104
    iput-object p1, p0, Lorg/android/agoo/net/channel/spdy/SpdyChannel;->s:Ljava/lang/Object;

    .line 105
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lorg/android/agoo/net/channel/spdy/SpdyChannel;->callError(Z)V

    .line 106
    move-object/from16 v0, p7

    iput-object v0, p0, Lorg/android/agoo/net/channel/spdy/SpdyChannel;->m:Lorg/android/agoo/net/channel/IPushHandler;

    .line 108
    :try_start_0
    iget-object v2, p0, Lorg/android/agoo/net/channel/spdy/SpdyChannel;->e:Landroid/content/Context;

    const-string v3, "AppStore"

    const/4 v4, 0x4

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 110
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 111
    const-string v3, "agoo_connect_type"

    const-string v4, "spdy"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 112
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    .line 115
    :goto_0
    :try_start_1
    invoke-direct {p0, p3, p4}, Lorg/android/agoo/net/channel/spdy/SpdyChannel;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 116
    sget-object v2, Lorg/android/agoo/net/channel/ChannelState;->a:Lorg/android/agoo/net/channel/ChannelState;

    iput-object v2, p0, Lorg/android/agoo/net/channel/spdy/SpdyChannel;->a:Lorg/android/agoo/net/channel/ChannelState;

    .line 117
    iget-object v2, p0, Lorg/android/agoo/net/channel/spdy/SpdyChannel;->j:Lorg/android/spdy/SpdyAgent;

    if-eqz v2, :cond_3

    .line 118
    iput-object p3, p0, Lorg/android/agoo/net/channel/spdy/SpdyChannel;->l:Ljava/lang/String;

    .line 119
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lorg/android/agoo/net/channel/spdy/SpdyChannel;->r:Ljava/net/URL;

    .line 120
    new-instance v3, Lorg/android/spdy/SpdyRequest;

    iget-object v2, p0, Lorg/android/agoo/net/channel/spdy/SpdyChannel;->r:Ljava/net/URL;

    const-string v4, "GET"

    sget-object v5, Lorg/android/spdy/RequestPriority;->DEFAULT_PRIORITY:Lorg/android/spdy/RequestPriority;

    invoke-direct {v3, v2, v4, v5}, Lorg/android/spdy/SpdyRequest;-><init>(Ljava/net/URL;Ljava/lang/String;Lorg/android/spdy/RequestPriority;)V

    .line 123
    if-eqz p4, :cond_2

    invoke-interface {p4}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 124
    invoke-virtual {v3, p4}, Lorg/android/spdy/SpdyRequest;->addHeaders(Ljava/util/Map;)V

    .line 126
    :cond_2
    new-instance v4, Lorg/android/spdy/SpdyDataProvider;

    const/4 v2, 0x0

    check-cast v2, [B

    invoke-direct {v4, v2}, Lorg/android/spdy/SpdyDataProvider;-><init>([B)V

    .line 127
    iget-object v2, p0, Lorg/android/agoo/net/channel/spdy/SpdyChannel;->j:Lorg/android/spdy/SpdyAgent;

    iget-object v5, p0, Lorg/android/agoo/net/channel/spdy/SpdyChannel;->l:Ljava/lang/String;

    iget-object v6, p0, Lorg/android/agoo/net/channel/spdy/SpdyChannel;->l:Ljava/lang/String;

    iget-object v8, p0, Lorg/android/agoo/net/channel/spdy/SpdyChannel;->v:Lorg/android/spdy/SessionCb;

    const/4 v9, 0x2

    move-object v7, p0

    invoke-virtual/range {v2 .. v9}, Lorg/android/spdy/SpdyAgent;->submitRequest(Lorg/android/spdy/SpdyRequest;Lorg/android/spdy/SpdyDataProvider;Ljava/lang/Object;Ljava/lang/Object;Lorg/android/spdy/Spdycb;Lorg/android/spdy/SessionCb;I)Lorg/android/spdy/SpdySession;

    move-result-object v2

    iput-object v2, p0, Lorg/android/agoo/net/channel/spdy/SpdyChannel;->k:Lorg/android/spdy/SpdySession;

    .line 128
    iget-object v2, p0, Lorg/android/agoo/net/channel/spdy/SpdyChannel;->f:Lcom/umeng/message/proguard/aT;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p9

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/umeng/message/proguard/aT;->g(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 143
    :cond_3
    :goto_1
    return-void

    .line 130
    :catch_0
    move-exception v2

    .line 132
    iget-object v3, p0, Lorg/android/agoo/net/channel/spdy/SpdyChannel;->f:Lcom/umeng/message/proguard/aT;

    sget-object v4, Lorg/android/agoo/net/channel/ChannelError;->g:Lorg/android/agoo/net/channel/ChannelError;

    invoke-virtual {v4}, Lorg/android/agoo/net/channel/ChannelError;->getErrorCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/umeng/message/proguard/aT;->f(Ljava/lang/String;)V

    .line 133
    iget-object v3, p0, Lorg/android/agoo/net/channel/spdy/SpdyChannel;->f:Lcom/umeng/message/proguard/aT;

    const-string v4, "1"

    invoke-virtual {v3, v4}, Lcom/umeng/message/proguard/aT;->j(Ljava/lang/String;)V

    .line 134
    sget-object v3, Lorg/android/agoo/net/channel/ChannelError;->g:Lorg/android/agoo/net/channel/ChannelError;

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iget-object v5, p0, Lorg/android/agoo/net/channel/spdy/SpdyChannel;->f:Lcom/umeng/message/proguard/aT;

    invoke-direct {p0, v3, v4, v2, v5}, Lorg/android/agoo/net/channel/spdy/SpdyChannel;->a(Lorg/android/agoo/net/channel/ChannelError;Ljava/util/Map;Ljava/lang/Throwable;Lcom/umeng/message/proguard/aT;)V

    goto :goto_1

    .line 136
    :catch_1
    move-exception v2

    .line 138
    iget-object v3, p0, Lorg/android/agoo/net/channel/spdy/SpdyChannel;->f:Lcom/umeng/message/proguard/aT;

    sget-object v4, Lorg/android/agoo/net/channel/ChannelError;->a:Lorg/android/agoo/net/channel/ChannelError;

    invoke-virtual {v4}, Lorg/android/agoo/net/channel/ChannelError;->getErrorCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/umeng/message/proguard/aT;->f(Ljava/lang/String;)V

    .line 139
    iget-object v3, p0, Lorg/android/agoo/net/channel/spdy/SpdyChannel;->f:Lcom/umeng/message/proguard/aT;

    const-string v4, "1"

    invoke-virtual {v3, v4}, Lcom/umeng/message/proguard/aT;->j(Ljava/lang/String;)V

    .line 140
    sget-object v3, Lorg/android/agoo/net/channel/ChannelError;->a:Lorg/android/agoo/net/channel/ChannelError;

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iget-object v5, p0, Lorg/android/agoo/net/channel/spdy/SpdyChannel;->f:Lcom/umeng/message/proguard/aT;

    invoke-direct {p0, v3, v4, v2, v5}, Lorg/android/agoo/net/channel/spdy/SpdyChannel;->a(Lorg/android/agoo/net/channel/ChannelError;Ljava/util/Map;Ljava/lang/Throwable;Lcom/umeng/message/proguard/aT;)V

    goto :goto_1

    .line 113
    :catch_2
    move-exception v2

    goto/16 :goto_0
.end method

.method public final hasCallError()Z
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lorg/android/agoo/net/channel/spdy/SpdyChannel;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public final hasPushSteam(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 394
    iget-object v0, p0, Lorg/android/agoo/net/channel/spdy/SpdyChannel;->l:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 395
    const/4 v0, 0x1

    .line 397
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final ping()J
    .locals 6

    .prologue
    .line 147
    const/4 v0, -0x1

    .line 149
    :try_start_0
    iget-object v1, p0, Lorg/android/agoo/net/channel/spdy/SpdyChannel;->k:Lorg/android/spdy/SpdySession;

    if-eqz v1, :cond_0

    .line 150
    iget-object v1, p0, Lorg/android/agoo/net/channel/spdy/SpdyChannel;->k:Lorg/android/spdy/SpdySession;

    invoke-virtual {v1}, Lorg/android/spdy/SpdySession;->submitPing()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 160
    :cond_0
    :goto_0
    int-to-long v0, v0

    return-wide v0

    .line 153
    :catch_0
    move-exception v1

    .line 154
    iget-object v2, p0, Lorg/android/agoo/net/channel/spdy/SpdyChannel;->f:Lcom/umeng/message/proguard/aT;

    sget-object v3, Lorg/android/agoo/net/channel/ChannelError;->e:Lorg/android/agoo/net/channel/ChannelError;

    invoke-virtual {v3}, Lorg/android/agoo/net/channel/ChannelError;->getErrorCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/umeng/message/proguard/aT;->f(Ljava/lang/String;)V

    .line 155
    iget-object v2, p0, Lorg/android/agoo/net/channel/spdy/SpdyChannel;->f:Lcom/umeng/message/proguard/aT;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/umeng/message/proguard/bd;->a(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/umeng/message/proguard/aT;->i(Ljava/lang/String;)V

    .line 156
    iget-object v2, p0, Lorg/android/agoo/net/channel/spdy/SpdyChannel;->f:Lcom/umeng/message/proguard/aT;

    const-string v3, "1"

    invoke-virtual {v2, v3}, Lcom/umeng/message/proguard/aT;->j(Ljava/lang/String;)V

    .line 157
    sget-object v2, Lorg/android/agoo/net/channel/ChannelError;->e:Lorg/android/agoo/net/channel/ChannelError;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iget-object v4, p0, Lorg/android/agoo/net/channel/spdy/SpdyChannel;->f:Lcom/umeng/message/proguard/aT;

    invoke-direct {p0, v2, v3, v1, v4}, Lorg/android/agoo/net/channel/spdy/SpdyChannel;->a(Lorg/android/agoo/net/channel/ChannelError;Ljava/util/Map;Ljava/lang/Throwable;Lcom/umeng/message/proguard/aT;)V

    goto :goto_0
.end method

.method public final readyChannelState()Lorg/android/agoo/net/channel/ChannelState;
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lorg/android/agoo/net/channel/spdy/SpdyChannel;->a:Lorg/android/agoo/net/channel/ChannelState;

    return-object v0
.end method

.method public final send(Ljava/lang/String;[BLorg/android/agoo/net/channel/IPullHandler;Lcom/umeng/message/proguard/aV;)I
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 167
    const/4 v2, 0x0

    .line 170
    const/4 v0, -0x1

    .line 172
    if-eqz p4, :cond_0

    .line 173
    :try_start_0
    iput-object p4, p0, Lorg/android/agoo/net/channel/spdy/SpdyChannel;->g:Lcom/umeng/message/proguard/aV;

    .line 175
    :cond_0
    iget-object v3, p0, Lorg/android/agoo/net/channel/spdy/SpdyChannel;->a:Lorg/android/agoo/net/channel/ChannelState;

    sget-object v4, Lorg/android/agoo/net/channel/ChannelState;->b:Lorg/android/agoo/net/channel/ChannelState;

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lorg/android/agoo/net/channel/spdy/SpdyChannel;->k:Lorg/android/spdy/SpdySession;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lorg/android/agoo/net/channel/spdy/SpdyChannel;->r:Ljava/net/URL;

    if-eqz v3, :cond_3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 177
    iget-object v3, p0, Lorg/android/agoo/net/channel/spdy/SpdyChannel;->r:Ljava/net/URL;

    invoke-virtual {v3}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v3

    .line 178
    iget-object v4, p0, Lorg/android/agoo/net/channel/spdy/SpdyChannel;->r:Ljava/net/URL;

    invoke-virtual {v4}, Ljava/net/URL;->getPort()I

    move-result v4

    .line 179
    const-string v5, "http://%s:%d%s"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    const/4 v3, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v6, v3

    const/4 v3, 0x2

    aput-object p1, v6, v3

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 181
    const-string v4, "SpdyClient"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "send[baseUrl:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/umeng/message/proguard/aK;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    new-instance v4, Lorg/android/spdy/SpdyRequest;

    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    const-string v6, "POST"

    sget-object v7, Lorg/android/spdy/RequestPriority;->DEFAULT_PRIORITY:Lorg/android/spdy/RequestPriority;

    invoke-direct {v4, v5, v6, v7}, Lorg/android/spdy/SpdyRequest;-><init>(Ljava/net/URL;Ljava/lang/String;Lorg/android/spdy/RequestPriority;)V

    .line 186
    if-eqz p2, :cond_1

    array-length v5, p2

    if-lez v5, :cond_1

    .line 187
    new-instance v2, Lorg/android/spdy/SpdyDataProvider;

    invoke-direct {v2, p2}, Lorg/android/spdy/SpdyDataProvider;-><init>([B)V

    .line 188
    invoke-static {p2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    .line 190
    :cond_1
    const-string v5, "%s_%d"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    const/4 v3, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v3

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 191
    if-eqz p3, :cond_2

    .line 192
    iget-object v3, p0, Lorg/android/agoo/net/channel/spdy/SpdyChannel;->o:Ljava/util/Map;

    new-instance v5, Ljava/lang/ref/WeakReference;

    invoke-direct {v5, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v3, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    :cond_2
    iget-object v3, p0, Lorg/android/agoo/net/channel/spdy/SpdyChannel;->k:Lorg/android/spdy/SpdySession;

    invoke-virtual {v3, v4, v2, v1, p0}, Lorg/android/spdy/SpdySession;->submitRequest(Lorg/android/spdy/SpdyRequest;Lorg/android/spdy/SpdyDataProvider;Ljava/lang/Object;Lorg/android/spdy/Spdycb;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 200
    :cond_3
    :goto_0
    return v0

    .line 197
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public final shutdown()V
    .locals 2

    .prologue
    .line 254
    const-string v0, "SpdyClient"

    const-string v1, "shutdown....."

    invoke-static {v0, v1}, Lcom/umeng/message/proguard/aK;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    new-instance v0, Lorg/android/agoo/net/channel/spdy/SpdyChannel$1;

    invoke-direct {v0, p0}, Lorg/android/agoo/net/channel/spdy/SpdyChannel$1;-><init>(Lorg/android/agoo/net/channel/spdy/SpdyChannel;)V

    invoke-static {v0}, Lcom/umeng/message/proguard/bn;->a(Ljava/lang/Runnable;)V

    .line 263
    return-void
.end method

.method public final spdyDataChunkRecvCB(Lorg/android/spdy/SpdySession;ZJ[BILjava/lang/Object;)V
    .locals 9

    .prologue
    .line 318
    :try_start_0
    move-object/from16 v0, p7

    check-cast v0, Ljava/lang/String;

    move-object v6, v0

    .line 319
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 342
    :cond_0
    :goto_0
    return-void

    .line 322
    :cond_1
    if-nez p5, :cond_2

    .line 323
    const-string v2, "SpdyClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "spdyDataChunkRecvCB,data=null,streamId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    :cond_2
    const-string v2, "SpdyClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "spdyDataChunkRecvCB,data="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    iget-object v2, p0, Lorg/android/agoo/net/channel/spdy/SpdyChannel;->l:Ljava/lang/String;

    invoke-static {v6, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 327
    invoke-virtual {p0}, Lorg/android/agoo/net/channel/spdy/SpdyChannel;->hasCallError()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 328
    iget-object v2, p0, Lorg/android/agoo/net/channel/spdy/SpdyChannel;->m:Lorg/android/agoo/net/channel/IPushHandler;

    iget-object v3, p0, Lorg/android/agoo/net/channel/spdy/SpdyChannel;->s:Ljava/lang/Object;

    iget-object v8, p0, Lorg/android/agoo/net/channel/spdy/SpdyChannel;->g:Lcom/umeng/message/proguard/aV;

    move-wide v4, p3

    move-object v7, p5

    invoke-interface/range {v2 .. v8}, Lorg/android/agoo/net/channel/IPushHandler;->onData(Ljava/lang/Object;JLjava/lang/String;[BLcom/umeng/message/proguard/aV;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 338
    :catch_0
    move-exception v2

    .line 339
    sget-object v3, Lorg/android/agoo/net/channel/ChannelError;->c:Lorg/android/agoo/net/channel/ChannelError;

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iget-object v5, p0, Lorg/android/agoo/net/channel/spdy/SpdyChannel;->f:Lcom/umeng/message/proguard/aT;

    invoke-direct {p0, v3, v4, v2, v5}, Lorg/android/agoo/net/channel/spdy/SpdyChannel;->a(Lorg/android/agoo/net/channel/ChannelError;Ljava/util/Map;Ljava/lang/Throwable;Lcom/umeng/message/proguard/aT;)V

    goto :goto_0

    .line 332
    :cond_3
    :try_start_1
    iget-object v2, p0, Lorg/android/agoo/net/channel/spdy/SpdyChannel;->n:Ljava/util/Map;

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/android/agoo/net/channel/spdy/SpdyChannel$a;

    .line 333
    if-eqz v2, :cond_0

    .line 334
    invoke-virtual {v2, p5}, Lorg/android/agoo/net/channel/spdy/SpdyChannel$a;->a([B)V

    .line 335
    iget-object v3, p0, Lorg/android/agoo/net/channel/spdy/SpdyChannel;->n:Ljava/util/Map;

    invoke-interface {v3, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public final spdyDataRecvCallback(Lorg/android/spdy/SpdySession;ZJILjava/lang/Object;)V
    .locals 7

    .prologue
    .line 283
    :try_start_0
    move-object v0, p6

    check-cast v0, Ljava/lang/String;

    move-object v3, v0

    .line 284
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 304
    :cond_0
    :goto_0
    return-void

    .line 287
    :cond_1
    iget-object v1, p0, Lorg/android/agoo/net/channel/spdy/SpdyChannel;->o:Ljava/util/Map;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 288
    if-eqz v1, :cond_0

    .line 289
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/android/agoo/net/channel/IPullHandler;

    .line 290
    if-eqz v1, :cond_0

    .line 291
    iget-object v2, p0, Lorg/android/agoo/net/channel/spdy/SpdyChannel;->n:Ljava/util/Map;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lorg/android/agoo/net/channel/spdy/SpdyChannel$a;

    move-object v6, v0

    .line 292
    if-eqz v6, :cond_0

    .line 293
    iget-object v2, p0, Lorg/android/agoo/net/channel/spdy/SpdyChannel;->s:Ljava/lang/Object;

    invoke-virtual {v6}, Lorg/android/agoo/net/channel/spdy/SpdyChannel$a;->b()I

    move-result v4

    invoke-virtual {v6}, Lorg/android/agoo/net/channel/spdy/SpdyChannel$a;->c()Ljava/util/Map;

    move-result-object v5

    invoke-virtual {v6}, Lorg/android/agoo/net/channel/spdy/SpdyChannel$a;->a()[B

    move-result-object v6

    invoke-interface/range {v1 .. v6}, Lorg/android/agoo/net/channel/IPullHandler;->onResponse(Ljava/lang/Object;Ljava/lang/String;ILjava/util/Map;[B)V

    .line 296
    iget-object v1, p0, Lorg/android/agoo/net/channel/spdy/SpdyChannel;->o:Ljava/util/Map;

    invoke-interface {v1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    iget-object v1, p0, Lorg/android/agoo/net/channel/spdy/SpdyChannel;->n:Ljava/util/Map;

    invoke-interface {v1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 301
    :catch_0
    move-exception v1

    .line 302
    const-string v2, "SpdyClient"

    const-string v3, "spdyDataRecvCallback"

    invoke-static {v2, v3, v1}, Lcom/umeng/message/proguard/aK;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final spdyDataSendCallback(Lorg/android/spdy/SpdySession;ZJILjava/lang/Object;)V
    .locals 0

    .prologue
    .line 274
    return-void
.end method

.method public final spdyOnStreamResponse(Lorg/android/spdy/SpdySession;JLjava/util/Map;Ljava/lang/Object;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/android/spdy/SpdySession;",
            "J",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 349
    .line 350
    invoke-direct {p0, p4}, Lorg/android/agoo/net/channel/spdy/SpdyChannel;->a(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v6

    .line 352
    const/4 v0, -0x1

    .line 353
    :try_start_0
    check-cast p5, Ljava/lang/String;

    .line 354
    const-string v1, ":status"

    invoke-interface {v6, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 355
    const-string v0, ":status"

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    move v1, v0

    .line 357
    :goto_0
    const-string v0, "SpdyClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "spdyOnStreamResponse PATH["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/umeng/message/proguard/aK;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    invoke-virtual {p0, p5}, Lorg/android/agoo/net/channel/spdy/SpdyChannel;->hasPushSteam(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 360
    iput-wide p2, p0, Lorg/android/agoo/net/channel/spdy/SpdyChannel;->t:J

    .line 361
    const/16 v0, 0xc8

    if-ne v1, v0, :cond_0

    .line 362
    sget-object v0, Lorg/android/agoo/net/channel/ChannelState;->b:Lorg/android/agoo/net/channel/ChannelState;

    iput-object v0, p0, Lorg/android/agoo/net/channel/spdy/SpdyChannel;->a:Lorg/android/agoo/net/channel/ChannelState;

    .line 363
    iget-object v0, p0, Lorg/android/agoo/net/channel/spdy/SpdyChannel;->f:Lcom/umeng/message/proguard/aT;

    const-string v1, "y"

    invoke-virtual {v0, v1}, Lcom/umeng/message/proguard/aT;->e(Ljava/lang/String;)V

    .line 364
    iget-object v0, p0, Lorg/android/agoo/net/channel/spdy/SpdyChannel;->f:Lcom/umeng/message/proguard/aT;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/umeng/message/proguard/bd;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/umeng/message/proguard/aT;->i(Ljava/lang/String;)V

    .line 365
    iget-object v0, p0, Lorg/android/agoo/net/channel/spdy/SpdyChannel;->m:Lorg/android/agoo/net/channel/IPushHandler;

    iget-object v1, p0, Lorg/android/agoo/net/channel/spdy/SpdyChannel;->s:Ljava/lang/Object;

    iget-wide v4, p0, Lorg/android/agoo/net/channel/spdy/SpdyChannel;->q:J

    iget-object v7, p0, Lorg/android/agoo/net/channel/spdy/SpdyChannel;->f:Lcom/umeng/message/proguard/aT;

    move-wide v2, p2

    invoke-interface/range {v0 .. v7}, Lorg/android/agoo/net/channel/IPushHandler;->onConnected(Ljava/lang/Object;JJLjava/util/Map;Lcom/umeng/message/proguard/aT;)V

    .line 375
    :goto_1
    const-string v0, ":status"

    invoke-interface {p4, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    :goto_2
    return-void

    .line 368
    :cond_0
    iget-object v0, p0, Lorg/android/agoo/net/channel/spdy/SpdyChannel;->f:Lcom/umeng/message/proguard/aT;

    const-string v2, "n"

    invoke-virtual {v0, v2}, Lcom/umeng/message/proguard/aT;->e(Ljava/lang/String;)V

    .line 369
    iget-object v0, p0, Lorg/android/agoo/net/channel/spdy/SpdyChannel;->f:Lcom/umeng/message/proguard/aT;

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/umeng/message/proguard/aT;->f(Ljava/lang/String;)V

    .line 370
    iget-object v0, p0, Lorg/android/agoo/net/channel/spdy/SpdyChannel;->f:Lcom/umeng/message/proguard/aT;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/umeng/message/proguard/bd;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/umeng/message/proguard/aT;->i(Ljava/lang/String;)V

    .line 371
    invoke-static {v1}, Lorg/android/agoo/net/channel/ChannelError;->get(I)Lorg/android/agoo/net/channel/ChannelError;

    move-result-object v0

    new-instance v2, Ljava/lang/Throwable;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "http httpStatusCode["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]=="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/android/agoo/net/channel/spdy/SpdyChannel;->f:Lcom/umeng/message/proguard/aT;

    invoke-direct {p0, v0, v6, v2, v1}, Lorg/android/agoo/net/channel/spdy/SpdyChannel;->a(Lorg/android/agoo/net/channel/ChannelError;Ljava/util/Map;Ljava/lang/Throwable;Lcom/umeng/message/proguard/aT;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 383
    :catch_0
    move-exception v0

    .line 384
    iget-object v1, p0, Lorg/android/agoo/net/channel/spdy/SpdyChannel;->f:Lcom/umeng/message/proguard/aT;

    const-string v2, "n"

    invoke-virtual {v1, v2}, Lcom/umeng/message/proguard/aT;->e(Ljava/lang/String;)V

    .line 385
    iget-object v1, p0, Lorg/android/agoo/net/channel/spdy/SpdyChannel;->f:Lcom/umeng/message/proguard/aT;

    sget-object v2, Lorg/android/agoo/net/channel/ChannelError;->b:Lorg/android/agoo/net/channel/ChannelError;

    invoke-virtual {v2}, Lorg/android/agoo/net/channel/ChannelError;->getErrorCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/umeng/message/proguard/aT;->f(Ljava/lang/String;)V

    .line 386
    iget-object v1, p0, Lorg/android/agoo/net/channel/spdy/SpdyChannel;->f:Lcom/umeng/message/proguard/aT;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/umeng/message/proguard/bd;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/umeng/message/proguard/aT;->i(Ljava/lang/String;)V

    .line 387
    sget-object v1, Lorg/android/agoo/net/channel/ChannelError;->b:Lorg/android/agoo/net/channel/ChannelError;

    iget-object v2, p0, Lorg/android/agoo/net/channel/spdy/SpdyChannel;->f:Lcom/umeng/message/proguard/aT;

    invoke-direct {p0, v1, v6, v0, v2}, Lorg/android/agoo/net/channel/spdy/SpdyChannel;->a(Lorg/android/agoo/net/channel/ChannelError;Ljava/util/Map;Ljava/lang/Throwable;Lcom/umeng/message/proguard/aT;)V

    goto :goto_2

    .line 377
    :cond_1
    :try_start_1
    iget-object v0, p0, Lorg/android/agoo/net/channel/spdy/SpdyChannel;->n:Ljava/util/Map;

    invoke-interface {v0, p5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/android/agoo/net/channel/spdy/SpdyChannel$a;

    .line 378
    if-nez v0, :cond_2

    .line 379
    new-instance v0, Lorg/android/agoo/net/channel/spdy/SpdyChannel$a;

    invoke-direct {v0, p0, v1, v6}, Lorg/android/agoo/net/channel/spdy/SpdyChannel$a;-><init>(Lorg/android/agoo/net/channel/spdy/SpdyChannel;ILjava/util/Map;)V

    .line 381
    :cond_2
    iget-object v1, p0, Lorg/android/agoo/net/channel/spdy/SpdyChannel;->n:Ljava/util/Map;

    invoke-interface {v1, p5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    :cond_3
    move v1, v0

    goto/16 :goto_0
.end method

.method public final spdyRequestRecvCallback(Lorg/android/spdy/SpdySession;JLjava/lang/Object;)V
    .locals 0

    .prologue
    .line 311
    return-void
.end method

.method public spdyStreamCloseCallback(Lorg/android/spdy/SpdySession;JILjava/lang/Object;Lorg/android/spdy/SuperviseData;)V
    .locals 0

    .prologue
    .line 601
    return-void
.end method

.method public final syncDisconnect()V
    .locals 1

    .prologue
    .line 206
    sget-object v0, Lorg/android/agoo/net/channel/ChannelState;->c:Lorg/android/agoo/net/channel/ChannelState;

    iput-object v0, p0, Lorg/android/agoo/net/channel/spdy/SpdyChannel;->a:Lorg/android/agoo/net/channel/ChannelState;

    .line 207
    invoke-direct {p0}, Lorg/android/agoo/net/channel/spdy/SpdyChannel;->a()V

    .line 208
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/android/agoo/net/channel/spdy/SpdyChannel;->callError(Z)V

    .line 209
    sget-object v0, Lorg/android/agoo/net/channel/ChannelState;->d:Lorg/android/agoo/net/channel/ChannelState;

    iput-object v0, p0, Lorg/android/agoo/net/channel/spdy/SpdyChannel;->a:Lorg/android/agoo/net/channel/ChannelState;

    .line 210
    return-void
.end method
