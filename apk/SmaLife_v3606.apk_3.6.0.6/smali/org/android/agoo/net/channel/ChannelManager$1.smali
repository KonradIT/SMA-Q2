.class Lorg/android/agoo/net/channel/ChannelManager$1;
.super Ljava/lang/Object;
.source "ChannelManager.java"

# interfaces
.implements Lorg/android/agoo/net/channel/DNSManager$IHostHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/android/agoo/net/channel/ChannelManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/android/agoo/net/channel/ChannelManager;


# direct methods
.method constructor <init>(Lorg/android/agoo/net/channel/ChannelManager;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lorg/android/agoo/net/channel/ChannelManager$1;->a:Lorg/android/agoo/net/channel/ChannelManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lorg/android/agoo/net/channel/ChannelError;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 90
    iget-object v0, p0, Lorg/android/agoo/net/channel/ChannelManager$1;->a:Lorg/android/agoo/net/channel/ChannelManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/android/agoo/net/channel/ChannelManager;->a(Lorg/android/agoo/net/channel/ChannelManager;Z)Z

    .line 91
    iget-object v0, p0, Lorg/android/agoo/net/channel/ChannelManager$1;->a:Lorg/android/agoo/net/channel/ChannelManager;

    invoke-static {v0, p1, p2}, Lorg/android/agoo/net/channel/ChannelManager;->a(Lorg/android/agoo/net/channel/ChannelManager;Lorg/android/agoo/net/channel/ChannelError;Ljava/lang/String;)V

    .line 92
    return-void
.end method

.method public onHost(Lorg/android/agoo/net/channel/ChannelType;Ljava/lang/String;ILcom/umeng/message/proguard/aT;Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 73
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-lez p3, :cond_0

    .line 74
    const/4 v0, 0x0

    invoke-static {v0}, Lorg/android/agoo/net/channel/ChannelManager;->a(Z)Z

    .line 75
    iget-object v0, p0, Lorg/android/agoo/net/channel/ChannelManager$1;->a:Lorg/android/agoo/net/channel/ChannelManager;

    invoke-static {v0, p2}, Lorg/android/agoo/net/channel/ChannelManager;->a(Lorg/android/agoo/net/channel/ChannelManager;Ljava/lang/String;)Ljava/lang/String;

    .line 76
    iget-object v0, p0, Lorg/android/agoo/net/channel/ChannelManager$1;->a:Lorg/android/agoo/net/channel/ChannelManager;

    invoke-static {v0, p3}, Lorg/android/agoo/net/channel/ChannelManager;->a(Lorg/android/agoo/net/channel/ChannelManager;I)I

    .line 77
    invoke-static {p1}, Lorg/android/agoo/net/channel/ChannelManager;->a(Lorg/android/agoo/net/channel/ChannelType;)Lorg/android/agoo/net/channel/ChannelType;

    .line 79
    :cond_0
    iget-object v0, p0, Lorg/android/agoo/net/channel/ChannelManager$1;->a:Lorg/android/agoo/net/channel/ChannelManager;

    invoke-virtual {v0, p4, p5}, Lorg/android/agoo/net/channel/ChannelManager;->connenct(Lcom/umeng/message/proguard/aT;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    :goto_0
    iget-object v0, p0, Lorg/android/agoo/net/channel/ChannelManager$1;->a:Lorg/android/agoo/net/channel/ChannelManager;

    invoke-static {v0, v4}, Lorg/android/agoo/net/channel/ChannelManager;->a(Lorg/android/agoo/net/channel/ChannelManager;Z)Z

    .line 86
    return-void

    .line 80
    :catch_0
    move-exception v0

    .line 81
    iget-object v0, p0, Lorg/android/agoo/net/channel/ChannelManager$1;->a:Lorg/android/agoo/net/channel/ChannelManager;

    sget-object v1, Lorg/android/agoo/net/channel/ChannelError;->y:Lorg/android/agoo/net/channel/ChannelError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "host ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] failed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/android/agoo/net/channel/ChannelManager;->a(Lorg/android/agoo/net/channel/ChannelManager;Lorg/android/agoo/net/channel/ChannelError;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onReportDNS(Lcom/umeng/message/proguard/aU;)V
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lorg/android/agoo/net/channel/ChannelManager$1;->a:Lorg/android/agoo/net/channel/ChannelManager;

    invoke-static {v0, p1}, Lorg/android/agoo/net/channel/ChannelManager;->a(Lorg/android/agoo/net/channel/ChannelManager;Lcom/umeng/message/proguard/aU;)V

    .line 97
    return-void
.end method
