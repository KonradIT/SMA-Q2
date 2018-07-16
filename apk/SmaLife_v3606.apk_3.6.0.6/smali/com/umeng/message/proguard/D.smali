.class public Lcom/umeng/message/proguard/D;
.super Ljava/lang/Object;
.source "UTMCLogTransfer.java"

# interfaces
.implements Lcom/umeng/message/proguard/A;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/message/proguard/D$1;,
        Lcom/umeng/message/proguard/D$b;,
        Lcom/umeng/message/proguard/D$a;
    }
.end annotation


# static fields
.field private static a:Lcom/umeng/message/proguard/D;


# instance fields
.field private b:Lcom/umeng/message/proguard/N;

.field private c:Ljava/util/Timer;

.field private d:Z

.field private e:I

.field private f:Lcom/umeng/message/proguard/M;

.field private g:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    new-instance v0, Lcom/umeng/message/proguard/D;

    invoke-direct {v0}, Lcom/umeng/message/proguard/D;-><init>()V

    sput-object v0, Lcom/umeng/message/proguard/D;->a:Lcom/umeng/message/proguard/D;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object v1, p0, Lcom/umeng/message/proguard/D;->b:Lcom/umeng/message/proguard/N;

    .line 47
    iput-object v1, p0, Lcom/umeng/message/proguard/D;->c:Ljava/util/Timer;

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/umeng/message/proguard/D;->d:Z

    .line 49
    const/16 v0, 0x14

    iput v0, p0, Lcom/umeng/message/proguard/D;->e:I

    .line 50
    iput-object v1, p0, Lcom/umeng/message/proguard/D;->f:Lcom/umeng/message/proguard/M;

    .line 323
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/umeng/message/proguard/D;->g:Ljava/lang/Object;

    .line 39
    invoke-direct {p0}, Lcom/umeng/message/proguard/D;->d()V

    .line 40
    return-void
.end method

.method static synthetic a(IJ)I
    .locals 1

    .prologue
    .line 33
    invoke-static {p0, p1, p2}, Lcom/umeng/message/proguard/D;->b(IJ)I

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/umeng/message/proguard/D;I)I
    .locals 0

    .prologue
    .line 33
    iput p1, p0, Lcom/umeng/message/proguard/D;->e:I

    return p1
.end method

.method private a(I)V
    .locals 7

    .prologue
    .line 326
    iget-object v6, p0, Lcom/umeng/message/proguard/D;->g:Ljava/lang/Object;

    monitor-enter v6

    .line 327
    :try_start_0
    iget-object v0, p0, Lcom/umeng/message/proguard/D;->c:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 328
    iget-object v0, p0, Lcom/umeng/message/proguard/D;->c:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 329
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/message/proguard/D;->c:Ljava/util/Timer;

    .line 331
    :cond_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/umeng/message/proguard/D;->c:Ljava/util/Timer;

    .line 332
    iget-object v0, p0, Lcom/umeng/message/proguard/D;->c:Ljava/util/Timer;

    new-instance v1, Lcom/umeng/message/proguard/D$b;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/umeng/message/proguard/D$b;-><init>(Lcom/umeng/message/proguard/D;Lcom/umeng/message/proguard/D$1;)V

    int-to-long v2, p1

    int-to-long v4, p1

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 334
    const/4 v0, 0x1

    const-string v1, "_adjTransferRate"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "millseconds:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/umeng/message/proguard/y;->b(ILjava/lang/String;Ljava/lang/Object;)V

    .line 336
    monitor-exit v6

    .line 337
    return-void

    .line 336
    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic a(Lcom/umeng/message/proguard/D;)Z
    .locals 1

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/umeng/message/proguard/D;->d:Z

    return v0
.end method

.method static synthetic a(Lcom/umeng/message/proguard/D;Z)Z
    .locals 0

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/umeng/message/proguard/D;->d:Z

    return p1
.end method

.method private static b(IJ)I
    .locals 5

    .prologue
    const/16 v0, 0xa

    .line 140
    .line 142
    const-wide/16 v2, 0x7d0

    cmp-long v1, p1, v2

    if-lez v1, :cond_2

    .line 143
    if-ne p0, v0, :cond_1

    .line 144
    const/4 p0, 0x5

    .line 161
    :cond_0
    :goto_0
    return p0

    :cond_1
    move p0, v0

    .line 146
    goto :goto_0

    .line 148
    :cond_2
    const-wide/16 v2, 0x3e8

    cmp-long v1, p1, v2

    if-lez v1, :cond_3

    .line 149
    if-le p0, v0, :cond_0

    .line 150
    mul-int/lit8 v0, p0, 0x7

    div-int/lit8 p0, v0, 0xa

    goto :goto_0

    .line 152
    :cond_3
    const-wide/16 v2, 0x1f4

    cmp-long v1, p1, v2

    if-lez v1, :cond_4

    .line 153
    if-le p0, v0, :cond_0

    .line 154
    mul-int/lit8 v0, p0, 0x9

    div-int/lit8 p0, v0, 0xa

    goto :goto_0

    .line 157
    :cond_4
    const/16 v0, 0x64

    if-ge p0, v0, :cond_0

    .line 158
    mul-int/lit8 p0, p0, 0x2

    goto :goto_0
