.class Lcom/example/smartlinklib/SmartLinkManipulator$3;
.super Ljava/lang/Thread;
.source "SmartLinkManipulator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/smartlinklib/SmartLinkManipulator;->receive()V
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
    iput-object p1, p0, Lcom/example/smartlinklib/SmartLinkManipulator$3;->this$0:Lcom/example/smartlinklib/SmartLinkManipulator;

    .line 338
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 340
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/example/smartlinklib/SmartLinkManipulator$3;->this$0:Lcom/example/smartlinklib/SmartLinkManipulator;

    iget-boolean v5, v5, Lcom/example/smartlinklib/SmartLinkManipulator;->isConnecting:Z

    if-nez v5, :cond_2

    .line 369
    iget-object v5, p0, Lcom/example/smartlinklib/SmartLinkManipulator$3;->this$0:Lcom/example/smartlinklib/SmartLinkManipulator;

    invoke-static {v5}, Lcom/example/smartlinklib/SmartLinkManipulator;->access$2(Lcom/example/smartlinklib/SmartLinkManipulator;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "end RECV"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    iget-object v5, p0, Lcom/example/smartlinklib/SmartLinkManipulator$3;->this$0:Lcom/example/smartlinklib/SmartLinkManipulator;

    invoke-virtual {v5}, Lcom/example/smartlinklib/SmartLinkManipulator;->StopConnection()V

    .line 371
    :cond_1
    return-void

    .line 342
    :cond_2
    :try_start_0
    iget-object v5, p0, Lcom/example/smartlinklib/SmartLinkManipulator$3;->this$0:Lcom/example/smartlinklib/SmartLinkManipulator;

    invoke-static {v5}, Lcom/example/smartlinklib/SmartLinkManipulator;->access$5(Lcom/example/smartlinklib/SmartLinkManipulator;)Ljava/net/DatagramSocket;

    move-result-object v5

    iget-object v6, p0, Lcom/example/smartlinklib/SmartLinkManipulator$3;->this$0:Lcom/example/smartlinklib/SmartLinkManipulator;

    invoke-static {v6}, Lcom/example/smartlinklib/SmartLinkManipulator;->access$6(Lcom/example/smartlinklib/SmartLinkManipulator;)Ljava/net/DatagramPacket;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 343
    iget-object v5, p0, Lcom/example/smartlinklib/SmartLinkManipulator$3;->this$0:Lcom/example/smartlinklib/SmartLinkManipulator;

    invoke-static {v5}, Lcom/example/smartlinklib/SmartLinkManipulator;->access$6(Lcom/example/smartlinklib/SmartLinkManipulator;)Ljava/net/DatagramPacket;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/DatagramPacket;->getLength()I

    move-result v2

    .line 344
    .local v2, "len":I
    if-lez v2, :cond_0

    .line 345
    new-instance v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/example/smartlinklib/SmartLinkManipulator$3;->this$0:Lcom/example/smartlinklib/SmartLinkManipulator;

    invoke-static {v5}, Lcom/example/smartlinklib/SmartLinkManipulator;->access$7(Lcom/example/smartlinklib/SmartLinkManipulator;)[B

    move-result-object v5

    const/4 v6, 0x0

    .line 346
    const-string v7, "UTF-8"

    .line 345
    invoke-direct {v4, v5, v6, v2, v7}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 349
    .local v4, "receiveStr":Ljava/lang/String;
    const-string v5, "smart_config"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 350
    const-string v5, "RECV"

    const-string v6, "smart_config"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    new-instance v3, Lcom/example/smartlinklib/ModuleInfo;

    invoke-direct {v3}, Lcom/example/smartlinklib/ModuleInfo;-><init>()V

    .line 352
    .local v3, "mi":Lcom/example/smartlinklib/ModuleInfo;
    const-string v5, "smart_config"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 353
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 352
    invoke-virtual {v3, v5}, Lcom/example/smartlinklib/ModuleInfo;->setMac(Ljava/lang/String;)V

    .line 354
    iget-object v5, p0, Lcom/example/smartlinklib/SmartLinkManipulator$3;->this$0:Lcom/example/smartlinklib/SmartLinkManipulator;

    invoke-static {v5}, Lcom/example/smartlinklib/SmartLinkManipulator;->access$6(Lcom/example/smartlinklib/SmartLinkManipulator;)Ljava/net/DatagramPacket;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    .line 355
    .local v1, "ip":Ljava/lang/String;
    const-string v5, "0.0.0.0"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, ":"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 358
    invoke-virtual {v3, v1}, Lcom/example/smartlinklib/ModuleInfo;->setModuleIP(Ljava/lang/String;)V

    .line 359
    iget-object v5, p0, Lcom/example/smartlinklib/SmartLinkManipulator$3;->this$0:Lcom/example/smartlinklib/SmartLinkManipulator;

    invoke-static {v5}, Lcom/example/smartlinklib/SmartLinkManipulator;->access$0(Lcom/example/smartlinklib/SmartLinkManipulator;)Ljava/util/Set;

    move-result-object v5

    invoke-virtual {v3}, Lcom/example/smartlinklib/ModuleInfo;->getMac()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 360
    iget-object v5, p0, Lcom/example/smartlinklib/SmartLinkManipulator$3;->this$0:Lcom/example/smartlinklib/SmartLinkManipulator;

    invoke-static {v5}, Lcom/example/smartlinklib/SmartLinkManipulator;->access$0(Lcom/example/smartlinklib/SmartLinkManipulator;)Ljava/util/Set;

    move-result-object v5

    invoke-virtual {v3}, Lcom/example/smartlinklib/ModuleInfo;->getMac()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 361
    iget-object v5, p0, Lcom/example/smartlinklib/SmartLinkManipulator$3;->this$0:Lcom/example/smartlinklib/SmartLinkManipulator;

    invoke-static {v5}, Lcom/example/smartlinklib/SmartLinkManipulator;->access$1(Lcom/example/smartlinklib/SmartLinkManipulator;)Lcom/example/smartlinklib/SmartLinkManipulator$ConnectCallBack;

    move-result-object v5

    invoke-interface {v5, v3}, Lcom/example/smartlinklib/SmartLinkManipulator$ConnectCallBack;->onConnect(Lcom/example/smartlinklib/ModuleInfo;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 365
    .end local v1    # "ip":Ljava/lang/String;
    .end local v2    # "len":I
    .end local v3    # "mi":Lcom/example/smartlinklib/ModuleInfo;
    .end local v4    # "receiveStr":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 366
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0
.end method
