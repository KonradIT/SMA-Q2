.class public Lcom/hiflying/smartlink/v3/SnifferSmartLinker;
.super Lcom/hiflying/smartlink/AbstractSmartLinker;
.source "SnifferSmartLinker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hiflying/smartlink/v3/SnifferSmartLinker$SnifferSmartLinkerInner;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/hiflying/smartlink/AbstractSmartLinker;-><init>()V

    .line 11
    return-void
.end method

.method synthetic constructor <init>(Lcom/hiflying/smartlink/v3/SnifferSmartLinker;)V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/hiflying/smartlink/v3/SnifferSmartLinker;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/hiflying/smartlink/v3/SnifferSmartLinker;
    .locals 1

    .prologue
    .line 26
    invoke-static {}, Lcom/hiflying/smartlink/v3/SnifferSmartLinker$SnifferSmartLinkerInner;->access$0()Lcom/hiflying/smartlink/v3/SnifferSmartLinker;

    move-result-object v0

    return-object v0
.end method

.method public static getInstence()Lcom/hiflying/smartlink/v3/SnifferSmartLinker;
    .locals 1

    .prologue
    .line 22
    invoke-static {}, Lcom/hiflying/smartlink/v3/SnifferSmartLinker;->getInstance()Lcom/hiflying/smartlink/v3/SnifferSmartLinker;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected varargs setupSendAction(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/Runnable;
    .locals 8
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "ssid"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v7, 0x0

    .line 33
    const-string v0, "setupSendAction: password-%s ssid-%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v7

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/hiflying/commons/log/HFLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    new-array v6, v3, [Ljava/lang/Runnable;

    .line 36
    new-instance v0, Lcom/hiflying/smartlink/v3/SnifferSmartLinkerSendAction;

    iget-object v1, p0, Lcom/hiflying/smartlink/v3/SnifferSmartLinker;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/hiflying/smartlink/v3/SnifferSmartLinker;->mSmartConfigSocket:Ljava/net/DatagramSocket;

    .line 37
    array-length v3, p2

    if-lez v3, :cond_0

    aget-object v4, p2, v7

    :goto_0
    move-object v3, p0

    move-object v5, p1

    .line 36
    invoke-direct/range {v0 .. v5}, Lcom/hiflying/smartlink/v3/SnifferSmartLinkerSendAction;-><init>(Landroid/content/Context;Ljava/net/DatagramSocket;Lcom/hiflying/smartlink/ISmartLinker;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v6, v7

    .line 35
    return-object v6

    .line 37
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method
