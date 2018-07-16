.class Lcom/MURATA/UdpBroadCastSocket$3;
.super Ljava/lang/Thread;
.source "UdpBroadCastSocket.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/MURATA/UdpBroadCastSocket;->checkTimeout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/MURATA/UdpBroadCastSocket;


# direct methods
.method constructor <init>(Lcom/MURATA/UdpBroadCastSocket;)V
    .locals 0

    .prologue
    .line 138
    iput-object p1, p0, Lcom/MURATA/UdpBroadCastSocket$3;->this$0:Lcom/MURATA/UdpBroadCastSocket;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 143
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/MURATA/UdpBroadCastSocket$3;->this$0:Lcom/MURATA/UdpBroadCastSocket;

    iget-boolean v1, v1, Lcom/MURATA/UdpBroadCastSocket;->receiveOkFlag:Z

    if-eqz v1, :cond_1

    .line 155
    :goto_0
    return-void

    .line 146
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/MURATA/UdpBroadCastSocket;->access$302(J)J

    .line 147
    invoke-static {}, Lcom/MURATA/UdpBroadCastSocket;->access$300()J

    move-result-wide v2

    invoke-static {}, Lcom/MURATA/UdpBroadCastSocket;->access$400()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/32 v4, 0xea60

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 148
    invoke-static {}, Lcom/MURATA/UdpBroadCastSocket;->access$200()Lcom/MURATA/UdpCallBackIf;

    move-result-object v1

    const/4 v2, -0x1

    invoke-interface {v1, v2}, Lcom/MURATA/UdpCallBackIf;->udp_appConfigAck(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 152
    :catch_0
    move-exception v0

    .line 153
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
