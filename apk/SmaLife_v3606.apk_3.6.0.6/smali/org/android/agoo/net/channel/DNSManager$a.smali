.class final Lorg/android/agoo/net/channel/DNSManager$a;
.super Ljava/lang/Object;
.source "DNSManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/android/agoo/net/channel/DNSManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lorg/android/agoo/net/channel/DNSManager;

.field private volatile b:Z

.field private volatile c:Lorg/android/agoo/net/channel/ChannelType;


# direct methods
.method constructor <init>(Lorg/android/agoo/net/channel/DNSManager;)V
    .locals 1

    .prologue
    .line 131
    iput-object p1, p0, Lorg/android/agoo/net/channel/DNSManager$a;->a:Lorg/android/agoo/net/channel/DNSManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/android/agoo/net/channel/DNSManager$a;->b:Z

    .line 133
    sget-object v0, Lorg/android/agoo/net/channel/ChannelType;->b:Lorg/android/agoo/net/channel/ChannelType;

    iput-object v0, p0, Lorg/android/agoo/net/channel/DNSManager$a;->c:Lorg/android/agoo/net/channel/ChannelType;

    return-void
.end method


# virtual methods
.method public a(Lorg/android/agoo/net/channel/ChannelType;)V
    .locals 0

    .prologue
    .line 136
    iput-object p1, p0, Lorg/android/agoo/net/channel/DNSManager$a;->c:Lorg/android/agoo/net/channel/ChannelType;

    .line 137
    return-void
.end method

.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 142
    :try_start_0
    iget-boolean v0, p0, Lorg/android/agoo/net/channel/DNSManager$a;->b:Z

    if-eqz v0, :cond_0

    .line 143
    const-string v0, "DNSManager"

    const-string v1, "DNSRemote[runing....]"

    invoke-static {v0, v1}, Lcom/umeng/message/proguard/aK;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    iput-boolean v4, p0, Lorg/android/agoo/net/channel/DNSManager$a;->b:Z

    .line 176
    :goto_0
    return-void

    .line 146
    :cond_0
    :try_start_1
    new-instance v0, Lcom/umeng/message/proguard/aU;

    invoke-direct {v0}, Lcom/umeng/message/proguard/aU;-><init>()V

    .line 147
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/umeng/message/proguard/bd;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/umeng/message/proguard/aU;->d(Ljava/lang/String;)V

    .line 148
    const-string v1, "n"

    invoke-virtual {v0, v1}, Lcom/umeng/message/proguard/aU;->e(Ljava/lang/String;)V

    .line 149
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/android/agoo/net/channel/DNSManager$a;->b:Z

    .line 151
    iget-object v1, p0, Lorg/android/agoo/net/channel/DNSManager$a;->a:Lorg/android/agoo/net/channel/DNSManager;

    invoke-static {v1}, Lorg/android/agoo/net/channel/DNSManager;->a(Lorg/android/agoo/net/channel/DNSManager;)Lorg/android/agoo/net/channel/ChannelType;

    move-result-object v1

    iget-object v2, p0, Lorg/android/agoo/net/channel/DNSManager$a;->c:Lorg/android/agoo/net/channel/ChannelType;

    if-eq v1, v2, :cond_1

    .line 152
    const-string v1, "DNSManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "currentChannleType["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/android/agoo/net/channel/DNSManager$a;->a:Lorg/android/agoo/net/channel/DNSManager;

    invoke-static {v3}, Lorg/android/agoo/net/channel/DNSManager;->a(Lorg/android/agoo/net/channel/DNSManager;)Lorg/android/agoo/net/channel/ChannelType;

    move-result-object v3

    invoke-virtual {v3}, Lorg/android/agoo/net/channel/ChannelType;->getDesc()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]!=channelType["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/android/agoo/net/channel/DNSManager$a;->c:Lorg/android/agoo/net/channel/ChannelType;

    invoke-virtual {v3}, Lorg/android/agoo/net/channel/ChannelType;->getDesc()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/umeng/message/proguard/aK;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    iget-object v1, p0, Lorg/android/agoo/net/channel/DNSManager$a;->a:Lorg/android/agoo/net/channel/DNSManager;

    iget-object v2, p0, Lorg/android/agoo/net/channel/DNSManager$a;->c:Lorg/android/agoo/net/channel/ChannelType;

    invoke-static {v1, v2}, Lorg/android/agoo/net/channel/DNSManager;->a(Lorg/android/agoo/net/channel/DNSManager;Lorg/android/agoo/net/channel/ChannelType;)Lorg/android/agoo/net/channel/ChannelType;

    .line 159
    iget-object v1, p0, Lorg/android/agoo/net/channel/DNSManager$a;->a:Lorg/android/agoo/net/channel/DNSManager;

    invoke-static {v1, v0}, Lorg/android/agoo/net/channel/DNSManager;->a(Lorg/android/agoo/net/channel/DNSManager;Lcom/umeng/message/proguard/aU;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 173
    iput-boolean v4, p0, Lorg/android/agoo/net/channel/DNSManager$a;->b:Z

    goto :goto_0

    .line 162
    :cond_1
    :try_start_2
    iget-object v1, p0, Lorg/android/agoo/net/channel/DNSManager$a;->a:Lorg/android/agoo/net/channel/DNSManager;

    invoke-virtual {v1, v0}, Lorg/android/agoo/net/channel/DNSManager;->a(Lcom/umeng/message/proguard/aU;)Z

    move-result v1

    .line 163
    if-eqz v1, :cond_2

    .line 164
    const-string v0, "DNSManager"

    const-string v1, "refreshLocalHost successfully"

    invoke-static {v0, v1}, Lcom/umeng/message/proguard/aK;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 173
    iput-boolean v4, p0, Lorg/android/agoo/net/channel/DNSManager$a;->b:Z

    goto :goto_0

    .line 167
    :cond_2
    :try_start_3
    iget-object v1, p0, Lorg/android/agoo/net/channel/DNSManager$a;->a:Lorg/android/agoo/net/channel/DNSManager;

    invoke-static {v1, v0}, Lorg/android/agoo/net/channel/DNSManager;->a(Lorg/android/agoo/net/channel/DNSManager;Lcom/umeng/message/proguard/aU;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 173
    iput-boolean v4, p0, Lorg/android/agoo/net/channel/DNSManager$a;->b:Z

    goto/16 :goto_0

    .line 168
    :catch_0
    move-exception v0

    .line 169
    :try_start_4
    const-string v1, "DNSManager"

    const-string v2, "host Throwable"

    invoke-static {v1, v2, v0}, Lcom/umeng/message/proguard/aK;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 170
    iget-object v0, p0, Lorg/android/agoo/net/channel/DNSManager$a;->a:Lorg/android/agoo/net/channel/DNSManager;

    sget-object v1, Lorg/android/agoo/net/channel/ChannelError;->s:Lorg/android/agoo/net/channel/ChannelError;

    const-string v2, "remote get apoll failed"

    invoke-virtual {v0, v1, v2}, Lorg/android/agoo/net/channel/DNSManager;->a(Lorg/android/agoo/net/channel/ChannelError;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 173
    iput-boolean v4, p0, Lorg/android/agoo/net/channel/DNSManager$a;->b:Z

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    iput-boolean v4, p0, Lorg/android/agoo/net/channel/DNSManager$a;->b:Z

    throw v0
.end method
