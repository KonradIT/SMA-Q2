.class public abstract Lcom/hiflying/smartlink/AbstractSmartLinker;
.super Ljava/lang/Object;
.source "AbstractSmartLinker.java"

# interfaces
.implements Lcom/hiflying/smartlink/ISmartLinker;


# static fields
.field public static MAX_DURATION_RECEIVE_SMART_CONFIG:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static MAX_DURATION_WAIT_MORE_DEVICE:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final MSG_SMART_LINK_COMPLETED:I = 0x2

.field private static final MSG_SMART_LINK_NEW_DEVICE:I = 0x1

.field public static PORT_RECEIVE_SMART_CONFIG:I


# instance fields
.field protected mContext:Landroid/content/Context;

.field private mDeviceMacs:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mHander:Landroid/os/Handler;

.field protected mIsSmartLinking:Z

.field protected mIsTimeout:Z

.field protected mOnSmartLinkListener:Lcom/hiflying/smartlink/OnSmartLinkListener;

.field protected mSmartConfigSocket:Ljava/net/DatagramSocket;

.field protected mTimeoutPeriod:I

.field private mWaitMoreDevicePeriod:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const v0, 0xea60

    sput v0, Lcom/hiflying/smartlink/AbstractSmartLinker;->MAX_DURATION_RECEIVE_SMART_CONFIG:I

    .line 38
    const/16 v0, 0x2710

    sput v0, Lcom/hiflying/smartlink/AbstractSmartLinker;->MAX_DURATION_WAIT_MORE_DEVICE:I

    .line 43
    const v0, 0xc34f

    sput v0, Lcom/hiflying/smartlink/AbstractSmartLinker;->PORT_RECEIVE_SMART_CONFIG:I

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/hiflying/smartlink/AbstractSmartLinker;->mDeviceMacs:Ljava/util/HashSet;

    .line 55
    const v0, 0xea60

    iput v0, p0, Lcom/hiflying/smartlink/AbstractSmartLinker;->mTimeoutPeriod:I

    .line 58
    sget v0, Lcom/hiflying/smartlink/AbstractSmartLinker;->MAX_DURATION_WAIT_MORE_DEVICE:I

    iput v0, p0, Lcom/hiflying/smartlink/AbstractSmartLinker;->mWaitMoreDevicePeriod:I

    .line 60
    new-instance v0, Lcom/hiflying/smartlink/AbstractSmartLinker$1;

    invoke-direct {v0, p0}, Lcom/hiflying/smartlink/AbstractSmartLinker$1;-><init>(Lcom/hiflying/smartlink/AbstractSmartLinker;)V

    iput-object v0, p0, Lcom/hiflying/smartlink/AbstractSmartLinker;->mHander:Landroid/os/Handler;

    .line 89
    return-void
.end method

.method static synthetic access$0(Lcom/hiflying/smartlink/AbstractSmartLinker;)Ljava/util/HashSet;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/hiflying/smartlink/AbstractSmartLinker;->mDeviceMacs:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$1(Lcom/hiflying/smartlink/AbstractSmartLinker;)I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lcom/hiflying/smartlink/AbstractSmartLinker;->mWaitMoreDevicePeriod:I

    return v0
.end method

