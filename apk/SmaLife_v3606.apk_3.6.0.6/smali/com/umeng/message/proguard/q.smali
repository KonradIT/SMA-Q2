.class public Lcom/umeng/message/proguard/q;
.super Ljava/lang/Object;
.source "UTPageHitHelper.java"


# static fields
.field private static d:Lcom/umeng/message/proguard/q;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Z

.field private c:J

.field private e:Ljava/util/Map;
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


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 78
    new-instance v0, Lcom/umeng/message/proguard/q;

    invoke-direct {v0}, Lcom/umeng/message/proguard/q;-><init>()V

    sput-object v0, Lcom/umeng/message/proguard/q;->d:Lcom/umeng/message/proguard/q;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/message/proguard/q;->a:Ljava/lang/String;

    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/umeng/message/proguard/q;->b:Z

    .line 76
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/umeng/message/proguard/q;->c:J

    .line 79
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/umeng/message/proguard/q;->e:Ljava/util/Map;

    return-void
.end method

.method public static a()Lcom/umeng/message/proguard/q;
    .locals 1

    .prologue
    .line 86
    sget-object v0, Lcom/umeng/message/proguard/q;->d:Lcom/umeng/message/proguard/q;

    return-object v0
.end method

.method private static c(Landroid/app/Activity;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 216
    if-eqz p0, :cond_1

    .line 217
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 218
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "activity"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 220
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x8

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 226
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized a(Landroid/app/Activity;)V
    .locals 3

    .prologue
    .line 95
    monitor-enter p0

    if-eqz p1, :cond_2

    .line 97
    :try_start_0
    invoke-static {}, Lcom/umeng/message/proguard/ax;->a()Lcom/umeng/message/proguard/ax;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/umeng/message/proguard/ax;->a(Z)V

    .line 100
    invoke-static {}, Lcom/umeng/message/proguard/ax;->a()Lcom/umeng/message/proguard/ax;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/message/proguard/ax;->b()Ljava/lang/String;

    move-result-object v0

    .line 101
    if-eqz v0, :cond_0

    .line 102
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 103
    const-string v1, "spm"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 104
    iget-object v1, p0, Lcom/umeng/message/proguard/q;->e:Ljava/util/Map;

    const-string v2, "spm"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    invoke-static {}, Lcom/umeng/message/proguard/ax;->a()Lcom/umeng/message/proguard/ax;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/umeng/message/proguard/ax;->a(Ljava/lang/String;)V

    .line 108
    :cond_0
    invoke-static {p1}, Lcom/umeng/message/proguard/q;->c(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v0

    .line 109
    if-eqz v0, :cond_2

    .line 111
    iget-object v1, p0, Lcom/umeng/message/proguard/q;->a:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/umeng/message/proguard/q;->a:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/umeng/message/proguard/q;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 114
    :cond_1
    iput-object v0, p0, Lcom/umeng/message/proguard/q;->a:Ljava/lang/String;

    .line 116
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/umeng/message/proguard/q;->c:J

    .line 118
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/umeng/message/proguard/q;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    :cond_2
    monitor-exit p0

    return-void

    .line 95
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Ljava/util/Map;)V
    .locals 1
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
    .line 130
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 131
    :try_start_0
    iget-object v0, p0, Lcom/umeng/message/proguard/q;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    :cond_0
    monitor-exit p0

    return-void

    .line 130
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 140
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/umeng/message/proguard/q;->a:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b(Landroid/app/Activity;)V
    .locals 6

    .prologue
    .line 148
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/umeng/message/proguard/ax;->a()Lcom/umeng/message/proguard/ax;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/message/proguard/ax;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 149
    invoke-static {}, Lcom/umeng/message/proguard/ax;->a()Lcom/umeng/message/proguard/ax;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/umeng/message/proguard/ax;->a(Z)V

    .line 150
    const/4 v0, 0x1

    const-string v1, "pageDisAppear"

    const-string v2, "H5page has called,so there is no need to call native page,return"

    invoke-static {v0, v1, v2}, Lcom/umeng/message/proguard/y;->b(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 213
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 155
    :cond_1
    if-eqz p1, :cond_0

    :try_start_1
    iget-object v0, p0, Lcom/umeng/message/proguard/q;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/umeng/message/proguard/q;->b:Z

    if-nez v0, :cond_0

    .line 157
    invoke-static {p1}, Lcom/umeng/message/proguard/q;->c(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v1

    .line 160
    iget-object v0, p0, Lcom/umeng/message/proguard/q;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/umeng/message/proguard/q;->c:J

    sub-long/2addr v2, v4

    .line 171
    invoke-static {}, Lcom/umeng/message/proguard/ax;->a()Lcom/umeng/message/proguard/ax;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/message/proguard/ax;->c()Ljava/lang/String;

    move-result-object v0

    .line 172
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_3

    .line 173
    :cond_2
    const-string v0, "-"

    .line 180
    :cond_3
    new-instance v4, Lcom/umeng/message/proguard/o$c;

    invoke-direct {v4, v1}, Lcom/umeng/message/proguard/o$c;-><init>(Ljava/lang/String;)V

    .line 186
    invoke-virtual {v4, v0}, Lcom/umeng/message/proguard/o$c;->a(Ljava/lang/String;)Lcom/umeng/message/proguard/o$c;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Lcom/umeng/message/proguard/o$c;->a(J)Lcom/umeng/message/proguard/o$c;

    move-result-object v0

    iget-object v2, p0, Lcom/umeng/message/proguard/q;->e:Ljava/util/Map;

    invoke-virtual {v0, v2}, Lcom/umeng/message/proguard/o$c;->a(Ljava/util/Map;)Lcom/umeng/message/proguard/o$b;

    .line 194
    invoke-static {}, Lcom/umeng/message/proguard/ax;->a()Lcom/umeng/message/proguard/ax;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/umeng/message/proguard/ax;->b(Ljava/lang/String;)V

    .line 196
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/message/proguard/q;->a:Ljava/lang/String;

    .line 199
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/umeng/message/proguard/q;->e:Ljava/util/Map;

    .line 202
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/umeng/message/proguard/q;->b:Z

    .line 204
    invoke-static {}, Lcom/umeng/message/proguard/m;->a()Lcom/umeng/message/proguard/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/message/proguard/m;->b()Lcom/umeng/message/proguard/r;

    move-result-object v0

    .line 205
    if-eqz v0, :cond_4

    .line 206
    invoke-virtual {v4}, Lcom/umeng/message/proguard/o$c;->a()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/umeng/message/proguard/r;->a(Ljava/util/Map;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 148
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 208
    :cond_4
    const/4 v0, 0x1

    :try_start_2
    const-string v1, "Record page event error"

    const-string v2, "Fatal Error,must call setRequestAuthentication method first."

    invoke-static {v0, v1, v2}, Lcom/umeng/message/proguard/y;->c(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method
