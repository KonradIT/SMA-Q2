.class public Lyhq/jad/easysdk/EasySdk$sendThread;
.super Ljava/lang/Object;
.source "EasySdk.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyhq/jad/easysdk/EasySdk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "sendThread"
.end annotation


# instance fields
.field final synthetic this$0:Lyhq/jad/easysdk/EasySdk;


# direct methods
.method public constructor <init>(Lyhq/jad/easysdk/EasySdk;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lyhq/jad/easysdk/EasySdk$sendThread;->this$0:Lyhq/jad/easysdk/EasySdk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 39
    :cond_0
    :goto_0
    iget-object v1, p0, Lyhq/jad/easysdk/EasySdk$sendThread;->this$0:Lyhq/jad/easysdk/EasySdk;

    invoke-static {v1}, Lyhq/jad/easysdk/EasySdk;->access$4(Lyhq/jad/easysdk/EasySdk;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 58
    iget-object v1, p0, Lyhq/jad/easysdk/EasySdk$sendThread;->this$0:Lyhq/jad/easysdk/EasySdk;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lyhq/jad/easysdk/EasySdk;->access$9(Lyhq/jad/easysdk/EasySdk;Z)V

    .line 60
    :goto_1
    return-void

    .line 43
    :cond_1
    :try_start_0
    iget-object v1, p0, Lyhq/jad/easysdk/EasySdk$sendThread;->this$0:Lyhq/jad/easysdk/EasySdk;

    invoke-static {v1}, Lyhq/jad/easysdk/EasySdk;->access$5(Lyhq/jad/easysdk/EasySdk;)Z

    .line 44
    iget-object v1, p0, Lyhq/jad/easysdk/EasySdk$sendThread;->this$0:Lyhq/jad/easysdk/EasySdk;

    invoke-static {v1}, Lyhq/jad/easysdk/EasySdk;->access$0(Lyhq/jad/easysdk/EasySdk;)I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_2

    .line 46
    iget-object v1, p0, Lyhq/jad/easysdk/EasySdk$sendThread;->this$0:Lyhq/jad/easysdk/EasySdk;

    invoke-static {v1}, Lyhq/jad/easysdk/EasySdk;->access$6(Lyhq/jad/easysdk/EasySdk;)Lyhq/jad/easysdk/UdpSocket;

    move-result-object v1

    const-string v2, "@LT_EASY_DEVICE@"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 47
    const-string v3, "255.255.255.255"

    const v4, 0xd903

    .line 46
    invoke-virtual {v1, v2, v3, v4}, Lyhq/jad/easysdk/UdpSocket;->Send([BLjava/lang/String;I)Z

    .line 48
    iget-object v1, p0, Lyhq/jad/easysdk/EasySdk$sendThread;->this$0:Lyhq/jad/easysdk/EasySdk;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lyhq/jad/easysdk/EasySdk;->access$1(Lyhq/jad/easysdk/EasySdk;I)V

    .line 50
    :cond_2
    iget-object v1, p0, Lyhq/jad/easysdk/EasySdk$sendThread;->this$0:Lyhq/jad/easysdk/EasySdk;

    invoke-static {v1}, Lyhq/jad/easysdk/EasySdk;->access$7(Lyhq/jad/easysdk/EasySdk;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 51
    :catch_0
    move-exception v0

    .line 54
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lyhq/jad/easysdk/EasySdk$sendThread;->this$0:Lyhq/jad/easysdk/EasySdk;

    invoke-static {v1}, Lyhq/jad/easysdk/EasySdk;->access$8(Lyhq/jad/easysdk/EasySdk;)Lyhq/jad/easysdk/UdpSocket;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_1
.end method
