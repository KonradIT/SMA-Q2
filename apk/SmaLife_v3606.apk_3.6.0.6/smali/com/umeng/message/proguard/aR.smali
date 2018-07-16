.class public Lcom/umeng/message/proguard/aR;
.super Lcom/umeng/message/proguard/aN;
.source "NewMessagePush.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/message/proguard/aR$3;
    }
.end annotation


# static fields
.field private static final A:Ljava/lang/String; = "ping_reconnect"

.field private static final B:Ljava/lang/String; = "hb"

.field private static final C:Ljava/lang/String; = "x-at"

.field private static final D:I = 0x2710

.field private static final E:I = 0x7530

.field private static final F:I = 0xea60

.field private static final G:J = 0xea60L

.field private static final H:J = 0x0L

.field private static final I:I = 0x80

.field private static final ag:Ljava/lang/String; = "AGOO_CONNECT"

.field private static final ah:Ljava/lang/String; = "AGOO_CONNECT_COUNT"

.field private static final aj:Ljava/lang/String; = "5"

.field private static final am:Ljava/util/Random;

.field public static final g:Ljava/lang/String; = "10"

.field public static final h:Ljava/lang/String; = "11"

.field public static final i:Ljava/lang/String; = "12"

.field public static final j:Ljava/lang/String; = "13"

.field public static final k:Ljava/lang/String; = "14"

.field private static final l:Ljava/lang/String;

.field private static final m:Ljava/lang/String; = "agoo_action_re_connect"

.field private static final n:Ljava/lang/String; = "agoo_action_heart"

.field private static final o:Ljava/lang/String; = "action_get_his_message"

.field private static final p:Ljava/lang/String; = "action_ping"

.field private static final q:Ljava/lang/String; = "action_connect_unlock"

.field private static final r:Ljava/lang/String; = "action_ping_unlock"

.field private static final s:Ljava/lang/String; = "CONNECT_REFRESH_HOST"

.field private static final t:Ljava/lang/String; = "init_connect"

.field private static final u:Ljava/lang/String; = "screen_on_connect"

.field private static final v:Ljava/lang/String; = "network_change_connect"

.field private static final w:Ljava/lang/String; = "error_connect"

.field private static final x:Ljava/lang/String; = "heart_connect_timeout"

.field private static final y:Ljava/lang/String; = "network_error_connect"

.field private static final z:Ljava/lang/String; = "ping_channge_channle_type_reconnect"


# instance fields
.field private volatile J:J

.field private volatile K:J

.field private volatile L:J

.field private volatile M:J

.field private N:J

.field private O:J

.field private P:J

.field private Q:J

.field private R:J

.field private S:J

.field private T:J

.field private U:J

.field private V:Lorg/android/agoo/net/channel/ChannelManager;

.field private W:Lorg/android/agoo/net/channel/ChannelManager$Builder;

.field private X:Lcom/umeng/message/proguard/aQ;

.field private Y:Ljava/lang/String;

.field private Z:Z

.field private aa:Z

.field private ab:Z

.field private ac:Lorg/android/agoo/net/channel/ChannelType;

.field private ad:Ljava/lang/String;

.field private ae:Lcom/umeng/message/proguard/aT;

.field private af:Lcom/umeng/message/proguard/aV;

.field private ai:S

.field private volatile ak:I

