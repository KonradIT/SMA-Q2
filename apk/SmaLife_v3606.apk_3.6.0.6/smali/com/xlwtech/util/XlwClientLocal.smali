.class public Lcom/xlwtech/util/XlwClientLocal;
.super Ljava/lang/Object;
.source "XlwClientLocal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xlwtech/util/XlwClientLocal$XlwClientLocalListener;
    }
.end annotation


# static fields
.field private static final SEND_TIMEOUT:I = 0x3e8

.field private static instance:Lcom/xlwtech/util/XlwClientLocal;


# instance fields
.field private m_clients:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xlwtech/util/XlwTcpClient;",
            ">;"
        }
    .end annotation
.end field

.field private m_listener:Lcom/xlwtech/util/XlwClientLocal$XlwClientLocalListener;

.field public m_port:I

.field private myTimer:Ljava/util/Timer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x0

    sput-object v0, Lcom/xlwtech/util/XlwClientLocal;->instance:Lcom/xlwtech/util/XlwClientLocal;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xlwtech/util/XlwClientLocal;->m_listener:Lcom/xlwtech/util/XlwClientLocal$XlwClientLocalListener;

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xlwtech/util/XlwClientLocal;->m_clients:Ljava/util/ArrayList;

    .line 83
    const/16 v0, 0x1388

    iput v0, p0, Lcom/xlwtech/util/XlwClientLocal;->m_port:I

    .line 16
    invoke-direct {p0}, Lcom/xlwtech/util/XlwClientLocal;->MySetTimer()V

    return-void
.end method

.method private GetTcpClient(Ljava/lang/String;)Lcom/xlwtech/util/XlwTcpClient;
    .locals 3
    .param p1, "mac"    # Ljava/lang/String;

    .prologue
    .line 87
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/xlwtech/util/XlwClientLocal;->m_clients:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 91
    new-instance v0, Lcom/xlwtech/util/XlwTcpClient;

    invoke-direct {v0}, Lcom/xlwtech/util/XlwTcpClient;-><init>()V

    .line 92
    .local v0, "client":Lcom/xlwtech/util/XlwTcpClient;
    new-instance v2, Lcom/xlwtech/util/XlwClientLocal$1;

    invoke-direct {v2, p0}, Lcom/xlwtech/util/XlwClientLocal$1;-><init>(Lcom/xlwtech/util/XlwClientLocal;)V

    invoke-virtual {v0, v2}, Lcom/xlwtech/util/XlwTcpClient;->SetXlwTcpClientListener(Lcom/xlwtech/util/XlwTcpClient$XlwTcpClientListener;)V

    .line 98
    invoke-virtual {v0}, Lcom/xlwtech/util/XlwTcpClient;->start()V

    .line 100
    iget-object v2, p0, Lcom/xlwtech/util/XlwClientLocal;->m_clients:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v2, v0

    .line 101
    .end local v0    # "client":Lcom/xlwtech/util/XlwTcpClient;
    :goto_1
    return-object v2

    .line 88
    :cond_0
    iget-object v2, p0, Lcom/xlwtech/util/XlwClientLocal;->m_clients:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xlwtech/util/XlwTcpClient;

    iget-object v2, v2, Lcom/xlwtech/util/XlwTcpClient;->m_mac:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/xlwtech/util/XlwClientLocal;->m_clients:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xlwtech/util/XlwTcpClient;

    goto :goto_1

    .line 87
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private GetTcpClientIndex(Ljava/lang/String;)I
    .locals 2
    .param p1, "mac"    # Ljava/lang/String;

    .prologue
    .line 106
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/xlwtech/util/XlwClientLocal;->m_clients:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 109
    const/4 v0, -0x1

    .end local v0    # "i":I
    :cond_0
    return v0

    .line 107
    .restart local v0    # "i":I
    :cond_1
    iget-object v1, p0, Lcom/xlwtech/util/XlwClientLocal;->m_clients:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xlwtech/util/XlwTcpClient;

    iget-object v1, v1, Lcom/xlwtech/util/XlwTcpClient;->m_mac:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 106
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private MySetTimer()V
    .locals 6

    .prologue
    .line 116
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/xlwtech/util/XlwClientLocal;->myTimer:Ljava/util/Timer;

    .line 117
    iget-object v0, p0, Lcom/xlwtech/util/XlwClientLocal;->myTimer:Ljava/util/Timer;

    new-instance v1, Lcom/xlwtech/util/XlwClientLocal$2;

    invoke-direct {v1, p0}, Lcom/xlwtech/util/XlwClientLocal$2;-><init>(Lcom/xlwtech/util/XlwClientLocal;)V

    .line 133
    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x64

    .line 117
    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 134
    return-void
.end method

.method static synthetic access$0(Lcom/xlwtech/util/XlwClientLocal;)Lcom/xlwtech/util/XlwClientLocal$XlwClientLocalListener;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/xlwtech/util/XlwClientLocal;->m_listener:Lcom/xlwtech/util/XlwClientLocal$XlwClientLocalListener;

    return-object v0
.end method

