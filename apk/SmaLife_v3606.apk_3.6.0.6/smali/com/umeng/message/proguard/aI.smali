.class public Lcom/umeng/message/proguard/aI;
.super Lcom/umeng/message/proguard/aH;
.source "FileDistributedLock.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/message/proguard/aI$a;
    }
.end annotation


# static fields
.field private static final f:Ljava/lang/String; = "FileProcessLock"


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/io/FileOutputStream;

.field private e:Ljava/nio/channels/FileLock;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 18
    invoke-direct {p0}, Lcom/umeng/message/proguard/aH;-><init>()V

    .line 14
    iput-object v0, p0, Lcom/umeng/message/proguard/aI;->d:Ljava/io/FileOutputStream;

    .line 15
    iput-object v0, p0, Lcom/umeng/message/proguard/aI;->e:Ljava/nio/channels/FileLock;

    .line 19
    iput-object p1, p0, Lcom/umeng/message/proguard/aI;->b:Ljava/lang/String;

    .line 20
    const-string v0, "%s_log"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/message/proguard/aI;->c:Ljava/lang/String;

    .line 21
    return-void
.end method

.method static synthetic a(Lcom/umeng/message/proguard/aI;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 11
    iget-object v0, p0, Lcom/umeng/message/proguard/aI;->c:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected a()V
    .locals 3

    .prologue
    .line 25
    const-wide/32 v0, 0x7fffffff

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v0, v1, v2}, Lcom/umeng/message/proguard/aI;->a(JLjava/util/concurrent/TimeUnit;)Z

    .line 26
    return-void
.end method

.method protected a(JLjava/util/concurrent/TimeUnit;)Z
    .locals 4

    .prologue
    .line 56
    const/4 v0, 0x0

    .line 58
    :try_start_0
    iget-object v1, p0, Lcom/umeng/message/proguard/aI;->d:Ljava/io/FileOutputStream;

    if-nez v1, :cond_0

    .line 59
    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v2, p0, Lcom/umeng/message/proguard/aI;->b:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/umeng/message/proguard/aI;->d:Ljava/io/FileOutputStream;

    .line 61
    :cond_0
    iget-object v1, p0, Lcom/umeng/message/proguard/aI;->d:Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->tryLock()Ljava/nio/channels/FileLock;

    move-result-object v1

    iput-object v1, p0, Lcom/umeng/message/proguard/aI;->e:Ljava/nio/channels/FileLock;

    .line 62
    iget-object v1, p0, Lcom/umeng/message/proguard/aI;->e:Ljava/nio/channels/FileLock;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/umeng/message/proguard/aI;->e:Ljava/nio/channels/FileLock;

    invoke-virtual {v1}, Ljava/nio/channels/FileLock;->isValid()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    .line 63
    const/4 v0, 0x1

    .line 68
    :cond_1
    if-nez v0, :cond_2

    .line 71
    :cond_2
    :goto_0
    return v0

    .line 65
    :catch_0
    move-exception v1

    .line 66
    :try_start_1
    const-string v2, "FileProcessLock"

    const-string v3, "doTryLock"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 68
    :catchall_0
    move-exception v1

    if-nez v0, :cond_3

    :cond_3
    throw v1
.end method

.method protected b()V
    .locals 3

    .prologue
    .line 31
    :try_start_0
    iget-object v0, p0, Lcom/umeng/message/proguard/aI;->d:Ljava/io/FileOutputStream;

    if-eqz v0, :cond_1

    .line 32
    iget-object v0, p0, Lcom/umeng/message/proguard/aI;->e:Ljava/nio/channels/FileLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/umeng/message/proguard/aI;->e:Ljava/nio/channels/FileLock;

    invoke-virtual {v0}, Ljava/nio/channels/FileLock;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    iget-object v0, p0, Lcom/umeng/message/proguard/aI;->e:Ljava/nio/channels/FileLock;

    invoke-virtual {v0}, Ljava/nio/channels/FileLock;->release()V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/message/proguard/aI;->e:Ljava/nio/channels/FileLock;

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/umeng/message/proguard/aI;->d:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/message/proguard/aI;->d:Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    :cond_1
    :goto_0
    return-void

    .line 39
    :catch_0
    move-exception v0

    .line 40
    const-string v1, "FileProcessLock"

    const-string v2, "doUnlock"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected c()Z
    .locals 3

    .prologue
    .line 51
    const-wide/16 v0, 0x0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v0, v1, v2}, Lcom/umeng/message/proguard/aI;->a(JLjava/util/concurrent/TimeUnit;)Z

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
    .line 46
    const-wide/32 v0, 0x7fffffff

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v0, v1, v2}, Lcom/umeng/message/proguard/aI;->a(JLjava/util/concurrent/TimeUnit;)Z

    .line 47
    return-void
.end method
