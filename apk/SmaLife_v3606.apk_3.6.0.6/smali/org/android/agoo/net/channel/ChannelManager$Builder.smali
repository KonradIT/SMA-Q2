.class public final Lorg/android/agoo/net/channel/ChannelManager$Builder;
.super Ljava/lang/Object;
.source "ChannelManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/android/agoo/net/channel/ChannelManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    invoke-static {p1}, Lorg/android/agoo/net/channel/ChannelManager;->a(Landroid/content/Context;)Landroid/content/Context;

    .line 109
    new-instance v0, Lorg/android/agoo/net/channel/DNSManager;

    invoke-direct {v0, p1}, Lorg/android/agoo/net/channel/DNSManager;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lorg/android/agoo/net/channel/ChannelManager;->a(Lorg/android/agoo/net/channel/DNSManager;)Lorg/android/agoo/net/channel/DNSManager;

    .line 110
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Lorg/android/agoo/net/channel/ChannelManager;->a(Ljava/util/Map;)Ljava/util/Map;

    .line 111
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Lorg/android/agoo/net/channel/ChannelManager;->b(Ljava/util/Map;)Ljava/util/Map;

    .line 112
    const/4 v0, 0x1

    invoke-static {v0}, Lorg/android/agoo/net/channel/ChannelManager;->a(Z)Z

    .line 113
    invoke-static {p2}, Lorg/android/agoo/net/channel/ChannelManager;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 114
    invoke-static {p3}, Lorg/android/agoo/net/channel/ChannelManager;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 115
    return-void
.end method


# virtual methods
.method public final addHeader(Ljava/lang/String;Ljava/lang/String;)Lorg/android/agoo/net/channel/ChannelManager$Builder;
    .locals 1

    .prologue
    .line 207
    invoke-static {}, Lorg/android/agoo/net/channel/ChannelManager;->f()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    return-object p0
.end method

.method public final addHeaders(Ljava/util/Map;)Lorg/android/agoo/net/channel/ChannelManager$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/android/agoo/net/channel/ChannelManager$Builder;"
        }
    .end annotation

    .prologue
    .line 212
    invoke-static {}, Lorg/android/agoo/net/channel/ChannelManager;->f()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 213
    return-object p0
.end method

.method public final addLastTcpConnectedEndTime(J)Lorg/android/agoo/net/channel/ChannelManager$Builder;
    .locals 0

    .prologue
    .line 228
    return-object p0
.end method

.method public final addLastTcpConnectedSuccessfully(JJ)Lorg/android/agoo/net/channel/ChannelManager$Builder;
    .locals 0

    .prologue
    .line 223
    return-object p0
.end method

.method public final addPushHandler(Lorg/android/agoo/net/channel/IPushHandler;)Lorg/android/agoo/net/channel/ChannelManager$Builder;
    .locals 0

    .prologue
    .line 118
    invoke-static {p1}, Lorg/android/agoo/net/channel/ChannelManager;->a(Lorg/android/agoo/net/channel/IPushHandler;)Lorg/android/agoo/net/channel/IPushHandler;

    .line 119
    return-object p0
.end method

.method public final addServiceStartTime(J)Lorg/android/agoo/net/channel/ChannelManager$Builder;
    .locals 0

    .prologue
    .line 217
    return-object p0
.end method

.method public final build()Lorg/android/agoo/net/channel/ChannelManager;
    .locals 2

    .prologue
    .line 232
    new-instance v0, Lorg/android/agoo/net/channel/ChannelManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/android/agoo/net/channel/ChannelManager;-><init>(Lorg/android/agoo/net/channel/ChannelManager$1;)V

    return-object v0
.end method

.method public final forceInit()Lorg/android/agoo/net/channel/ChannelManager$Builder;
    .locals 1

    .prologue
    .line 158
    const/4 v0, 0x1

    invoke-static {v0}, Lorg/android/agoo/net/channel/ChannelManager;->b(Z)Z

    .line 159
    return-object p0
.end method

.method public final putParams(Ljava/lang/String;Ljava/lang/String;)Lorg/android/agoo/net/channel/ChannelManager$Builder;
    .locals 1

    .prologue
    .line 192
    invoke-static {}, Lorg/android/agoo/net/channel/ChannelManager;->d()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    return-object p0
.end method

.method public final putParams(Ljava/util/Map;)Lorg/android/agoo/net/channel/ChannelManager$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/android/agoo/net/channel/ChannelManager$Builder;"
        }
    .end annotation

    .prologue
    .line 197
    invoke-static {}, Lorg/android/agoo/net/channel/ChannelManager;->d()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 198
    return-object p0
.end method

.method public final refreshHost()Lorg/android/agoo/net/channel/ChannelManager$Builder;
    .locals 1

    .prologue
    .line 153
    const/4 v0, 0x1

    invoke-static {v0}, Lorg/android/agoo/net/channel/ChannelManager;->a(Z)Z

    .line 154
    return-object p0
.end method

.method public final removeHeader(Ljava/lang/String;)Lorg/android/agoo/net/channel/ChannelManager$Builder;
    .locals 1

    .prologue
    .line 202
    invoke-static {}, Lorg/android/agoo/net/channel/ChannelManager;->f()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    return-object p0
.end method

.method public final setApi(Ljava/lang/String;)Lorg/android/agoo/net/channel/ChannelManager$Builder;
    .locals 0

    .prologue
    .line 139
    invoke-static {p1}, Lorg/android/agoo/net/channel/ChannelManager;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 140
    return-object p0
.end method

