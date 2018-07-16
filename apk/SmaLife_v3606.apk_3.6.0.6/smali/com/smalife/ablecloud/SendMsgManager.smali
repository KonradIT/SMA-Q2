.class public Lcom/smalife/ablecloud/SendMsgManager;
.super Ljava/lang/Object;
.source "SendMsgManager.java"

# interfaces
.implements Lcom/accloud/cloudservice/PayloadCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/accloud/cloudservice/PayloadCallback",
        "<",
        "Lcom/accloud/service/ACMsg;",
        ">;"
    }
.end annotation


# static fields
.field public static sendService:Lcom/smalife/ablecloud/SendMsgManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSendSerivceIntance()Lcom/smalife/ablecloud/SendMsgManager;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/smalife/ablecloud/SendMsgManager;->sendService:Lcom/smalife/ablecloud/SendMsgManager;

    if-nez v0, :cond_0

    .line 14
    new-instance v0, Lcom/smalife/ablecloud/SendMsgManager;

    invoke-direct {v0}, Lcom/smalife/ablecloud/SendMsgManager;-><init>()V

    sput-object v0, Lcom/smalife/ablecloud/SendMsgManager;->sendService:Lcom/smalife/ablecloud/SendMsgManager;

    .line 16
    :cond_0
    sget-object v0, Lcom/smalife/ablecloud/SendMsgManager;->sendService:Lcom/smalife/ablecloud/SendMsgManager;

    return-object v0
.end method


# virtual methods
.method public error(Lcom/accloud/service/ACException;)V
    .locals 0
    .param p1, "e"    # Lcom/accloud/service/ACException;

    .prologue
    .line 28
    return-void
.end method

.method public sendMsg(Lcom/accloud/service/ACMsg;)V
    .locals 3
    .param p1, "msg"    # Lcom/accloud/service/ACMsg;

    .prologue
    .line 24
    const-string v0, "watch"

    const-string v1, "mywatch"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, p1, p0}, Lcom/accloud/cloudservice/AC;->sendToService(Ljava/lang/String;Ljava/lang/String;ILcom/accloud/service/ACMsg;Lcom/accloud/cloudservice/PayloadCallback;)V

    .line 25
    return-void
.end method

.method public sendMsg(Lcom/accloud/service/ACMsg;Lcom/accloud/cloudservice/PayloadCallback;)V
    .locals 3
    .param p1, "msg"    # Lcom/accloud/service/ACMsg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/accloud/service/ACMsg;",
            "Lcom/accloud/cloudservice/PayloadCallback",
            "<",
            "Lcom/accloud/service/ACMsg;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 38
    .local p2, "payloadCallback":Lcom/accloud/cloudservice/PayloadCallback;, "Lcom/accloud/cloudservice/PayloadCallback<Lcom/accloud/service/ACMsg;>;"
    const-string v0, "watch"

    const-string v1, "mywatch"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, p1, p2}, Lcom/accloud/cloudservice/AC;->sendToService(Ljava/lang/String;Ljava/lang/String;ILcom/accloud/service/ACMsg;Lcom/accloud/cloudservice/PayloadCallback;)V

    .line 39
    return-void
.end method

.method public sendToDevice(Ljava/lang/String;Ljava/lang/Long;Lcom/accloud/service/ACDeviceMsg;)V
    .locals 7
    .param p1, "subDomain"    # Ljava/lang/String;
    .param p2, "deviceId"    # Ljava/lang/Long;
    .param p3, "msg"    # Lcom/accloud/service/ACDeviceMsg;

    .prologue
    .line 50
    invoke-static {}, Lcom/accloud/cloudservice/AC;->bindMgr()Lcom/accloud/service/ACBindMgr;

    move-result-object v0

    .line 51
    .local v0, "bindMgr":Lcom/accloud/service/ACBindMgr;
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const/4 v5, 0x1

    new-instance v6, Lcom/smalife/ablecloud/SendMsgManager$1;

    invoke-direct {v6, p0}, Lcom/smalife/ablecloud/SendMsgManager$1;-><init>(Lcom/smalife/ablecloud/SendMsgManager;)V

    move-object v1, p1

    move-object v4, p3

    invoke-interface/range {v0 .. v6}, Lcom/accloud/service/ACBindMgr;->sendToDeviceWithOption(Ljava/lang/String;JLcom/accloud/service/ACDeviceMsg;ILcom/accloud/cloudservice/PayloadCallback;)V

    .line 63
    return-void
.end method

.method public sendToDevice(Ljava/lang/String;Ljava/lang/Long;Lcom/accloud/service/ACDeviceMsg;Lcom/accloud/cloudservice/PayloadCallback;)V
    .locals 7
    .param p1, "subDomain"    # Ljava/lang/String;
    .param p2, "deviceId"    # Ljava/lang/Long;
    .param p3, "msg"    # Lcom/accloud/service/ACDeviceMsg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Lcom/accloud/service/ACDeviceMsg;",
            "Lcom/accloud/cloudservice/PayloadCallback",
            "<",
            "Lcom/accloud/service/ACDeviceMsg;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 74
    .local p4, "payloadCallback":Lcom/accloud/cloudservice/PayloadCallback;, "Lcom/accloud/cloudservice/PayloadCallback<Lcom/accloud/service/ACDeviceMsg;>;"
    invoke-static {}, Lcom/accloud/cloudservice/AC;->bindMgr()Lcom/accloud/service/ACBindMgr;

    move-result-object v0

    .line 75
    .local v0, "bindMgr":Lcom/accloud/service/ACBindMgr;
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const/4 v5, 0x2

    move-object v1, p1

    move-object v4, p3

    move-object v6, p4

    invoke-interface/range {v0 .. v6}, Lcom/accloud/service/ACBindMgr;->sendToDeviceWithOption(Ljava/lang/String;JLcom/accloud/service/ACDeviceMsg;ILcom/accloud/cloudservice/PayloadCallback;)V

    .line 76
    return-void
.end method

.method public success(Lcom/accloud/service/ACMsg;)V
    .locals 0
    .param p1, "acMsg"    # Lcom/accloud/service/ACMsg;

    .prologue
    .line 31
    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/accloud/service/ACMsg;

    invoke-virtual {p0, p1}, Lcom/smalife/ablecloud/SendMsgManager;->success(Lcom/accloud/service/ACMsg;)V

    return-void
.end method
