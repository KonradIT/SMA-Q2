.class public Lcom/xlwtech/util/ConfigWireless;
.super Ljava/lang/Object;
.source "ConfigWireless.java"


# static fields
.field public static configPacket:[B

.field private static instance:Lcom/xlwtech/util/ConfigWireless;

.field public static key:Ljava/lang/String;

.field public static progress:I

.field public static sendFlag:Z

.field private static service:Ljava/util/concurrent/ScheduledExecutorService;

.field public static ssid:Ljava/lang/String;

.field public static timeOut:J


# instance fields
.field private future:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    sput-boolean v0, Lcom/xlwtech/util/ConfigWireless;->sendFlag:Z

    .line 29
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    .line 28
    sput-object v0, Lcom/xlwtech/util/ConfigWireless;->service:Ljava/util/concurrent/ScheduledExecutorService;

    .line 29
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/xlwtech/util/ConfigWireless;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 130
    invoke-direct {p0}, Lcom/xlwtech/util/ConfigWireless;->checkRetry()V

    return-void
.end method

.method private checkRetry()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 135
    const/16 v0, 0x12c

    .line 136
    .local v0, "baselen":I
    const/16 v4, 0x14

    .line 137
    .local v4, "charLoop":I
    const/4 v3, 0x3

    .line 138
    .local v3, "charInterval":I
    const/16 v2, 0x1e

    .line 140
    .local v2, "charDelay":I
    :cond_0
    sget-boolean v10, Lcom/xlwtech/util/ConfigWireless;->sendFlag:Z

    if-nez v10, :cond_1

    .line 162
    return-void

    .line 142
    :cond_1
    sget-object v10, Lcom/xlwtech/util/ConfigWireless;->ssid:Ljava/lang/String;

    sget-object v11, Lcom/xlwtech/util/ConfigWireless;->key:Ljava/lang/String;

    invoke-static {v10, v11}, Lcom/xlwtech/util/ConfigwlHelper;->buildConfigPacket(Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object v5

    .line 145
    .local v5, "configPacket":[I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    array-length v10, v5

    if-ge v6, v10, :cond_0

    .line 147
    aget v10, v5, v6

    add-int v9, v10, v0

    .line 148
    .local v9, "len":I
    new-array v1, v9, [B

    .line 149
    .local v1, "bs":[B
    const/4 v8, 0x0

    .local v8, "k":I
    :goto_1
    if-lt v8, v9, :cond_2

    .line 151
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_2
    if-lt v7, v4, :cond_3

    .line 158
    int-to-long v10, v2

    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V

    .line 145
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 149
    .end local v7    # "j":I
    :cond_2
    int-to-byte v10, v8

    aput-byte v10, v1, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 153
    .restart local v7    # "j":I
    :cond_3
    invoke-static {}, Lcom/xlwtech/util/UdpClient;->getInstance()Lcom/xlwtech/util/UdpClient;

    move-result-object v10

    const-string v11, "255.255.255.255"

    invoke-virtual {v10, v11, v1}, Lcom/xlwtech/util/UdpClient;->sendBroadCastSignaling(Ljava/lang/String;[B)V

    .line 154
    sget v10, Lcom/xlwtech/util/ConfigWireless;->progress:I

    add-int/lit8 v10, v10, 0x1

    sput v10, Lcom/xlwtech/util/ConfigWireless;->progress:I

    .line 155
    int-to-long v10, v3

    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V

    .line 151
    add-int/lit8 v7, v7, 0x1

    goto :goto_2
.end method

.method public static getInstance()Lcom/xlwtech/util/ConfigWireless;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/xlwtech/util/ConfigWireless;->instance:Lcom/xlwtech/util/ConfigWireless;

    if-nez v0, :cond_0

    .line 37
    :try_start_0
    sget-object v0, Lcom/xlwtech/util/ConfigWireless;->instance:Lcom/xlwtech/util/ConfigWireless;

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Lcom/xlwtech/util/ConfigWireless;

    invoke-direct {v0}, Lcom/xlwtech/util/ConfigWireless;-><init>()V

    sput-object v0, Lcom/xlwtech/util/ConfigWireless;->instance:Lcom/xlwtech/util/ConfigWireless;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    :cond_0
    sget-object v0, Lcom/xlwtech/util/ConfigWireless;->instance:Lcom/xlwtech/util/ConfigWireless;

    return-object v0

    .line 40
    :catchall_0
    move-exception v0

    .line 42
    throw v0
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    .line 65
    const/4 v0, 0x0

    sput-boolean v0, Lcom/xlwtech/util/ConfigWireless;->sendFlag:Z

    .line 66
    iget-object v0, p0, Lcom/xlwtech/util/ConfigWireless;->future:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xlwtech/util/ConfigWireless;->future:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 67
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xlwtech/util/ConfigWireless;->future:Ljava/util/concurrent/ScheduledFuture;

    .line 68
    return-void
.end method

.method public run()V
    .locals 5

    .prologue
    .line 49
    const/4 v0, 0x1

    sput-boolean v0, Lcom/xlwtech/util/ConfigWireless;->sendFlag:Z

    .line 50
    const/4 v0, 0x0

    sput v0, Lcom/xlwtech/util/ConfigWireless;->progress:I

    .line 51
    invoke-static {}, Lcom/xlwtech/util/UdpClient;->getInstance()Lcom/xlwtech/util/UdpClient;

    move-result-object v0

    const-string v1, "255.255.255.255"

    invoke-virtual {v0, v1}, Lcom/xlwtech/util/UdpClient;->closeConnect(Ljava/lang/String;)V

    .line 52
    sget-object v0, Lcom/xlwtech/util/ConfigWireless;->service:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/xlwtech/util/ConfigWireless$1;

    invoke-direct {v1, p0}, Lcom/xlwtech/util/ConfigWireless$1;-><init>(Lcom/xlwtech/util/ConfigWireless;)V

    .line 61
    const-wide/16 v2, 0x1

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 52
    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/xlwtech/util/ConfigWireless;->future:Ljava/util/concurrent/ScheduledFuture;

    .line 62
    return-void
.end method

.method public shutdown()V
    .locals 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/xlwtech/util/ConfigWireless;->future:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/xlwtech/util/ConfigWireless;->future:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 78
    :cond_0
    sget-object v0, Lcom/xlwtech/util/ConfigWireless;->service:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_1

    .line 79
    sget-object v0, Lcom/xlwtech/util/ConfigWireless;->service:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    .line 80
    :cond_1
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x0

    sput-boolean v0, Lcom/xlwtech/util/ConfigWireless;->sendFlag:Z

    .line 73
    return-void
.end method
