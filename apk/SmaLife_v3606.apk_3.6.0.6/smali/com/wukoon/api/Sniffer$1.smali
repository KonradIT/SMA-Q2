.class Lcom/wukoon/api/Sniffer$1;
.super Landroid/os/Handler;


# instance fields
.field private synthetic jZ:Lcom/wukoon/api/Sniffer;


# direct methods
.method constructor <init>(Lcom/wukoon/api/Sniffer;)V
    .locals 0

    iput-object p1, p0, Lcom/wukoon/api/Sniffer$1;->jZ:Lcom/wukoon/api/Sniffer;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/net/DatagramPacket;

    iget-object v1, p0, Lcom/wukoon/api/Sniffer$1;->jZ:Lcom/wukoon/api/Sniffer;

    invoke-static {v1}, Lcom/wukoon/api/Sniffer;->a(Lcom/wukoon/api/Sniffer;)Lcom/wukoon/api/Sniffer$EventListener;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v1

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    iget-object v2, p0, Lcom/wukoon/api/Sniffer$1;->jZ:Lcom/wukoon/api/Sniffer;

    invoke-static {v2}, Lcom/wukoon/api/Sniffer;->b(Lcom/wukoon/api/Sniffer;)I

    move-result v2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/wukoon/api/Sniffer$1;->jZ:Lcom/wukoon/api/Sniffer;

    invoke-static {v1}, Lcom/wukoon/api/Sniffer;->a(Lcom/wukoon/api/Sniffer;)Lcom/wukoon/api/Sniffer$EventListener;

    move-result-object v1

    invoke-virtual {v0}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/wukoon/api/Sniffer$EventListener;->onDeviceOnline(Ljava/lang/String;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
