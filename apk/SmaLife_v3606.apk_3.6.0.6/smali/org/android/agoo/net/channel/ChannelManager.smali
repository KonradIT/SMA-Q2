.class public Lorg/android/agoo/net/channel/ChannelManager;
.super Ljava/lang/Object;
.source "ChannelManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/android/agoo/net/channel/ChannelManager$2;,
        Lorg/android/agoo/net/channel/ChannelManager$Builder;
    }
.end annotation


# static fields
.field private static final I:I = -0x1

.field public static final a:I = 0x133

.field public static final b:I = 0x191

.field public static final c:I = 0x193

.field public static final d:I = 0x194

.field public static final e:I = 0x198

.field private static final f:Ljava/lang/String; = "ChannelManager"

.field private static final g:Ljava/lang/String; = "AGOO_CONNECT"

.field private static final h:Ljava/lang/String; = "AGOO_CONNECT_COUNT"

.field private static final i:Ljava/lang/String; = "AGOO_CONNECT_CLIENT_CREATE_TIME"

.field private static final j:Ljava/lang/String; = "AGOO_CONNECT_LAST_RECONNECT_TIME"

.field private static volatile k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile l:J

.field private static volatile m:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile n:Lorg/android/agoo/net/channel/ChannelType;

.field private static volatile o:Lorg/android/agoo/net/channel/AndroidEvent;

.field private static volatile p:Landroid/content/Context;

.field private static volatile q:Lorg/android/agoo/net/channel/IPushHandler;

.field private static volatile r:Ljava/lang/String;

.field private static volatile s:Ljava/lang/String;

.field private static volatile t:Ljava/lang/String;

.field private static volatile u:Ljava/lang/String;

.field private static volatile v:Z

.field private static volatile w:Lorg/android/agoo/net/channel/DNSManager;

.field private static volatile x:Lorg/android/agoo/net/channel/VoteResult;

.field private static volatile y:Z


# instance fields
.field private volatile A:I

.field private volatile B:Lorg/android/agoo/net/channel/IDataChannel;

.field private volatile C:S

.field private volatile D:J

.field private volatile E:J

.field private final F:Lorg/android/agoo/net/channel/DNSManager$IHostHandler;

.field private volatile G:Z

.field private volatile H:Ljava/lang/Object;

.field private volatile z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 42
    const-wide/16 v0, 0x7530

    sput-wide v0, Lorg/android/agoo/net/channel/ChannelManager;->l:J

    .line 44
    sget-object v0, Lorg/android/agoo/net/channel/ChannelType;->b:Lorg/android/agoo/net/channel/ChannelType;

    sput-object v0, Lorg/android/agoo/net/channel/ChannelManager;->n:Lorg/android/agoo/net/channel/ChannelType;

    .line 45
    sget-object v0, Lorg/android/agoo/net/channel/AndroidEvent;->a:Lorg/android/agoo/net/channel/AndroidEvent;

    sput-object v0, Lorg/android/agoo/net/channel/ChannelManager;->o:Lorg/android/agoo/net/channel/AndroidEvent;

    .line 46
    sput-object v2, Lorg/android/agoo/net/channel/ChannelManager;->p:Landroid/content/Context;

    .line 47
    sput-object v2, Lorg/android/agoo/net/channel/ChannelManager;->q:Lorg/android/agoo/net/channel/IPushHandler;

    .line 48
    sput-object v2, Lorg/android/agoo/net/channel/ChannelManager;->r:Ljava/lang/String;

    .line 49
    sput-object v2, Lorg/android/agoo/net/channel/ChannelManager;->s:Ljava/lang/String;

    .line 50
    sput-object v2, Lorg/android/agoo/net/channel/ChannelManager;->t:Ljava/lang/String;

    .line 53
    const/4 v0, 0x1

    sput-boolean v0, Lorg/android/agoo/net/channel/ChannelManager;->v:Z

    .line 54
    sput-object v2, Lorg/android/agoo/net/channel/ChannelManager;->w:Lorg/android/agoo/net/channel/DNSManager;

    .line 55
    sget-object v0, Lorg/android/agoo/net/channel/VoteResult;->a:Lorg/android/agoo/net/channel/VoteResult;

    sput-object v0, Lorg/android/agoo/net/channel/ChannelManager;->x:Lorg/android/agoo/net/channel/VoteResult;

    .line 56
    const/4 v0, 0x0

    sput-boolean v0, Lorg/android/agoo/net/channel/ChannelManager;->y:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    const/4 v1, 0x0

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object v1, p0, Lorg/android/agoo/net/channel/ChannelManager;->z:Ljava/lang/String;

    .line 63
    const/4 v0, -0x1

    iput v0, p0, Lorg/android/agoo/net/channel/ChannelManager;->A:I

    .line 64
    iput-object v1, p0, Lorg/android/agoo/net/channel/ChannelManager;->B:Lorg/android/agoo/net/channel/IDataChannel;

    .line 66
    iput-wide v2, p0, Lorg/android/agoo/net/channel/ChannelManager;->D:J

    .line 67
    iput-wide v2, p0, Lorg/android/agoo/net/channel/ChannelManager;->E:J

    .line 68
    new-instance v0, Lorg/android/agoo/net/channel/ChannelManager$1;

    invoke-direct {v0, p0}, Lorg/android/agoo/net/channel/ChannelManager$1;-><init>(Lorg/android/agoo/net/channel/ChannelManager;)V

    iput-object v0, p0, Lorg/android/agoo/net/channel/ChannelManager;->F:Lorg/android/agoo/net/channel/DNSManager$IHostHandler;

    .line 401
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/android/agoo/net/channel/ChannelManager;->G:Z

    .line 402
    iput-object v1, p0, Lorg/android/agoo/net/channel/ChannelManager;->H:Ljava/lang/Object;

    .line 101
    sget-object v0, Lorg/android/agoo/net/channel/ChannelManager;->w:Lorg/android/agoo/net/channel/DNSManager;

    iget-object v1, p0, Lorg/android/agoo/net/channel/ChannelManager;->F:Lorg/android/agoo/net/channel/DNSManager$IHostHandler;

    invoke-virtual {v0, v1}, Lorg/android/agoo/net/channel/DNSManager;->a(Lorg/android/agoo/net/channel/DNSManager$IHostHandler;)V

    .line 102
    return-void
.end method