.field private final al:Lorg/android/agoo/net/channel/IPushHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const-class v0, Lcom/umeng/message/proguard/aR;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/message/proguard/aR;->l:Ljava/lang/String;

    .line 873
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/umeng/message/proguard/aR;->am:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/umeng/message/proguard/aO;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const-wide/16 v2, -0x1

    const/4 v1, 0x0

    .line 124
    invoke-direct {p0, p1, p2}, Lcom/umeng/message/proguard/aN;-><init>(Landroid/content/Context;Lcom/umeng/message/proguard/aO;)V

    .line 81
    iput-wide v2, p0, Lcom/umeng/message/proguard/aR;->K:J

    .line 96
    iput-wide v2, p0, Lcom/umeng/message/proguard/aR;->Q:J

    .line 97
    iput-wide v2, p0, Lcom/umeng/message/proguard/aR;->R:J

    .line 98
    iput-wide v2, p0, Lcom/umeng/message/proguard/aR;->S:J

    .line 99
    iput-wide v2, p0, Lcom/umeng/message/proguard/aR;->T:J

    .line 100
    iput-wide v2, p0, Lcom/umeng/message/proguard/aR;->U:J

    .line 101
    iput-object v1, p0, Lcom/umeng/message/proguard/aR;->V:Lorg/android/agoo/net/channel/ChannelManager;

    .line 102
    iput-object v1, p0, Lcom/umeng/message/proguard/aR;->W:Lorg/android/agoo/net/channel/ChannelManager$Builder;

    .line 104
    iput-object v1, p0, Lcom/umeng/message/proguard/aR;->Y:Ljava/lang/String;

    .line 106
    iput-boolean v4, p0, Lcom/umeng/message/proguard/aR;->Z:Z

    .line 107
    iput-boolean v4, p0, Lcom/umeng/message/proguard/aR;->aa:Z

    .line 108
    iput-boolean v4, p0, Lcom/umeng/message/proguard/aR;->ab:Z

    .line 110
    sget-object v0, Lorg/android/agoo/net/channel/ChannelType;->b:Lorg/android/agoo/net/channel/ChannelType;

    iput-object v0, p0, Lcom/umeng/message/proguard/aR;->ac:Lorg/android/agoo/net/channel/ChannelType;

    .line 112
    iput-object v1, p0, Lcom/umeng/message/proguard/aR;->ad:Ljava/lang/String;

    .line 114
    iput-object v1, p0, Lcom/umeng/message/proguard/aR;->ae:Lcom/umeng/message/proguard/aT;

    .line 115
    iput-object v1, p0, Lcom/umeng/message/proguard/aR;->af:Lcom/umeng/message/proguard/aV;

    .line 169
    iput v4, p0, Lcom/umeng/message/proguard/aR;->ak:I

    .line 532
    new-instance v0, Lcom/umeng/message/proguard/aR$1;

    invoke-direct {v0, p0}, Lcom/umeng/message/proguard/aR$1;-><init>(Lcom/umeng/message/proguard/aR;)V

    iput-object v0, p0, Lcom/umeng/message/proguard/aR;->al:Lorg/android/agoo/net/channel/IPushHandler;

    .line 125
    new-instance v0, Lcom/umeng/message/proguard/aQ;

    invoke-static {p1}, Lorg/android/agoo/a;->B(Landroid/content/Context;)Z

    move-result v1

    invoke-super {p0}, Lcom/umeng/message/proguard/aN;->d()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/umeng/message/proguard/aQ;-><init>(ZLjava/lang/String;)V

    iput-object v0, p0, Lcom/umeng/message/proguard/aR;->X:Lcom/umeng/message/proguard/aQ;

    .line 127
    iget-object v0, p0, Lcom/umeng/message/proguard/aR;->X:Lcom/umeng/message/proguard/aQ;

    invoke-virtual {v0}, Lcom/umeng/message/proguard/aQ;->c()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/umeng/message/proguard/aR;->J:J

    .line 128
    iget-object v0, p0, Lcom/umeng/message/proguard/aR;->X:Lcom/umeng/message/proguard/aQ;

    invoke-virtual {v0}, Lcom/umeng/message/proguard/aQ;->f()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/umeng/message/proguard/aR;->M:J

    .line 130
    iget-object v0, p0, Lcom/umeng/message/proguard/aR;->X:Lcom/umeng/message/proguard/aQ;

    invoke-virtual {v0}, Lcom/umeng/message/proguard/aQ;->h()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/umeng/message/proguard/aR;->K:J

    .line 131
    iget-object v0, p0, Lcom/umeng/message/proguard/aR;->X:Lcom/umeng/message/proguard/aQ;

    invoke-virtual {v0}, Lcom/umeng/message/proguard/aQ;->i()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/umeng/message/proguard/aR;->L:J

    .line 133
    iget-object v0, p0, Lcom/umeng/message/proguard/aR;->X:Lcom/umeng/message/proguard/aQ;

    invoke-virtual {v0}, Lcom/umeng/message/proguard/aQ;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/umeng/message/proguard/aR;->P:J

    .line 134
    iget-object v0, p0, Lcom/umeng/message/proguard/aR;->X:Lcom/umeng/message/proguard/aQ;

    invoke-virtual {v0}, Lcom/umeng/message/proguard/aQ;->j()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/umeng/message/proguard/aR;->N:J

    .line 135
    iget-object v0, p0, Lcom/umeng/message/proguard/aR;->X:Lcom/umeng/message/proguard/aQ;

    invoke-virtual {v0}, Lcom/umeng/message/proguard/aQ;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/umeng/message/proguard/aR;->O:J

    .line 136
    invoke-static {p1}, Lorg/android/agoo/a;->l(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/message/proguard/aR;->Y:Ljava/lang/String;

    .line 137
    invoke-static {p1}, Lorg/android/agoo/intent/IntentUtil;->getAgooSendAction(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/message/proguard/aR;->ad:Ljava/lang/String;

    .line 138
    iput-boolean v4, p0, Lcom/umeng/message/proguard/aR;->ab:Z

    .line 139
    return-void
.end method

.method static synthetic a(Lcom/umeng/message/proguard/aR;)J
    .locals 2

    .prologue
    .line 48
    iget-wide v0, p0, Lcom/umeng/message/proguard/aR;->R:J

    return-wide v0
.end method

.method static synthetic a(Lcom/umeng/message/proguard/aR;J)J
    .locals 1

    .prologue
    .line 48
    iput-wide p1, p0, Lcom/umeng/message/proguard/aR;->Q:J

    return-wide p1
.end method

.method private a(J)Landroid/os/Bundle;
    .locals 9

    .prologue
    const/16 v7, 0x9

    const/16 v3, 0x8

    const/16 v6, 0x31

    .line 1182
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1184
    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Long;->toBinaryString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 1186
    if-eqz v1, :cond_3

    array-length v2, v1

    if-gt v3, v2, :cond_3

    .line 1187
    array-length v2, v1

    if-gt v3, v2, :cond_1

    .line 1188
    const-string v2, "encrypted"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x1

    aget-char v5, v1, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x2

    aget-char v5, v1, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x3

    aget-char v5, v1, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x4

    aget-char v5, v1, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1193
    const/4 v2, 0x6

    aget-char v2, v1, v2

    if-ne v2, v6, :cond_0

    .line 1194
    const-string v2, "report"

    const-string v3, "1"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1196
    :cond_0
    const/4 v2, 0x7

    aget-char v2, v1, v2

    if-ne v2, v6, :cond_1

    .line 1197
    const-string v2, "notify"

    const-string v3, "1"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1201
    :cond_1
    array-length v2, v1

    if-gt v7, v2, :cond_2

    .line 1202
    const/16 v2, 0x8

    aget-char v2, v1, v2

    if-ne v2, v6, :cond_2

    .line 1203
    const-string v2, "has_test"

    const-string v3, "1"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1207
    :cond_2
    const/16 v2, 0xa

    array-length v3, v1

    if-gt v2, v3, :cond_3

    .line 1208
    const/16 v2, 0x9

    aget-char v1, v1, v2

    if-ne v1, v6, :cond_3

    .line 1209
    const-string v1, "duplicate"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1218
    :cond_3
    :goto_0
    return-object v0

    .line 1215
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static synthetic a(Lcom/umeng/message/proguard/aR;Lcom/umeng/message/proguard/aV;)Lcom/umeng/message/proguard/aV;
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/umeng/message/proguard/aR;->af:Lcom/umeng/message/proguard/aV;

    return-object p1
.end method

.method private final a(JLjava/lang/String;)V
    .locals 9

    .prologue
    .line 877
    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, -0x1

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    invoke-direct/range {v1 .. v7}, Lcom/umeng/message/proguard/aR;->a(JLjava/lang/String;ZZI)V

    .line 878
    return-void
.end method

.method private final a(JLjava/lang/String;I)V
    .locals 9

    .prologue
    .line 882
    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/umeng/message/proguard/aR;->a(JLjava/lang/String;ZZI)V

    .line 883
    return-void
.end method

.method private final a(JLjava/lang/String;ZZI)V
    .locals 9

    .prologue
    .line 894
    :try_start_0
    new-instance v0, Lcom/umeng/message/proguard/aT;

    invoke-direct {v0}, Lcom/umeng/message/proguard/aT;-><init>()V

    iput-object v0, p0, Lcom/umeng/message/proguard/aR;->ae:Lcom/umeng/message/proguard/aT;

    .line 895
    iget-object v0, p0, Lcom/umeng/message/proguard/aR;->ae:Lcom/umeng/message/proguard/aT;

    iget-object v1, p0, Lcom/umeng/message/proguard/aR;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/message/proguard/aD;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/umeng/message/proguard/aT;->a(Ljava/lang/String;)V

    .line 896
    iget-object v0, p0, Lcom/umeng/message/proguard/aR;->ae:Lcom/umeng/message/proguard/aT;

    iget-object v1, p0, Lcom/umeng/message/proguard/aR;->c:Landroid/content/Context;

    invoke-static {v1}, Lorg/android/Config;->getAppKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/umeng/message/proguard/aT;->c(Ljava/lang/String;)V

    .line 897
    iget-object v0, p0, Lcom/umeng/message/proguard/aR;->ae:Lcom/umeng/message/proguard/aT;

    const-string v1, "connect"

    invoke-virtual {v0, v1}, Lcom/umeng/message/proguard/aT;->l(Ljava/lang/String;)V

    .line 898
    iget-object v0, p0, Lcom/umeng/message/proguard/aR;->ae:Lcom/umeng/message/proguard/aT;

    iget-object v1, p0, Lcom/umeng/message/proguard/aR;->c:Landroid/content/Context;

    invoke-static {v1}, Lorg/android/Config;->getDeviceToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/umeng/message/proguard/aT;->b(Ljava/lang/String;)V

    .line 899
    iget-object v0, p0, Lcom/umeng/message/proguard/aR;->ae:Lcom/umeng/message/proguard/aT;

    const-string v1, "n"

    invoke-virtual {v0, v1}, Lcom/umeng/message/proguard/aT;->e(Ljava/lang/String;)V

    .line 900
    iget-object v0, p0, Lcom/umeng/message/proguard/aR;->ae:Lcom/umeng/message/proguard/aT;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/umeng/message/proguard/bd;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/umeng/message/proguard/aT;->d(Ljava/lang/String;)V

    .line 901
    const-string v0, "%s_%d"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Lcom/umeng/message/proguard/aR;->am:Ljava/util/Random;

    const/16 v4, 0x2710

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 903
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 907
    iget-wide v4, p0, Lcom/umeng/message/proguard/aR;->U:J

    cmp-long v1, v4, v2

    if-gtz v1, :cond_0

    .line 908
    sget-object v1, Lcom/umeng/message/proguard/aR;->l:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "reConnect[mLastConnectTime:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, p0, Lcom/umeng/message/proguard/aR;->U:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]<[currentTime:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/umeng/message/proguard/aK;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 910
    const-wide/16 v4, -0x1

    iput-wide v4, p0, Lcom/umeng/message/proguard/aR;->U:J

    .line 915
    :cond_0
    add-long/2addr v2, p1

    .line 916
    iget-wide v4, p0, Lcom/umeng/message/proguard/aR;->U:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_1

    iget-wide v4, p0, Lcom/umeng/message/proguard/aR;->U:J

    const-wide/16 v6, -0x1

    cmp-long v1, v4, v6

    if-eqz v1, :cond_1

    .line 917
    sget-object v1, Lcom/umeng/message/proguard/aR;->l:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "reConnect[interval:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]>["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/umeng/message/proguard/aR;->U:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "][state:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/umeng/message/proguard/aK;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 968
    :goto_0
    return-void

    .line 925
    :cond_1
    if-eqz p5, :cond_3

    .line 926
    iget-boolean v1, p0, Lcom/umeng/message/proguard/aR;->Z:Z

    if-eqz v1, :cond_2

    .line 928
    sget-object v1, Lcom/umeng/message/proguard/aR;->l:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tryConnect[interval:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "][connectContext:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "][connnectLock:true]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/umeng/message/proguard/aK;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 964
    :catch_0
    move-exception v0

    .line 965
    sget-object v1, Lcom/umeng/message/proguard/aR;->l:Ljava/lang/String;

    const-string v2, "reConnect"

    invoke-static {v1, v2, v0}, Lcom/umeng/message/proguard/aK;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 933
    :cond_2
    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, p0, Lcom/umeng/message/proguard/aR;->Z:Z

    .line 934
    sget-object v1, Lcom/umeng/message/proguard/aR;->l:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "tryConnect[interval:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "][connectContext:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/umeng/message/proguard/aK;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 937
    const-string v1, "action_connect_unlock"

    int-to-long v4, p6

    invoke-virtual {p0, v1, v4, v5}, Lcom/umeng/message/proguard/aR;->a(Ljava/lang/String;J)V

    .line 942
    :goto_1
    iput-wide v2, p0, Lcom/umeng/message/proguard/aR;->U:J

    .line 944
    iget-object v1, p0, Lcom/umeng/message/proguard/aR;->V:Lorg/android/agoo/net/channel/ChannelManager;

    if-eqz v1, :cond_5

    .line 945
    iget-object v1, p0, Lcom/umeng/message/proguard/aR;->V:Lorg/android/agoo/net/channel/ChannelManager;

    invoke-virtual {v1}, Lorg/android/agoo/net/channel/ChannelManager;->readyChannelState()Lorg/android/agoo/net/channel/ChannelState;

    move-result-object v1

    .line 946
    if-eqz v1, :cond_5

    .line 947
    sget-object v2, Lorg/android/agoo/net/channel/ChannelState;->a:Lorg/android/agoo/net/channel/ChannelState;

    if-ne v1, v2, :cond_4

    .line 948
    sget-object v1, Lcom/umeng/message/proguard/aR;->l:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reConnect[connectContext:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "][connecting]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/umeng/message/proguard/aK;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 939
    :cond_3
    sget-object v1, Lcom/umeng/message/proguard/aR;->l:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "forceConnect[interval:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "][connectContext:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/umeng/message/proguard/aK;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 952
    :cond_4
    sget-object v2, Lorg/android/agoo/net/channel/ChannelState;->b:Lorg/android/agoo/net/channel/ChannelState;

    if-ne v1, v2, :cond_5

    .line 953
    sget-object v1, Lcom/umeng/message/proguard/aR;->l:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "disconnect[connectContext:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/umeng/message/proguard/aK;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 955
    iget-object v1, p0, Lcom/umeng/message/proguard/aR;->V:Lorg/android/agoo/net/channel/ChannelManager;

    invoke-virtual {v1}, Lorg/android/agoo/net/channel/ChannelManager;->disconnect()V

    .line 959
    :cond_5
    const-string v1, "agoo_action_heart"

    invoke-virtual {p0, v1}, Lcom/umeng/message/proguard/aR;->e(Ljava/lang/String;)V

    .line 960
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 961
    const-string v2, "CONNECT_REFRESH_HOST"

    invoke-virtual {v1, v2, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 962
    const-string v2, "CONNECT_STATE"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 963
    const-string v0, "agoo_action_re_connect"

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/umeng/message/proguard/aR;->a(Ljava/lang/String;Landroid/os/Bundle;J)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private a(Landroid/content/Context;)V
    .locals 6

    .prologue
    .line 333
    :try_start_0
    iget-object v0, p0, Lcom/umeng/message/proguard/aR;->V:Lorg/android/agoo/net/channel/ChannelManager;

    if-eqz v0, :cond_1

    .line 334
    invoke-static {p1}, Lcom/umeng/message/proguard/aR;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 335
    sget-object v0, Lcom/umeng/message/proguard/aR;->l:Ljava/lang/String;

    const-string v1, "[onHandlerScreenOnOrUserPresent][AirplaneModeOn]"

    invoke-static {v0, v1}, Lcom/umeng/message/proguard/aK;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    :cond_0
    invoke-static {p1}, Lcom/umeng/message/proguard/aS;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 339
    sget-object v0, Lcom/umeng/message/proguard/aR;->l:Ljava/lang/String;

    const-string v1, "[onHandlerScreenOnOrUserPresent][network connected failed]"

    invoke-static {v0, v1}, Lcom/umeng/message/proguard/aK;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    :cond_1
    :goto_0
    return-void

    .line 344
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 345
    iget-wide v2, p0, Lcom/umeng/message/proguard/aR;->Q:J

    sub-long/2addr v0, v2

    .line 346
    iget-wide v2, p0, Lcom/umeng/message/proguard/aR;->T:J

    cmp-long v2, v0, v2

    if-ltz v2, :cond_3

    .line 347
    sget-object v2, Lcom/umeng/message/proguard/aR;->l:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onHandlerScreenOnOrUserPresent-->timeout["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-wide/16 v4, 0x3e8

    div-long/2addr v0, v4

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/umeng/message/proguard/aK;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    iget-wide v0, p0, Lcom/umeng/message/proguard/aR;->J:J

    const-string v2, "screen_on_connect"

    const v3, 0xea60

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/umeng/message/proguard/aR;->a(JLjava/lang/String;I)V

    goto :goto_0

    .line 376
    :catch_0
    move-exception v0

    goto :goto_0

    .line 353
    :cond_3
    invoke-direct {p0, p1}, Lcom/umeng/message/proguard/aR;->c(Landroid/content/Context;)V

    .line 354
    iget-object v0, p0, Lcom/umeng/message/proguard/aR;->V:Lorg/android/agoo/net/channel/ChannelManager;

    invoke-virtual {v0}, Lorg/android/agoo/net/channel/ChannelManager;->readyChannelState()Lorg/android/agoo/net/channel/ChannelState;

    move-result-object v0

    .line 355
    sget-object v1, Lorg/android/agoo/net/channel/ChannelState;->b:Lorg/android/agoo/net/channel/ChannelState;

    if-eq v0, v1, :cond_4

    sget-object v1, Lorg/android/agoo/net/channel/ChannelState;->a:Lorg/android/agoo/net/channel/ChannelState;

    if-eq v0, v1, :cond_4

    .line 357
    sget-object v1, Lcom/umeng/message/proguard/aR;->l:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onHandlerScreenOn-->state["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/umeng/message/proguard/aK;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    iget-wide v0, p0, Lcom/umeng/message/proguard/aR;->J:J

    const-string v2, "screen_on_connect"

    const v3, 0xea60

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/umeng/message/proguard/aR;->a(JLjava/lang/String;I)V

    goto :goto_0

    .line 362
    :cond_4
    iget-object v0, p0, Lcom/umeng/message/proguard/aR;->V:Lorg/android/agoo/net/channel/ChannelManager;

    invoke-virtual {v0}, Lorg/android/agoo/net/channel/ChannelManager;->readyChannelType()Lorg/android/agoo/net/channel/ChannelType;

    move-result-object v0

    .line 363
    sget-object v1, Lcom/umeng/message/proguard/aR$3;->a:[I

    invoke-virtual {v0}, Lorg/android/agoo/net/channel/ChannelType;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 365
    :pswitch_0
    sget-object v0, Lcom/umeng/message/proguard/aR;->l:Ljava/lang/String;

    const-string v1, "onHandlerScreenOnOrUserPresent-->[send heart]"

    invoke-static {v0, v1}, Lcom/umeng/message/proguard/aK;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    iget-object v0, p0, Lcom/umeng/message/proguard/aR;->V:Lorg/android/agoo/net/channel/ChannelManager;

    invoke-virtual {v0}, Lorg/android/agoo/net/channel/ChannelManager;->ping()J

    goto/16 :goto_0

    .line 370
    :pswitch_1
    sget-object v0, Lcom/umeng/message/proguard/aR;->l:Ljava/lang/String;

    const-string v1, "onHandlerScreenOnOrUserPresent-->[connect successfully]"

    invoke-static {v0, v1}, Lcom/umeng/message/proguard/aK;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 363
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic a(Lcom/umeng/message/proguard/aR;Lcom/umeng/message/proguard/aT;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/umeng/message/proguard/aR;->a(Lcom/umeng/message/proguard/aT;)V

    return-void
.end method

.method static synthetic a(Lcom/umeng/message/proguard/aR;Ljava/lang/Object;JLjava/lang/String;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/umeng/message/proguard/aR;->a(Ljava/lang/Object;JLjava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/umeng/message/proguard/aR;Ljava/lang/Object;Lorg/android/agoo/net/channel/ChannelError;Ljava/util/Map;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/umeng/message/proguard/aR;->b(Ljava/lang/Object;Lorg/android/agoo/net/channel/ChannelError;Ljava/util/Map;Ljava/lang/Throwable;)V

    return-void
.end method

.method private final a(Lcom/umeng/message/proguard/aT;)V
    .locals 3

    .prologue
    .line 670
    :try_start_0
    iget-object v0, p0, Lcom/umeng/message/proguard/aR;->c:Landroid/content/Context;

    const-string v1, "AGOO_CONNECT"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 673
    :try_start_1
    const-string v1, "AGOO_CONNECT_COUNT"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v0

    iput-short v0, p0, Lcom/umeng/message/proguard/aR;->ai:S
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 677
    :goto_0
    :try_start_2
    iget-short v0, p0, Lcom/umeng/message/proguard/aR;->ai:S

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/message/proguard/aT;->m(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 681
    :goto_1
    return-void

    .line 678
    :catch_0
    move-exception v0

    goto :goto_1

    .line 675
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method private a(Ljava/lang/Object;JLjava/lang/String;)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x3e8

    .line 844
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 846
    :try_start_0
    invoke-static {p4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 847
    const/16 v1, 0x14

    if-lt v0, v1, :cond_0

    .line 848
    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/umeng/message/proguard/aR;->O:J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 854
    :cond_0
    :goto_0
    iget-wide v0, p0, Lcom/umeng/message/proguard/aR;->O:J

    iget-wide v2, p0, Lcom/umeng/message/proguard/aR;->N:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    .line 855
    iget-wide v0, p0, Lcom/umeng/message/proguard/aR;->O:J

    iput-wide v0, p0, Lcom/umeng/message/proguard/aR;->P:J

    .line 856
    iget-wide v0, p0, Lcom/umeng/message/proguard/aR;->O:J

    const-wide/16 v2, 0x5

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/umeng/message/proguard/aR;->T:J

    .line 866
    :goto_1
    sget-object v0, Lcom/umeng/message/proguard/aR;->l:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "heart[onh"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]heart--->[start checktime:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/umeng/message/proguard/aR;->P:J

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|timeout:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/umeng/message/proguard/aR;->T:J

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "s]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/umeng/message/proguard/aK;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 869
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/umeng/message/proguard/aR;->S:J

    .line 870
    const-string v0, "agoo_action_heart"

    iget-wide v2, p0, Lcom/umeng/message/proguard/aR;->P:J

    invoke-virtual {p0, v0, v2, v3}, Lcom/umeng/message/proguard/aR;->b(Ljava/lang/String;J)V

    .line 871
    return-void

    .line 850
    :catch_0
    move-exception v0

    .line 851
    sget-object v1, Lcom/umeng/message/proguard/aR;->l:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startHeart("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/umeng/message/proguard/aK;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 858
    :cond_1
    new-instance v0, Lcom/umeng/message/proguard/aS;

    iget-object v1, p0, Lcom/umeng/message/proguard/aR;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/umeng/message/proguard/aS;-><init>(Landroid/content/Context;)V

    .line 859
    invoke-virtual {v0}, Lcom/umeng/message/proguard/aS;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 860
    iget-wide v0, p0, Lcom/umeng/message/proguard/aR;->O:J

    long-to-double v0, v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v0, v2

    double-to-long v0, v0

    iput-wide v0, p0, Lcom/umeng/message/proguard/aR;->P:J

    .line 864
    :goto_2
    iget-wide v0, p0, Lcom/umeng/message/proguard/aR;->O:J

    long-to-double v0, v0

    const-wide v2, 0x3ff199999999999aL    # 1.1

    mul-double/2addr v0, v2

    double-to-long v0, v0

    iput-wide v0, p0, Lcom/umeng/message/proguard/aR;->T:J

    goto/16 :goto_1

    .line 862
    :cond_2
    iget-wide v0, p0, Lcom/umeng/message/proguard/aR;->O:J

    long-to-double v0, v0

    const-wide v2, 0x3fe6666666666666L    # 0.7

    mul-double/2addr v0, v2

    double-to-long v0, v0

    iput-wide v0, p0, Lcom/umeng/message/proguard/aR;->P:J

    goto :goto_2
.end method

.method private final a(Ljava/lang/Object;Lorg/android/agoo/net/channel/ChannelError;Ljava/util/Map;Ljava/lang/Throwable;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lorg/android/agoo/net/channel/ChannelError;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 719
    if-eqz p1, :cond_0

    .line 720
    sget-object v0, Lcom/umeng/message/proguard/aR;->l:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handlerError["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/umeng/message/proguard/aK;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 722
    :cond_0
    if-eqz p2, :cond_1

    .line 723
    sget-object v0, Lcom/umeng/message/proguard/aR;->l:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handlerError["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lorg/android/agoo/net/channel/ChannelError;->getErrorCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/umeng/message/proguard/aK;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 725
    :cond_1
    if-eqz p3, :cond_2

    invoke-interface {p3}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 726
    sget-object v0, Lcom/umeng/message/proguard/aR;->l:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handlerError["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/umeng/message/proguard/aK;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 728
    :cond_2
    if-eqz p4, :cond_3

    .line 729
    sget-object v0, Lcom/umeng/message/proguard/aR;->l:Ljava/lang/String;

    const-string v1, "handlerError"

    invoke-static {v0, v1, p4}, Lcom/umeng/message/proguard/aK;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 731
    :cond_3
    iget-object v1, p0, Lcom/umeng/message/proguard/aR;->c:Landroid/content/Context;

    iget-wide v2, p0, Lcom/umeng/message/proguard/aR;->R:J

    const-string v4, "onError"

    if-nez p2, :cond_4

    const-string v0, ""

    :goto_0
    invoke-static {v1, v2, v3, v4, v0}, Lcom/umeng/message/proguard/aD;->a(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;)V

    .line 733
    return-void

    .line 731
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lorg/android/agoo/net/channel/ChannelError;->getErrorCode()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic b(Lcom/umeng/message/proguard/aR;J)J
    .locals 1

    .prologue
    .line 48
    iput-wide p1, p0, Lcom/umeng/message/proguard/aR;->R:J

    return-wide p1
.end method

.method static synthetic b(Lcom/umeng/message/proguard/aR;)Lorg/android/agoo/net/channel/ChannelManager$Builder;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/umeng/message/proguard/aR;->W:Lorg/android/agoo/net/channel/ChannelManager$Builder;

    return-object v0
.end method

.method private final b(JLjava/lang/String;)V
    .locals 1

    .prologue
    .line 887
    const/16 v0, 0x7530

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/umeng/message/proguard/aR;->a(JLjava/lang/String;I)V

    .line 888
    return-void
.end method

.method private b(Landroid/content/Context;)V
    .locals 8

    .prologue
    .line 384
    :try_start_0
    iget-object v0, p0, Lcom/umeng/message/proguard/aR;->V:Lorg/android/agoo/net/channel/ChannelManager;

    if-eqz v0, :cond_0

    .line 385
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 386
    iget-wide v2, p0, Lcom/umeng/message/proguard/aR;->Q:J

    sub-long v2, v0, v2

    .line 387
    iget-wide v4, p0, Lcom/umeng/message/proguard/aR;->T:J

    cmp-long v4, v2, v4

    if-ltz v4, :cond_1

    .line 388
    iget-object v0, p0, Lcom/umeng/message/proguard/aR;->c:Landroid/content/Context;

    iget-wide v4, p0, Lcom/umeng/message/proguard/aR;->R:J

    invoke-static {v0, v2, v3, v4, v5}, Lcom/umeng/message/proguard/aD;->a(Landroid/content/Context;JJ)V

    .line 389
    invoke-direct {p0}, Lcom/umeng/message/proguard/aR;->n()J

    move-result-wide v0

    .line 390
    sget-object v4, Lcom/umeng/message/proguard/aR;->l:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onHandlerHeart-->["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]timeout["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-wide/16 v6, 0x3e8

    div-long/2addr v2, v6

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/umeng/message/proguard/aK;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    const-string v2, "heart_connect_timeout"

    invoke-direct {p0, v0, v1, v2}, Lcom/umeng/message/proguard/aR;->a(JLjava/lang/String;)V

    .line 418
    :cond_0
    :goto_0
    return-void

    .line 395
    :cond_1
    sget-object v2, Lcom/umeng/message/proguard/aR;->l:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onHandlerHeart-->[currentTime\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "][mLastSendDataTime:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/umeng/message/proguard/aR;->S:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "][checkHeartInterval:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/umeng/message/proguard/aR;->P:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/umeng/message/proguard/aK;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    iget-object v2, p0, Lcom/umeng/message/proguard/aR;->V:Lorg/android/agoo/net/channel/ChannelManager;

    invoke-virtual {v2}, Lorg/android/agoo/net/channel/ChannelManager;->readyChannelState()Lorg/android/agoo/net/channel/ChannelState;

    move-result-object v2

    .line 399
    sget-object v3, Lorg/android/agoo/net/channel/ChannelState;->b:Lorg/android/agoo/net/channel/ChannelState;

    if-ne v2, v3, :cond_0

    .line 400
    iget-object v2, p0, Lcom/umeng/message/proguard/aR;->V:Lorg/android/agoo/net/channel/ChannelManager;

    invoke-virtual {v2}, Lorg/android/agoo/net/channel/ChannelManager;->readyChannelType()Lorg/android/agoo/net/channel/ChannelType;

    move-result-object v2

    .line 401
    iput-wide v0, p0, Lcom/umeng/message/proguard/aR;->S:J

    .line 402
    sget-object v0, Lcom/umeng/message/proguard/aR$3;->a:[I

    invoke-virtual {v2}, Lorg/android/agoo/net/channel/ChannelType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 404
    :pswitch_0
    sget-object v0, Lcom/umeng/message/proguard/aR;->l:Ljava/lang/String;

    const-string v1, "onHandlerHeart-->[send heart]"

    invoke-static {v0, v1}, Lcom/umeng/message/proguard/aK;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    invoke-direct {p0, p1}, Lcom/umeng/message/proguard/aR;->c(Landroid/content/Context;)V

    .line 406
    iget-object v0, p0, Lcom/umeng/message/proguard/aR;->V:Lorg/android/agoo/net/channel/ChannelManager;

    invoke-virtual {v0}, Lorg/android/agoo/net/channel/ChannelManager;->ping()J

    goto :goto_0

    .line 415
    :catch_0
    move-exception v0

    goto :goto_0

    .line 409
    :pswitch_1
    sget-object v0, Lcom/umeng/message/proguard/aR;->l:Ljava/lang/String;

    const-string v1, "onHandlerHeart-->[check heart]"

    invoke-static {v0, v1}, Lcom/umeng/message/proguard/aK;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 402
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private b(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 236
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 237
    if-eqz v0, :cond_0

    .line 238
    const-string v1, "state"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 239
    sget-object v1, Lcom/umeng/message/proguard/aR;->l:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onHandlerAirplaneMode["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/umeng/message/proguard/aK;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 245
    :cond_0
    :goto_0
    return-void

    .line 242
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private final b(Ljava/lang/Object;Lorg/android/agoo/net/channel/ChannelError;Ljava/util/Map;Ljava/lang/Throwable;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lorg/android/agoo/net/channel/ChannelError;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 739
    if-eqz p2, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/umeng/message/proguard/aR;->V:Lorg/android/agoo/net/channel/ChannelManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/umeng/message/proguard/aR;->W:Lorg/android/agoo/net/channel/ChannelManager$Builder;

    if-nez v0, :cond_1

    .line 797
    :cond_0
    :goto_0
    return-void

    .line 742
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/umeng/message/proguard/aR;->a(Ljava/lang/Object;Lorg/android/agoo/net/channel/ChannelError;Ljava/util/Map;Ljava/lang/Throwable;)V

    .line 743
    invoke-virtual {p2}, Lorg/android/agoo/net/channel/ChannelError;->getChannelLevel()Lorg/android/agoo/net/channel/ChannelError$Level;

    move-result-object v0

    .line 744
    const-string v1, "agoo_action_re_connect"

    invoke-virtual {p0, v1}, Lcom/umeng/message/proguard/aR;->e(Ljava/lang/String;)V

    .line 745
    const-string v1, "agoo_action_heart"

    invoke-virtual {p0, v1}, Lcom/umeng/message/proguard/aR;->e(Ljava/lang/String;)V

    .line 746
    new-instance v1, Lorg/android/agoo/net/async/c;

    iget-object v2, p0, Lcom/umeng/message/proguard/aR;->c:Landroid/content/Context;

    const-string v3, "agoo_pushservice_connect_error"

    invoke-direct {v1, v2, v3}, Lorg/android/agoo/net/async/c;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 747
    iget-object v2, p0, Lcom/umeng/message/proguard/aR;->c:Landroid/content/Context;

    invoke-static {v2}, Lorg/android/Config;->getConnectError(Landroid/content/Context;)Ljava/util/LinkedHashMap;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/android/agoo/net/async/c;->a(Ljava/util/LinkedHashMap;)V

    .line 749
    iget-object v1, p0, Lcom/umeng/message/proguard/aR;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/message/proguard/aD;->m(Landroid/content/Context;)V

    .line 750
    sget-object v1, Lcom/umeng/message/proguard/aR$3;->b:[I

    invoke-virtual {v0}, Lorg/android/agoo/net/channel/ChannelError$Level;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 752
    :pswitch_0
    sget-object v0, Lcom/umeng/message/proguard/aR;->l:Ljava/lang/String;

    const-string v1, "handlerError[sign error]"

    invoke-static {v0, v1}, Lcom/umeng/message/proguard/aK;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 753
    iget-object v0, p0, Lcom/umeng/message/proguard/aR;->b:Lcom/umeng/message/proguard/aO;

    const-string v1, "ERRCODE_AUTH_REJECT"

    invoke-interface {v0, v1}, Lcom/umeng/message/proguard/aO;->onHandleError(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 793
    :catch_0
    move-exception v0

    .line 794
    sget-object v1, Lcom/umeng/message/proguard/aR;->l:Ljava/lang/String;

    const-string v2, "handlerError"

    invoke-static {v1, v2, v0}, Lcom/umeng/message/proguard/aK;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 756
    :pswitch_1
    :try_start_1
    sget-object v0, Lcom/umeng/message/proguard/aR;->l:Ljava/lang/String;

    const-string v1, "handlerError[connect pause]"

    invoke-static {v0, v1}, Lcom/umeng/message/proguard/aK;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 759
    :pswitch_2
    sget-object v0, Lcom/umeng/message/proguard/aR;->l:Ljava/lang/String;

    const-string v1, "handlerError[force_chunked]"

    invoke-static {v0, v1}, Lcom/umeng/message/proguard/aK;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 760
    iget-object v0, p0, Lcom/umeng/message/proguard/aR;->c:Landroid/content/Context;

    invoke-static {v0, p4}, Lcom/umeng/message/proguard/aD;->a(Landroid/content/Context;Ljava/lang/Throwable;)V

    .line 761
    new-instance v0, Lorg/android/agoo/net/async/c;

    iget-object v1, p0, Lcom/umeng/message/proguard/aR;->c:Landroid/content/Context;

    const-string v2, "spydForceChunked"

    invoke-direct {v0, v1, v2}, Lorg/android/agoo/net/async/c;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 762
    iget-object v1, p0, Lcom/umeng/message/proguard/aR;->c:Landroid/content/Context;

    invoke-static {v1}, Lorg/android/Config;->getConnectError(Landroid/content/Context;)Ljava/util/LinkedHashMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/android/agoo/net/async/c;->a(Ljava/util/LinkedHashMap;)V

    .line 763
    sget-object v0, Lorg/android/agoo/net/channel/ChannelType;->a:Lorg/android/agoo/net/channel/ChannelType;

    iput-object v0, p0, Lcom/umeng/message/proguard/aR;->ac:Lorg/android/agoo/net/channel/ChannelType;

    .line 764
    iget-object v0, p0, Lcom/umeng/message/proguard/aR;->W:Lorg/android/agoo/net/channel/ChannelManager$Builder;

    sget-object v1, Lorg/android/agoo/net/channel/ChannelType;->a:Lorg/android/agoo/net/channel/ChannelType;

    invoke-virtual {v0, v1}, Lorg/android/agoo/net/channel/ChannelManager$Builder;->setChannel(Lorg/android/agoo/net/channel/ChannelType;)Lorg/android/agoo/net/channel/ChannelManager$Builder;

    .line 765
    iget-wide v0, p0, Lcom/umeng/message/proguard/aR;->J:J

    const-string v2, "error_connect"

    invoke-direct {p0, v0, v1, v2}, Lcom/umeng/message/proguard/aR;->a(JLjava/lang/String;)V

    goto/16 :goto_0

    .line 768
    :pswitch_3
    sget-object v0, Lcom/umeng/message/proguard/aR;->l:Ljava/lang/String;

    const-string v1, "handlerError[spdy_reload]"

    invoke-static {v0, v1}, Lcom/umeng/message/proguard/aK;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 769
    iget-object v0, p0, Lcom/umeng/message/proguard/aR;->W:Lorg/android/agoo/net/channel/ChannelManager$Builder;

    invoke-virtual {v0}, Lorg/android/agoo/net/channel/ChannelManager$Builder;->forceInit()Lorg/android/agoo/net/channel/ChannelManager$Builder;

    .line 770
    iget-object v0, p0, Lcom/umeng/message/proguard/aR;->W:Lorg/android/agoo/net/channel/ChannelManager$Builder;

    invoke-virtual {v0}, Lorg/android/agoo/net/channel/ChannelManager$Builder;->refreshHost()Lorg/android/agoo/net/channel/ChannelManager$Builder;

    .line 771
    iget-wide v0, p0, Lcom/umeng/message/proguard/aR;->J:J

    const-string v2, "error_connect"

    invoke-direct {p0, v0, v1, v2}, Lcom/umeng/message/proguard/aR;->a(JLjava/lang/String;)V

    goto/16 :goto_0

    .line 774
    :pswitch_4
    sget-object v0, Lcom/umeng/message/proguard/aR;->l:Ljava/lang/String;

    const-string v1, "handlerError[clear_x_token]"

    invoke-static {v0, v1}, Lcom/umeng/message/proguard/aK;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 775
    iget-object v0, p0, Lcom/umeng/message/proguard/aR;->W:Lorg/android/agoo/net/channel/ChannelManager$Builder;

    const-string v1, "x-at"

    invoke-virtual {v0, v1}, Lorg/android/agoo/net/channel/ChannelManager$Builder;->removeHeader(Ljava/lang/String;)Lorg/android/agoo/net/channel/ChannelManager$Builder;

    .line 776
    iget-object v0, p0, Lcom/umeng/message/proguard/aR;->W:Lorg/android/agoo/net/channel/ChannelManager$Builder;

    invoke-virtual {v0}, Lorg/android/agoo/net/channel/ChannelManager$Builder;->refreshHost()Lorg/android/agoo/net/channel/ChannelManager$Builder;

    .line 777
    iget-wide v0, p0, Lcom/umeng/message/proguard/aR;->J:J

    const-string v2, "error_connect"

    invoke-direct {p0, v0, v1, v2}, Lcom/umeng/message/proguard/aR;->a(JLjava/lang/String;)V

    goto/16 :goto_0

    .line 780
    :pswitch_5
    sget-object v0, Lcom/umeng/message/proguard/aR;->l:Ljava/lang/String;

    const-string v1, "handlerError[refresh_host]"

    invoke-static {v0, v1}, Lcom/umeng/message/proguard/aK;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 781
    iget-object v0, p0, Lcom/umeng/message/proguard/aR;->W:Lorg/android/agoo/net/channel/ChannelManager$Builder;

    invoke-virtual {v0}, Lorg/android/agoo/net/channel/ChannelManager$Builder;->refreshHost()Lorg/android/agoo/net/channel/ChannelManager$Builder;

    .line 782
    invoke-direct {p0}, Lcom/umeng/message/proguard/aR;->n()J

    move-result-wide v0

    const-string v2, "error_connect"

    invoke-direct {p0, v0, v1, v2}, Lcom/umeng/message/proguard/aR;->a(JLjava/lang/String;)V

    goto/16 :goto_0

    .line 785
    :pswitch_6
    sget-object v0, Lcom/umeng/message/proguard/aR;->l:Ljava/lang/String;

    const-string v1, "handlerError[only_reconnect]"

    invoke-static {v0, v1}, Lcom/umeng/message/proguard/aK;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 786
    invoke-direct {p0}, Lcom/umeng/message/proguard/aR;->n()J

    move-result-wide v0

    const-string v2, "error_connect"

    invoke-direct {p0, v0, v1, v2}, Lcom/umeng/message/proguard/aR;->a(JLjava/lang/String;)V

    goto/16 :goto_0

    .line 789
    :pswitch_7
    sget-object v0, Lcom/umeng/message/proguard/aR;->l:Ljava/lang/String;

    const-string v1, "handlerError[unnecessary]"

    invoke-static {v0, v1}, Lcom/umeng/message/proguard/aK;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 750
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method static synthetic c(Lcom/umeng/message/proguard/aR;)J
    .locals 2

    .prologue
    .line 48
    iget-wide v0, p0, Lcom/umeng/message/proguard/aR;->Q:J

    return-wide v0
.end method

.method static synthetic c(Lcom/umeng/message/proguard/aR;J)J
    .locals 1

    .prologue
    .line 48
    iput-wide p1, p0, Lcom/umeng/message/proguard/aR;->S:J

    return-wide p1
.end method

.method private c(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 422
    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/umeng/message/proguard/aR;->ad:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 423
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/umeng/message/proguard/aR;->ad:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 424
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 425
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 431
    :cond_0
    :goto_0
    return-void

    .line 427
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private c(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, -0x1

    .line 434
    const-string v0, "CONNECT_STATE"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 435
    const-string v0, "CONNECT_REFRESH_HOST"

    const/4 v2, 0x1

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 437
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 438
    sget-object v0, Lcom/umeng/message/proguard/aR;->l:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onHandlerConnect["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/umeng/message/proguard/aK;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    :goto_0
    return-void

    .line 442
    :cond_0
    invoke-static {p1}, Lorg/android/Config;->getSpdyConnectTimes(Landroid/content/Context;)I

    move-result v3

    .line 443
    invoke-static {p1}, Lorg/android/Config;->getHttpConnectTimes(Landroid/content/Context;)I

    move-result v4

    .line 444
    sget-object v0, Lcom/umeng/message/proguard/aR;->l:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onHandlerConnect spdyCount="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",httpCount="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    iget-object v0, p0, Lcom/umeng/message/proguard/aR;->W:Lorg/android/agoo/net/channel/ChannelManager$Builder;

    invoke-virtual {v0}, Lorg/android/agoo/net/channel/ChannelManager$Builder;->build()Lorg/android/agoo/net/channel/ChannelManager;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/message/proguard/aR;->V:Lorg/android/agoo/net/channel/ChannelManager;

    .line 446
    const/4 v0, 0x0

    .line 447
    iget-object v5, p0, Lcom/umeng/message/proguard/aR;->V:Lorg/android/agoo/net/channel/ChannelManager;

    if-eqz v5, :cond_1

    .line 448
    iget-object v0, p0, Lcom/umeng/message/proguard/aR;->V:Lorg/android/agoo/net/channel/ChannelManager;

    invoke-virtual {v0}, Lorg/android/agoo/net/channel/ChannelManager;->readyChannelType()Lorg/android/agoo/net/channel/ChannelType;

    move-result-object v0

    .line 460
    :cond_1
    const/4 v5, 0x6

    if-le v3, v5, :cond_2

    if-eqz v0, :cond_2

    sget-object v3, Lorg/android/agoo/net/channel/ChannelType;->b:Lorg/android/agoo/net/channel/ChannelType;

    invoke-virtual {v0, v3}, Lorg/android/agoo/net/channel/ChannelType;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 461
    invoke-static {p1, v8}, Lorg/android/Config;->setSpdyConnectTimes(Landroid/content/Context;I)V

    .line 463
    invoke-static {p1}, Lcom/umeng/message/proguard/aD;->o(Landroid/content/Context;)V

    .line 464
    sget-object v0, Lorg/android/agoo/net/channel/ChannelType;->a:Lorg/android/agoo/net/channel/ChannelType;

    iput-object v0, p0, Lcom/umeng/message/proguard/aR;->ac:Lorg/android/agoo/net/channel/ChannelType;

    .line 465
    iget-object v0, p0, Lcom/umeng/message/proguard/aR;->W:Lorg/android/agoo/net/channel/ChannelManager$Builder;

    sget-object v1, Lorg/android/agoo/net/channel/ChannelType;->a:Lorg/android/agoo/net/channel/ChannelType;

    invoke-virtual {v0, v1}, Lorg/android/agoo/net/channel/ChannelManager$Builder;->setChannel(Lorg/android/agoo/net/channel/ChannelType;)Lorg/android/agoo/net/channel/ChannelManager$Builder;

    .line 466
    iget-wide v0, p0, Lcom/umeng/message/proguard/aR;->J:J

    const-string v2, "error_connect"

    invoke-direct {p0, v0, v1, v2}, Lcom/umeng/message/proguard/aR;->a(JLjava/lang/String;)V

    goto :goto_0

    .line 468
    :cond_2
    const/4 v3, 0x2

    if-le v4, v3, :cond_3

    if-eqz v0, :cond_3

    sget-object v3, Lorg/android/agoo/net/channel/ChannelType;->a:Lorg/android/agoo/net/channel/ChannelType;

    invoke-virtual {v0, v3}, Lorg/android/agoo/net/channel/ChannelType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 469
    invoke-static {p1, v8}, Lorg/android/Config;->setHttpConnectTimes(Landroid/content/Context;I)V

    .line 470
    sget-object v0, Lorg/android/agoo/net/channel/ChannelType;->b:Lorg/android/agoo/net/channel/ChannelType;

    iput-object v0, p0, Lcom/umeng/message/proguard/aR;->ac:Lorg/android/agoo/net/channel/ChannelType;

    .line 471
    iget-object v0, p0, Lcom/umeng/message/proguard/aR;->W:Lorg/android/agoo/net/channel/ChannelManager$Builder;

    sget-object v1, Lorg/android/agoo/net/channel/ChannelType;->b:Lorg/android/agoo/net/channel/ChannelType;

    invoke-virtual {v0, v1}, Lorg/android/agoo/net/channel/ChannelManager$Builder;->setChannel(Lorg/android/agoo/net/channel/ChannelType;)Lorg/android/agoo/net/channel/ChannelManager$Builder;

    .line 472
    iget-wide v0, p0, Lcom/umeng/message/proguard/aR;->J:J

    const-string v2, "error_connect"

    invoke-direct {p0, v0, v1, v2}, Lcom/umeng/message/proguard/aR;->a(JLjava/lang/String;)V

    goto/16 :goto_0

    .line 475
    :cond_3
    iget-object v0, p0, Lcom/umeng/message/proguard/aR;->ae:Lcom/umeng/message/proguard/aT;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/umeng/message/proguard/bd;->a(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/umeng/message/proguard/aT;->h(Ljava/lang/String;)V

    .line 476
    invoke-static {p1}, Lcom/umeng/message/proguard/aR;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 477
    iget-object v0, p0, Lcom/umeng/message/proguard/aR;->ae:Lcom/umeng/message/proguard/aT;

    const-string v2, "network_error_connect"

    invoke-virtual {v0, v2}, Lcom/umeng/message/proguard/aT;->f(Ljava/lang/String;)V

    .line 478
    iget-object v0, p0, Lcom/umeng/message/proguard/aR;->ae:Lcom/umeng/message/proguard/aT;

    const-string v2, "n"

    invoke-virtual {v0, v2}, Lcom/umeng/message/proguard/aT;->e(Ljava/lang/String;)V

    .line 479
    iget-object v0, p0, Lcom/umeng/message/proguard/aR;->ae:Lcom/umeng/message/proguard/aT;

    const-string v2, "1"

    invoke-virtual {v0, v2}, Lcom/umeng/message/proguard/aT;->j(Ljava/lang/String;)V

    .line 480
    iget-object v0, p0, Lcom/umeng/message/proguard/aR;->ae:Lcom/umeng/message/proguard/aT;

    invoke-direct {p0, v0}, Lcom/umeng/message/proguard/aR;->a(Lcom/umeng/message/proguard/aT;)V

    .line 481
    iget-object v0, p0, Lcom/umeng/message/proguard/aR;->ae:Lcom/umeng/message/proguard/aT;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/umeng/message/proguard/bd;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/umeng/message/proguard/aT;->i(Ljava/lang/String;)V

    .line 483
    iget-object v0, p0, Lcom/umeng/message/proguard/aR;->ae:Lcom/umeng/message/proguard/aT;

    invoke-static {p1, v0}, Lcom/umeng/message/proguard/aD;->a(Landroid/content/Context;Lcom/umeng/message/proguard/aT;)V

    .line 484
    sget-object v0, Lcom/umeng/message/proguard/aR;->l:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[airplaneModeOn][true]state["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/umeng/message/proguard/aK;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 489
    :cond_4
    invoke-static {p1}, Lcom/umeng/message/proguard/aS;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 490
    iget-object v0, p0, Lcom/umeng/message/proguard/aR;->ae:Lcom/umeng/message/proguard/aT;

    const-string v2, "network_error_connect"

    invoke-virtual {v0, v2}, Lcom/umeng/message/proguard/aT;->f(Ljava/lang/String;)V

    .line 491
    iget-object v0, p0, Lcom/umeng/message/proguard/aR;->ae:Lcom/umeng/message/proguard/aT;

    const-string v2, "n"

    invoke-virtual {v0, v2}, Lcom/umeng/message/proguard/aT;->e(Ljava/lang/String;)V

    .line 492
    iget-object v0, p0, Lcom/umeng/message/proguard/aR;->ae:Lcom/umeng/message/proguard/aT;

    const-string v2, "1"

    invoke-virtual {v0, v2}, Lcom/umeng/message/proguard/aT;->j(Ljava/lang/String;)V

    .line 493
    iget-object v0, p0, Lcom/umeng/message/proguard/aR;->ae:Lcom/umeng/message/proguard/aT;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/umeng/message/proguard/bd;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/umeng/message/proguard/aT;->i(Ljava/lang/String;)V

    .line 494
    iget-object v0, p0, Lcom/umeng/message/proguard/aR;->ae:Lcom/umeng/message/proguard/aT;

    invoke-direct {p0, v0}, Lcom/umeng/message/proguard/aR;->a(Lcom/umeng/message/proguard/aT;)V

    .line 495
    sget-object v0, Lcom/umeng/message/proguard/aR;->l:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[network connected failed]state["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/umeng/message/proguard/aK;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    iget-object v0, p0, Lcom/umeng/message/proguard/aR;->ae:Lcom/umeng/message/proguard/aT;

    invoke-static {p1, v0}, Lcom/umeng/message/proguard/aD;->a(Landroid/content/Context;Lcom/umeng/message/proguard/aT;)V

    goto/16 :goto_0

    .line 503
    :cond_5
    invoke-direct {p0, p1}, Lcom/umeng/message/proguard/aR;->d(Landroid/content/Context;)V

    .line 504
    invoke-direct {p0}, Lcom/umeng/message/proguard/aR;->m()V

    .line 505
    if-eqz v2, :cond_6

    .line 506
    iget-object v0, p0, Lcom/umeng/message/proguard/aR;->W:Lorg/android/agoo/net/channel/ChannelManager$Builder;

    invoke-virtual {v0}, Lorg/android/agoo/net/channel/ChannelManager$Builder;->refreshHost()Lorg/android/agoo/net/channel/ChannelManager$Builder;

    .line 508
    :cond_6
    sget-object v0, Lcom/umeng/message/proguard/aR;->l:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onHandlerConnect refreshhost["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]state["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "][threadName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/umeng/message/proguard/aK;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    iget-object v0, p0, Lcom/umeng/message/proguard/aR;->V:Lorg/android/agoo/net/channel/ChannelManager;

    invoke-virtual {v0}, Lorg/android/agoo/net/channel/ChannelManager;->readyChannelState()Lorg/android/agoo/net/channel/ChannelState;

    move-result-object v0

    .line 512
    sget-object v2, Lorg/android/agoo/net/channel/ChannelState;->a:Lorg/android/agoo/net/channel/ChannelState;

    if-ne v0, v2, :cond_7

    .line 513
    sget-object v0, Lcom/umeng/message/proguard/aR;->l:Ljava/lang/String;

    const-string v1, "onHandlerConnect[connecting]"

    invoke-static {v0, v1}, Lcom/umeng/message/proguard/aK;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 516
    :cond_7
    iget-object v0, p0, Lcom/umeng/message/proguard/aR;->V:Lorg/android/agoo/net/channel/ChannelManager;

    invoke-virtual {v0}, Lorg/android/agoo/net/channel/ChannelManager;->readyChannelType()Lorg/android/agoo/net/channel/ChannelType;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/message/proguard/aR;->ac:Lorg/android/agoo/net/channel/ChannelType;

    .line 518
    iget-object v0, p0, Lcom/umeng/message/proguard/aR;->ac:Lorg/android/agoo/net/channel/ChannelType;

    sget-object v2, Lorg/android/agoo/net/channel/ChannelType;->b:Lorg/android/agoo/net/channel/ChannelType;

    invoke-virtual {v0, v2}, Lorg/android/agoo/net/channel/ChannelType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 519
    invoke-static {p1, v7}, Lorg/android/Config;->setSpdyConnectTimes(Landroid/content/Context;I)V

    .line 523
    :cond_8
    :goto_1
    iget-object v0, p0, Lcom/umeng/message/proguard/aR;->V:Lorg/android/agoo/net/channel/ChannelManager;

    invoke-virtual {v0, v1}, Lorg/android/agoo/net/channel/ChannelManager;->setConnectContext(Ljava/lang/Object;)V

    .line 524
    iget-object v0, p0, Lcom/umeng/message/proguard/aR;->V:Lorg/android/agoo/net/channel/ChannelManager;

    iget-object v1, p0, Lcom/umeng/message/proguard/aR;->ae:Lcom/umeng/message/proguard/aT;

    invoke-static {p1}, Lorg/android/Config;->getDeviceToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/android/agoo/net/channel/ChannelManager;->connenct(Lcom/umeng/message/proguard/aT;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 520
    :cond_9
    iget-object v0, p0, Lcom/umeng/message/proguard/aR;->ac:Lorg/android/agoo/net/channel/ChannelType;

    sget-object v2, Lorg/android/agoo/net/channel/ChannelType;->a:Lorg/android/agoo/net/channel/ChannelType;

    invoke-virtual {v0, v2}, Lorg/android/agoo/net/channel/ChannelType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 521
    invoke-static {p1, v7}, Lorg/android/Config;->setHttpConnectTimes(Landroid/content/Context;I)V

    goto :goto_1
.end method

.method static synthetic d(Lcom/umeng/message/proguard/aR;)Lorg/android/agoo/net/channel/ChannelManager;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/umeng/message/proguard/aR;->V:Lorg/android/agoo/net/channel/ChannelManager;

    return-object v0
.end method

.method private d(Landroid/content/Context;)V
    .locals 8

    .prologue
    .line 703
    iget-object v0, p0, Lcom/umeng/message/proguard/aR;->X:Lcom/umeng/message/proguard/aQ;

    invoke-virtual {v0}, Lcom/umeng/message/proguard/aQ;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/umeng/message/proguard/aR;->O:J

    .line 704
    iget-object v0, p0, Lcom/umeng/message/proguard/aR;->W:Lorg/android/agoo/net/channel/ChannelManager$Builder;

    const-string v1, "hb"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/umeng/message/proguard/aR;->O:J

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/android/agoo/net/channel/ChannelManager$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lorg/android/agoo/net/channel/ChannelManager$Builder;

    .line 705
    iget-object v0, p0, Lcom/umeng/message/proguard/aR;->Y:Ljava/lang/String;

    const/16 v1, 0x72

    invoke-static {v0, v1}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;C)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 706
    iget-object v0, p0, Lcom/umeng/message/proguard/aR;->W:Lorg/android/agoo/net/channel/ChannelManager$Builder;

    sget-object v1, Lorg/android/agoo/net/channel/VoteResult;->a:Lorg/android/agoo/net/channel/VoteResult;

    invoke-virtual {v0, v1}, Lorg/android/agoo/net/channel/ChannelManager$Builder;->setVote(Lorg/android/agoo/net/channel/VoteResult;)Lorg/android/agoo/net/channel/ChannelManager$Builder;

    .line 710
    :goto_0
    return-void

    .line 708
    :cond_0
    iget-object v0, p0, Lcom/umeng/message/proguard/aR;->W:Lorg/android/agoo/net/channel/ChannelManager$Builder;

    sget-object v1, Lorg/android/agoo/net/channel/VoteResult;->b:Lorg/android/agoo/net/channel/VoteResult;

    invoke-virtual {v0, v1}, Lorg/android/agoo/net/channel/ChannelManager$Builder;->setVote(Lorg/android/agoo/net/channel/VoteResult;)Lorg/android/agoo/net/channel/ChannelManager$Builder;

    goto :goto_0
.end method

.method private d(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 528
    sget-object v0, Lcom/umeng/message/proguard/aR;->l:Ljava/lang/String;

    const-string v1, "onHandlerNetWork"

    invoke-static {v0, v1}, Lcom/umeng/message/proguard/aK;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    iget-wide v0, p0, Lcom/umeng/message/proguard/aR;->M:J

    const-string v2, "network_change_connect"

    invoke-direct {p0, v0, v1, v2}, Lcom/umeng/message/proguard/aR;->b(JLjava/lang/String;)V

    .line 530
    return-void
.end method

.method static synthetic e(Lcom/umeng/message/proguard/aR;)Lorg/android/agoo/net/channel/ChannelType;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/umeng/message/proguard/aR;->ac:Lorg/android/agoo/net/channel/ChannelType;

    return-object v0
.end method

.method private e(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 972
    :try_start_0
    iget-object v0, p0, Lcom/umeng/message/proguard/aR;->V:Lorg/android/agoo/net/channel/ChannelManager;

    if-eqz v0, :cond_0

    .line 973
    iget-object v0, p0, Lcom/umeng/message/proguard/aR;->ac:Lorg/android/agoo/net/channel/ChannelType;

    sget-object v1, Lorg/android/agoo/net/channel/ChannelType;->b:Lorg/android/agoo/net/channel/ChannelType;

    if-eq v0, v1, :cond_1

    .line 974
    iget-object v0, p0, Lcom/umeng/message/proguard/aR;->W:Lorg/android/agoo/net/channel/ChannelManager$Builder;

    sget-object v1, Lorg/android/agoo/net/channel/ChannelType;->b:Lorg/android/agoo/net/channel/ChannelType;

    invoke-virtual {v0, v1}, Lorg/android/agoo/net/channel/ChannelManager$Builder;->setChannel(Lorg/android/agoo/net/channel/ChannelType;)Lorg/android/agoo/net/channel/ChannelManager$Builder;

    .line 975
    iget-wide v0, p0, Lcom/umeng/message/proguard/aR;->J:J

    const-string v2, "ping_channge_channle_type_reconnect"

    invoke-direct {p0, v0, v1, v2}, Lcom/umeng/message/proguard/aR;->a(JLjava/lang/String;)V

    .line 992
    :cond_0
    :goto_0
    return-void

    .line 980
    :cond_1
    iget-object v0, p0, Lcom/umeng/message/proguard/aR;->V:Lorg/android/agoo/net/channel/ChannelManager;

    invoke-virtual {v0}, Lorg/android/agoo/net/channel/ChannelManager;->readyChannelState()Lorg/android/agoo/net/channel/ChannelState;

    move-result-object v0

    .line 981
    sget-object v1, Lcom/umeng/message/proguard/aR$3;->c:[I

    invoke-virtual {v0}, Lorg/android/agoo/net/channel/ChannelState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 987
    invoke-direct {p0, p1}, Lcom/umeng/message/proguard/aR;->b(Landroid/content/Context;)V

    goto :goto_0

    .line 990
    :catch_0
    move-exception v0

    goto :goto_0

    .line 983
    :pswitch_0
    iget-wide v0, p0, Lcom/umeng/message/proguard/aR;->M:J

    const-string v2, "ping_reconnect"

    invoke-direct {p0, v0, v1, v2}, Lcom/umeng/message/proguard/aR;->a(JLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 981
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private static e(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 1094
    const/4 v0, 0x0

    .line 1095
    return v0
.end method

.method private final f(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    .prologue
    const/16 v8, 0x80

    .line 1047
    :try_start_0
    iget-object v0, p0, Lcom/umeng/message/proguard/aR;->V:Lorg/android/agoo/net/channel/ChannelManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/umeng/message/proguard/aR;->V:Lorg/android/agoo/net/channel/ChannelManager;

    invoke-virtual {v0}, Lorg/android/agoo/net/channel/ChannelManager;->readyChannelState()Lorg/android/agoo/net/channel/ChannelState;

    move-result-object v0

    sget-object v1, Lorg/android/agoo/net/channel/ChannelState;->b:Lorg/android/agoo/net/channel/ChannelState;

    if-ne v0, v1, :cond_1

    .line 1049
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 1050
    invoke-virtual {v1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 1051
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1052
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1053
    sget-object v3, Lcom/umeng/message/proguard/aR;->l:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "path["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "][data==null]"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/umeng/message/proguard/aK;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1088
    :catch_0
    move-exception v0

    .line 1091
    :cond_1
    return-void

    .line 1056
    :cond_2
    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v3

    .line 1057
    if-eqz v3, :cond_0

    .line 1060
    array-length v4, v3

    if-lt v4, v8, :cond_3

    .line 1061
    sget-object v4, Lcom/umeng/message/proguard/aR;->l:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "path["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "]["

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    array-length v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ">="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v3, 0x80

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/umeng/message/proguard/aK;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1066
    :cond_3
    :try_start_1
    new-instance v4, Ljava/lang/String;

    const-string v5, "utf-8"

    invoke-direct {v4, v3, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 1067
    sget-object v5, Lcom/umeng/message/proguard/aR;->l:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "path["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "]"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/umeng/message/proguard/aK;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    .line 1071
    :goto_1
    :try_start_2
    iget-object v4, p0, Lcom/umeng/message/proguard/aR;->V:Lorg/android/agoo/net/channel/ChannelManager;

    new-instance v5, Lcom/umeng/message/proguard/aR$2;

    invoke-direct {v5, p0}, Lcom/umeng/message/proguard/aR$2;-><init>(Lcom/umeng/message/proguard/aR;)V

    invoke-virtual {v4, v0, v3, v5}, Lorg/android/agoo/net/channel/ChannelManager;->send(Ljava/lang/String;[BLorg/android/agoo/net/channel/IPullHandler;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 1082
    :catch_1
    move-exception v0

    goto/16 :goto_0

    .line 1068
    :catch_2
    move-exception v4

    goto :goto_1
.end method

.method static synthetic j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/umeng/message/proguard/aR;->l:Ljava/lang/String;

    return-object v0
.end method

.method private k()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 143
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "agoo_action_re_connect"

    aput-object v1, v0, v4

    const/4 v1, 0x1

    const-string v2, "agoo_action_heart"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "action_get_his_message"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "action_ping"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "action_connect_unlock"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "action_ping_unlock"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/umeng/message/proguard/aR;->ad:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "android.intent.action.SCREEN_ON"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "android.intent.action.USER_PRESENT"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "android.intent.action.AIRPLANE_MODE"

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/umeng/message/proguard/aR;->a([Ljava/lang/String;)V

    .line 149
    new-instance v0, Lorg/android/agoo/net/channel/ChannelManager$Builder;

    iget-object v1, p0, Lcom/umeng/message/proguard/aR;->c:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/umeng/message/proguard/aR;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/umeng/message/proguard/aR;->d()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/android/agoo/net/channel/ChannelManager$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/umeng/message/proguard/aR;->W:Lorg/android/agoo/net/channel/ChannelManager$Builder;

    .line 151
    iget-object v0, p0, Lcom/umeng/message/proguard/aR;->W:Lorg/android/agoo/net/channel/ChannelManager$Builder;

    iget-object v1, p0, Lcom/umeng/message/proguard/aR;->X:Lcom/umeng/message/proguard/aQ;

    invoke-virtual {v1}, Lcom/umeng/message/proguard/aQ;->g()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/android/agoo/net/channel/ChannelManager$Builder;->setTimeout(J)Lorg/android/agoo/net/channel/ChannelManager$Builder;

    .line 152
    iget-object v0, p0, Lcom/umeng/message/proguard/aR;->W:Lorg/android/agoo/net/channel/ChannelManager$Builder;

    const-string v1, "m"

    invoke-virtual {v0, v1}, Lorg/android/agoo/net/channel/ChannelManager$Builder;->setApi(Ljava/lang/String;)Lorg/android/agoo/net/channel/ChannelManager$Builder;

    .line 153
    iget-object v0, p0, Lcom/umeng/message/proguard/aR;->W:Lorg/android/agoo/net/channel/ChannelManager$Builder;

    iget-object v1, p0, Lcom/umeng/message/proguard/aR;->al:Lorg/android/agoo/net/channel/IPushHandler;

    invoke-virtual {v0, v1}, Lorg/android/agoo/net/channel/ChannelManager$Builder;->addPushHandler(Lorg/android/agoo/net/channel/IPushHandler;)Lorg/android/agoo/net/channel/ChannelManager$Builder;

    .line 154
    iget-object v0, p0, Lcom/umeng/message/proguard/aR;->c:Landroid/content/Context;

    invoke-static {v0}, Lorg/android/agoo/a;->D(Landroid/content/Context;)Lorg/android/agoo/a$a;

    move-result-object v0

    .line 155
    sget-object v1, Lorg/android/agoo/a$a;->c:Lorg/android/agoo/a$a;

    if-eq v0, v1, :cond_0

    sget-object v1, Lorg/android/agoo/a$a;->b:Lorg/android/agoo/a$a;

    if-eq v0, v1, :cond_0

    sget-object v1, Lorg/android/agoo/a$a;->a:Lorg/android/agoo/a$a;

    if-ne v0, v1, :cond_1

    .line 157
    :cond_0
    iget-object v1, p0, Lcom/umeng/message/proguard/aR;->W:Lorg/android/agoo/net/channel/ChannelManager$Builder;

    invoke-virtual {v0}, Lorg/android/agoo/a$a;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lorg/android/agoo/a$a;->b()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/android/agoo/net/channel/ChannelManager$Builder;->setDNSProxy(Ljava/lang/String;I)Lorg/android/agoo/net/channel/ChannelManager$Builder;

    .line 159
    :cond_1
    iget-object v1, p0, Lcom/umeng/message/proguard/aR;->W:Lorg/android/agoo/net/channel/ChannelManager$Builder;

    invoke-virtual {v0}, Lorg/android/agoo/a$a;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lorg/android/agoo/a;->a()J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Lorg/android/agoo/net/channel/ChannelManager$Builder;->setDNS(Ljava/lang/String;J)Lorg/android/agoo/net/channel/ChannelManager$Builder;

    .line 161
    iget-object v0, p0, Lcom/umeng/message/proguard/aR;->W:Lorg/android/agoo/net/channel/ChannelManager$Builder;

    invoke-virtual {p0}, Lcom/umeng/message/proguard/aR;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/android/agoo/net/channel/ChannelManager$Builder;->setAppSecret(Ljava/lang/String;)Lorg/android/agoo/net/channel/ChannelManager$Builder;

    .line 162
    iget-object v0, p0, Lcom/umeng/message/proguard/aR;->W:Lorg/android/agoo/net/channel/ChannelManager$Builder;

    sget-object v1, Lorg/android/agoo/net/channel/ChannelType;->b:Lorg/android/agoo/net/channel/ChannelType;

    invoke-virtual {v0, v1}, Lorg/android/agoo/net/channel/ChannelManager$Builder;->setChannel(Lorg/android/agoo/net/channel/ChannelType;)Lorg/android/agoo/net/channel/ChannelManager$Builder;

    .line 163
    iget-object v0, p0, Lcom/umeng/message/proguard/aR;->W:Lorg/android/agoo/net/channel/ChannelManager$Builder;

    invoke-virtual {v0, v4}, Lorg/android/agoo/net/channel/ChannelManager$Builder;->setIfNeedMore(Z)Lorg/android/agoo/net/channel/ChannelManager$Builder;

    .line 164
    iget-object v0, p0, Lcom/umeng/message/proguard/aR;->W:Lorg/android/agoo/net/channel/ChannelManager$Builder;

    iget-object v1, p0, Lcom/umeng/message/proguard/aR;->c:Landroid/content/Context;

    invoke-static {v1}, Lorg/android/Config;->getTtId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/umeng/message/proguard/aR;->c:Landroid/content/Context;

    invoke-static {v2}, Lcom/umeng/message/proguard/bk;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/umeng/message/proguard/aR;->c:Landroid/content/Context;

    invoke-static {v3}, Lcom/umeng/message/proguard/bk;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lorg/android/agoo/net/channel/ChannelManager$Builder;->setRequestInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/android/agoo/net/channel/ChannelManager$Builder;

    .line 165
    iput-boolean v4, p0, Lcom/umeng/message/proguard/aR;->Z:Z

    .line 166
    iput-boolean v4, p0, Lcom/umeng/message/proguard/aR;->aa:Z

    .line 167
    return-void
.end method

.method private l()V
    .locals 4

    .prologue
    .line 249
    :try_start_0
    new-instance v0, Lcom/umeng/message/proguard/aV;

    invoke-direct {v0}, Lcom/umeng/message/proguard/aV;-><init>()V

    iput-object v0, p0, Lcom/umeng/message/proguard/aR;->af:Lcom/umeng/message/proguard/aV;

    .line 250
    iget-object v0, p0, Lcom/umeng/message/proguard/aR;->af:Lcom/umeng/message/proguard/aV;

    iget-object v1, p0, Lcom/umeng/message/proguard/aR;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/message/proguard/aD;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/umeng/message/proguard/aV;->a(Ljava/lang/String;)V

    .line 251
    iget-object v0, p0, Lcom/umeng/message/proguard/aR;->af:Lcom/umeng/message/proguard/aV;

    iget-object v1, p0, Lcom/umeng/message/proguard/aR;->c:Landroid/content/Context;

    invoke-static {v1}, Lorg/android/Config;->getAppKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/umeng/message/proguard/aV;->c(Ljava/lang/String;)V

    .line 252
    iget-object v0, p0, Lcom/umeng/message/proguard/aR;->af:Lcom/umeng/message/proguard/aV;

    const-string v1, "get_service_msg"

    invoke-virtual {v0, v1}, Lcom/umeng/message/proguard/aV;->i(Ljava/lang/String;)V

    .line 253
    iget-object v0, p0, Lcom/umeng/message/proguard/aR;->af:Lcom/umeng/message/proguard/aV;

    iget-object v1, p0, Lcom/umeng/message/proguard/aR;->c:Landroid/content/Context;

    invoke-static {v1}, Lorg/android/Config;->getDeviceToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/umeng/message/proguard/aV;->b(Ljava/lang/String;)V

    .line 254
    iget-object v0, p0, Lcom/umeng/message/proguard/aR;->af:Lcom/umeng/message/proguard/aV;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/umeng/message/proguard/bd;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/umeng/message/proguard/aV;->d(Ljava/lang/String;)V

    .line 255
    iget-object v0, p0, Lcom/umeng/message/proguard/aR;->af:Lcom/umeng/message/proguard/aV;

    const-string v1, "n"

    invoke-virtual {v0, v1}, Lcom/umeng/message/proguard/aV;->e(Ljava/lang/String;)V

    .line 256
    iget-object v0, p0, Lcom/umeng/message/proguard/aR;->V:Lorg/android/agoo/net/channel/ChannelManager;

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/umeng/message/proguard/aR;->V:Lorg/android/agoo/net/channel/ChannelManager;

    invoke-virtual {v0}, Lorg/android/agoo/net/channel/ChannelManager;->readyChannelState()Lorg/android/agoo/net/channel/ChannelState;

    move-result-object v0

    .line 258
    iget-object v1, p0, Lcom/umeng/message/proguard/aR;->V:Lorg/android/agoo/net/channel/ChannelManager;

    invoke-virtual {v1}, Lorg/android/agoo/net/channel/ChannelManager;->readyChannelType()Lorg/android/agoo/net/channel/ChannelType;

    move-result-object v1

    .line 259
    sget-object v2, Lorg/android/agoo/net/channel/ChannelType;->b:Lorg/android/agoo/net/channel/ChannelType;

    if-ne v1, v2, :cond_0

    sget-object v1, Lorg/android/agoo/net/channel/ChannelState;->b:Lorg/android/agoo/net/channel/ChannelState;

    if-ne v0, v1, :cond_0

    .line 261
    sget-object v0, Lcom/umeng/message/proguard/aR;->l:Ljava/lang/String;

    const-string v1, "onHandlerHisMessage()"

    invoke-static {v0, v1}, Lcom/umeng/message/proguard/aK;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    iget-object v0, p0, Lcom/umeng/message/proguard/aR;->V:Lorg/android/agoo/net/channel/ChannelManager;

    iget-object v1, p0, Lcom/umeng/message/proguard/aR;->af:Lcom/umeng/message/proguard/aV;

    invoke-virtual {v0, v1}, Lorg/android/agoo/net/channel/ChannelManager;->hisMessage(Lcom/umeng/message/proguard/aV;)Lcom/umeng/message/proguard/aV;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/message/proguard/aR;->af:Lcom/umeng/message/proguard/aV;

    .line 263
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/umeng/message/proguard/aR;->S:J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 272
    :cond_0
    :goto_0
    return-void

    .line 266
    :catch_0
    move-exception v0

    .line 267
    iget-object v1, p0, Lcom/umeng/message/proguard/aR;->af:Lcom/umeng/message/proguard/aV;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/umeng/message/proguard/aV;->f(Ljava/lang/String;)V

    .line 268
    iget-object v0, p0, Lcom/umeng/message/proguard/aR;->af:Lcom/umeng/message/proguard/aV;

    const-string v1, "n"

    invoke-virtual {v0, v1}, Lcom/umeng/message/proguard/aV;->e(Ljava/lang/String;)V

    .line 269
    iget-object v0, p0, Lcom/umeng/message/proguard/aR;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/umeng/message/proguard/aR;->af:Lcom/umeng/message/proguard/aV;

    invoke-static {v0, v1}, Lcom/umeng/message/proguard/aD;->a(Landroid/content/Context;Lcom/umeng/message/proguard/aV;)V

    goto :goto_0
.end method

.method private m()V
    .locals 2

    .prologue
    .line 713
    iget-object v0, p0, Lcom/umeng/message/proguard/aR;->W:Lorg/android/agoo/net/channel/ChannelManager$Builder;

    sget-object v1, Lorg/android/agoo/net/channel/AndroidEvent;->a:Lorg/android/agoo/net/channel/AndroidEvent;

    invoke-virtual {v0, v1}, Lorg/android/agoo/net/channel/ChannelManager$Builder;->setlastEventType(Lorg/android/agoo/net/channel/AndroidEvent;)Lorg/android/agoo/net/channel/ChannelManager$Builder;

    .line 714
    return-void
.end method

.method private n()J
    .locals 8

    .prologue
    const-wide/16 v6, 0x2

    const-wide/16 v4, 0x0

    .line 805
    .line 807
    iget-wide v0, p0, Lcom/umeng/message/proguard/aR;->R:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_3

    .line 808
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/umeng/message/proguard/aR;->R:J

    sub-long/2addr v0, v2

    .line 809
    iput-wide v4, p0, Lcom/umeng/message/proguard/aR;->R:J

    move-wide v2, v0

    .line 813
    :goto_0
    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    .line 814
    iget-wide v0, p0, Lcom/umeng/message/proguard/aR;->K:J

    mul-long/2addr v0, v6

    iput-wide v0, p0, Lcom/umeng/message/proguard/aR;->K:J

    .line 827
    :goto_1
    iget-wide v0, p0, Lcom/umeng/message/proguard/aR;->K:J

    iget-wide v4, p0, Lcom/umeng/message/proguard/aR;->L:J

    cmp-long v0, v0, v4

    if-ltz v0, :cond_2

    iget-wide v0, p0, Lcom/umeng/message/proguard/aR;->L:J

    :goto_2
    iput-wide v0, p0, Lcom/umeng/message/proguard/aR;->K:J

    .line 830
    sget-object v0, Lcom/umeng/message/proguard/aR;->l:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "nextErrorInterval [connectInterval:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "][nextConnectInterval:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/umeng/message/proguard/aR;->K:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/umeng/message/proguard/aK;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 832
    iget-wide v0, p0, Lcom/umeng/message/proguard/aR;->K:J

    return-wide v0

    .line 815
    :cond_0
    cmp-long v0, v4, v2

    if-gtz v0, :cond_1

    const-wide/32 v0, 0xea60

    cmp-long v0, v2, v0

    if-gez v0, :cond_1

    .line 818
    iget-wide v0, p0, Lcom/umeng/message/proguard/aR;->K:J

    mul-long/2addr v0, v6

    iput-wide v0, p0, Lcom/umeng/message/proguard/aR;->K:J

    goto :goto_1

    .line 821
    :cond_1
    iget-object v0, p0, Lcom/umeng/message/proguard/aR;->X:Lcom/umeng/message/proguard/aQ;

    invoke-virtual {v0}, Lcom/umeng/message/proguard/aQ;->h()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/umeng/message/proguard/aR;->K:J

    goto :goto_1

    .line 827
    :cond_2
    iget-wide v0, p0, Lcom/umeng/message/proguard/aR;->K:J

    goto :goto_2

    :cond_3
    move-wide v2, v4

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 173
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 174
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 175
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 231
    :cond_0
    :goto_0
    return-void

    .line 178
    :cond_1
    const-string v1, "action_ping"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 179
    invoke-direct {p0, p1, p2}, Lcom/umeng/message/proguard/aR;->e(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 182
    :cond_2
    const-string v1, "action_ping_unlock"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 183
    iput-boolean v2, p0, Lcom/umeng/message/proguard/aR;->aa:Z

    goto :goto_0

    .line 186
    :cond_3
    const-string v1, "agoo_action_re_connect"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 187
    invoke-direct {p0, p1, p2}, Lcom/umeng/message/proguard/aR;->c(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 190
    :cond_4
    const-string v1, "action_connect_unlock"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 191
    iput-boolean v2, p0, Lcom/umeng/message/proguard/aR;->Z:Z

    goto :goto_0

    .line 194
    :cond_5
    const-string v1, "agoo_action_heart"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 195
    invoke-direct {p0, p1}, Lcom/umeng/message/proguard/aR;->b(Landroid/content/Context;)V

    goto :goto_0

    .line 198
    :cond_6
    const-string v1, "action_get_his_message"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 199
    invoke-direct {p0}, Lcom/umeng/message/proguard/aR;->l()V

    goto :goto_0

    .line 202
    :cond_7
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 204
    iget v0, p0, Lcom/umeng/message/proguard/aR;->ak:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/umeng/message/proguard/aR;->ak:I

    .line 205
    iget v0, p0, Lcom/umeng/message/proguard/aR;->ak:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 207
    invoke-static {p1, v2}, Lorg/android/Config;->setSpdyConnectTimes(Landroid/content/Context;I)V

    .line 208
    invoke-static {p1, v2}, Lorg/android/Config;->setHttpConnectTimes(Landroid/content/Context;I)V

    .line 209
    invoke-direct {p0, p1, p2}, Lcom/umeng/message/proguard/aR;->d(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 213
    :cond_8
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 215
    :cond_9
    invoke-direct {p0, p1}, Lcom/umeng/message/proguard/aR;->a(Landroid/content/Context;)V

    goto :goto_0

    .line 218
    :cond_a
    iget-object v1, p0, Lcom/umeng/message/proguard/aR;->ad:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 219
    invoke-direct {p0, p1, p2}, Lcom/umeng/message/proguard/aR;->f(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 222
    :cond_b
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 224
    invoke-static {p1, v2}, Lorg/android/Config;->setSpdyConnectTimes(Landroid/content/Context;I)V

    .line 225
    invoke-static {p1, v2}, Lorg/android/Config;->setHttpConnectTimes(Landroid/content/Context;I)V

    .line 226
    invoke-direct {p0, p1, p2}, Lcom/umeng/message/proguard/aR;->b(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12

    .prologue
    .line 276
    :try_start_0
    iget-object v0, p0, Lcom/umeng/message/proguard/aR;->V:Lorg/android/agoo/net/channel/ChannelManager;

    if-eqz v0, :cond_5

    .line 277
    iget-object v0, p0, Lcom/umeng/message/proguard/aR;->V:Lorg/android/agoo/net/channel/ChannelManager;

    invoke-virtual {v0}, Lorg/android/agoo/net/channel/ChannelManager;->readyChannelState()Lorg/android/agoo/net/channel/ChannelState;

    move-result-object v0

    .line 278
    iget-object v1, p0, Lcom/umeng/message/proguard/aR;->V:Lorg/android/agoo/net/channel/ChannelManager;

    invoke-virtual {v1}, Lorg/android/agoo/net/channel/ChannelManager;->readyChannelType()Lorg/android/agoo/net/channel/ChannelType;

    move-result-object v1

    .line 279
    sget-object v2, Lorg/android/agoo/net/channel/ChannelType;->b:Lorg/android/agoo/net/channel/ChannelType;

    if-ne v1, v2, :cond_2

    sget-object v2, Lorg/android/agoo/net/channel/ChannelState;->b:Lorg/android/agoo/net/channel/ChannelState;

    if-ne v0, v2, :cond_2

    .line 281
    iget-object v2, p0, Lcom/umeng/message/proguard/aR;->V:Lorg/android/agoo/net/channel/ChannelManager;

    invoke-virtual {v2, p1, p2, p3}, Lorg/android/agoo/net/channel/ChannelManager;->ACK(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 282
    iget-object v3, p0, Lcom/umeng/message/proguard/aR;->af:Lcom/umeng/message/proguard/aV;

    if-eqz v3, :cond_1

    .line 283
    if-eqz v2, :cond_0

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 284
    iget-object v2, p0, Lcom/umeng/message/proguard/aR;->af:Lcom/umeng/message/proguard/aV;

    const-string v3, "0"

    invoke-virtual {v2, v3}, Lcom/umeng/message/proguard/aV;->h(Ljava/lang/String;)V

    .line 286
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/umeng/message/proguard/aR;->S:J

    .line 287
    iget-object v2, p0, Lcom/umeng/message/proguard/aR;->af:Lcom/umeng/message/proguard/aV;

    const-string v3, "1"

    invoke-virtual {v2, v3}, Lcom/umeng/message/proguard/aV;->h(Ljava/lang/String;)V

    .line 288
    iget-object v2, p0, Lcom/umeng/message/proguard/aR;->af:Lcom/umeng/message/proguard/aV;

    invoke-virtual {v2, p1}, Lcom/umeng/message/proguard/aV;->j(Ljava/lang/String;)V

    .line 289
    iget-object v2, p0, Lcom/umeng/message/proguard/aR;->af:Lcom/umeng/message/proguard/aV;

    iget-wide v4, p0, Lcom/umeng/message/proguard/aR;->S:J

    invoke-static {v4, v5}, Lcom/umeng/message/proguard/bd;->a(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/umeng/message/proguard/aV;->g(Ljava/lang/String;)V

    .line 290
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 292
    iget-object v2, p0, Lcom/umeng/message/proguard/aR;->c:Landroid/content/Context;

    iget-object v3, p0, Lcom/umeng/message/proguard/aR;->af:Lcom/umeng/message/proguard/aV;

    invoke-static {v2, v3}, Lcom/umeng/message/proguard/aD;->a(Landroid/content/Context;Lcom/umeng/message/proguard/aV;)V

    .line 295
    :cond_1
    sget-object v2, Lcom/umeng/message/proguard/aR;->l:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handlerACKMessage,mLastHeartTime--->["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/umeng/message/proguard/aR;->Q:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/umeng/message/proguard/aK;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    :cond_2
    sget-object v2, Lorg/android/agoo/net/channel/ChannelType;->a:Lorg/android/agoo/net/channel/ChannelType;

    if-ne v1, v2, :cond_5

    sget-object v1, Lorg/android/agoo/net/channel/ChannelState;->b:Lorg/android/agoo/net/channel/ChannelState;

    if-ne v0, v1, :cond_5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 299
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 300
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 301
    if-eqz v10, :cond_4

    array-length v0, v10

    if-lez v0, :cond_4

    .line 302
    array-length v11, v10

    const/4 v0, 0x0

    move v9, v0

    :goto_0
    if-ge v9, v11, :cond_4

    aget-object v1, v10, v9

    .line 303
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 304
    iget-object v0, p0, Lcom/umeng/message/proguard/aR;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/message/proguard/aP;->a(Landroid/content/Context;)Lcom/umeng/message/proguard/aP;

    move-result-object v0

    const/4 v2, 0x0

    const-string v3, "1"

    const-string v4, "apoll"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "5"

    move-object v8, p2

    invoke-virtual/range {v0 .. v8}, Lcom/umeng/message/proguard/aP;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 302
    :cond_3
    add-int/lit8 v0, v9, 0x1

    move v9, v0

    goto :goto_0

    .line 312
    :cond_4
    new-instance v0, Lorg/android/agoo/net/async/c;

    iget-object v1, p0, Lcom/umeng/message/proguard/aR;->c:Landroid/content/Context;

    const-string v2, "httpAckMsg"

    invoke-direct {v0, v1, v2}, Lorg/android/agoo/net/async/c;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 313
    iget-object v1, p0, Lcom/umeng/message/proguard/aR;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/message/proguard/bk;->g(Landroid/content/Context;)Ljava/util/LinkedHashMap;

    move-result-object v1

    .line 314
    const-string v2, "msgIds"

    invoke-virtual {v1, v2, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    invoke-virtual {v0, v1}, Lorg/android/agoo/net/async/c;->a(Ljava/util/LinkedHashMap;)V

    .line 316
    sget-object v0, Lcom/umeng/message/proguard/aR;->l:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handlerACKMessage,CHUNKED,mLastHeartTime--->["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/umeng/message/proguard/aR;->Q:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/umeng/message/proguard/aK;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 329
    :cond_5
    :goto_1
    return-void

    .line 319
    :catch_0
    move-exception v0

    .line 320
    iget-object v1, p0, Lcom/umeng/message/proguard/aR;->af:Lcom/umeng/message/proguard/aV;

    if-eqz v1, :cond_6

    .line 321
    iget-object v1, p0, Lcom/umeng/message/proguard/aR;->af:Lcom/umeng/message/proguard/aV;

    const-string v2, "0"

    invoke-virtual {v1, v2}, Lcom/umeng/message/proguard/aV;->h(Ljava/lang/String;)V

    .line 322
    iget-object v1, p0, Lcom/umeng/message/proguard/aR;->af:Lcom/umeng/message/proguard/aV;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/umeng/message/proguard/bd;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/umeng/message/proguard/aV;->g(Ljava/lang/String;)V

    .line 324
    iget-object v1, p0, Lcom/umeng/message/proguard/aR;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/umeng/message/proguard/aR;->af:Lcom/umeng/message/proguard/aV;

    invoke-static {v1, v2}, Lcom/umeng/message/proguard/aD;->a(Landroid/content/Context;Lcom/umeng/message/proguard/aV;)V

    .line 326
    :cond_6
    sget-object v1, Lcom/umeng/message/proguard/aR;->l:Ljava/lang/String;

    const-string v2, "handlerReportMessages"

    invoke-static {v1, v2, v0}, Lcom/umeng/message/proguard/aK;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method protected a(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 684
    if-nez p1, :cond_1

    .line 700
    :cond_0
    :goto_0
    return-void

    .line 687
    :cond_1
    const-string v0, "x-at"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 688
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 689
    iget-object v1, p0, Lcom/umeng/message/proguard/aR;->W:Lorg/android/agoo/net/channel/ChannelManager$Builder;

    const-string v2, "x-at"

    invoke-virtual {v1, v2, v0}, Lorg/android/agoo/net/channel/ChannelManager$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lorg/android/agoo/net/channel/ChannelManager$Builder;

    goto :goto_0
.end method

.method public e()V
    .locals 3

    .prologue
    .line 997
    :try_start_0
    iget-boolean v0, p0, Lcom/umeng/message/proguard/aR;->ab:Z

    if-nez v0, :cond_0

    .line 998
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/umeng/message/proguard/aR;->ab:Z

    .line 999
    sget-object v0, Lcom/umeng/message/proguard/aR;->l:Ljava/lang/String;

    const-string v1, "MessagePush [starting]"

    invoke-static {v0, v1}, Lcom/umeng/message/proguard/aK;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1000
    invoke-direct {p0}, Lcom/umeng/message/proguard/aR;->k()V

    .line 1001
    iget-wide v0, p0, Lcom/umeng/message/proguard/aR;->J:J

    const-string v2, "init_connect"

    invoke-direct {p0, v0, v1, v2}, Lcom/umeng/message/proguard/aR;->a(JLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1006
    :cond_0
    :goto_0
    return-void

    .line 1003
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public f(Ljava/lang/String;)V
    .locals 14

    .prologue
    .line 1103
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1179
    :goto_0
    return-void

    .line 1106
    :cond_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 1107
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    .line 1111
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 1112
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1113
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1114
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_a

    .line 1115
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 1116
    if-nez v6, :cond_2

    .line 1114
    :cond_1
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1119
    :cond_2
    const-string v7, "p"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1120
    const-string v8, "i"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1121
    const-string v9, "b"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1122
    const-string v10, "f"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v10

    .line 1123
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1124
    add-int/lit8 v12, v2, -0x1

    if-ge v0, v12, :cond_3

    .line 1125
    const-string v12, ","

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1127
    :cond_3
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 1128
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "11"

    invoke-virtual {p0, v6, v7, v8}, Lcom/umeng/message/proguard/aR;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 1175
    :catch_0
    move-exception v0

    .line 1176
    iget-object v1, p0, Lcom/umeng/message/proguard/aR;->c:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/umeng/message/proguard/aD;->d(Landroid/content/Context;Ljava/lang/String;)V

    .line 1177
    sget-object v1, Lcom/umeng/message/proguard/aR;->l:Ljava/lang/String;

    const-string v2, "handlerMessage"

    invoke-static {v1, v2, v0}, Lcom/umeng/message/proguard/aK;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1131
    :cond_4
    :try_start_1
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 1132
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "12"

    invoke-virtual {p0, v6, v7, v8}, Lcom/umeng/message/proguard/aR;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1135
    :cond_5
    const-wide/16 v12, -0x1

    cmp-long v12, v10, v12

    if-nez v12, :cond_6

    .line 1136
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "13"

    invoke-virtual {p0, v6, v7, v8}, Lcom/umeng/message/proguard/aR;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1140
    :cond_6
    iget-object v12, p0, Lcom/umeng/message/proguard/aR;->c:Landroid/content/Context;

    invoke-static {v12, v7}, Lcom/umeng/message/proguard/aB;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_7

    .line 1141
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1142
    add-int/lit8 v6, v2, -0x1

    if-ge v0, v6, :cond_1

    .line 1143
    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 1147
    :cond_7
    const-string v12, "id"

    invoke-virtual {v3, v12, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1148
    const-string v12, "body"

    invoke-virtual {v3, v12, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1149
    invoke-direct {p0, v10, v11}, Lcom/umeng/message/proguard/aR;->a(J)Landroid/os/Bundle;

    move-result-object v9

    .line 1150
    if-eqz v9, :cond_8

    .line 1151
    invoke-virtual {v3, v9}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1154
    :cond_8
    :try_start_2
    const-string v9, "t"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1155
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_9

    .line 1156
    const-string v9, "time"

    invoke-virtual {v3, v9, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1161
    :cond_9
    :goto_3
    :try_start_3
    const-string v6, "trace"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v3, v6, v10, v11}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1163
    new-instance v6, Lorg/android/agoo/net/async/c;

    iget-object v9, p0, Lcom/umeng/message/proguard/aR;->c:Landroid/content/Context;

    const-string v10, "ackMessage"

    invoke-direct {v6, v9, v10}, Lorg/android/agoo/net/async/c;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 1164
    iget-object v9, p0, Lcom/umeng/message/proguard/aR;->c:Landroid/content/Context;

    invoke-static {v9}, Lorg/android/Config;->getConnectHeader(Landroid/content/Context;)Ljava/util/LinkedHashMap;

    move-result-object v9

    .line 1165
    const-string v10, "messageId"

    invoke-virtual {v9, v10, v8}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1166
    invoke-virtual {v6, v9}, Lorg/android/agoo/net/async/c;->a(Ljava/util/LinkedHashMap;)V

    .line 1167
    invoke-virtual {p0, v7, v3}, Lcom/umeng/message/proguard/aR;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_2

    .line 1170
    :cond_a
    if-eqz v5, :cond_b

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_b

    .line 1171
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "10"

    invoke-virtual {p0, v0, v1, v2}, Lcom/umeng/message/proguard/aR;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1173
    :cond_b
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/umeng/message/proguard/aR;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 1158
    :catch_1
    move-exception v6

    goto :goto_3
.end method

.method public f()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 1011
    iget-boolean v1, p0, Lcom/umeng/message/proguard/aR;->aa:Z

    if-eqz v1, :cond_0

    .line 1020
    :goto_0
    return v0

    .line 1014
    :cond_0
    iput-boolean v0, p0, Lcom/umeng/message/proguard/aR;->aa:Z

    .line 1015
    iget-boolean v1, p0, Lcom/umeng/message/proguard/aR;->ab:Z

    if-eqz v1, :cond_1

    .line 1016
    const-string v1, "action_ping"

    const-wide/16 v2, 0x1388

    invoke-virtual {p0, v1, v2, v3}, Lcom/umeng/message/proguard/aR;->a(Ljava/lang/String;J)V

    .line 1017
    const-string v1, "action_ping_unlock"

    const-wide/16 v2, 0x2710

    invoke-virtual {p0, v1, v2, v3}, Lcom/umeng/message/proguard/aR;->a(Ljava/lang/String;J)V

    goto :goto_0

    .line 1020
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final i()V
    .locals 4

    .prologue
    .line 1025
    :try_start_0
    iget-boolean v0, p0, Lcom/umeng/message/proguard/aR;->ab:Z

    if-eqz v0, :cond_1

    .line 1026
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/umeng/message/proguard/aR;->ab:Z

    .line 1027
    invoke-super {p0}, Lcom/umeng/message/proguard/aN;->g()V

    .line 1028
    sget-object v0, Lcom/umeng/message/proguard/aR;->l:Ljava/lang/String;

    const-string v1, "[destroying]"

    invoke-static {v0, v1}, Lcom/umeng/message/proguard/aK;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1029
    iget-object v0, p0, Lcom/umeng/message/proguard/aR;->V:Lorg/android/agoo/net/channel/ChannelManager;

    if-eqz v0, :cond_0

    .line 1030
    iget-object v0, p0, Lcom/umeng/message/proguard/aR;->ae:Lcom/umeng/message/proguard/aT;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Lcom/umeng/message/proguard/aT;->j(Ljava/lang/String;)V

    .line 1031
    iget-object v0, p0, Lcom/umeng/message/proguard/aR;->ae:Lcom/umeng/message/proguard/aT;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/umeng/message/proguard/bd;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/umeng/message/proguard/aT;->i(Ljava/lang/String;)V

    .line 1032
    iget-object v0, p0, Lcom/umeng/message/proguard/aR;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/umeng/message/proguard/aR;->ae:Lcom/umeng/message/proguard/aT;

    invoke-static {v0, v1}, Lcom/umeng/message/proguard/aD;->a(Landroid/content/Context;Lcom/umeng/message/proguard/aT;)V

    .line 1033
    iget-object v0, p0, Lcom/umeng/message/proguard/aR;->V:Lorg/android/agoo/net/channel/ChannelManager;

    invoke-virtual {v0}, Lorg/android/agoo/net/channel/ChannelManager;->shutdown()V

    .line 1034
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/message/proguard/aR;->V:Lorg/android/agoo/net/channel/ChannelManager;

    .line 1036
    :cond_0
    sget-object v0, Lcom/umeng/message/proguard/aR;->l:Ljava/lang/String;

    const-string v1, "[destroyed]"

    invoke-static {v0, v1}, Lcom/umeng/message/proguard/aK;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1043
    :cond_1
    :goto_0
    return-void

    .line 1040
    :catch_0
    move-exception v0

    goto :goto_0
.end method