.method public final setAppSecret(Ljava/lang/String;)Lorg/android/agoo/net/channel/ChannelManager$Builder;
    .locals 0

    .prologue
    .line 144
    invoke-static {p1}, Lorg/android/agoo/net/channel/ChannelManager;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 145
    return-object p0
.end method

.method public final setChannel(Lorg/android/agoo/net/channel/ChannelType;)Lorg/android/agoo/net/channel/ChannelManager$Builder;
    .locals 1

    .prologue
    .line 176
    invoke-static {p1}, Lorg/android/agoo/net/channel/ChannelManager;->a(Lorg/android/agoo/net/channel/ChannelType;)Lorg/android/agoo/net/channel/ChannelType;

    .line 177
    invoke-static {}, Lorg/android/agoo/net/channel/ChannelManager;->c()Lorg/android/agoo/net/channel/DNSManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/android/agoo/net/channel/DNSManager;->a(Lorg/android/agoo/net/channel/ChannelType;)V

    .line 178
    return-object p0
.end method

.method public final setDNS(Ljava/lang/String;J)Lorg/android/agoo/net/channel/ChannelManager$Builder;
    .locals 6

    .prologue
    .line 123
    invoke-static {}, Lorg/android/agoo/net/channel/ChannelManager;->c()Lorg/android/agoo/net/channel/DNSManager;

    move-result-object v0

    invoke-static {}, Lorg/android/agoo/net/channel/ChannelManager;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lorg/android/agoo/net/channel/ChannelManager;->b()Ljava/lang/String;

    move-result-object v3

    move-object v1, p1

    move-wide v4, p2

    invoke-virtual/range {v0 .. v5}, Lorg/android/agoo/net/channel/DNSManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 124
    return-object p0
.end method

.method public final setDNSProxy(Ljava/lang/String;I)Lorg/android/agoo/net/channel/ChannelManager$Builder;
    .locals 1

    .prologue
    .line 134
    invoke-static {}, Lorg/android/agoo/net/channel/ChannelManager;->c()Lorg/android/agoo/net/channel/DNSManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/android/agoo/net/channel/DNSManager;->a(Ljava/lang/String;I)V

    .line 135
    return-object p0
.end method

.method public final setIfNeedMore(Z)Lorg/android/agoo/net/channel/ChannelManager$Builder;
    .locals 3

    .prologue
    .line 163
    if-eqz p1, :cond_0

    .line 164
    invoke-static {}, Lorg/android/agoo/net/channel/ChannelManager;->d()Ljava/util/Map;

    move-result-object v0

    const-string v1, "c0"

    sget-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    invoke-static {}, Lorg/android/agoo/net/channel/ChannelManager;->d()Ljava/util/Map;

    move-result-object v0

    const-string v1, "c1"

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    invoke-static {}, Lorg/android/agoo/net/channel/ChannelManager;->d()Ljava/util/Map;

    move-result-object v0

    const-string v1, "c2"

    invoke-static {}, Lorg/android/agoo/net/channel/ChannelManager;->e()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/umeng/message/proguard/bk;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    invoke-static {}, Lorg/android/agoo/net/channel/ChannelManager;->d()Ljava/util/Map;

    move-result-object v0

    const-string v1, "c3"

    invoke-static {}, Lorg/android/agoo/net/channel/ChannelManager;->e()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/umeng/message/proguard/bk;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    invoke-static {}, Lorg/android/agoo/net/channel/ChannelManager;->d()Ljava/util/Map;

    move-result-object v0

    const-string v1, "c4"

    invoke-static {}, Lorg/android/agoo/net/channel/ChannelManager;->e()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/umeng/message/proguard/bk;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    invoke-static {}, Lorg/android/agoo/net/channel/ChannelManager;->d()Ljava/util/Map;

    move-result-object v0

    const-string v1, "c5"

    invoke-static {}, Lcom/umeng/message/proguard/bk;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    invoke-static {}, Lorg/android/agoo/net/channel/ChannelManager;->d()Ljava/util/Map;

    move-result-object v0

    const-string v1, "c6"

    invoke-static {}, Lorg/android/agoo/net/channel/ChannelManager;->e()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/umeng/message/proguard/bk;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    :cond_0
    return-object p0
.end method

.method public final setRequestInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/android/agoo/net/channel/ChannelManager$Builder;
    .locals 1

    .prologue
    .line 128
    invoke-static {}, Lorg/android/agoo/net/channel/ChannelManager;->c()Lorg/android/agoo/net/channel/DNSManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lorg/android/agoo/net/channel/DNSManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    return-object p0
.end method

.method public final setTimeout(J)Lorg/android/agoo/net/channel/ChannelManager$Builder;
    .locals 1

    .prologue
    .line 149
    invoke-static {p1, p2}, Lorg/android/agoo/net/channel/ChannelManager;->a(J)J

    .line 150
    return-object p0
.end method

.method public final setVote(Lorg/android/agoo/net/channel/VoteResult;)Lorg/android/agoo/net/channel/ChannelManager$Builder;
    .locals 0

    .prologue
    .line 182
    invoke-static {p1}, Lorg/android/agoo/net/channel/ChannelManager;->a(Lorg/android/agoo/net/channel/VoteResult;)Lorg/android/agoo/net/channel/VoteResult;

    .line 183
    return-object p0
.end method

.method public final setlastEventType(Lorg/android/agoo/net/channel/AndroidEvent;)Lorg/android/agoo/net/channel/ChannelManager$Builder;
    .locals 0

    .prologue
    .line 187
    invoke-static {p1}, Lorg/android/agoo/net/channel/ChannelManager;->a(Lorg/android/agoo/net/channel/AndroidEvent;)Lorg/android/agoo/net/channel/AndroidEvent;

    .line 188
    return-object p0
.end method