.method static synthetic access$1(Lcom/xlwtech/util/XlwClientLocal;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/xlwtech/util/XlwClientLocal;->m_clients:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static getInstance()Lcom/xlwtech/util/XlwClientLocal;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/xlwtech/util/XlwClientLocal;->instance:Lcom/xlwtech/util/XlwClientLocal;

    if-nez v0, :cond_0

    new-instance v0, Lcom/xlwtech/util/XlwClientLocal;

    invoke-direct {v0}, Lcom/xlwtech/util/XlwClientLocal;-><init>()V

    sput-object v0, Lcom/xlwtech/util/XlwClientLocal;->instance:Lcom/xlwtech/util/XlwClientLocal;

    .line 19
    :cond_0
    sget-object v0, Lcom/xlwtech/util/XlwClientLocal;->instance:Lcom/xlwtech/util/XlwClientLocal;

    return-object v0
.end method


# virtual methods
.method public DoClose(Ljava/lang/String;)V
    .locals 2
    .param p1, "mac"    # Ljava/lang/String;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/xlwtech/util/XlwClientLocal;->GetTcpClientIndex(Ljava/lang/String;)I

    move-result v0

    .line 45
    .local v0, "index":I
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/xlwtech/util/XlwClientLocal;->m_clients:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xlwtech/util/XlwTcpClient;

    invoke-virtual {v1}, Lcom/xlwtech/util/XlwTcpClient;->SocketClose()V

    .line 46
    :cond_0
    return-void
.end method

.method public DoConnect(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p1, "mac"    # Ljava/lang/String;
    .param p2, "ip"    # Ljava/lang/String;

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/xlwtech/util/XlwClientLocal;->GetTcpClient(Ljava/lang/String;)Lcom/xlwtech/util/XlwTcpClient;

    move-result-object v0

    .line 63
    .local v0, "client":Lcom/xlwtech/util/XlwTcpClient;
    iget v1, p0, Lcom/xlwtech/util/XlwClientLocal;->m_port:I

    invoke-virtual {v0, p1, p2, v1}, Lcom/xlwtech/util/XlwTcpClient;->SetPeer(Ljava/lang/String;Ljava/lang/String;I)V

    .line 64
    const/4 v1, 0x1

    return v1
.end method

.method public DoInit()V
    .locals 3

    .prologue
    .line 33
    iget-object v1, p0, Lcom/xlwtech/util/XlwClientLocal;->m_clients:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-gez v0, :cond_0

    .line 39
    iget-object v1, p0, Lcom/xlwtech/util/XlwClientLocal;->m_clients:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 40
    return-void

    .line 35
    :cond_0
    iget-object v1, p0, Lcom/xlwtech/util/XlwClientLocal;->m_clients:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xlwtech/util/XlwTcpClient;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xlwtech/util/XlwTcpClient;->SetRunning(Ljava/lang/Boolean;)V

    .line 36
    iget-object v1, p0, Lcom/xlwtech/util/XlwClientLocal;->m_clients:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xlwtech/util/XlwTcpClient;

    invoke-virtual {v1}, Lcom/xlwtech/util/XlwTcpClient;->SocketClose()V

    .line 37
    iget-object v1, p0, Lcom/xlwtech/util/XlwClientLocal;->m_clients:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 33
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public DoSend(Ljava/lang/String;Ljava/lang/String;[BI)I
    .locals 4
    .param p1, "mac"    # Ljava/lang/String;
    .param p2, "ip"    # Ljava/lang/String;
    .param p3, "data"    # [B
    .param p4, "length"    # I

    .prologue
    const/4 v1, 0x0

    .line 50
    invoke-direct {p0, p1}, Lcom/xlwtech/util/XlwClientLocal;->GetTcpClient(Ljava/lang/String;)Lcom/xlwtech/util/XlwTcpClient;

    move-result-object v0

    .line 51
    .local v0, "client":Lcom/xlwtech/util/XlwTcpClient;
    iget v2, p0, Lcom/xlwtech/util/XlwClientLocal;->m_port:I

    invoke-virtual {v0, p1, p2, v2}, Lcom/xlwtech/util/XlwTcpClient;->SetPeer(Ljava/lang/String;Ljava/lang/String;I)V

    .line 52
    iget v2, v0, Lcom/xlwtech/util/XlwTcpClient;->m_requestLength:I

    if-eqz v2, :cond_0

    const/4 v1, -0x1

    .line 57
    :goto_0
    return v1

    .line 54
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/xlwtech/util/XlwTcpClient;->m_requestTick:J

    .line 55
    iput p4, v0, Lcom/xlwtech/util/XlwTcpClient;->m_requestLength:I

    .line 56
    iget-object v2, v0, Lcom/xlwtech/util/XlwTcpClient;->m_requestBuffer:[B

    invoke-static {p3, v1, v2, v1, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public IsConnected(Ljava/lang/String;)I
    .locals 2
    .param p1, "mac"    # Ljava/lang/String;

    .prologue
    .line 70
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/xlwtech/util/XlwClientLocal;->m_clients:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 75
    const/4 v1, 0x0

    :goto_1
    return v1

    .line 72
    :cond_0
    iget-object v1, p0, Lcom/xlwtech/util/XlwClientLocal;->m_clients:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xlwtech/util/XlwTcpClient;

    iget-object v1, v1, Lcom/xlwtech/util/XlwTcpClient;->m_mac:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 70
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 73
    :cond_2
    iget-object v1, p0, Lcom/xlwtech/util/XlwClientLocal;->m_clients:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xlwtech/util/XlwTcpClient;

    invoke-virtual {v1}, Lcom/xlwtech/util/XlwTcpClient;->SocketIsConnected()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1
.end method

.method public SetXlwLocalClientListener(Lcom/xlwtech/util/XlwClientLocal$XlwClientLocalListener;)V
    .locals 0
    .param p1, "value"    # Lcom/xlwtech/util/XlwClientLocal$XlwClientLocalListener;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/xlwtech/util/XlwClientLocal;->m_listener:Lcom/xlwtech/util/XlwClientLocal$XlwClientLocalListener;

    return-void
.end method
