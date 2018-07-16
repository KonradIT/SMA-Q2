.class public Lcom/umeng/message/proguard/aJ;
.super Lcom/umeng/message/proguard/aH;
.source "LocalSocketDistributedLock.java"


# static fields
.field private static final b:Ljava/lang/String; = "local_socket_lock_"

.field private static final c:Ljava/lang/String; = "LocalSocket2DistributedLock"


# instance fields
.field private d:Ljava/lang/String;

.field private e:Landroid/net/LocalServerSocket;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 5

    .prologue
    const/4 v1, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 28
    invoke-direct {p0}, Lcom/umeng/message/proguard/aH;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/message/proguard/aJ;->e:Landroid/net/LocalServerSocket;

    .line 29
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 30
    :cond_0
    const-string v0, "%s_%s"

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "local_socket_lock_"

    aput-object v2, v1, v3

    invoke-static {}, Lcom/umeng/message/proguard/aJ;->e()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/message/proguard/aJ;->d:Ljava/lang/String;

    .line 34
    :goto_0
    return-void

    .line 32
    :cond_1
    const-string v0, "%s_%s"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v3

    invoke-static {}, Lcom/umeng/message/proguard/aJ;->e()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/message/proguard/aJ;->d:Ljava/lang/String;

    goto :goto_0
.end method

.method private static final e()Ljava/lang/String;
    .locals 2

    .prologue
    .line 20
    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy_MM_dd_HH_mm"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 22
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 24
    :goto_0
    return-object v0

    .line 23
    :catch_0
    move-exception v0

    .line 24
    const-string v0, "none"

    goto :goto_0
.end method


# virtual methods
.method protected a()V
    .locals 3

    .prologue
    .line 38
    const-wide/32 v0, 0x7fffffff

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v0, v1, v2}, Lcom/umeng/message/proguard/aJ;->a(JLjava/util/concurrent/TimeUnit;)Z

    .line 40
    return-void
.end method

.method protected a(JLjava/util/concurrent/TimeUnit;)Z
    .locals 4

    .prologue
    .line 54
    const/4 v0, 0x0

    .line 56
    :try_start_0
    iget-object v1, p0, Lcom/umeng/message/proguard/aJ;->e:Landroid/net/LocalServerSocket;

    if-nez v1, :cond_0

    .line 57
    new-instance v1, Landroid/net/LocalServerSocket;

    iget-object v2, p0, Lcom/umeng/message/proguard/aJ;->d:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/net/LocalServerSocket;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/umeng/message/proguard/aJ;->e:Landroid/net/LocalServerSocket;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    const/4 v0, 0x1

    .line 63
    :cond_0
    :goto_0
    return v0

    .line 60
    :catch_0
    move-exception v1

    .line 61
    const-string v2, "LocalSocket2DistributedLock"

    const-string v3, "doTryLock"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected b()V
    .locals 1

    .prologue
    .line 69
    :try_start_0
    iget-object v0, p0, Lcom/umeng/message/proguard/aJ;->e:Landroid/net/LocalServerSocket;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/umeng/message/proguard/aJ;->e:Landroid/net/LocalServerSocket;

    invoke-virtual {v0}, Landroid/net/LocalServerSocket;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    :cond_0
    :goto_0
    return-void

    .line 72
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected c()Z
    .locals 3

    .prologue
    .line 49
    const-wide/16 v0, 0x0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v0, v1, v2}, Lcom/umeng/message/proguard/aJ;->a(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    return v0
.end method

.method protected d()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 44
    const-wide/32 v0, 0x7fffffff

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v0, v1, v2}, Lcom/umeng/message/proguard/aJ;->a(JLjava/util/concurrent/TimeUnit;)Z

    .line 45
    return-void
.end method
