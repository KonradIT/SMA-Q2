.class public Lcom/xlwtech/util/XlwDevice;
.super Ljava/lang/Object;
.source "XlwDevice.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xlwtech/util/XlwDevice$XlwDeviceListener;
    }
.end annotation


# static fields
.field public static final ERR_BUSY:I = -0x1

.field public static final ERR_DEVICE_OFFLINE:I = -0xb

.field public static final ERR_IP_NOT_EXIST:I = -0x3

.field public static final ERR_MAC_INVALID:I = -0x2

.field public static final ERR_MAC_NOT_EXIST:I = -0x4

.field public static final ERR_TIMER_OUT:I = -0xa

.field private static m_inst:Lcom/xlwtech/util/XlwDevice;


# instance fields
.field private m_iSmartV:I

.field private m_listener:Lcom/xlwtech/util/XlwDevice$XlwDeviceListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    sput-object v0, Lcom/xlwtech/util/XlwDevice;->m_inst:Lcom/xlwtech/util/XlwDevice;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput v0, p0, Lcom/xlwtech/util/XlwDevice;->m_iSmartV:I

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xlwtech/util/XlwDevice;->m_listener:Lcom/xlwtech/util/XlwDevice$XlwDeviceListener;

    .line 21
    invoke-virtual {p0}, Lcom/xlwtech/util/XlwDevice;->LibraryInit()V

    return-void
.end method

.method static synthetic access$0(Lcom/xlwtech/util/XlwDevice;)Lcom/xlwtech/util/XlwDevice$XlwDeviceListener;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/xlwtech/util/XlwDevice;->m_listener:Lcom/xlwtech/util/XlwDevice$XlwDeviceListener;

    return-object v0
.end method

.method public static getInstance()Lcom/xlwtech/util/XlwDevice;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/xlwtech/util/XlwDevice;->m_inst:Lcom/xlwtech/util/XlwDevice;

    if-nez v0, :cond_0

    new-instance v0, Lcom/xlwtech/util/XlwDevice;

    invoke-direct {v0}, Lcom/xlwtech/util/XlwDevice;-><init>()V

    sput-object v0, Lcom/xlwtech/util/XlwDevice;->m_inst:Lcom/xlwtech/util/XlwDevice;

    .line 25
    :cond_0
    sget-object v0, Lcom/xlwtech/util/XlwDevice;->m_inst:Lcom/xlwtech/util/XlwDevice;

    return-object v0
.end method


# virtual methods
.method public DeviceClear()V
    .locals 1

    .prologue
    .line 168
    invoke-static {}, Lcom/xlwtech/util/XlwDeviceSearch;->getInstance()Lcom/xlwtech/util/XlwDeviceSearch;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xlwtech/util/XlwDeviceSearch;->DeviceClear()V

    invoke-static {}, Lcom/xlwtech/util/XlwDeviceCheck;->getInstance()Lcom/xlwtech/util/XlwDeviceCheck;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xlwtech/util/XlwDeviceCheck;->DeviceClear()V

    return-void
.end method

