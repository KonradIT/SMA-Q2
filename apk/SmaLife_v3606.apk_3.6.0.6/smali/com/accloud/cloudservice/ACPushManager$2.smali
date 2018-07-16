.class Lcom/accloud/cloudservice/ACPushManager$2;
.super Lorg/java_websocket/client/WebSocketClient;
.source "ACPushManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/accloud/cloudservice/ACPushManager;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/accloud/cloudservice/ACPushManager;


# direct methods
.method constructor <init>(Lcom/accloud/cloudservice/ACPushManager;Ljava/net/URI;Lorg/java_websocket/drafts/Draft;)V
    .locals 0
    .param p2, "x0"    # Ljava/net/URI;
    .param p3, "x1"    # Lorg/java_websocket/drafts/Draft;

    .prologue
    .line 199
    iput-object p1, p0, Lcom/accloud/cloudservice/ACPushManager$2;->this$0:Lcom/accloud/cloudservice/ACPushManager;

    invoke-direct {p0, p2, p3}, Lorg/java_websocket/client/WebSocketClient;-><init>(Ljava/net/URI;Lorg/java_websocket/drafts/Draft;)V

    return-void
.end method


# virtual methods
.method public onClose(ILjava/lang/String;Z)V
    .locals 3
    .param p1, "i"    # I
    .param p2, "s"    # Ljava/lang/String;
    .param p3, "b"    # Z

    .prologue
    const/4 v2, 0x2

    .line 226
    sget-object v0, Lcom/accloud/cloudservice/ACPushManager;->TAG:Ljava/lang/String;

    const-string v1, "onClose"

    invoke-static {v0, v1}, Lcom/accloud/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    iget-object v0, p0, Lcom/accloud/cloudservice/ACPushManager$2;->this$0:Lcom/accloud/cloudservice/ACPushManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/accloud/cloudservice/ACPushManager;->access$202(Lcom/accloud/cloudservice/ACPushManager;Z)Z

    .line 229
    :try_start_0
    iget-object v0, p0, Lcom/accloud/cloudservice/ACPushManager$2;->this$0:Lcom/accloud/cloudservice/ACPushManager;

    invoke-static {v0}, Lcom/accloud/cloudservice/ACPushManager;->access$100(Lcom/accloud/cloudservice/ACPushManager;)I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 232
    :goto_0
    iget-object v0, p0, Lcom/accloud/cloudservice/ACPushManager$2;->this$0:Lcom/accloud/cloudservice/ACPushManager;

    invoke-static {v0}, Lcom/accloud/cloudservice/ACPushManager;->access$300(Lcom/accloud/cloudservice/ACPushManager;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 233
    iget-object v0, p0, Lcom/accloud/cloudservice/ACPushManager$2;->this$0:Lcom/accloud/cloudservice/ACPushManager;

    invoke-static {v0}, Lcom/accloud/cloudservice/ACPushManager;->access$100(Lcom/accloud/cloudservice/ACPushManager;)I

    move-result v0

    const v1, 0xfa00

    if-ge v0, v1, :cond_0

    .line 234
    iget-object v0, p0, Lcom/accloud/cloudservice/ACPushManager$2;->this$0:Lcom/accloud/cloudservice/ACPushManager;

    invoke-static {v0, v2}, Lcom/accloud/cloudservice/ACPushManager;->access$128(Lcom/accloud/cloudservice/ACPushManager;I)I

    .line 235
    :cond_0
    iget-object v0, p0, Lcom/accloud/cloudservice/ACPushManager$2;->this$0:Lcom/accloud/cloudservice/ACPushManager;

    iget-object v0, v0, Lcom/accloud/cloudservice/ACPushManager;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 237
    :cond_1
    return-void

    .line 230
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onError(Ljava/lang/Exception;)V
    .locals 3
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    const/4 v2, 0x2

    .line 241
    sget-object v0, Lcom/accloud/cloudservice/ACPushManager;->TAG:Ljava/lang/String;

    const-string v1, "onError"

    invoke-static {v0, v1}, Lcom/accloud/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    iget-object v0, p0, Lcom/accloud/cloudservice/ACPushManager$2;->this$0:Lcom/accloud/cloudservice/ACPushManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/accloud/cloudservice/ACPushManager;->access$202(Lcom/accloud/cloudservice/ACPushManager;Z)Z

    .line 244
    :try_start_0
    iget-object v0, p0, Lcom/accloud/cloudservice/ACPushManager$2;->this$0:Lcom/accloud/cloudservice/ACPushManager;

    invoke-static {v0}, Lcom/accloud/cloudservice/ACPushManager;->access$100(Lcom/accloud/cloudservice/ACPushManager;)I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 247
    :goto_0
    iget-object v0, p0, Lcom/accloud/cloudservice/ACPushManager$2;->this$0:Lcom/accloud/cloudservice/ACPushManager;

    invoke-static {v0}, Lcom/accloud/cloudservice/ACPushManager;->access$300(Lcom/accloud/cloudservice/ACPushManager;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 248
    iget-object v0, p0, Lcom/accloud/cloudservice/ACPushManager$2;->this$0:Lcom/accloud/cloudservice/ACPushManager;

    invoke-static {v0}, Lcom/accloud/cloudservice/ACPushManager;->access$100(Lcom/accloud/cloudservice/ACPushManager;)I

    move-result v0

    const v1, 0xfa00

    if-ge v0, v1, :cond_0

    .line 249
    iget-object v0, p0, Lcom/accloud/cloudservice/ACPushManager$2;->this$0:Lcom/accloud/cloudservice/ACPushManager;

    invoke-static {v0, v2}, Lcom/accloud/cloudservice/ACPushManager;->access$128(Lcom/accloud/cloudservice/ACPushManager;I)I

    .line 250
    :cond_0
    iget-object v0, p0, Lcom/accloud/cloudservice/ACPushManager$2;->this$0:Lcom/accloud/cloudservice/ACPushManager;

    iget-object v0, v0, Lcom/accloud/cloudservice/ACPushManager;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 252
    :cond_1
    return-void

    .line 245
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onMessage(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 210
    iget-object v1, p0, Lcom/accloud/cloudservice/ACPushManager$2;->this$0:Lcom/accloud/cloudservice/ACPushManager;

    iget-object v1, v1, Lcom/accloud/cloudservice/ACPushManager;->handler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 211
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 212
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 213
    iget-object v1, p0, Lcom/accloud/cloudservice/ACPushManager$2;->this$0:Lcom/accloud/cloudservice/ACPushManager;

    iget-object v1, v1, Lcom/accloud/cloudservice/ACPushManager;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 214
    return-void
.end method

.method public onMessage(Ljava/nio/ByteBuffer;)V
    .locals 2
    .param p1, "bytes"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 218
    iget-object v1, p0, Lcom/accloud/cloudservice/ACPushManager$2;->this$0:Lcom/accloud/cloudservice/ACPushManager;

    iget-object v1, v1, Lcom/accloud/cloudservice/ACPushManager;->handler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 219
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 220
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 221
    iget-object v1, p0, Lcom/accloud/cloudservice/ACPushManager$2;->this$0:Lcom/accloud/cloudservice/ACPushManager;

    iget-object v1, v1, Lcom/accloud/cloudservice/ACPushManager;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 222
    return-void
.end method

.method public onOpen(Lorg/java_websocket/handshake/ServerHandshake;)V
    .locals 2
    .param p1, "serverHandshake"    # Lorg/java_websocket/handshake/ServerHandshake;

    .prologue
    .line 202
    sget-object v0, Lcom/accloud/cloudservice/ACPushManager;->TAG:Ljava/lang/String;

    const-string v1, "onOpen"

    invoke-static {v0, v1}, Lcom/accloud/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    iget-object v0, p0, Lcom/accloud/cloudservice/ACPushManager$2;->this$0:Lcom/accloud/cloudservice/ACPushManager;

    const/16 v1, 0x7d0

    invoke-static {v0, v1}, Lcom/accloud/cloudservice/ACPushManager;->access$102(Lcom/accloud/cloudservice/ACPushManager;I)I

    .line 204
    iget-object v0, p0, Lcom/accloud/cloudservice/ACPushManager$2;->this$0:Lcom/accloud/cloudservice/ACPushManager;

    iget-object v0, v0, Lcom/accloud/cloudservice/ACPushManager;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 205
    iget-object v0, p0, Lcom/accloud/cloudservice/ACPushManager$2;->this$0:Lcom/accloud/cloudservice/ACPushManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/accloud/cloudservice/ACPushManager;->access$202(Lcom/accloud/cloudservice/ACPushManager;Z)Z

    .line 206
    return-void
.end method
