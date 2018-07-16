.class public Lcom/xlwtech/util/XlwSmartResponse;
.super Ljava/lang/Object;
.source "XlwSmartResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xlwtech/util/XlwSmartResponse$XlwSmartResponseListener;
    }
.end annotation


# static fields
.field private static final MSG_SMART_FOUND:I = 0x6234

.field private static instance:Lcom/xlwtech/util/XlwSmartResponse;

.field private static service:Ljava/util/concurrent/ScheduledExecutorService;


# instance fields
.field private future:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;"
        }
    .end annotation
.end field

.field private m_handler:Landroid/os/Handler;

.field private m_listener:Lcom/xlwtech/util/XlwSmartResponse$XlwSmartResponseListener;

.field private m_macCount:I

.field private m_macList:[Ljava/lang/String;

.field public m_runRspFlag:Z

.field private m_socket:Ljava/net/DatagramSocket;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    sput-object v0, Lcom/xlwtech/util/XlwSmartResponse;->instance:Lcom/xlwtech/util/XlwSmartResponse;

    .line 37
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    sput-object v0, Lcom/xlwtech/util/XlwSmartResponse;->service:Ljava/util/concurrent/ScheduledExecutorService;

    .line 86
    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-boolean v2, p0, Lcom/xlwtech/util/XlwSmartResponse;->m_runRspFlag:Z

    .line 29
    iput-object v1, p0, Lcom/xlwtech/util/XlwSmartResponse;->m_listener:Lcom/xlwtech/util/XlwSmartResponse$XlwSmartResponseListener;

    .line 30
    iput-object v1, p0, Lcom/xlwtech/util/XlwSmartResponse;->m_socket:Ljava/net/DatagramSocket;

    .line 31
    const/16 v0, 0x80

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/xlwtech/util/XlwSmartResponse;->m_macList:[Ljava/lang/String;

    .line 32
    iput v2, p0, Lcom/xlwtech/util/XlwSmartResponse;->m_macCount:I

    .line 36
    iput-object v1, p0, Lcom/xlwtech/util/XlwSmartResponse;->future:Ljava/util/concurrent/ScheduledFuture;

    .line 87
    new-instance v0, Lcom/xlwtech/util/XlwSmartResponse$1;

    invoke-direct {v0, p0}, Lcom/xlwtech/util/XlwSmartResponse$1;-><init>(Lcom/xlwtech/util/XlwSmartResponse;)V

    iput-object v0, p0, Lcom/xlwtech/util/XlwSmartResponse;->m_handler:Landroid/os/Handler;

    .line 39
    return-void
.end method

.method private DoReceive()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/16 v7, 0x400

    const/4 v6, 0x0

    .line 146
    new-array v2, v7, [B

    .line 149
    .local v2, "recv_buff":[B
    const-string v4, "xlw"

    const-string v5, "response start"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    new-instance v1, Ljava/net/DatagramPacket;

    invoke-direct {v1, v2, v7}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 152
    .local v1, "packet":Ljava/net/DatagramPacket;
    :cond_0
    :goto_0
    iget-boolean v4, p0, Lcom/xlwtech/util/XlwSmartResponse;->m_runRspFlag:Z

    if-nez v4, :cond_1

    .line 172
    iput-boolean v6, p0, Lcom/xlwtech/util/XlwSmartResponse;->m_runRspFlag:Z

    .line 173
    const-string v4, "xlw"

    const-string v5, "response is closed"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    invoke-direct {p0}, Lcom/xlwtech/util/XlwSmartResponse;->SocketUdpClose()V

    .line 175
    return-void

    .line 154
    :cond_1
    iget-object v4, p0, Lcom/xlwtech/util/XlwSmartResponse;->m_socket:Ljava/net/DatagramSocket;

    if-nez v4, :cond_2

    .line 156
    const-string v4, "xlw"

    const-string v5, "init rsp socket...."

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    invoke-direct {p0}, Lcom/xlwtech/util/XlwSmartResponse;->SocketUdpInit()Z

    .line 158
    const-wide/16 v4, 0x64

    invoke-static {v4, v5}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_0

    .line 162
    :cond_2
    const/4 v3, 0x0

    .line 165
    .local v3, "recv_len":I
    :try_start_0
    iget-object v4, p0, Lcom/xlwtech/util/XlwSmartResponse;->m_socket:Ljava/net/DatagramSocket;

    invoke-virtual {v4, v1}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 166
    invoke-virtual {v1}, Ljava/net/DatagramPacket;->getLength()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 169
    :goto_1
    if-lez v3, :cond_0

    .line 170
    invoke-virtual {v1}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v2, v6, v3}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {p0, v4, v5}, Lcom/xlwtech/util/XlwSmartResponse;->DoSmartResponse(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 168
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    invoke-direct {p0}, Lcom/xlwtech/util/XlwSmartResponse;->SocketUdpClose()V

    goto :goto_1
.end method

.method private SocketUdpClose()V
    .locals 1

    .prologue
    .line 120
    :try_start_0
    iget-object v0, p0, Lcom/xlwtech/util/XlwSmartResponse;->m_socket:Ljava/net/DatagramSocket;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xlwtech/util/XlwSmartResponse;->m_socket:Ljava/net/DatagramSocket;

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V

    .line 121
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xlwtech/util/XlwSmartResponse;->m_socket:Ljava/net/DatagramSocket;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    :goto_0
    return-void

    .line 123
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private SocketUdpInit()Z
    .locals 3

    .prologue
    .line 109
    :try_start_0
    new-instance v1, Ljava/net/DatagramSocket;

    const/16 v2, 0x61b2

    invoke-direct {v1, v2}, Ljava/net/DatagramSocket;-><init>(I)V

    iput-object v1, p0, Lcom/xlwtech/util/XlwSmartResponse;->m_socket:Ljava/net/DatagramSocket;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    const/4 v1, 0x1

    .line 114
    :goto_0
    return v1

    .line 113
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-direct {p0}, Lcom/xlwtech/util/XlwSmartResponse;->SocketUdpClose()V

    .line 114
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/xlwtech/util/XlwSmartResponse;)Lcom/xlwtech/util/XlwSmartResponse$XlwSmartResponseListener;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/xlwtech/util/XlwSmartResponse;->m_listener:Lcom/xlwtech/util/XlwSmartResponse$XlwSmartResponseListener;

    return-object v0
.end method

.method static synthetic access$1(Lcom/xlwtech/util/XlwSmartResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 143
    invoke-direct {p0}, Lcom/xlwtech/util/XlwSmartResponse;->DoReceive()V

    return-void
.end method

.method public static getInstance()Lcom/xlwtech/util/XlwSmartResponse;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/xlwtech/util/XlwSmartResponse;->instance:Lcom/xlwtech/util/XlwSmartResponse;

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Lcom/xlwtech/util/XlwSmartResponse;

    invoke-direct {v0}, Lcom/xlwtech/util/XlwSmartResponse;-><init>()V

    sput-object v0, Lcom/xlwtech/util/XlwSmartResponse;->instance:Lcom/xlwtech/util/XlwSmartResponse;

    .line 50
    :cond_0
    sget-object v0, Lcom/xlwtech/util/XlwSmartResponse;->instance:Lcom/xlwtech/util/XlwSmartResponse;

    return-object v0
.end method


# virtual methods
.method public DoInit()V
    .locals 0

    .prologue
    .line 57
    return-void
.end method

.method DoSmartResponse(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "ip"    # Ljava/lang/String;
    .param p2, "response"    # Ljava/lang/String;

    .prologue
    .line 183
    const-string v7, ":"

    invoke-static {p2, v7}, Lcom/xlwtech/util/XlwString;->StrGetHeadAndCut(Ljava/lang/String;Ljava/lang/String;)Lcom/xlwtech/util/XlwString$StrRet;

    move-result-object v5

    .line 185
    .local v5, "ret":Lcom/xlwtech/util/XlwString$StrRet;
    iget-object v7, v5, Lcom/xlwtech/util/XlwString$StrRet;->key:Ljava/lang/String;

    const-string v8, "xcmd_notify"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 221
    :cond_0
    :goto_0
    return-void

    .line 186
    :cond_1
    iget-object v7, v5, Lcom/xlwtech/util/XlwString$StrRet;->left:Ljava/lang/String;

    const-string v8, ":"

    invoke-static {v7, v8}, Lcom/xlwtech/util/XlwString;->StrGetHeadAndCut(Ljava/lang/String;Ljava/lang/String;)Lcom/xlwtech/util/XlwString$StrRet;

    move-result-object v5

    .line 188
    iget-object v7, v5, Lcom/xlwtech/util/XlwString$StrRet;->left:Ljava/lang/String;

    const-string v8, "="

    const-string v9, ","

    invoke-static {v7, v8, v9}, Lcom/xlwtech/util/XlwString;->StrGetKeyValueAndCut(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/xlwtech/util/XlwString$StrRet;

    move-result-object v5

    .line 189
    iget-object v7, v5, Lcom/xlwtech/util/XlwString$StrRet;->key:Ljava/lang/String;

    const-string v8, "event"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 190
    iget-object v7, v5, Lcom/xlwtech/util/XlwString$StrRet;->value:Ljava/lang/String;

    const-string v8, "smartok"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 192
    iget-object v7, v5, Lcom/xlwtech/util/XlwString$StrRet;->left:Ljava/lang/String;

    const-string v8, "="

    const-string v9, ","

    invoke-static {v7, v8, v9}, Lcom/xlwtech/util/XlwString;->StrGetKeyValueAndCut(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/xlwtech/util/XlwString$StrRet;

    move-result-object v5

    .line 194
    iget-object v7, v5, Lcom/xlwtech/util/XlwString$StrRet;->key:Ljava/lang/String;

    const-string v8, "mac"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 195
    iget-object v3, v5, Lcom/xlwtech/util/XlwString$StrRet;->value:Ljava/lang/String;

    .line 196
    .local v3, "mac":Ljava/lang/String;
    iget-object v7, v5, Lcom/xlwtech/util/XlwString$StrRet;->left:Ljava/lang/String;

    const-string v8, "="

    const-string v9, ","

    invoke-static {v7, v8, v9}, Lcom/xlwtech/util/XlwString;->StrGetKeyValueAndCut(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/xlwtech/util/XlwString$StrRet;

    move-result-object v5

    .line 197
    iget-object v7, v5, Lcom/xlwtech/util/XlwString$StrRet;->key:Ljava/lang/String;

    const-string v8, "ver"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 198
    iget-object v6, v5, Lcom/xlwtech/util/XlwString$StrRet;->value:Ljava/lang/String;

    .line 199
    .local v6, "ver":Ljava/lang/String;
    iget-object v7, v5, Lcom/xlwtech/util/XlwString$StrRet;->left:Ljava/lang/String;

    const-string v8, "="

    const-string v9, ","

    invoke-static {v7, v8, v9}, Lcom/xlwtech/util/XlwString;->StrGetKeyValueAndCut(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/xlwtech/util/XlwString$StrRet;

    move-result-object v5

    .line 200
    iget-object v7, v5, Lcom/xlwtech/util/XlwString$StrRet;->key:Ljava/lang/String;

    const-string v8, "cap"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 201
    iget-object v1, v5, Lcom/xlwtech/util/XlwString$StrRet;->value:Ljava/lang/String;

    .line 203
    .local v1, "cap":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget v7, p0, Lcom/xlwtech/util/XlwSmartResponse;->m_macCount:I

    if-lt v2, v7, :cond_2

    .line 207
    iget-object v7, p0, Lcom/xlwtech/util/XlwSmartResponse;->m_macList:[Ljava/lang/String;

    iget v8, p0, Lcom/xlwtech/util/XlwSmartResponse;->m_macCount:I

    aput-object v3, v7, v8

    .line 208
    iget v7, p0, Lcom/xlwtech/util/XlwSmartResponse;->m_macCount:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/xlwtech/util/XlwSmartResponse;->m_macCount:I

    .line 211
    new-instance v4, Landroid/os/Message;

    invoke-direct {v4}, Landroid/os/Message;-><init>()V

    .line 212
    .local v4, "msg":Landroid/os/Message;
    const/16 v7, 0x6234

    iput v7, v4, Landroid/os/Message;->what:I

    .line 213
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 214
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v7, "ip"

    invoke-virtual {v0, v7, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    const-string v7, "mac"

    invoke-virtual {v0, v7, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    const-string v7, "ver"

    invoke-virtual {v0, v7, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    const-string v7, "cap"

    invoke-virtual {v0, v7, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    const-string v7, "ext"

    iget-object v8, v5, Lcom/xlwtech/util/XlwString$StrRet;->left:Ljava/lang/String;

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    invoke-virtual {v4, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 220
    iget-object v7, p0, Lcom/xlwtech/util/XlwSmartResponse;->m_handler:Landroid/os/Handler;

    invoke-virtual {v7, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 205
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v4    # "msg":Landroid/os/Message;
    :cond_2
    iget-object v7, p0, Lcom/xlwtech/util/XlwSmartResponse;->m_macList:[Ljava/lang/String;

    aget-object v7, v7, v2

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 203
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public SetListener(Lcom/xlwtech/util/XlwSmartResponse$XlwSmartResponseListener;)V
    .locals 0
    .param p1, "value"    # Lcom/xlwtech/util/XlwSmartResponse$XlwSmartResponseListener;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/xlwtech/util/XlwSmartResponse;->m_listener:Lcom/xlwtech/util/XlwSmartResponse$XlwSmartResponseListener;

    return-void
.end method

.method public SocketUdpRecv(Ljava/net/DatagramSocket;[BLjava/lang/StringBuffer;)I
    .locals 3
    .param p1, "socket"    # Ljava/net/DatagramSocket;
    .param p2, "data"    # [B
    .param p3, "host"    # Ljava/lang/StringBuffer;

    .prologue
    const/4 v1, 0x0

    .line 131
    if-nez p1, :cond_0

    .line 140
    :goto_0
    return v1

    .line 132
    :cond_0
    :try_start_0
    new-instance v0, Ljava/net/DatagramPacket;

    array-length v2, p2

    invoke-direct {v0, p2, v2}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 133
    .local v0, "packet":Ljava/net/DatagramPacket;
    invoke-virtual {p1, v0}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 134
    invoke-virtual {v0}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 135
    invoke-virtual {v0}, Ljava/net/DatagramPacket;->getLength()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 137
    .end local v0    # "packet":Ljava/net/DatagramPacket;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public cancel()V
    .locals 2

    .prologue
    .line 80
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xlwtech/util/XlwSmartResponse;->m_runRspFlag:Z

    .line 81
    iget-object v0, p0, Lcom/xlwtech/util/XlwSmartResponse;->future:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xlwtech/util/XlwSmartResponse;->future:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 82
    :cond_0
    invoke-direct {p0}, Lcom/xlwtech/util/XlwSmartResponse;->SocketUdpClose()V

    .line 83
    return-void
.end method

.method public run()Z
    .locals 5

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/xlwtech/util/XlwSmartResponse;->SocketUdpClose()V

    .line 64
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xlwtech/util/XlwSmartResponse;->m_runRspFlag:Z

    .line 65
    const/4 v0, 0x0

    iput v0, p0, Lcom/xlwtech/util/XlwSmartResponse;->m_macCount:I

    .line 66
    sget-object v0, Lcom/xlwtech/util/XlwSmartResponse;->service:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/xlwtech/util/XlwSmartResponse$2;

    invoke-direct {v1, p0}, Lcom/xlwtech/util/XlwSmartResponse$2;-><init>(Lcom/xlwtech/util/XlwSmartResponse;)V

    .line 75
    const-wide/16 v2, 0x1

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 66
    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/xlwtech/util/XlwSmartResponse;->future:Ljava/util/concurrent/ScheduledFuture;

    .line 76
    iget-boolean v0, p0, Lcom/xlwtech/util/XlwSmartResponse;->m_runRspFlag:Z

    return v0
.end method
