.class Lcom/hiflying/smartlink/AbstractSmartLinker$4;
.super Ljava/lang/Object;
.source "AbstractSmartLinker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiflying/smartlink/AbstractSmartLinker;->setupReceiveAction()Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hiflying/smartlink/AbstractSmartLinker;


# direct methods
.method constructor <init>(Lcom/hiflying/smartlink/AbstractSmartLinker;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/hiflying/smartlink/AbstractSmartLinker$4;->this$0:Lcom/hiflying/smartlink/AbstractSmartLinker;

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 22

    .prologue
    .line 154
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/hiflying/smartlink/AbstractSmartLinker$4;->this$0:Lcom/hiflying/smartlink/AbstractSmartLinker;

    invoke-static {v15}, Lcom/hiflying/smartlink/AbstractSmartLinker;->access$0(Lcom/hiflying/smartlink/AbstractSmartLinker;)Ljava/util/HashSet;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/HashSet;->clear()V

    .line 156
    const/16 v15, 0x400

    new-array v2, v15, [B

    .line 157
    .local v2, "buffer":[B
    const/4 v3, 0x0

    .line 158
    .local v3, "datas":[B
    new-instance v12, Ljava/net/DatagramPacket;

    array-length v15, v2

    invoke-direct {v12, v2, v15}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 160
    .local v12, "pack":Ljava/net/DatagramPacket;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 161
    .local v16, "startTime":J
    const-wide v8, 0x7fffffffffffffffL

    .line 163
    .local v8, "findDeivceTime":J
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/hiflying/smartlink/AbstractSmartLinker$4;->this$0:Lcom/hiflying/smartlink/AbstractSmartLinker;

    iget-boolean v15, v15, Lcom/hiflying/smartlink/AbstractSmartLinker;->mIsSmartLinking:Z

    if-nez v15, :cond_2

    .line 219
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/hiflying/smartlink/AbstractSmartLinker$4;->this$0:Lcom/hiflying/smartlink/AbstractSmartLinker;

    const/16 v18, 0x0

    move/from16 v0, v18

    iput-boolean v0, v15, Lcom/hiflying/smartlink/AbstractSmartLinker;->mIsSmartLinking:Z

    .line 220
    return-void

    .line 165
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 166
    .local v4, "currentTime":J
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/hiflying/smartlink/AbstractSmartLinker$4;->this$0:Lcom/hiflying/smartlink/AbstractSmartLinker;

    iget-boolean v15, v15, Lcom/hiflying/smartlink/AbstractSmartLinker;->mIsSmartLinking:Z

    if-eqz v15, :cond_1

    sub-long v18, v4, v16

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/hiflying/smartlink/AbstractSmartLinker$4;->this$0:Lcom/hiflying/smartlink/AbstractSmartLinker;

    iget v15, v15, Lcom/hiflying/smartlink/AbstractSmartLinker;->mTimeoutPeriod:I

    int-to-long v0, v15

    move-wide/from16 v20, v0

    cmp-long v15, v18, v20

    if-gtz v15, :cond_1

    .line 167
    sub-long v18, v4, v8

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/hiflying/smartlink/AbstractSmartLinker$4;->this$0:Lcom/hiflying/smartlink/AbstractSmartLinker;

    invoke-static {v15}, Lcom/hiflying/smartlink/AbstractSmartLinker;->access$1(Lcom/hiflying/smartlink/AbstractSmartLinker;)I

    move-result v15

    int-to-long v0, v15

    move-wide/from16 v20, v0

    cmp-long v15, v18, v20

    if-gtz v15, :cond_1

    .line 172
    :try_start_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/hiflying/smartlink/AbstractSmartLinker$4;->this$0:Lcom/hiflying/smartlink/AbstractSmartLinker;

    iget-object v15, v15, Lcom/hiflying/smartlink/AbstractSmartLinker;->mSmartConfigSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v15, v12}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 173
    invoke-virtual {v12}, Ljava/net/DatagramPacket;->getLength()I

    move-result v15

    new-array v3, v15, [B

    .line 174
    const/4 v15, 0x0

    const/16 v18, 0x0

    array-length v0, v3

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v2, v15, v3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 176
    array-length v15, v3

    const/16 v18, 0xc

    move/from16 v0, v18

    if-le v15, v0, :cond_0

    .line 178
    const/4 v10, 0x1

    .line 179
    .local v10, "ignore":Z
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    array-length v15, v3

    if-lt v7, v15, :cond_4

    .line 186
    :cond_3
    if-nez v10, :cond_0

    .line 187
    new-instance v14, Ljava/lang/StringBuffer;

    invoke-direct {v14}, Ljava/lang/StringBuffer;-><init>()V

    .line 188
    .local v14, "sb":Ljava/lang/StringBuffer;
    const/4 v7, 0x0

    :goto_2
    array-length v15, v3

    if-lt v7, v15, :cond_6

    .line 192
    invoke-virtual {v14}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    .line 193
    .local v13, "result":Ljava/lang/String;
    const-string v15, "smart_config"

    invoke-virtual {v13, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 195
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/hiflying/smartlink/AbstractSmartLinker$4;->this$0:Lcom/hiflying/smartlink/AbstractSmartLinker;

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "Received: "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Lcom/hiflying/commons/log/HFLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 197
    const-string v15, "smart_config"

    const-string v18, ""

    move-object/from16 v0, v18

    invoke-virtual {v13, v15, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    .line 198
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v15

    if-eqz v15, :cond_0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/hiflying/smartlink/AbstractSmartLinker$4;->this$0:Lcom/hiflying/smartlink/AbstractSmartLinker;

    invoke-static {v15}, Lcom/hiflying/smartlink/AbstractSmartLinker;->access$0(Lcom/hiflying/smartlink/AbstractSmartLinker;)Ljava/util/HashSet;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_0

    .line 200
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/hiflying/smartlink/AbstractSmartLinker$4;->this$0:Lcom/hiflying/smartlink/AbstractSmartLinker;

    invoke-static {v15}, Lcom/hiflying/smartlink/AbstractSmartLinker;->access$0(Lcom/hiflying/smartlink/AbstractSmartLinker;)Ljava/util/HashSet;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 201
    new-instance v11, Lcom/hiflying/smartlink/SmartLinkedModule;

    invoke-direct {v11}, Lcom/hiflying/smartlink/SmartLinkedModule;-><init>()V

    .line 202
    .local v11, "module":Lcom/hiflying/smartlink/SmartLinkedModule;
    invoke-virtual {v11, v13}, Lcom/hiflying/smartlink/SmartLinkedModule;->setId(Ljava/lang/String;)V

    .line 203
    invoke-virtual {v11, v13}, Lcom/hiflying/smartlink/SmartLinkedModule;->setMac(Ljava/lang/String;)V

    .line 204
    invoke-virtual {v12}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v15

    invoke-virtual {v15}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v15}, Lcom/hiflying/smartlink/SmartLinkedModule;->setIp(Ljava/lang/String;)V

    .line 205
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/hiflying/smartlink/AbstractSmartLinker$4;->this$0:Lcom/hiflying/smartlink/AbstractSmartLinker;

    invoke-static {v15}, Lcom/hiflying/smartlink/AbstractSmartLinker;->access$2(Lcom/hiflying/smartlink/AbstractSmartLinker;)Landroid/os/Handler;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hiflying/smartlink/AbstractSmartLinker$4;->this$0:Lcom/hiflying/smartlink/AbstractSmartLinker;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/hiflying/smartlink/AbstractSmartLinker;->access$2(Lcom/hiflying/smartlink/AbstractSmartLinker;)Landroid/os/Handler;

    move-result-object v18

    const/16 v19, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v1, v11}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 206
    const-wide v18, 0x7fffffffffffffffL

    cmp-long v15, v8, v18

    if-nez v15, :cond_0

    .line 207
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    goto/16 :goto_0

    .line 180
    .end local v11    # "module":Lcom/hiflying/smartlink/SmartLinkedModule;
    .end local v13    # "result":Ljava/lang/String;
    .end local v14    # "sb":Ljava/lang/StringBuffer;
    :cond_4
    aget-byte v15, v3, v7

    const/16 v18, 0x5

    move/from16 v0, v18

    if-ne v15, v0, :cond_5

    const/4 v10, 0x1

    .line 181
    :goto_3
    if-eqz v10, :cond_3

    .line 179
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    .line 180
    :cond_5
    const/4 v10, 0x0

    goto :goto_3

    .line 189
    .restart local v14    # "sb":Ljava/lang/StringBuffer;
    :cond_6
    aget-byte v15, v3, v7

    int-to-char v15, v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_2

    .line 214
    .end local v7    # "i":I
    .end local v10    # "ignore":Z
    .end local v14    # "sb":Ljava/lang/StringBuffer;
    :catch_0
    move-exception v6

    .line 215
    .local v6, "e":Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/hiflying/smartlink/AbstractSmartLinker$4;->this$0:Lcom/hiflying/smartlink/AbstractSmartLinker;

    const-string v18, "smartLinkSocket.receive(pack) timeout"

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Lcom/hiflying/commons/log/HFLog;->v(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