.method synthetic constructor <init>(Lorg/android/agoo/net/channel/ChannelManager$1;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lorg/android/agoo/net/channel/ChannelManager;-><init>()V

    return-void
.end method

.method static synthetic a(Lorg/android/agoo/net/channel/ChannelManager;I)I
    .locals 0

    .prologue
    .line 30
    iput p1, p0, Lorg/android/agoo/net/channel/ChannelManager;->A:I

    return p1
.end method

.method static synthetic a(J)J
    .locals 0

    .prologue
    .line 30
    sput-wide p0, Lorg/android/agoo/net/channel/ChannelManager;->l:J

    return-wide p0
.end method

.method static synthetic a(Landroid/content/Context;)Landroid/content/Context;
    .locals 0

    .prologue
    .line 30
    sput-object p0, Lorg/android/agoo/net/channel/ChannelManager;->p:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lorg/android/agoo/net/channel/ChannelManager;->t:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 30
    sput-object p0, Lorg/android/agoo/net/channel/ChannelManager;->t:Ljava/lang/String;

    return-object p0
.end method

.method private final a(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 560
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 562
    :try_start_0
    new-instance v3, Lorg/android/agoo/net/async/RequestParams;

    invoke-direct {v3}, Lorg/android/agoo/net/async/RequestParams;-><init>()V

    .line 563
    if-eqz p2, :cond_2

    .line 564
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 566
    if-eqz v4, :cond_2

    .line 568
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 569
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 570
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/umeng/message/proguard/bm;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/umeng/message/proguard/bm;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 573
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v1, v0}, Lorg/android/agoo/net/async/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 590
    :catch_0
    move-exception v0

    .line 593
    :cond_1
    :goto_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 578
    :cond_2
    :try_start_1
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 579
    invoke-virtual {v3}, Lorg/android/agoo/net/async/RequestParams;->getParamString()Ljava/lang/String;

    move-result-object v0

    .line 580
    const-string v1, "?"

    invoke-static {p1, v1}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_3

    .line 581
    const-string v1, "?"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 585
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "s="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 586
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 587
    const-string v1, "&"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 588
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 583
    :cond_3
    const-string v1, "&"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method static synthetic a(Lorg/android/agoo/net/channel/ChannelManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lorg/android/agoo/net/channel/ChannelManager;->z:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Ljava/util/Map;)Ljava/util/Map;
    .locals 0

    .prologue
    .line 30
    sput-object p0, Lorg/android/agoo/net/channel/ChannelManager;->k:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic a(Lorg/android/agoo/net/channel/AndroidEvent;)Lorg/android/agoo/net/channel/AndroidEvent;
    .locals 0

    .prologue
    .line 30
    sput-object p0, Lorg/android/agoo/net/channel/ChannelManager;->o:Lorg/android/agoo/net/channel/AndroidEvent;

    return-object p0
.end method

.method static synthetic a(Lorg/android/agoo/net/channel/ChannelType;)Lorg/android/agoo/net/channel/ChannelType;
    .locals 0

    .prologue
    .line 30
    sput-object p0, Lorg/android/agoo/net/channel/ChannelManager;->n:Lorg/android/agoo/net/channel/ChannelType;

    return-object p0
.end method

.method static synthetic a(Lorg/android/agoo/net/channel/DNSManager;)Lorg/android/agoo/net/channel/DNSManager;
    .locals 0

    .prologue
    .line 30
    sput-object p0, Lorg/android/agoo/net/channel/ChannelManager;->w:Lorg/android/agoo/net/channel/DNSManager;

    return-object p0
.end method

.method static synthetic a(Lorg/android/agoo/net/channel/IPushHandler;)Lorg/android/agoo/net/channel/IPushHandler;
    .locals 0

    .prologue
    .line 30
    sput-object p0, Lorg/android/agoo/net/channel/ChannelManager;->q:Lorg/android/agoo/net/channel/IPushHandler;

    return-object p0
.end method

.method static synthetic a(Lorg/android/agoo/net/channel/VoteResult;)Lorg/android/agoo/net/channel/VoteResult;
    .locals 0

    .prologue
    .line 30
    sput-object p0, Lorg/android/agoo/net/channel/ChannelManager;->x:Lorg/android/agoo/net/channel/VoteResult;

    return-object p0
.end method

.method private final a(Lcom/umeng/message/proguard/aT;)V
    .locals 8

    .prologue
    .line 611
    :try_start_0
    sget-object v0, Lorg/android/agoo/net/channel/ChannelManager;->p:Landroid/content/Context;

    const-string v1, "AGOO_CONNECT"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 613
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 614
    const-string v1, "AGOO_CONNECT_CLIENT_CREATE_TIME"

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lorg/android/agoo/net/channel/ChannelManager;->E:J

    .line 616
    const-string v1, "AGOO_CONNECT_LAST_RECONNECT_TIME"

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lorg/android/agoo/net/channel/ChannelManager;->D:J

    .line 618
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 619
    iget-wide v4, p0, Lorg/android/agoo/net/channel/ChannelManager;->E:J

    cmp-long v4, v4, v2

    if-nez v4, :cond_0

    .line 620
    const-string v4, "AGOO_CONNECT_CLIENT_CREATE_TIME"

    invoke-interface {v1, v4, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 623
    :cond_0
    :try_start_1
    const-string v4, "AGOO_CONNECT_COUNT"

    const-string v5, "0"

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v0

    iput-short v0, p0, Lorg/android/agoo/net/channel/ChannelManager;->C:S
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 627
    :goto_0
    :try_start_2
    const-string v0, "ChannelManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "time["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]mClientCreateTime["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, p0, Lorg/android/agoo/net/channel/ChannelManager;->E:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]mLastReconnectTime["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, p0, Lorg/android/agoo/net/channel/ChannelManager;->D:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/umeng/message/proguard/aK;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 630
    iget-short v0, p0, Lorg/android/agoo/net/channel/ChannelManager;->C:S

    add-int/lit8 v0, v0, 0x1

    int-to-short v0, v0

    iput-short v0, p0, Lorg/android/agoo/net/channel/ChannelManager;->C:S

    .line 631
    const-string v0, "AGOO_CONNECT_LAST_RECONNECT_TIME"

    invoke-interface {v1, v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 632
    const-string v0, "AGOO_CONNECT_COUNT"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-short v3, p0, Lorg/android/agoo/net/channel/ChannelManager;->C:S

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 633
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 634
    iget-short v0, p0, Lorg/android/agoo/net/channel/ChannelManager;->C:S

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/message/proguard/aT;->m(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 638
    :goto_1
    return-void

    .line 635
    :catch_0
    move-exception v0

    goto :goto_1

    .line 625
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method private final a(Lcom/umeng/message/proguard/aT;Ljava/lang/String;)V
    .locals 11

    .prologue
    .line 453
    :try_start_0
    invoke-direct {p0}, Lorg/android/agoo/net/channel/ChannelManager;->g()V

    .line 454
    iget-object v0, p0, Lorg/android/agoo/net/channel/ChannelManager;->B:Lorg/android/agoo/net/channel/IDataChannel;

    if-nez v0, :cond_0

    .line 455
    const-string v0, "ChannelManager"

    const-string v1, "dataChannel==null"

    invoke-static {v0, v1}, Lcom/umeng/message/proguard/aK;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    :goto_0
    return-void

    .line 458
    :cond_0
    invoke-direct {p0, p1}, Lorg/android/agoo/net/channel/ChannelManager;->a(Lcom/umeng/message/proguard/aT;)V

    .line 472
    sget-object v1, Lorg/android/agoo/net/channel/ChannelManager;->p:Landroid/content/Context;

    sget-object v0, Lorg/android/agoo/net/channel/ChannelManager;->n:Lorg/android/agoo/net/channel/ChannelType;

    invoke-virtual {v0}, Lorg/android/agoo/net/channel/ChannelType;->getValue()I

    move-result v2

    iget-short v3, p0, Lorg/android/agoo/net/channel/ChannelManager;->C:S

    iget-wide v4, p0, Lorg/android/agoo/net/channel/ChannelManager;->D:J

    iget-wide v6, p0, Lorg/android/agoo/net/channel/ChannelManager;->E:J

    sget-object v0, Lorg/android/agoo/net/channel/ChannelManager;->o:Lorg/android/agoo/net/channel/AndroidEvent;

    invoke-virtual {v0}, Lorg/android/agoo/net/channel/AndroidEvent;->getValue()I

    move-result v8

    sget-object v0, Lorg/android/agoo/net/channel/ChannelManager;->x:Lorg/android/agoo/net/channel/VoteResult;

    invoke-virtual {v0}, Lorg/android/agoo/net/channel/VoteResult;->getValue()I

    move-result v9

    invoke-static/range {v1 .. v9}, Lorg/android/agoo/net/channel/SignHelper;->generatorClient(Landroid/content/Context;ISJJII)Ljava/lang/String;

    move-result-object v0

    .line 476
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 477
    sget-object v1, Lorg/android/agoo/net/channel/ChannelManager;->k:Ljava/util/Map;

    invoke-interface {v5, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 478
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 479
    sget-object v2, Lorg/android/agoo/net/channel/ChannelManager;->m:Ljava/util/Map;

    const-string v3, "ov"

    sget-object v4, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 480
    sget-object v2, Lorg/android/agoo/net/channel/ChannelManager;->p:Landroid/content/Context;

    invoke-static {v2}, Lcom/umeng/message/proguard/bk;->g(Landroid/content/Context;)Ljava/util/LinkedHashMap;

    move-result-object v2

    .line 481
    sget-object v3, Lorg/android/agoo/net/channel/ChannelManager;->m:Ljava/util/Map;

    const-string v4, "sv"

    const-string v6, "agooReleaseTime"

    invoke-virtual {v2, v6}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 482
    sget-object v2, Lorg/android/agoo/net/channel/ChannelManager;->m:Ljava/util/Map;

    const-string v3, "pm"

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-static {v4}, Lcom/umeng/message/proguard/bc;->a([B)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 483
    sget-object v2, Lorg/android/agoo/net/channel/ChannelManager;->m:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 484
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 485
    const-string v2, "c"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 487
    :cond_1
    invoke-static {}, Lorg/android/agoo/net/channel/ChannelManager;->h()I

    move-result v0

    .line 488
    const-string v2, "http://%s:%d/%s/%s/%d/%s"

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v6, p0, Lorg/android/agoo/net/channel/ChannelManager;->z:Ljava/lang/String;

    aput-object v6, v3, v4

    const/4 v4, 0x1

    iget v6, p0, Lorg/android/agoo/net/channel/ChannelManager;->A:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v4

    const/4 v4, 0x2

    sget-object v6, Lorg/android/agoo/net/channel/ChannelManager;->s:Ljava/lang/String;

    aput-object v6, v3, v4

    const/4 v4, 0x3

    sget-object v6, Lorg/android/agoo/net/channel/ChannelManager;->t:Ljava/lang/String;

    aput-object v6, v3, v4

    const/4 v4, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    const/4 v0, 0x5

    sget-object v4, Lorg/android/agoo/net/channel/ChannelManager;->r:Ljava/lang/String;

    aput-object v4, v3, v0

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 490
    sget-object v2, Lorg/android/agoo/net/channel/ChannelManager;->p:Landroid/content/Context;

    sget-object v3, Lorg/android/agoo/net/channel/ChannelManager;->t:Ljava/lang/String;

    sget-object v4, Lorg/android/agoo/net/channel/ChannelManager;->u:Ljava/lang/String;

    invoke-static {v2, v0, v1, v3, v4}, Lorg/android/agoo/net/channel/SignHelper;->generatorSign(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 492
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 493
    sget-object v0, Lorg/android/agoo/net/channel/ChannelError;->v:Lorg/android/agoo/net/channel/ChannelError;

    invoke-virtual {v0}, Lorg/android/agoo/net/channel/ChannelError;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/message/proguard/aT;->f(Ljava/lang/String;)V

    .line 494
    sget-object v0, Lorg/android/agoo/net/channel/ChannelError;->v:Lorg/android/agoo/net/channel/ChannelError;

    const-string v1, ""

    invoke-direct {p0, v0, v1}, Lorg/android/agoo/net/channel/ChannelManager;->a(Lorg/android/agoo/net/channel/ChannelError;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 519
    :catch_0
    move-exception v0

    .line 520
    const-string v1, "ChannelManager"

    const-string v2, "_connenct"

    invoke-static {v1, v2, v0}, Lcom/umeng/message/proguard/aK;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 497
    :cond_2
    :try_start_1
    invoke-direct {p0, v0, v1, v2}, Lorg/android/agoo/net/channel/ChannelManager;->a(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 498
    const-string v0, "ChannelManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCurrentChannelType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lorg/android/agoo/net/channel/ChannelManager;->n:Lorg/android/agoo/net/channel/ChannelType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    sget-object v0, Lorg/android/agoo/net/channel/ChannelManager$2;->a:[I

    sget-object v1, Lorg/android/agoo/net/channel/ChannelManager;->n:Lorg/android/agoo/net/channel/ChannelType;

    invoke-virtual {v1}, Lorg/android/agoo/net/channel/ChannelType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 507
    const-string v0, "ChannelManager"

    const-string v1, "connenct  [SpdyChannel]"

    invoke-static {v0, v1}, Lcom/umeng/message/proguard/aK;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    :goto_1
    sget-object v0, Lorg/android/agoo/net/channel/ChannelManager;->p:Landroid/content/Context;

    const-string v1, "AGOO_CONNECT"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 512
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 513
    const-string v1, "AGOO_CONNECT_HOST"

    iget-object v2, p0, Lorg/android/agoo/net/channel/ChannelManager;->z:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 514
    const-string v1, "AGOO_CONNECT_PORT"

    iget v2, p0, Lorg/android/agoo/net/channel/ChannelManager;->A:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 515
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 517
    iget-object v1, p0, Lorg/android/agoo/net/channel/ChannelManager;->B:Lorg/android/agoo/net/channel/IDataChannel;

    iget-object v2, p0, Lorg/android/agoo/net/channel/ChannelManager;->H:Ljava/lang/Object;

    sget-object v3, Lorg/android/agoo/net/channel/ChannelManager;->p:Landroid/content/Context;

    sget-wide v6, Lorg/android/agoo/net/channel/ChannelManager;->l:J

    sget-object v8, Lorg/android/agoo/net/channel/ChannelManager;->q:Lorg/android/agoo/net/channel/IPushHandler;

    move-object v9, p1

    move-object v10, p2

    invoke-interface/range {v1 .. v10}, Lorg/android/agoo/net/channel/IDataChannel;->connect(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;JLorg/android/agoo/net/channel/IPushHandler;Lcom/umeng/message/proguard/aT;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 501
    :pswitch_0
    const-string v0, "ChannelManager"

    const-string v1, "connenct  [SpdyChannel]"

    invoke-static {v0, v1}, Lcom/umeng/message/proguard/aK;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 504
    :pswitch_1
    const-string v0, "ChannelManager"

    const-string v1, "connenct  [ChunkedChannel]"

    invoke-static {v0, v1}, Lcom/umeng/message/proguard/aK;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 499
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private final a(Lcom/umeng/message/proguard/aU;)V
    .locals 1

    .prologue
    .line 654
    :try_start_0
    sget-object v0, Lorg/android/agoo/net/channel/ChannelManager;->q:Lorg/android/agoo/net/channel/IPushHandler;

    if-eqz v0, :cond_0

    .line 655
    sget-object v0, Lorg/android/agoo/net/channel/ChannelManager;->q:Lorg/android/agoo/net/channel/IPushHandler;

    invoke-interface {v0, p1}, Lorg/android/agoo/net/channel/IPushHandler;->onReportDNS(Lcom/umeng/message/proguard/aU;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 660
    :cond_0
    :goto_0
    return-void

    .line 657
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private final a(Lorg/android/agoo/net/channel/ChannelError;Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 644
    :try_start_0
    sget-object v0, Lorg/android/agoo/net/channel/ChannelManager;->q:Lorg/android/agoo/net/channel/IPushHandler;

    if-eqz v0, :cond_0

    .line 645
    sget-object v0, Lorg/android/agoo/net/channel/ChannelManager;->q:Lorg/android/agoo/net/channel/IPushHandler;

    iget-object v1, p0, Lorg/android/agoo/net/channel/ChannelManager;->H:Ljava/lang/Object;

    const-wide/16 v2, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v4, p1

    invoke-interface/range {v0 .. v7}, Lorg/android/agoo/net/channel/IPushHandler;->onError(Ljava/lang/Object;JLorg/android/agoo/net/channel/ChannelError;Ljava/util/Map;Ljava/lang/Throwable;Lcom/umeng/message/proguard/aT;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 650
    :cond_0
    :goto_0
    return-void

    .line 647
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic a(Lorg/android/agoo/net/channel/ChannelManager;Lcom/umeng/message/proguard/aU;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lorg/android/agoo/net/channel/ChannelManager;->a(Lcom/umeng/message/proguard/aU;)V

    return-void
.end method

.method static synthetic a(Lorg/android/agoo/net/channel/ChannelManager;Lorg/android/agoo/net/channel/ChannelError;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lorg/android/agoo/net/channel/ChannelManager;->a(Lorg/android/agoo/net/channel/ChannelError;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lorg/android/agoo/net/channel/ChannelManager;Z)Z
    .locals 0

    .prologue
    .line 30
    iput-boolean p1, p0, Lorg/android/agoo/net/channel/ChannelManager;->G:Z

    return p1
.end method

.method static synthetic a(Z)Z
    .locals 0

    .prologue
    .line 30
    sput-boolean p0, Lorg/android/agoo/net/channel/ChannelManager;->v:Z

    return p0
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lorg/android/agoo/net/channel/ChannelManager;->r:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 30
    sput-object p0, Lorg/android/agoo/net/channel/ChannelManager;->r:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b(Ljava/util/Map;)Ljava/util/Map;
    .locals 0

    .prologue
    .line 30
    sput-object p0, Lorg/android/agoo/net/channel/ChannelManager;->m:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic b(Z)Z
    .locals 0

    .prologue
    .line 30
    sput-boolean p0, Lorg/android/agoo/net/channel/ChannelManager;->y:Z

    return p0
.end method

.method static synthetic c(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 30
    sput-object p0, Lorg/android/agoo/net/channel/ChannelManager;->s:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c()Lorg/android/agoo/net/channel/DNSManager;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lorg/android/agoo/net/channel/ChannelManager;->w:Lorg/android/agoo/net/channel/DNSManager;

    return-object v0
.end method

.method static synthetic d(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 30
    sput-object p0, Lorg/android/agoo/net/channel/ChannelManager;->u:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic d()Ljava/util/Map;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lorg/android/agoo/net/channel/ChannelManager;->m:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic e()Landroid/content/Context;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lorg/android/agoo/net/channel/ChannelManager;->p:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic f()Ljava/util/Map;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lorg/android/agoo/net/channel/ChannelManager;->k:Ljava/util/Map;

    return-object v0
.end method

.method private final g()V
    .locals 3

    .prologue
    .line 360
    sget-object v0, Lorg/android/agoo/net/channel/ChannelManager$2;->a:[I

    sget-object v1, Lorg/android/agoo/net/channel/ChannelManager;->n:Lorg/android/agoo/net/channel/ChannelType;

    invoke-virtual {v1}, Lorg/android/agoo/net/channel/ChannelType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 399
    :cond_0
    :goto_0
    return-void

    .line 366
    :pswitch_0
    :try_start_0
    iget-object v0, p0, Lorg/android/agoo/net/channel/ChannelManager;->B:Lorg/android/agoo/net/channel/IDataChannel;

    if-eqz v0, :cond_1

    sget-boolean v0, Lorg/android/agoo/net/channel/ChannelManager;->y:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/android/agoo/net/channel/ChannelManager;->B:Lorg/android/agoo/net/channel/IDataChannel;

    instance-of v0, v0, Lorg/android/agoo/net/channel/spdy/SpdyChannel;

    if-eqz v0, :cond_1

    .line 368
    iget-object v0, p0, Lorg/android/agoo/net/channel/ChannelManager;->B:Lorg/android/agoo/net/channel/IDataChannel;

    invoke-interface {v0}, Lorg/android/agoo/net/channel/IDataChannel;->close()V

    .line 369
    new-instance v0, Lorg/android/agoo/net/channel/spdy/SpdyChannel;

    invoke-direct {v0}, Lorg/android/agoo/net/channel/spdy/SpdyChannel;-><init>()V

    iput-object v0, p0, Lorg/android/agoo/net/channel/ChannelManager;->B:Lorg/android/agoo/net/channel/IDataChannel;

    .line 370
    const/4 v0, 0x0

    sput-boolean v0, Lorg/android/agoo/net/channel/ChannelManager;->y:Z

    .line 372
    :cond_1
    iget-object v0, p0, Lorg/android/agoo/net/channel/ChannelManager;->B:Lorg/android/agoo/net/channel/IDataChannel;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/android/agoo/net/channel/ChannelManager;->B:Lorg/android/agoo/net/channel/IDataChannel;

    instance-of v0, v0, Lorg/android/agoo/net/channel/spdy/SpdyChannel;

    if-nez v0, :cond_0

    .line 374
    :cond_2
    new-instance v0, Lorg/android/agoo/net/channel/spdy/SpdyChannel;

    invoke-direct {v0}, Lorg/android/agoo/net/channel/spdy/SpdyChannel;-><init>()V

    iput-object v0, p0, Lorg/android/agoo/net/channel/ChannelManager;->B:Lorg/android/agoo/net/channel/IDataChannel;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 377
    :catch_0
    move-exception v0

    .line 378
    const-string v1, "ChannelManager"

    const-string v2, "builder.changeChannel.initSpdy"

    invoke-static {v1, v2, v0}, Lcom/umeng/message/proguard/aK;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 380
    sget-object v0, Lorg/android/agoo/net/channel/ChannelError;->f:Lorg/android/agoo/net/channel/ChannelError;

    const-string v1, "builder.changeChannel.initSpdy error"

    invoke-direct {p0, v0, v1}, Lorg/android/agoo/net/channel/ChannelManager;->a(Lorg/android/agoo/net/channel/ChannelError;Ljava/lang/String;)V

    goto :goto_0

    .line 387
    :pswitch_1
    :try_start_1
    iget-object v0, p0, Lorg/android/agoo/net/channel/ChannelManager;->B:Lorg/android/agoo/net/channel/IDataChannel;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/android/agoo/net/channel/ChannelManager;->B:Lorg/android/agoo/net/channel/IDataChannel;

    instance-of v0, v0, Lorg/android/agoo/net/channel/chunked/HttpURLChunkedChannel;

    if-nez v0, :cond_0

    .line 389
    :cond_3
    new-instance v0, Lorg/android/agoo/net/channel/chunked/HttpURLChunkedChannel;

    invoke-direct {v0}, Lorg/android/agoo/net/channel/chunked/HttpURLChunkedChannel;-><init>()V

    iput-object v0, p0, Lorg/android/agoo/net/channel/ChannelManager;->B:Lorg/android/agoo/net/channel/IDataChannel;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 391
    :catch_1
    move-exception v0

    .line 392
    sget-object v1, Lorg/android/agoo/net/channel/ChannelError;->n:Lorg/android/agoo/net/channel/ChannelError;

    const-string v2, "builder.changeChannel.initSpdy error"

    invoke-direct {p0, v1, v2}, Lorg/android/agoo/net/channel/ChannelManager;->a(Lorg/android/agoo/net/channel/ChannelError;Ljava/lang/String;)V

    .line 394
    const-string v1, "ChannelManager"

    const-string v2, "builder.changeChannel.initChunked"

    invoke-static {v1, v2, v0}, Lcom/umeng/message/proguard/aK;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 360
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static final h()I
    .locals 4

    .prologue
    .line 597
    const/4 v0, -0x1

    .line 599
    :try_start_0
    sget-object v1, Lorg/android/agoo/net/channel/ChannelManager;->p:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    sget-object v2, Lorg/android/agoo/net/channel/ChannelManager;->p:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 601
    iget v0, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 606
    :goto_0
    return v0

    .line 603
    :catch_0
    move-exception v1

    .line 604
    const-string v2, "ChannelManager"

    const-string v3, "getAppVersionCode"

    invoke-static {v2, v3, v1}, Lcom/umeng/message/proguard/aK;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public final ACK(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 9

    .prologue
    const/4 v1, -0x1

    const/4 v2, 0x0

    .line 301
    .line 305
    :try_start_0
    iget-object v0, p0, Lorg/android/agoo/net/channel/ChannelManager;->B:Lorg/android/agoo/net/channel/IDataChannel;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/android/agoo/net/channel/ChannelManager;->B:Lorg/android/agoo/net/channel/IDataChannel;

    invoke-interface {v0}, Lorg/android/agoo/net/channel/IDataChannel;->readyChannelState()Lorg/android/agoo/net/channel/ChannelState;

    move-result-object v0

    sget-object v3, Lorg/android/agoo/net/channel/ChannelState;->b:Lorg/android/agoo/net/channel/ChannelState;

    if-ne v0, v3, :cond_4

    .line 307
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 309
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 356
    :goto_0
    return v1

    .line 312
    :cond_0
    sget-object v3, Lorg/android/agoo/net/channel/ChannelManager;->m:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 313
    const-string v3, "id"

    invoke-interface {v0, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 315
    const-string v3, "del_pack"

    invoke-interface {v0, v3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    :cond_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 318
    const-string v3, "ec"

    invoke-interface {v0, v3, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    :cond_2
    invoke-static {}, Lorg/android/agoo/net/channel/ChannelManager;->h()I

    move-result v3

    .line 321
    const-string v4, "http://%s:%d/%s/%s/%d/%s"

    const/4 v5, 0x6

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lorg/android/agoo/net/channel/ChannelManager;->z:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget v7, p0, Lorg/android/agoo/net/channel/ChannelManager;->A:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-string v7, "A_R"

    aput-object v7, v5, v6

    const/4 v6, 0x3

    sget-object v7, Lorg/android/agoo/net/channel/ChannelManager;->t:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v6

    const/4 v3, 0x5

    sget-object v6, Lorg/android/agoo/net/channel/ChannelManager;->r:Ljava/lang/String;

    aput-object v6, v5, v3

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 324
    sget-object v4, Lorg/android/agoo/net/channel/ChannelManager;->p:Landroid/content/Context;

    sget-object v5, Lorg/android/agoo/net/channel/ChannelManager;->t:Ljava/lang/String;

    sget-object v6, Lorg/android/agoo/net/channel/ChannelManager;->u:Ljava/lang/String;

    invoke-static {v4, v3, v0, v5, v6}, Lorg/android/agoo/net/channel/SignHelper;->generatorSign(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 326
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 327
    const-string v0, "ChannelManager"

    const-string v3, "reportMessages[sgin==null]"

    invoke-static {v0, v3}, Lcom/umeng/message/proguard/aK;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    sget-object v0, Lorg/android/agoo/net/channel/ChannelError;->v:Lorg/android/agoo/net/channel/ChannelError;

    const-string v3, ""

    invoke-direct {p0, v0, v3}, Lorg/android/agoo/net/channel/ChannelManager;->a(Lorg/android/agoo/net/channel/ChannelError;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 346
    :catch_0
    move-exception v0

    move v3, v1

    move-object v1, v2

    .line 348
    :goto_1
    new-instance v4, Lorg/android/agoo/net/async/c;

    sget-object v5, Lorg/android/agoo/net/channel/ChannelManager;->p:Landroid/content/Context;

    const-string v6, "ackFailed"

    invoke-direct {v4, v5, v6}, Lorg/android/agoo/net/async/c;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 349
    sget-object v5, Lorg/android/agoo/net/channel/ChannelManager;->p:Landroid/content/Context;

    invoke-static {v5}, Lcom/umeng/message/proguard/bk;->g(Landroid/content/Context;)Ljava/util/LinkedHashMap;

    move-result-object v5

    .line 350
    const-string v6, "ackRequestCode"

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v6, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    invoke-virtual {v4, v5}, Lorg/android/agoo/net/async/c;->a(Ljava/util/LinkedHashMap;)V

    .line 352
    iget-object v3, p0, Lorg/android/agoo/net/channel/ChannelManager;->B:Lorg/android/agoo/net/channel/IDataChannel;

    invoke-interface {v3, v1, v2, v2, v2}, Lorg/android/agoo/net/channel/IDataChannel;->send(Ljava/lang/String;[BLorg/android/agoo/net/channel/IPullHandler;Lcom/umeng/message/proguard/aV;)I

    move-result v1

    .line 353
    const-string v2, "ChannelManager"

    const-string v3, "reportMessages"

    invoke-static {v2, v3, v0}, Lcom/umeng/message/proguard/aK;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 331
    :cond_3
    :try_start_1
    invoke-direct {p0, v3, v0, v4}, Lorg/android/agoo/net/channel/ChannelManager;->a(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 332
    new-instance v3, Ljava/net/URI;

    invoke-direct {v3, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 333
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "?"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v3}, Ljava/net/URI;->getQuery()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    .line 334
    :try_start_2
    const-string v0, "ChannelManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "reportMessages url ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/umeng/message/proguard/aK;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    iget-object v0, p0, Lorg/android/agoo/net/channel/ChannelManager;->B:Lorg/android/agoo/net/channel/IDataChannel;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface {v0, v3, v4, v5, v6}, Lorg/android/agoo/net/channel/IDataChannel;->send(Ljava/lang/String;[BLorg/android/agoo/net/channel/IPullHandler;Lcom/umeng/message/proguard/aV;)I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    move-result v0

    .line 336
    if-eqz v0, :cond_5

    if-eq v0, v1, :cond_5

    .line 338
    :try_start_3
    new-instance v1, Lorg/android/agoo/net/async/c;

    sget-object v4, Lorg/android/agoo/net/channel/ChannelManager;->p:Landroid/content/Context;

    const-string v5, "ackFailed"

    invoke-direct {v1, v4, v5}, Lorg/android/agoo/net/async/c;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 339
    sget-object v4, Lorg/android/agoo/net/channel/ChannelManager;->p:Landroid/content/Context;

    invoke-static {v4}, Lcom/umeng/message/proguard/bk;->g(Landroid/content/Context;)Ljava/util/LinkedHashMap;

    move-result-object v4

    .line 340
    const-string v5, "ackRequestCode"

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    invoke-virtual {v1, v4}, Lorg/android/agoo/net/async/c;->a(Ljava/util/LinkedHashMap;)V

    .line 342
    iget-object v1, p0, Lorg/android/agoo/net/channel/ChannelManager;->B:Lorg/android/agoo/net/channel/IDataChannel;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface {v1, v3, v4, v5, v6}, Lorg/android/agoo/net/channel/IDataChannel;->send(Ljava/lang/String;[BLorg/android/agoo/net/channel/IPullHandler;Lcom/umeng/message/proguard/aV;)I
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    move-result v1

    goto/16 :goto_0

    :cond_4
    move v0, v1

    :cond_5
    move v1, v0

    .line 356
    goto/16 :goto_0

    .line 346
    :catch_1
    move-exception v0

    move-object v8, v3

    move v3, v1

    move-object v1, v8

    goto/16 :goto_1

    :catch_2
    move-exception v1

    move-object v8, v1

    move-object v1, v3

    move v3, v0

    move-object v0, v8

    goto/16 :goto_1
.end method

.method public final connenct(Lcom/umeng/message/proguard/aT;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 409
    :try_start_0
    sget-boolean v0, Lorg/android/agoo/net/channel/ChannelManager;->v:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/android/agoo/net/channel/ChannelManager;->z:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    iget v1, p0, Lorg/android/agoo/net/channel/ChannelManager;->A:I

    if-ne v0, v1, :cond_2

    .line 410
    :cond_0
    iget-boolean v0, p0, Lorg/android/agoo/net/channel/ChannelManager;->G:Z

    if-eqz v0, :cond_1

    .line 411
    const-string v0, "ChannelManager"

    const-string v1, "connenct[dnsing]"

    invoke-static {v0, v1}, Lcom/umeng/message/proguard/aK;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    :goto_0
    return-void

    .line 414
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/android/agoo/net/channel/ChannelManager;->G:Z

    .line 415
    sget-object v0, Lorg/android/agoo/net/channel/ChannelManager;->w:Lorg/android/agoo/net/channel/DNSManager;

    sget-object v1, Lorg/android/agoo/net/channel/ChannelManager;->n:Lorg/android/agoo/net/channel/ChannelType;

    invoke-virtual {v0, v1, p1}, Lorg/android/agoo/net/channel/DNSManager;->a(Lorg/android/agoo/net/channel/ChannelType;Lcom/umeng/message/proguard/aT;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 423
    :catch_0
    move-exception v0

    .line 424
    const-string v1, "ChannelManager"

    const-string v2, "connenct"

    invoke-static {v1, v2, v0}, Lcom/umeng/message/proguard/aK;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 418
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Lorg/android/agoo/net/channel/ChannelManager;->readyChannelState()Lorg/android/agoo/net/channel/ChannelState;

    move-result-object v0

    sget-object v1, Lorg/android/agoo/net/channel/ChannelState;->a:Lorg/android/agoo/net/channel/ChannelState;

    if-ne v0, v1, :cond_3

    .line 419
    const-string v0, "ChannelManager"

    const-string v1, "connenct[connecting]"

    invoke-static {v0, v1}, Lcom/umeng/message/proguard/aK;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 422
    :cond_3
    invoke-direct {p0, p1, p2}, Lorg/android/agoo/net/channel/ChannelManager;->a(Lcom/umeng/message/proguard/aT;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public final disconnect()V
    .locals 3

    .prologue
    .line 526
    :try_start_0
    iget-object v0, p0, Lorg/android/agoo/net/channel/ChannelManager;->B:Lorg/android/agoo/net/channel/IDataChannel;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/android/agoo/net/channel/ChannelManager;->readyChannelState()Lorg/android/agoo/net/channel/ChannelState;

    move-result-object v0

    sget-object v1, Lorg/android/agoo/net/channel/ChannelState;->b:Lorg/android/agoo/net/channel/ChannelState;

    if-ne v0, v1, :cond_0

    .line 528
    iget-object v0, p0, Lorg/android/agoo/net/channel/ChannelManager;->B:Lorg/android/agoo/net/channel/IDataChannel;

    invoke-interface {v0}, Lorg/android/agoo/net/channel/IDataChannel;->asyncDisconnect()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 534
    :cond_0
    :goto_0
    return-void

    .line 530
    :catch_0
    move-exception v0

    .line 531
    const-string v1, "ChannelManager"

    const-string v2, "disconnect"

    invoke-static {v1, v2, v0}, Lcom/umeng/message/proguard/aK;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final hisMessage(Lcom/umeng/message/proguard/aV;)Lcom/umeng/message/proguard/aV;
    .locals 6

    .prologue
    .line 264
    :try_start_0
    iget-object v0, p0, Lorg/android/agoo/net/channel/ChannelManager;->B:Lorg/android/agoo/net/channel/IDataChannel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/android/agoo/net/channel/ChannelManager;->B:Lorg/android/agoo/net/channel/IDataChannel;

    invoke-interface {v0}, Lorg/android/agoo/net/channel/IDataChannel;->readyChannelState()Lorg/android/agoo/net/channel/ChannelState;

    move-result-object v0

    sget-object v1, Lorg/android/agoo/net/channel/ChannelState;->b:Lorg/android/agoo/net/channel/ChannelState;

    if-ne v0, v1, :cond_0

    .line 266
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 267
    sget-object v1, Lorg/android/agoo/net/channel/ChannelManager;->m:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 268
    invoke-static {}, Lorg/android/agoo/net/channel/ChannelManager;->h()I

    move-result v1

    .line 269
    const-string v2, "http://%s:%d/%s/%s/%d/%s"

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lorg/android/agoo/net/channel/ChannelManager;->z:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget v5, p0, Lorg/android/agoo/net/channel/ChannelManager;->A:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "h"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    sget-object v5, Lorg/android/agoo/net/channel/ChannelManager;->t:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v4

    const/4 v1, 0x5

    sget-object v4, Lorg/android/agoo/net/channel/ChannelManager;->r:Ljava/lang/String;

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 272
    sget-object v2, Lorg/android/agoo/net/channel/ChannelManager;->p:Landroid/content/Context;

    sget-object v3, Lorg/android/agoo/net/channel/ChannelManager;->t:Ljava/lang/String;

    sget-object v4, Lorg/android/agoo/net/channel/ChannelManager;->u:Ljava/lang/String;

    invoke-static {v2, v1, v0, v3, v4}, Lorg/android/agoo/net/channel/SignHelper;->generatorSign(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 274
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 275
    const-string v0, "[sgin==null]"

    invoke-virtual {p1, v0}, Lcom/umeng/message/proguard/aV;->f(Ljava/lang/String;)V

    .line 276
    const-string v0, "ChannelManager"

    const-string v1, "hisMessage[sgin==null]"

    invoke-static {v0, v1}, Lcom/umeng/message/proguard/aK;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    sget-object v0, Lorg/android/agoo/net/channel/ChannelError;->v:Lorg/android/agoo/net/channel/ChannelError;

    const-string v1, ""

    invoke-direct {p0, v0, v1}, Lorg/android/agoo/net/channel/ChannelManager;->a(Lorg/android/agoo/net/channel/ChannelError;Ljava/lang/String;)V

    .line 297
    :cond_0
    :goto_0
    return-object p1

    .line 280
    :cond_1
    invoke-direct {p0, v1, v0, v2}, Lorg/android/agoo/net/channel/ChannelManager;->a(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 281
    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 282
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "?"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/net/URI;->getQuery()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 283
    const-string v1, "ChannelManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hisMessage url ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/umeng/message/proguard/aK;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    iget-object v1, p0, Lorg/android/agoo/net/channel/ChannelManager;->B:Lorg/android/agoo/net/channel/IDataChannel;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v1, v0, v2, v3, p1}, Lorg/android/agoo/net/channel/IDataChannel;->send(Ljava/lang/String;[BLorg/android/agoo/net/channel/IPullHandler;Lcom/umeng/message/proguard/aV;)I

    move-result v0

    .line 285
    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 286
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/message/proguard/aV;->f(Ljava/lang/String;)V

    .line 287
    const-string v0, "n"

    invoke-virtual {p1, v0}, Lcom/umeng/message/proguard/aV;->e(Ljava/lang/String;)V

    .line 289
    :cond_2
    const-string v0, "y"

    invoke-virtual {p1, v0}, Lcom/umeng/message/proguard/aV;->e(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 291
    :catch_0
    move-exception v0

    .line 292
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/umeng/message/proguard/aV;->f(Ljava/lang/String;)V

    .line 293
    const-string v1, "n"

    invoke-virtual {p1, v1}, Lcom/umeng/message/proguard/aV;->e(Ljava/lang/String;)V

    .line 294
    const-string v1, "ChannelManager"

    const-string v2, "send"

    invoke-static {v1, v2, v0}, Lcom/umeng/message/proguard/aK;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final ping()J
    .locals 5

    .prologue
    .line 547
    const-wide/16 v0, -0x1

    .line 549
    :try_start_0
    iget-object v2, p0, Lorg/android/agoo/net/channel/ChannelManager;->B:Lorg/android/agoo/net/channel/IDataChannel;

    if-eqz v2, :cond_0

    .line 550
    iget-object v2, p0, Lorg/android/agoo/net/channel/ChannelManager;->B:Lorg/android/agoo/net/channel/IDataChannel;

    invoke-interface {v2}, Lorg/android/agoo/net/channel/IDataChannel;->ping()J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 555
    :cond_0
    :goto_0
    return-wide v0

    .line 552
    :catch_0
    move-exception v2

    .line 553
    const-string v3, "ChannelManager"

    const-string v4, "ping"

    invoke-static {v3, v4, v2}, Lcom/umeng/message/proguard/aK;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final readyChannelState()Lorg/android/agoo/net/channel/ChannelState;
    .locals 3

    .prologue
    .line 242
    :try_start_0
    iget-object v0, p0, Lorg/android/agoo/net/channel/ChannelManager;->B:Lorg/android/agoo/net/channel/IDataChannel;

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lorg/android/agoo/net/channel/ChannelManager;->B:Lorg/android/agoo/net/channel/IDataChannel;

    invoke-interface {v0}, Lorg/android/agoo/net/channel/IDataChannel;->readyChannelState()Lorg/android/agoo/net/channel/ChannelState;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 248
    :goto_0
    return-object v0

    .line 245
    :catch_0
    move-exception v0

    .line 246
    const-string v1, "ChannelManager"

    const-string v2, "readyChannelState"

    invoke-static {v1, v2, v0}, Lcom/umeng/message/proguard/aK;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 248
    :cond_0
    sget-object v0, Lorg/android/agoo/net/channel/ChannelState;->d:Lorg/android/agoo/net/channel/ChannelState;

    goto :goto_0
.end method

.method public final readyChannelType()Lorg/android/agoo/net/channel/ChannelType;
    .locals 1

    .prologue
    .line 237
    sget-object v0, Lorg/android/agoo/net/channel/ChannelManager;->n:Lorg/android/agoo/net/channel/ChannelType;

    return-object v0
.end method

.method public final send(Ljava/lang/String;[BLorg/android/agoo/net/channel/IPullHandler;)V
    .locals 3

    .prologue
    .line 254
    :try_start_0
    iget-object v0, p0, Lorg/android/agoo/net/channel/ChannelManager;->B:Lorg/android/agoo/net/channel/IDataChannel;

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lorg/android/agoo/net/channel/ChannelManager;->B:Lorg/android/agoo/net/channel/IDataChannel;

    const/4 v1, 0x0

    invoke-interface {v0, p1, p2, p3, v1}, Lorg/android/agoo/net/channel/IDataChannel;->send(Ljava/lang/String;[BLorg/android/agoo/net/channel/IPullHandler;Lcom/umeng/message/proguard/aV;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 260
    :cond_0
    :goto_0
    return-void

    .line 257
    :catch_0
    move-exception v0

    .line 258
    const-string v1, "ChannelManager"

    const-string v2, "send"

    invoke-static {v1, v2, v0}, Lcom/umeng/message/proguard/aK;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final setConnectContext(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 404
    iput-object p1, p0, Lorg/android/agoo/net/channel/ChannelManager;->H:Ljava/lang/Object;

    .line 405
    return-void
.end method

.method public final shutdown()V
    .locals 3

    .prologue
    .line 538
    :try_start_0
    iget-object v0, p0, Lorg/android/agoo/net/channel/ChannelManager;->B:Lorg/android/agoo/net/channel/IDataChannel;

    if-eqz v0, :cond_0

    .line 539
    iget-object v0, p0, Lorg/android/agoo/net/channel/ChannelManager;->B:Lorg/android/agoo/net/channel/IDataChannel;

    invoke-interface {v0}, Lorg/android/agoo/net/channel/IDataChannel;->shutdown()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 544
    :cond_0
    :goto_0
    return-void

    .line 541
    :catch_0
    move-exception v0

    .line 542
    const-string v1, "ChannelManager"

    const-string v2, "shutdown"

    invoke-static {v1, v2, v0}, Lcom/umeng/message/proguard/aK;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
