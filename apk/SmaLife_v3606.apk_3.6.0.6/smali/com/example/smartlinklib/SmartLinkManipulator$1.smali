.class Lcom/example/smartlinklib/SmartLinkManipulator$1;
.super Ljava/lang/Object;
.source "SmartLinkManipulator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/example/smartlinklib/SmartLinkManipulator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/example/smartlinklib/SmartLinkManipulator;


# direct methods
.method constructor <init>(Lcom/example/smartlinklib/SmartLinkManipulator;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/example/smartlinklib/SmartLinkManipulator$1;->this$0:Lcom/example/smartlinklib/SmartLinkManipulator;

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 97
    const-wide/16 v2, 0x2710

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/16 v1, 0x14

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/example/smartlinklib/SmartLinkManipulator$1;->this$0:Lcom/example/smartlinklib/SmartLinkManipulator;

    iget-boolean v1, v1, Lcom/example/smartlinklib/SmartLinkManipulator;->isConnecting:Z

    if-nez v1, :cond_2

    .line 106
    :cond_0
    iget-object v1, p0, Lcom/example/smartlinklib/SmartLinkManipulator$1;->this$0:Lcom/example/smartlinklib/SmartLinkManipulator;

    iget-boolean v1, v1, Lcom/example/smartlinklib/SmartLinkManipulator;->isConnecting:Z

    if-eqz v1, :cond_1

    .line 107
    iget-object v1, p0, Lcom/example/smartlinklib/SmartLinkManipulator$1;->this$0:Lcom/example/smartlinklib/SmartLinkManipulator;

    invoke-static {v1}, Lcom/example/smartlinklib/SmartLinkManipulator;->access$0(Lcom/example/smartlinklib/SmartLinkManipulator;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    if-gtz v1, :cond_4

    .line 108
    iget-object v1, p0, Lcom/example/smartlinklib/SmartLinkManipulator$1;->this$0:Lcom/example/smartlinklib/SmartLinkManipulator;

    invoke-static {v1}, Lcom/example/smartlinklib/SmartLinkManipulator;->access$1(Lcom/example/smartlinklib/SmartLinkManipulator;)Lcom/example/smartlinklib/SmartLinkManipulator$ConnectCallBack;

    move-result-object v1

    invoke-interface {v1}, Lcom/example/smartlinklib/SmartLinkManipulator$ConnectCallBack;->onConnectTimeOut()V

    .line 113
    :cond_1
    :goto_2
    iget-object v1, p0, Lcom/example/smartlinklib/SmartLinkManipulator$1;->this$0:Lcom/example/smartlinklib/SmartLinkManipulator;

    invoke-static {v1}, Lcom/example/smartlinklib/SmartLinkManipulator;->access$2(Lcom/example/smartlinklib/SmartLinkManipulator;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "stop find"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    iget-object v1, p0, Lcom/example/smartlinklib/SmartLinkManipulator$1;->this$0:Lcom/example/smartlinklib/SmartLinkManipulator;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/example/smartlinklib/SmartLinkManipulator;->access$3(Lcom/example/smartlinklib/SmartLinkManipulator;Z)V

    .line 115
    iget-object v1, p0, Lcom/example/smartlinklib/SmartLinkManipulator$1;->this$0:Lcom/example/smartlinklib/SmartLinkManipulator;

    invoke-virtual {v1}, Lcom/example/smartlinklib/SmartLinkManipulator;->StopConnection()V

    .line 116
    return-void

    .line 101
    :cond_2
    iget-object v1, p0, Lcom/example/smartlinklib/SmartLinkManipulator$1;->this$0:Lcom/example/smartlinklib/SmartLinkManipulator;

    invoke-virtual {v1}, Lcom/example/smartlinklib/SmartLinkManipulator;->sendFindCmd()V

    .line 102
    iget-object v1, p0, Lcom/example/smartlinklib/SmartLinkManipulator$1;->this$0:Lcom/example/smartlinklib/SmartLinkManipulator;

    iget-boolean v1, v1, Lcom/example/smartlinklib/SmartLinkManipulator;->isConnecting:Z

    if-eqz v1, :cond_3

    .line 103
    const-wide/16 v2, 0x3e8

    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 100
    :cond_3
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 109
    :cond_4
    iget-object v1, p0, Lcom/example/smartlinklib/SmartLinkManipulator$1;->this$0:Lcom/example/smartlinklib/SmartLinkManipulator;

    invoke-static {v1}, Lcom/example/smartlinklib/SmartLinkManipulator;->access$0(Lcom/example/smartlinklib/SmartLinkManipulator;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 110
    iget-object v1, p0, Lcom/example/smartlinklib/SmartLinkManipulator$1;->this$0:Lcom/example/smartlinklib/SmartLinkManipulator;

    invoke-static {v1}, Lcom/example/smartlinklib/SmartLinkManipulator;->access$1(Lcom/example/smartlinklib/SmartLinkManipulator;)Lcom/example/smartlinklib/SmartLinkManipulator$ConnectCallBack;

    move-result-object v1

    invoke-interface {v1}, Lcom/example/smartlinklib/SmartLinkManipulator$ConnectCallBack;->onConnectOk()V

    goto :goto_2

    .line 98
    .end local v0    # "i":I
    :catch_0
    move-exception v1

    goto :goto_0

    .line 103
    .restart local v0    # "i":I
    :catch_1
    move-exception v1

    goto :goto_3
.end method