.end method

.method static synthetic b(Lcom/umeng/message/proguard/D;)I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/umeng/message/proguard/D;->e:I

    return v0
.end method

.method public static c()Lcom/umeng/message/proguard/D;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/umeng/message/proguard/D;->a:Lcom/umeng/message/proguard/D;

    return-object v0
.end method

.method static synthetic c(Lcom/umeng/message/proguard/D;)Lcom/umeng/message/proguard/M;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/umeng/message/proguard/D;->f:Lcom/umeng/message/proguard/M;

    return-object v0
.end method

.method static synthetic d(Lcom/umeng/message/proguard/D;)Lcom/umeng/message/proguard/N;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/umeng/message/proguard/D;->b:Lcom/umeng/message/proguard/N;

    return-object v0
.end method

.method private d()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 59
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    .line 60
    new-instance v1, Lcom/umeng/message/proguard/D$b;

    invoke-direct {v1, p0, v4}, Lcom/umeng/message/proguard/D$b;-><init>(Lcom/umeng/message/proguard/D;Lcom/umeng/message/proguard/D$1;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 62
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/umeng/message/proguard/D;->c:Ljava/util/Timer;

    .line 64
    iget-object v0, p0, Lcom/umeng/message/proguard/D;->c:Ljava/util/Timer;

    new-instance v1, Lcom/umeng/message/proguard/D$b;

    invoke-direct {v1, p0, v4}, Lcom/umeng/message/proguard/D$b;-><init>(Lcom/umeng/message/proguard/D;Lcom/umeng/message/proguard/D$1;)V

    const-wide/32 v2, 0x88b8

    const-wide/16 v4, 0x7530

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 68
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 69
    invoke-static {p0}, Lcom/umeng/message/proguard/C;->a(Lcom/umeng/message/proguard/A;)V

    .line 72
    :cond_0
    return-void
.end method

.method private declared-synchronized e()V
    .locals 3

    .prologue
    .line 292
    monitor-enter p0

    const/4 v0, 0x2

    :try_start_0
    const-string v1, "_sendLog"

    const-string v2, "_sendlog"

    invoke-static {v0, v1, v2}, Lcom/umeng/message/proguard/y;->b(ILjava/lang/String;Ljava/lang/Object;)V

    .line 295
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-ge v0, v1, :cond_0

    .line 296
    const/4 v0, 0x2

    const-string v1, "_sendLog"

    const-string v2, "saveToStorage because Build.VERSION.SDK_INT < Build.VERSION_CODES.GINGERBREAD"

    invoke-static {v0, v1, v2}, Lcom/umeng/message/proguard/y;->b(ILjava/lang/String;Ljava/lang/Object;)V

    .line 299
    iget-object v0, p0, Lcom/umeng/message/proguard/D;->b:Lcom/umeng/message/proguard/N;

    invoke-virtual {v0}, Lcom/umeng/message/proguard/N;->b()V

    .line 302
    :cond_0
    invoke-static {}, Lcom/umeng/message/proguard/w;->a()Lcom/umeng/message/proguard/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/message/proguard/w;->k()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/message/proguard/ap;->a(Landroid/content/Context;)Z

    move-result v0

    .line 305
    if-nez v0, :cond_1

    .line 306
    const/4 v0, 0x2

    const-string v1, "_sendLog"

    const-string v2, "skip[No ActiveNetworkInfo]"

    invoke-static {v0, v1, v2}, Lcom/umeng/message/proguard/y;->b(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 320
    :goto_0
    monitor-exit p0

    return-void

    .line 311
    :cond_1
    :try_start_1
    iget-boolean v0, p0, Lcom/umeng/message/proguard/D;->d:Z

    if-eqz v0, :cond_2

    .line 312
    const/4 v0, 0x2

    const-string v1, "_sendLog"

    const-string v2, "mIsTransferLogThreadRunning=true"

    invoke-static {v0, v1, v2}, Lcom/umeng/message/proguard/y;->b(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 292
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 317
    :cond_2
    :try_start_2
    new-instance v0, Lcom/umeng/message/proguard/D$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/umeng/message/proguard/D$a;-><init>(Lcom/umeng/message/proguard/D;Lcom/umeng/message/proguard/D$1;)V

    .line 318
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method static synthetic e(Lcom/umeng/message/proguard/D;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/umeng/message/proguard/D;->e()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 341
    const/4 v0, 0x1

    const-string v1, "_sendlog"

    const-string v2, "in background"

    invoke-static {v0, v1, v2}, Lcom/umeng/message/proguard/y;->b(ILjava/lang/String;Ljava/lang/Object;)V

    .line 342
    invoke-direct {p0}, Lcom/umeng/message/proguard/D;->e()V

    .line 344
    const v0, 0x927c0

    invoke-direct {p0, v0}, Lcom/umeng/message/proguard/D;->a(I)V

    .line 345
    return-void
.end method

.method public a(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 360
    return-void
.end method

.method public a(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 355
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v2, 0x2

    const/4 v5, 0x1

    .line 83
    iget-object v0, p0, Lcom/umeng/message/proguard/D;->b:Lcom/umeng/message/proguard/N;

    if-nez v0, :cond_0

    .line 84
    invoke-static {}, Lcom/umeng/message/proguard/w;->a()Lcom/umeng/message/proguard/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/message/proguard/w;->k()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/message/proguard/N;->a(Landroid/content/Context;)Lcom/umeng/message/proguard/N;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/message/proguard/D;->b:Lcom/umeng/message/proguard/N;

    .line 88
    new-instance v0, Lcom/umeng/message/proguard/M;

    iget-object v1, p0, Lcom/umeng/message/proguard/D;->b:Lcom/umeng/message/proguard/N;

    invoke-direct {v0, v1}, Lcom/umeng/message/proguard/M;-><init>(Lcom/umeng/message/proguard/N;)V

    iput-object v0, p0, Lcom/umeng/message/proguard/D;->f:Lcom/umeng/message/proguard/M;

    .line 89
    invoke-static {}, Lcom/umeng/message/proguard/E;->a()Lcom/umeng/message/proguard/E;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/message/proguard/D;->f:Lcom/umeng/message/proguard/M;

    invoke-virtual {v0, v1}, Lcom/umeng/message/proguard/E;->a(Lcom/umeng/message/proguard/K;)V

    .line 93
    :cond_0
    if-nez p1, :cond_2

    if-nez p2, :cond_2

    .line 129
    :cond_1
    :goto_0
    return-void

    .line 98
    :cond_2
    invoke-static {}, Lcom/umeng/message/proguard/U;->a()Lcom/umeng/message/proguard/U;

    move-result-object v0

    invoke-virtual {v0, v2, p1}, Lcom/umeng/message/proguard/U;->a(ILjava/lang/Object;)V

    .line 101
    invoke-static {}, Lcom/umeng/message/proguard/E;->a()Lcom/umeng/message/proguard/E;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/umeng/message/proguard/E;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 104
    if-eqz v0, :cond_3

    const-string v1, "drop"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 106
    invoke-static {}, Lcom/umeng/message/proguard/y;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 107
    const-string v0, "dispatch log"

    const-string v1, "direct drop"

    invoke-static {v2, v0, v1}, Lcom/umeng/message/proguard/y;->c(ILjava/lang/String;Ljava/lang/Object;)V

    .line 109
    invoke-static {p1}, Lcom/umeng/message/proguard/Q;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 111
    if-eqz v0, :cond_1

    .line 112
    const-string v1, "(%s) Skip by EventStrategier:"

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Lcom/umeng/message/proguard/v;->D:Lcom/umeng/message/proguard/v;

    invoke-virtual {v4}, Lcom/umeng/message/proguard/v;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0, p1}, Lcom/umeng/message/proguard/y;->c(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 121
    :cond_3
    iget-object v0, p0, Lcom/umeng/message/proguard/D;->b:Lcom/umeng/message/proguard/N;

    if-eqz v0, :cond_1

    .line 122
    iget-object v0, p0, Lcom/umeng/message/proguard/D;->b:Lcom/umeng/message/proguard/N;

    invoke-virtual {v0, p1, p2}, Lcom/umeng/message/proguard/N;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 124
    invoke-static {}, Lcom/umeng/message/proguard/S;->a()Lcom/umeng/message/proguard/S;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/message/proguard/S;->b()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 125
    invoke-direct {p0}, Lcom/umeng/message/proguard/D;->e()V

    .line 127
    :cond_4
    invoke-static {}, Lcom/umeng/message/proguard/P;->a()Lcom/umeng/message/proguard/P;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/umeng/message/proguard/P;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 349
    const/16 v0, 0x7530

    invoke-direct {p0, v0}, Lcom/umeng/message/proguard/D;->a(I)V

    .line 350
    return-void
.end method

.method public b(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 365
    return-void
.end method

.method public b(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 375
    return-void
.end method

.method public c(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 370
    return-void
.end method
