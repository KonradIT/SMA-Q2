.class Lcom/xlwtech/util/XlwClientLocal$2;
.super Ljava/util/TimerTask;
.source "XlwClientLocal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xlwtech/util/XlwClientLocal;->MySetTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xlwtech/util/XlwClientLocal;


# direct methods
.method constructor <init>(Lcom/xlwtech/util/XlwClientLocal;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/xlwtech/util/XlwClientLocal$2;->this$0:Lcom/xlwtech/util/XlwClientLocal;

    .line 117
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 122
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 123
    .local v2, "iTickNow":J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/xlwtech/util/XlwClientLocal$2;->this$0:Lcom/xlwtech/util/XlwClientLocal;

    invoke-static {v1}, Lcom/xlwtech/util/XlwClientLocal;->access$1(Lcom/xlwtech/util/XlwClientLocal;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 132
    return-void

    .line 125
    :cond_0
    iget-object v1, p0, Lcom/xlwtech/util/XlwClientLocal$2;->this$0:Lcom/xlwtech/util/XlwClientLocal;

    invoke-static {v1}, Lcom/xlwtech/util/XlwClientLocal;->access$1(Lcom/xlwtech/util/XlwClientLocal;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xlwtech/util/XlwTcpClient;

    iget v1, v1, Lcom/xlwtech/util/XlwTcpClient;->m_requestLength:I

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/xlwtech/util/XlwClientLocal$2;->this$0:Lcom/xlwtech/util/XlwClientLocal;

    invoke-static {v1}, Lcom/xlwtech/util/XlwClientLocal;->access$1(Lcom/xlwtech/util/XlwClientLocal;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xlwtech/util/XlwTcpClient;

    iget-wide v4, v1, Lcom/xlwtech/util/XlwTcpClient;->m_requestTick:J

    sub-long v4, v2, v4

    const-wide/16 v6, 0x3e8

    cmp-long v1, v4, v6

    if-lez v1, :cond_2

    .line 127
    iget-object v1, p0, Lcom/xlwtech/util/XlwClientLocal$2;->this$0:Lcom/xlwtech/util/XlwClientLocal;

    invoke-static {v1}, Lcom/xlwtech/util/XlwClientLocal;->access$0(Lcom/xlwtech/util/XlwClientLocal;)Lcom/xlwtech/util/XlwClientLocal$XlwClientLocalListener;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/xlwtech/util/XlwClientLocal$2;->this$0:Lcom/xlwtech/util/XlwClientLocal;

    invoke-static {v1}, Lcom/xlwtech/util/XlwClientLocal;->access$0(Lcom/xlwtech/util/XlwClientLocal;)Lcom/xlwtech/util/XlwClientLocal$XlwClientLocalListener;

    move-result-object v4

    iget-object v1, p0, Lcom/xlwtech/util/XlwClientLocal$2;->this$0:Lcom/xlwtech/util/XlwClientLocal;

    invoke-static {v1}, Lcom/xlwtech/util/XlwClientLocal;->access$1(Lcom/xlwtech/util/XlwClientLocal;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xlwtech/util/XlwTcpClient;

    iget-object v1, v1, Lcom/xlwtech/util/XlwTcpClient;->m_mac:Ljava/lang/String;

    const/16 v5, -0xa

    invoke-interface {v4, v1, v5}, Lcom/xlwtech/util/XlwClientLocal$XlwClientLocalListener;->onSendError(Ljava/lang/String;I)V

    .line 128
    :cond_1
    iget-object v1, p0, Lcom/xlwtech/util/XlwClientLocal$2;->this$0:Lcom/xlwtech/util/XlwClientLocal;

    invoke-static {v1}, Lcom/xlwtech/util/XlwClientLocal;->access$1(Lcom/xlwtech/util/XlwClientLocal;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xlwtech/util/XlwTcpClient;

    const/4 v4, 0x0

    iput v4, v1, Lcom/xlwtech/util/XlwTcpClient;->m_requestLength:I

    .line 129
    iget-object v1, p0, Lcom/xlwtech/util/XlwClientLocal$2;->this$0:Lcom/xlwtech/util/XlwClientLocal;

    invoke-static {v1}, Lcom/xlwtech/util/XlwClientLocal;->access$1(Lcom/xlwtech/util/XlwClientLocal;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xlwtech/util/XlwTcpClient;

    const-wide/16 v4, 0x0

    iput-wide v4, v1, Lcom/xlwtech/util/XlwTcpClient;->m_requestTick:J

    .line 123
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