.method public DeviceConnect(Ljava/lang/String;)I
    .locals 5
    .param p1, "mac"    # Ljava/lang/String;

    .prologue
    .line 241
    const-string v1, "xlw"

    const-string v2, "DeviceConnect(), mac=%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xc

    if-eq v1, v2, :cond_1

    :cond_0
    const/4 v1, -0x2

    .line 246
    :goto_0
    return v1

    .line 244
    :cond_1
    invoke-static {}, Lcom/xlwtech/util/XlwDeviceCheck;->getInstance()Lcom/xlwtech/util/XlwDeviceCheck;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/xlwtech/util/XlwDeviceCheck;->DeviceIpGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 245
    .local v0, "ip":Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, -0x3

    goto :goto_0

    .line 246
    :cond_2
    invoke-static {}, Lcom/xlwtech/util/XlwClientLocal;->getInstance()Lcom/xlwtech/util/XlwClientLocal;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/xlwtech/util/XlwClientLocal;->DoConnect(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method public DeviceCount()I
    .locals 1

    .prologue
    .line 169
    invoke-static {}, Lcom/xlwtech/util/XlwDeviceCheck;->getInstance()Lcom/xlwtech/util/XlwDeviceCheck;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xlwtech/util/XlwDeviceCheck;->DeviceCountGet()I

    move-result v0

    return v0
.end method

.method public DeviceIpGet(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 171
    invoke-static {}, Lcom/xlwtech/util/XlwDeviceCheck;->getInstance()Lcom/xlwtech/util/XlwDeviceCheck;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xlwtech/util/XlwDeviceCheck;->DeviceIpGet(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public DeviceIpGet(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "mac"    # Ljava/lang/String;

    .prologue
    .line 172
    invoke-static {}, Lcom/xlwtech/util/XlwDeviceCheck;->getInstance()Lcom/xlwtech/util/XlwDeviceCheck;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xlwtech/util/XlwDeviceCheck;->DeviceIpGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public DeviceIsConnected(Ljava/lang/String;)I
    .locals 4
    .param p1, "mac"    # Ljava/lang/String;

    .prologue
    .line 251
    const-string v0, "xlw"

    const-string v1, "DeviceIsConnected(), mac=%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v0, -0x2

    .line 254
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/xlwtech/util/XlwClientLocal;->getInstance()Lcom/xlwtech/util/XlwClientLocal;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xlwtech/util/XlwClientLocal;->IsConnected(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public DeviceMacGet(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 170
    invoke-static {}, Lcom/xlwtech/util/XlwDeviceCheck;->getInstance()Lcom/xlwtech/util/XlwDeviceCheck;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xlwtech/util/XlwDeviceCheck;->DeviceMacGet(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public DeviceSearch()V
    .locals 4

    .prologue
    .line 155
    const-string v0, "xlw"

    const-string v1, "start device search..."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    invoke-static {}, Lcom/xlwtech/util/XlwDeviceSearch;->getInstance()Lcom/xlwtech/util/XlwDeviceSearch;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xlwtech/util/XlwDeviceSearch;->DeviceClear()V

    .line 157
    invoke-static {}, Lcom/xlwtech/util/XlwDeviceSearch;->getInstance()Lcom/xlwtech/util/XlwDeviceSearch;

    move-result-object v0

    const/16 v1, 0xa

    iput v1, v0, Lcom/xlwtech/util/XlwDeviceSearch;->m_countNeedSearch:I

    .line 158
    invoke-static {}, Lcom/xlwtech/util/XlwDeviceSearch;->getInstance()Lcom/xlwtech/util/XlwDeviceSearch;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/xlwtech/util/XlwDeviceSearch;->m_tickNeedSearch:J

    .line 159
    invoke-static {}, Lcom/xlwtech/util/XlwDeviceSearch;->getInstance()Lcom/xlwtech/util/XlwDeviceSearch;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xlwtech/util/XlwDeviceSearch;->cancel()V

    .line 160
    invoke-static {}, Lcom/xlwtech/util/XlwDeviceSearch;->getInstance()Lcom/xlwtech/util/XlwDeviceSearch;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xlwtech/util/XlwDeviceSearch;->run()V

    .line 161
    return-void
.end method

.method public DeviceSearchStop()V
    .locals 2

    .prologue
    .line 164
    const-string v0, "xlw"

    const-string v1, "stop device search..."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    invoke-static {}, Lcom/xlwtech/util/XlwDeviceSearch;->getInstance()Lcom/xlwtech/util/XlwDeviceSearch;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xlwtech/util/XlwDeviceSearch;->cancel()V

    .line 166
    return-void
.end method

.method public DeviceStatusGet(Ljava/lang/String;)I
    .locals 1
    .param p1, "mac"    # Ljava/lang/String;

    .prologue
    .line 173
    invoke-static {}, Lcom/xlwtech/util/XlwDeviceCheck;->getInstance()Lcom/xlwtech/util/XlwDeviceCheck;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xlwtech/util/XlwDeviceCheck;->DeviceStatusGet(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public DoSend(Ljava/lang/String;[BI)I
    .locals 6
    .param p1, "mac"    # Ljava/lang/String;
    .param p2, "data"    # [B
    .param p3, "length"    # I

    .prologue
    .line 278
    const-string v1, "xlw"

    const-string v2, "DoSend(), mac=%s, length=%d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    invoke-virtual {p0, p1, p2, p3}, Lcom/xlwtech/util/XlwDevice;->DoSendLocal(Ljava/lang/String;[BI)I

    move-result v0

    .line 280
    .local v0, "iRet":I
    const/4 v1, -0x3

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lcom/xlwtech/util/XlwDevice;->DoSendServer(Ljava/lang/String;[BI)I

    move-result v0

    .line 281
    .end local v0    # "iRet":I
    :cond_0
    return v0
.end method

.method public DoSendLocal(Ljava/lang/String;[BI)I
    .locals 9
    .param p1, "mac"    # Ljava/lang/String;
    .param p2, "data"    # [B
    .param p3, "length"    # I

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 259
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xc

    if-eq v2, v3, :cond_1

    :cond_0
    const/4 v2, -0x2

    .line 266
    :goto_0
    return v2

    .line 260
    :cond_1
    invoke-virtual {p0, p1}, Lcom/xlwtech/util/XlwDevice;->DeviceIpGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 261
    .local v0, "ip":Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/xlwtech/util/XlwDevice;->DeviceStatusGet(Ljava/lang/String;)I

    move-result v1

    .line 262
    .local v1, "status":I
    const-string v2, "xlw"

    const-string v3, "mac=%s, i=%s, status=%d"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v6

    aput-object v0, v4, v7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const/16 v2, 0xb

    if-eq v1, v2, :cond_3

    :cond_2
    const/4 v2, -0x3

    goto :goto_0

    .line 265
    :cond_3
    const-string v2, "xlw"

    const-string v3, "DoSendLocal(), mac=%s, length=%d"

    new-array v4, v8, [Ljava/lang/Object;

    aput-object p1, v4, v6

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    invoke-static {}, Lcom/xlwtech/util/XlwClientLocal;->getInstance()Lcom/xlwtech/util/XlwClientLocal;

    move-result-object v2

    invoke-virtual {v2, p1, v0, p2, p3}, Lcom/xlwtech/util/XlwClientLocal;->DoSend(Ljava/lang/String;Ljava/lang/String;[BI)I

    move-result v2

    goto :goto_0
.end method

.method public DoSendServer(Ljava/lang/String;[BI)I
    .locals 5
    .param p1, "mac"    # Ljava/lang/String;
    .param p2, "data"    # [B
    .param p3, "length"    # I

    .prologue
    .line 271
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v0, -0x2

    .line 273
    :goto_0
    return v0

    .line 272
    :cond_1
    const-string v0, "xlw"

    const-string v1, "DoSendServer(), mac=%s, length=%d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    invoke-static {}, Lcom/xlwtech/util/XlwClientApp;->getInstance()Lcom/xlwtech/util/XlwClientApp;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/xlwtech/util/XlwClientApp;->DoSend(Ljava/lang/String;[BI)I

    move-result v0

    goto :goto_0
.end method

.method public GetLibraryVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    const-string v0, "v2.0-beta4"

    return-object v0
.end method

.method public LibraryInit()V
    .locals 2

    .prologue
    .line 47
    const-string v0, "xlw"

    const-string v1, "LibraryInit"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    invoke-static {}, Lcom/xlwtech/util/XlwSmartResponse;->getInstance()Lcom/xlwtech/util/XlwSmartResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xlwtech/util/XlwSmartResponse;->cancel()V

    .line 49
    invoke-static {}, Lcom/xlwtech/util/XlwSmartResponse;->getInstance()Lcom/xlwtech/util/XlwSmartResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xlwtech/util/XlwSmartResponse;->DoInit()V

    .line 50
    invoke-static {}, Lcom/xlwtech/util/XlwSmartResponse;->getInstance()Lcom/xlwtech/util/XlwSmartResponse;

    move-result-object v0

    new-instance v1, Lcom/xlwtech/util/XlwDevice$1;

    invoke-direct {v1, p0}, Lcom/xlwtech/util/XlwDevice$1;-><init>(Lcom/xlwtech/util/XlwDevice;)V

    invoke-virtual {v0, v1}, Lcom/xlwtech/util/XlwSmartResponse;->SetListener(Lcom/xlwtech/util/XlwSmartResponse$XlwSmartResponseListener;)V

    .line 66
    invoke-static {}, Lcom/xlwtech/util/XlwDeviceSearch;->getInstance()Lcom/xlwtech/util/XlwDeviceSearch;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xlwtech/util/XlwDeviceSearch;->cancel()V

    .line 67
    invoke-static {}, Lcom/xlwtech/util/XlwDeviceSearch;->getInstance()Lcom/xlwtech/util/XlwDeviceSearch;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xlwtech/util/XlwDeviceSearch;->DoInit()V

    .line 68
    invoke-static {}, Lcom/xlwtech/util/XlwDeviceSearch;->getInstance()Lcom/xlwtech/util/XlwDeviceSearch;

    move-result-object v0

    new-instance v1, Lcom/xlwtech/util/XlwDevice$2;

    invoke-direct {v1, p0}, Lcom/xlwtech/util/XlwDevice$2;-><init>(Lcom/xlwtech/util/XlwDevice;)V

    invoke-virtual {v0, v1}, Lcom/xlwtech/util/XlwDeviceSearch;->SetDeviceSearchListener(Lcom/xlwtech/util/XlwDeviceSearch$DeviceSearchListener;)V

    .line 79
    invoke-static {}, Lcom/xlwtech/util/XlwDeviceCheck;->getInstance()Lcom/xlwtech/util/XlwDeviceCheck;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xlwtech/util/XlwDeviceCheck;->cancel()V

    .line 80
    invoke-static {}, Lcom/xlwtech/util/XlwDeviceCheck;->getInstance()Lcom/xlwtech/util/XlwDeviceCheck;

    move-result-object v0

    new-instance v1, Lcom/xlwtech/util/XlwDevice$3;

    invoke-direct {v1, p0}, Lcom/xlwtech/util/XlwDevice$3;-><init>(Lcom/xlwtech/util/XlwDevice;)V

    invoke-virtual {v0, v1}, Lcom/xlwtech/util/XlwDeviceCheck;->SetDeviceCheckListener(Lcom/xlwtech/util/XlwDeviceCheck$DeviceCheckListener;)V

    .line 87
    invoke-static {}, Lcom/xlwtech/util/XlwDeviceCheck;->getInstance()Lcom/xlwtech/util/XlwDeviceCheck;

    move-result-object v0

    const/16 v1, 0xbb8

    iput v1, v0, Lcom/xlwtech/util/XlwDeviceCheck;->m_checkInerval:I

    .line 88
    invoke-static {}, Lcom/xlwtech/util/XlwDeviceCheck;->getInstance()Lcom/xlwtech/util/XlwDeviceCheck;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xlwtech/util/XlwDeviceCheck;->DoInit()V

    .line 89
    invoke-static {}, Lcom/xlwtech/util/XlwDeviceCheck;->getInstance()Lcom/xlwtech/util/XlwDeviceCheck;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xlwtech/util/XlwDeviceCheck;->run()V

    .line 92
    invoke-static {}, Lcom/xlwtech/util/XlwClientLocal;->getInstance()Lcom/xlwtech/util/XlwClientLocal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xlwtech/util/XlwClientLocal;->DoInit()V

    .line 93
    invoke-static {}, Lcom/xlwtech/util/XlwClientLocal;->getInstance()Lcom/xlwtech/util/XlwClientLocal;

    move-result-object v0

    new-instance v1, Lcom/xlwtech/util/XlwDevice$4;

    invoke-direct {v1, p0}, Lcom/xlwtech/util/XlwDevice$4;-><init>(Lcom/xlwtech/util/XlwDevice;)V

    invoke-virtual {v0, v1}, Lcom/xlwtech/util/XlwClientLocal;->SetXlwLocalClientListener(Lcom/xlwtech/util/XlwClientLocal$XlwClientLocalListener;)V

    .line 105
    invoke-static {}, Lcom/xlwtech/util/XlwClientApp;->getInstance()Lcom/xlwtech/util/XlwClientApp;

    move-result-object v0

    new-instance v1, Lcom/xlwtech/util/XlwDevice$5;

    invoke-direct {v1, p0}, Lcom/xlwtech/util/XlwDevice$5;-><init>(Lcom/xlwtech/util/XlwDevice;)V

    invoke-virtual {v0, v1}, Lcom/xlwtech/util/XlwClientApp;->SetAppClientListener(Lcom/xlwtech/util/XlwClientApp$XlwClientAppListener;)V

    .line 115
    invoke-static {}, Lcom/xlwtech/util/XlwClientApp;->getInstance()Lcom/xlwtech/util/XlwClientApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xlwtech/util/XlwClientApp;->DoInit()V

    .line 116
    invoke-static {}, Lcom/xlwtech/util/XlwClientApp;->getInstance()Lcom/xlwtech/util/XlwClientApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xlwtech/util/XlwClientApp;->start()V

    .line 118
    return-void
.end method

.method public LibraryRelease()V
    .locals 2

    .prologue
    .line 123
    const-string v0, "xlw"

    const-string v1, "LibraryRelease"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    invoke-static {}, Lcom/xlwtech/util/ConfigWireless;->getInstance()Lcom/xlwtech/util/ConfigWireless;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xlwtech/util/ConfigWireless;->cancel()V

    .line 125
    invoke-static {}, Lcom/xlwtech/util/XlwDeviceCheck;->getInstance()Lcom/xlwtech/util/XlwDeviceCheck;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xlwtech/util/XlwDeviceCheck;->cancel()V

    .line 126
    invoke-static {}, Lcom/xlwtech/util/XlwSmartResponse;->getInstance()Lcom/xlwtech/util/XlwSmartResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xlwtech/util/XlwSmartResponse;->cancel()V

    .line 127
    invoke-static {}, Lcom/xlwtech/util/XlwClientLocal;->getInstance()Lcom/xlwtech/util/XlwClientLocal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xlwtech/util/XlwClientLocal;->DoInit()V

    .line 128
    return-void
.end method

.method public SetLocalDataPort(I)V
    .locals 3
    .param p1, "port"    # I

    .prologue
    .line 149
    const-string v0, "xlw"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "set local data port "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    invoke-static {}, Lcom/xlwtech/util/XlwClientLocal;->getInstance()Lcom/xlwtech/util/XlwClientLocal;

    move-result-object v0

    iput p1, v0, Lcom/xlwtech/util/XlwClientLocal;->m_port:I

    .line 151
    return-void
.end method

.method public SetServer(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 133
    invoke-static {}, Lcom/xlwtech/util/XlwClientApp;->getInstance()Lcom/xlwtech/util/XlwClientApp;

    move-result-object v0

    iput-object p1, v0, Lcom/xlwtech/util/XlwClientApp;->m_server:Ljava/lang/String;

    return-void
.end method

.method public SetServerTimerout(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 134
    invoke-static {}, Lcom/xlwtech/util/XlwClientApp;->getInstance()Lcom/xlwtech/util/XlwClientApp;

    move-result-object v0

    iput p1, v0, Lcom/xlwtech/util/XlwClientApp;->m_sendTimerout:I

    return-void
.end method

.method public SetStatusCheck(I)V
    .locals 3
    .param p1, "interval"    # I

    .prologue
    .line 141
    if-gez p1, :cond_0

    const/4 p1, 0x0

    .line 142
    :cond_0
    const-string v0, "xlw"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "set status check interval "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    invoke-static {}, Lcom/xlwtech/util/XlwDeviceCheck;->getInstance()Lcom/xlwtech/util/XlwDeviceCheck;

    move-result-object v0

    iput p1, v0, Lcom/xlwtech/util/XlwDeviceCheck;->m_checkInerval:I

    .line 144
    invoke-static {}, Lcom/xlwtech/util/XlwDeviceCheck;->getInstance()Lcom/xlwtech/util/XlwDeviceCheck;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xlwtech/util/XlwDeviceCheck;->cancel()V

    .line 145
    invoke-static {}, Lcom/xlwtech/util/XlwDeviceCheck;->getInstance()Lcom/xlwtech/util/XlwDeviceCheck;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xlwtech/util/XlwDeviceCheck;->run()V

    .line 146
    return-void
.end method

.method public SetXlwDeviceListener(Lcom/xlwtech/util/XlwDevice$XlwDeviceListener;)V
    .locals 0
    .param p1, "value"    # Lcom/xlwtech/util/XlwDevice$XlwDeviceListener;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/xlwtech/util/XlwDevice;->m_listener:Lcom/xlwtech/util/XlwDevice$XlwDeviceListener;

    return-void
.end method

.method public SmartConfigProgressGet()I
    .locals 2

    .prologue
    .line 232
    iget v0, p0, Lcom/xlwtech/util/XlwDevice;->m_iSmartV:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    sget v0, Lcom/xlwtech/util/XlwSmart;->progress:I

    .line 234
    :goto_0
    return v0

    .line 233
    :cond_0
    iget v0, p0, Lcom/xlwtech/util/XlwDevice;->m_iSmartV:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/xlwtech/util/ConfigWireless;->getInstance()Lcom/xlwtech/util/ConfigWireless;

    sget v0, Lcom/xlwtech/util/ConfigWireless;->progress:I

    goto :goto_0

    .line 234
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public SmartConfigStart(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 8
    .param p1, "ssid"    # Ljava/lang/String;
    .param p2, "pass"    # Ljava/lang/String;
    .param p3, "timeOut"    # I

    .prologue
    const/4 v7, 0x3

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 204
    const-string v2, "xlw"

    const-string v3, "SmartConfigStart(), ssid=%s, key=%s, timeout=%d"

    new-array v4, v7, [Ljava/lang/Object;

    aput-object p1, v4, v0

    aput-object p2, v4, v1

    const/4 v5, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x3f

    if-le v2, v3, :cond_1

    .line 222
    :cond_0
    :goto_0
    return v0

    .line 207
    :cond_1
    const/16 v2, 0x2710

    if-ge p3, v2, :cond_2

    const/16 p3, 0x2710

    .line 208
    :cond_2
    const v2, 0x1d4c0

    if-le p3, v2, :cond_3

    const p3, 0x1d4c0

    .line 209
    :cond_3
    invoke-static {}, Lcom/xlwtech/util/XlwSmartResponse;->getInstance()Lcom/xlwtech/util/XlwSmartResponse;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xlwtech/util/XlwSmartResponse;->cancel()V

    .line 210
    invoke-static {}, Lcom/xlwtech/util/ConfigWireless;->getInstance()Lcom/xlwtech/util/ConfigWireless;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xlwtech/util/ConfigWireless;->cancel()V

    .line 211
    invoke-static {}, Lcom/xlwtech/util/XlwSmart;->getInstance()Lcom/xlwtech/util/XlwSmart;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xlwtech/util/XlwSmart;->cancel()V

    .line 212
    const-wide/16 v2, 0x32

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    .line 214
    invoke-static {}, Lcom/xlwtech/util/XlwSmartResponse;->getInstance()Lcom/xlwtech/util/XlwSmartResponse;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xlwtech/util/XlwSmartResponse;->run()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 216
    sput-object p1, Lcom/xlwtech/util/XlwSmart;->ssid:Ljava/lang/String;

    .line 217
    sput-object p2, Lcom/xlwtech/util/XlwSmart;->pass:Ljava/lang/String;

    .line 218
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    int-to-long v4, p3

    add-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    sub-long/2addr v2, v4

    sput-wide v2, Lcom/xlwtech/util/XlwSmart;->timeOut:J

    .line 219
    invoke-static {}, Lcom/xlwtech/util/XlwSmart;->getInstance()Lcom/xlwtech/util/XlwSmart;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xlwtech/util/XlwSmart;->run()V

    .line 221
    iput v7, p0, Lcom/xlwtech/util/XlwDevice;->m_iSmartV:I

    move v0, v1

    .line 222
    goto :goto_0
.end method

.method public SmartConfigStop()V
    .locals 1

    .prologue
    .line 226
    invoke-static {}, Lcom/xlwtech/util/XlwSmart;->getInstance()Lcom/xlwtech/util/XlwSmart;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xlwtech/util/XlwSmart;->cancel()V

    .line 227
    invoke-static {}, Lcom/xlwtech/util/XlwSmartResponse;->getInstance()Lcom/xlwtech/util/XlwSmartResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xlwtech/util/XlwSmartResponse;->cancel()V

    .line 228
    invoke-static {}, Lcom/xlwtech/util/ConfigWireless;->getInstance()Lcom/xlwtech/util/ConfigWireless;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xlwtech/util/ConfigWireless;->stop()V

    .line 229
    return-void
.end method

.method public SmartConfigV2_Start(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 7
    .param p1, "ssid"    # Ljava/lang/String;
    .param p2, "pass"    # Ljava/lang/String;
    .param p3, "timeOut"    # I

    .prologue
    const/4 v6, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 179
    const-string v2, "xlw"

    const-string v3, "SmartConfigStart(), ssid=%s, key=%s, timeout=%d"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v0

    aput-object p2, v4, v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x3f

    if-le v2, v3, :cond_1

    .line 198
    :cond_0
    :goto_0
    return v0

    .line 182
    :cond_1
    const/16 v2, 0x2710

    if-ge p3, v2, :cond_2

    const/16 p3, 0x2710

    .line 183
    :cond_2
    const v2, 0x1d4c0

    if-le p3, v2, :cond_3

    const p3, 0x1d4c0

    .line 184
    :cond_3
    invoke-static {}, Lcom/xlwtech/util/XlwSmartResponse;->getInstance()Lcom/xlwtech/util/XlwSmartResponse;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xlwtech/util/XlwSmartResponse;->cancel()V

    .line 185
    invoke-static {}, Lcom/xlwtech/util/ConfigWireless;->getInstance()Lcom/xlwtech/util/ConfigWireless;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xlwtech/util/ConfigWireless;->cancel()V

    .line 186
    invoke-static {}, Lcom/xlwtech/util/XlwSmart;->getInstance()Lcom/xlwtech/util/XlwSmart;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xlwtech/util/XlwSmart;->cancel()V

    .line 187
    const-wide/16 v2, 0x32

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    .line 190
    invoke-static {}, Lcom/xlwtech/util/XlwSmartResponse;->getInstance()Lcom/xlwtech/util/XlwSmartResponse;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xlwtech/util/XlwSmartResponse;->run()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 192
    sput-object p1, Lcom/xlwtech/util/ConfigWireless;->ssid:Ljava/lang/String;

    .line 193
    sput-object p2, Lcom/xlwtech/util/ConfigWireless;->key:Ljava/lang/String;

    .line 194
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    int-to-long v4, p3

    add-long/2addr v2, v4

    const-wide/16 v4, 0xbb8

    sub-long/2addr v2, v4

    sput-wide v2, Lcom/xlwtech/util/ConfigWireless;->timeOut:J

    .line 195
    invoke-static {}, Lcom/xlwtech/util/ConfigWireless;->getInstance()Lcom/xlwtech/util/ConfigWireless;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xlwtech/util/ConfigWireless;->run()V

    .line 197
    iput v6, p0, Lcom/xlwtech/util/XlwDevice;->m_iSmartV:I

    move v0, v1

    .line 198
    goto :goto_0
.end method
