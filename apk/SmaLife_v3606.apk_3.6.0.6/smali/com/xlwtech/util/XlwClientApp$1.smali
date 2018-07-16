.class Lcom/xlwtech/util/XlwClientApp$1;
.super Ljava/util/TimerTask;
.source "XlwClientApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xlwtech/util/XlwClientApp;->MySetTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xlwtech/util/XlwClientApp;


# direct methods
.method constructor <init>(Lcom/xlwtech/util/XlwClientApp;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/xlwtech/util/XlwClientApp$1;->this$0:Lcom/xlwtech/util/XlwClientApp;

    .line 271
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 276
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 277
    .local v2, "iTickNow":J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/xlwtech/util/XlwClientApp$1;->this$0:Lcom/xlwtech/util/XlwClientApp;

    invoke-static {v1}, Lcom/xlwtech/util/XlwClientApp;->access$0(Lcom/xlwtech/util/XlwClientApp;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 286
    return-void

    .line 279
    :cond_0
    iget-object v1, p0, Lcom/xlwtech/util/XlwClientApp$1;->this$0:Lcom/xlwtech/util/XlwClientApp;

    invoke-static {v1}, Lcom/xlwtech/util/XlwClientApp;->access$0(Lcom/xlwtech/util/XlwClientApp;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xlwtech/util/XlwClientApp$XlwAppCmd;

    iget-wide v4, v1, Lcom/xlwtech/util/XlwClientApp$XlwAppCmd;->tickReq:J

    sub-long v4, v2, v4

    iget-object v1, p0, Lcom/xlwtech/util/XlwClientApp$1;->this$0:Lcom/xlwtech/util/XlwClientApp;

    iget v1, v1, Lcom/xlwtech/util/XlwClientApp;->m_sendTimerout:I

    int-to-long v6, v1

    cmp-long v1, v4, v6

    if-lez v1, :cond_2

    .line 281
    iget-object v1, p0, Lcom/xlwtech/util/XlwClientApp$1;->this$0:Lcom/xlwtech/util/XlwClientApp;

    invoke-static {v1}, Lcom/xlwtech/util/XlwClientApp;->access$1(Lcom/xlwtech/util/XlwClientApp;)Lcom/xlwtech/util/XlwClientApp$XlwClientAppListener;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/xlwtech/util/XlwClientApp$1;->this$0:Lcom/xlwtech/util/XlwClientApp;

    invoke-static {v1}, Lcom/xlwtech/util/XlwClientApp;->access$1(Lcom/xlwtech/util/XlwClientApp;)Lcom/xlwtech/util/XlwClientApp$XlwClientAppListener;

    move-result-object v4

    iget-object v1, p0, Lcom/xlwtech/util/XlwClientApp$1;->this$0:Lcom/xlwtech/util/XlwClientApp;

    invoke-static {v1}, Lcom/xlwtech/util/XlwClientApp;->access$0(Lcom/xlwtech/util/XlwClientApp;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xlwtech/util/XlwClientApp$XlwAppCmd;

    iget-object v5, v1, Lcom/xlwtech/util/XlwClientApp$XlwAppCmd;->mac:Ljava/lang/String;

    iget-object v1, p0, Lcom/xlwtech/util/XlwClientApp$1;->this$0:Lcom/xlwtech/util/XlwClientApp;

    invoke-static {v1}, Lcom/xlwtech/util/XlwClientApp;->access$0(Lcom/xlwtech/util/XlwClientApp;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xlwtech/util/XlwClientApp$XlwAppCmd;

    iget v1, v1, Lcom/xlwtech/util/XlwClientApp$XlwAppCmd;->sn:I

    const/16 v6, -0xa

    invoke-interface {v4, v5, v1, v6}, Lcom/xlwtech/util/XlwClientApp$XlwClientAppListener;->onSendError(Ljava/lang/String;II)V

    .line 282
    :cond_1
    iget-object v1, p0, Lcom/xlwtech/util/XlwClientApp$1;->this$0:Lcom/xlwtech/util/XlwClientApp;

    invoke-static {v1}, Lcom/xlwtech/util/XlwClientApp;->access$0(Lcom/xlwtech/util/XlwClientApp;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 283
    add-int/lit8 v0, v0, -0x1

    .line 277
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
