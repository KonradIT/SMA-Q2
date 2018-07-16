.class public Lcom/espressif/iot/esptouch/EsptouchResult;
.super Ljava/lang/Object;
.source "EsptouchResult.java"

# interfaces
.implements Lcom/espressif/iot/esptouch/IEsptouchResult;


# instance fields
.field private final mBssid:Ljava/lang/String;

.field private final mInetAddress:Ljava/net/InetAddress;

.field private mIsCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mIsSuc:Z


# direct methods
.method public constructor <init>(ZLjava/lang/String;Ljava/net/InetAddress;)V
    .locals 2
    .param p1, "isSuc"    # Z
    .param p2, "bssid"    # Ljava/lang/String;
    .param p3, "inetAddress"    # Ljava/net/InetAddress;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-boolean p1, p0, Lcom/espressif/iot/esptouch/EsptouchResult;->mIsSuc:Z

    .line 22
    iput-object p2, p0, Lcom/espressif/iot/esptouch/EsptouchResult;->mBssid:Ljava/lang/String;

    .line 23
    iput-object p3, p0, Lcom/espressif/iot/esptouch/EsptouchResult;->mInetAddress:Ljava/net/InetAddress;

    .line 24
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/espressif/iot/esptouch/EsptouchResult;->mIsCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 25
    return-void
.end method


# virtual methods
.method public getBssid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/espressif/iot/esptouch/EsptouchResult;->mBssid:Ljava/lang/String;

    return-object v0
.end method

.method public getInetAddress()Ljava/net/InetAddress;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/espressif/iot/esptouch/EsptouchResult;->mInetAddress:Ljava/net/InetAddress;

    return-object v0
.end method

.method public isCancelled()Z
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/espressif/iot/esptouch/EsptouchResult;->mIsCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public isSuc()Z
    .locals 1

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/espressif/iot/esptouch/EsptouchResult;->mIsSuc:Z

    return v0
.end method

.method public setIsCancelled(Z)V
    .locals 1
    .param p1, "isCancelled"    # Z

    .prologue
    .line 43
    iget-object v0, p0, Lcom/espressif/iot/esptouch/EsptouchResult;->mIsCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 44
    return-void
.end method