.method static synthetic access$2(Lcom/hiflying/smartlink/AbstractSmartLinker;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/hiflying/smartlink/AbstractSmartLinker;->mHander:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$3(Lcom/hiflying/smartlink/AbstractSmartLinker;Ljava/util/concurrent/CountDownLatch;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 134
    invoke-direct {p0, p1}, Lcom/hiflying/smartlink/AbstractSmartLinker;->createReceiverRunnable(Ljava/util/concurrent/CountDownLatch;)Ljava/lang/Runnable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4(Lcom/hiflying/smartlink/AbstractSmartLinker;Ljava/util/concurrent/CountDownLatch;[Ljava/lang/Runnable;)[Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 110
    invoke-direct {p0, p1, p2}, Lcom/hiflying/smartlink/AbstractSmartLinker;->createSenderRunnables(Ljava/util/concurrent/CountDownLatch;[Ljava/lang/Runnable;)[Ljava/lang/Runnable;

    move-result-object v0

    return-object v0
.end method

.method private createReceiverRunnable(Ljava/util/concurrent/CountDownLatch;)Ljava/lang/Runnable;
    .locals 1
    .param p1, "latch"    # Ljava/util/concurrent/CountDownLatch;

    .prologue
    .line 136
    new-instance v0, Lcom/hiflying/smartlink/AbstractSmartLinker$3;

    invoke-direct {v0, p0, p1}, Lcom/hiflying/smartlink/AbstractSmartLinker$3;-><init>(Lcom/hiflying/smartlink/AbstractSmartLinker;Ljava/util/concurrent/CountDownLatch;)V

    return-object v0
.end method

.method private createSenderRunnables(Ljava/util/concurrent/CountDownLatch;[Ljava/lang/Runnable;)[Ljava/lang/Runnable;
    .locals 4
    .param p1, "latch"    # Ljava/util/concurrent/CountDownLatch;
    .param p2, "runnables"    # [Ljava/lang/Runnable;

    .prologue
    .line 112
    const/4 v0, 0x0

    .line 113
    .local v0, "_runnnables":[Ljava/lang/Runnable;
    if-eqz p2, :cond_0

    .line 114
    array-length v3, p2

    new-array v0, v3, [Ljava/lang/Runnable;

    .line 116
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, p2

    if-lt v1, v3, :cond_1

    .line 131
    .end local v1    # "i":I
    :cond_0
    return-object v0

    .line 118
    .restart local v1    # "i":I
    :cond_1
    move v2, v1

    .line 119
    .local v2, "j":I
    new-instance v3, Lcom/hiflying/smartlink/AbstractSmartLinker$2;

    invoke-direct {v3, p0, p2, v2, p1}, Lcom/hiflying/smartlink/AbstractSmartLinker$2;-><init>(Lcom/hiflying/smartlink/AbstractSmartLinker;[Ljava/lang/Runnable;ILjava/util/concurrent/CountDownLatch;)V

    aput-object v3, v0, v1

    .line 116
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected closeDestroySmartConfigSocket()V
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/hiflying/smartlink/AbstractSmartLinker;->mSmartConfigSocket:Ljava/net/DatagramSocket;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/hiflying/smartlink/AbstractSmartLinker;->mSmartConfigSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V

    .line 101
    iget-object v0, p0, Lcom/hiflying/smartlink/AbstractSmartLinker;->mSmartConfigSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->disconnect()V

    .line 102
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hiflying/smartlink/AbstractSmartLinker;->mSmartConfigSocket:Ljava/net/DatagramSocket;

    .line 104
    :cond_0
    return-void
.end method

.method protected getSmartConfigSocket()Ljava/net/DatagramSocket;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/hiflying/smartlink/AbstractSmartLinker;->mSmartConfigSocket:Ljava/net/DatagramSocket;

    return-object v0
.end method

.method protected initSmartConfigSocket()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 93
    new-instance v0, Ljava/net/DatagramSocket;

    sget v1, Lcom/hiflying/smartlink/AbstractSmartLinker;->PORT_RECEIVE_SMART_CONFIG:I

    invoke-direct {v0, v1}, Ljava/net/DatagramSocket;-><init>(I)V

    iput-object v0, p0, Lcom/hiflying/smartlink/AbstractSmartLinker;->mSmartConfigSocket:Ljava/net/DatagramSocket;

    .line 94
    iget-object v0, p0, Lcom/hiflying/smartlink/AbstractSmartLinker;->mSmartConfigSocket:Ljava/net/DatagramSocket;

    const/16 v1, 0x4b0

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->setSoTimeout(I)V

    .line 95
    return-void
.end method

.method public isSmartLinking()Z
    .locals 1

    .prologue
    .line 305
    iget-boolean v0, p0, Lcom/hiflying/smartlink/AbstractSmartLinker;->mIsSmartLinking:Z

    return v0
.end method

.method public setOnSmartLinkListener(Lcom/hiflying/smartlink/OnSmartLinkListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/hiflying/smartlink/OnSmartLinkListener;

    .prologue
    .line 228
    iput-object p1, p0, Lcom/hiflying/smartlink/AbstractSmartLinker;->mOnSmartLinkListener:Lcom/hiflying/smartlink/OnSmartLinkListener;

    .line 229
    return-void
.end method

.method public setTimeoutPeriod(I)V
    .locals 0
    .param p1, "timeoutPeriod"    # I

    .prologue
    .line 310
    if-lez p1, :cond_0

    .line 311
    iput p1, p0, Lcom/hiflying/smartlink/AbstractSmartLinker;->mTimeoutPeriod:I

    .line 313
    :cond_0
    return-void
.end method

.method public setWaitMoreDevicePeriod(I)V
    .locals 0
    .param p1, "period"    # I

    .prologue
    .line 316
    iput p1, p0, Lcom/hiflying/smartlink/AbstractSmartLinker;->mWaitMoreDevicePeriod:I

    .line 317
    return-void
.end method

.method protected setupReceiveAction()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 150
    new-instance v0, Lcom/hiflying/smartlink/AbstractSmartLinker$4;

    invoke-direct {v0, p0}, Lcom/hiflying/smartlink/AbstractSmartLinker$4;-><init>(Lcom/hiflying/smartlink/AbstractSmartLinker;)V

    return-object v0
.end method

.method protected varargs abstract setupSendAction(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public varargs start(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "ssid"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 235
    iget-boolean v0, p0, Lcom/hiflying/smartlink/AbstractSmartLinker;->mIsSmartLinking:Z

    if-eqz v0, :cond_0

    .line 236
    const-string v0, "SmartLink is already linking, do not start it again!"

    invoke-static {p0, v0}, Lcom/hiflying/commons/log/HFLog;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 294
    :goto_0
    return-void

    .line 240
    :cond_0
    const-string v0, "Smart Link started!"

    invoke-static {p0, v0}, Lcom/hiflying/commons/log/HFLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 242
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hiflying/smartlink/AbstractSmartLinker;->mIsSmartLinking:Z

    .line 243
    invoke-virtual {p0}, Lcom/hiflying/smartlink/AbstractSmartLinker;->initSmartConfigSocket()V

    .line 244
    iput-object p1, p0, Lcom/hiflying/smartlink/AbstractSmartLinker;->mContext:Landroid/content/Context;

    .line 246
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/hiflying/smartlink/AbstractSmartLinker$5;

    invoke-direct {v1, p0, p2, p3}, Lcom/hiflying/smartlink/AbstractSmartLinker$5;-><init>(Lcom/hiflying/smartlink/AbstractSmartLinker;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 293
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 298
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hiflying/smartlink/AbstractSmartLinker;->mIsSmartLinking:Z

    .line 299
    invoke-virtual {p0}, Lcom/hiflying/smartlink/AbstractSmartLinker;->closeDestroySmartConfigSocket()V

    .line 300
    return-void
.end method
