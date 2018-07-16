.class public Lcom/umeng/message/proguard/ag;
.super Ljava/lang/Object;
.source "UTMI1010_2001Event.java"

# interfaces
.implements Lcom/umeng/message/proguard/A;
.implements Lcom/umeng/message/proguard/T;


# instance fields
.field private a:J

.field private b:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-wide v0, p0, Lcom/umeng/message/proguard/ag;->a:J

    .line 27
    iput-wide v0, p0, Lcom/umeng/message/proguard/ag;->b:J

    return-void
.end method

.method private static a(J)V
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 105
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-lez v0, :cond_0

    .line 106
    new-instance v0, Lcom/umeng/message/proguard/ay;

    const-string v1, "UT"

    const/16 v2, 0x3f2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/umeng/message/proguard/ay;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 108
    invoke-static {}, Lcom/umeng/message/proguard/m;->a()Lcom/umeng/message/proguard/m;

    move-result-object v1

    invoke-virtual {v1}, Lcom/umeng/message/proguard/m;->b()Lcom/umeng/message/proguard/r;

    move-result-object v1

    .line 109
    if-eqz v1, :cond_1

    .line 110
    invoke-virtual {v0}, Lcom/umeng/message/proguard/ay;->a()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/umeng/message/proguard/r;->a(Ljava/util/Map;)V

    .line 115
    :cond_0
    :goto_0
    return-void

    .line 112
    :cond_1
    const/4 v0, 0x1

    const-string v1, "Record app display event error"

    const-string v2, "Fatal Error,must call setRequestAuthentication method first."

    invoke-static {v0, v1, v2}, Lcom/umeng/message/proguard/y;->c(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private static c()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 72
    :try_start_0
    invoke-static {}, Lcom/umeng/message/proguard/w;->a()Lcom/umeng/message/proguard/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/message/proguard/w;->k()Landroid/content/Context;

    move-result-object v0

    .line 73
    if-eqz v0, :cond_0

    .line 74
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 75
    if-eqz v3, :cond_0

    .line 76
    const-string v4, "activity"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 78
    if-eqz v0, :cond_0

    .line 80
    const/4 v4, 0x1

    :try_start_1
    invoke-virtual {v0, v4}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    .line 82
    if-eqz v0, :cond_0

    .line 83
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 84
    const/4 v4, 0x0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 85
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 101
    :goto_0
    return v0

    .line 92
    :catch_0
    move-exception v0

    .line 93
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :cond_0
    move v0, v2

    .line 101
    goto :goto_0

    .line 98
    :catch_1
    move-exception v0

    move v0, v1

    .line 99
    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 122
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/umeng/message/proguard/ag;->b:J

    sub-long/2addr v0, v2

    .line 124
    invoke-static {v0, v1}, Lcom/umeng/message/proguard/ag;->a(J)V

    .line 125
    return-void
.end method

.method public a(ILjava/lang/Object;)V
    .locals 6

    .prologue
    const-wide/16 v2, 0x0

    .line 34
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 35
    check-cast p2, Ljava/util/Map;

    .line 36
    sget-object v0, Lcom/umeng/message/proguard/v;->D:Lcom/umeng/message/proguard/v;

    invoke-virtual {v0}, Lcom/umeng/message/proguard/v;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    sget-object v0, Lcom/umeng/message/proguard/v;->D:Lcom/umeng/message/proguard/v;

    invoke-virtual {v0}, Lcom/umeng/message/proguard/v;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 39
    const-string v1, "2001"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    sget-object v0, Lcom/umeng/message/proguard/v;->G:Lcom/umeng/message/proguard/v;

    invoke-virtual {v0}, Lcom/umeng/message/proguard/v;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 43
    sget-object v0, Lcom/umeng/message/proguard/v;->G:Lcom/umeng/message/proguard/v;

    invoke-virtual {v0}, Lcom/umeng/message/proguard/v;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 46
    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 52
    :goto_0
    iget-wide v4, p0, Lcom/umeng/message/proguard/ag;->a:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/umeng/message/proguard/ag;->a:J

    .line 54
    invoke-static {}, Lcom/umeng/message/proguard/ag;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    iget-wide v0, p0, Lcom/umeng/message/proguard/ag;->a:J

    invoke-static {v0, v1}, Lcom/umeng/message/proguard/ag;->a(J)V

    .line 58
    iput-wide v2, p0, Lcom/umeng/message/proguard/ag;->a:J

    .line 63
    :cond_0
    return-void

    .line 47
    :catch_0
    move-exception v0

    .line 48
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    move-wide v0, v2

    goto :goto_0
.end method

.method public a(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 140
    return-void
.end method

.method public a(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 135
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 129
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/umeng/message/proguard/ag;->b:J

    .line 130
    return-void
.end method

.method public b(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 144
    invoke-static {}, Lcom/umeng/message/proguard/q;->a()Lcom/umeng/message/proguard/q;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/umeng/message/proguard/q;->b(Landroid/app/Activity;)V

    .line 145
    return-void
.end method

.method public b(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 155
    return-void
.end method

.method public c(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 149
    invoke-static {}, Lcom/umeng/message/proguard/q;->a()Lcom/umeng/message/proguard/q;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/umeng/message/proguard/q;->a(Landroid/app/Activity;)V

    .line 150
    return-void
.end method
