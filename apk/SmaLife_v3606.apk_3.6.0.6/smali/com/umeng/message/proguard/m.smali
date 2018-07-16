.class public Lcom/umeng/message/proguard/m;
.super Ljava/lang/Object;
.source "UTAnalytics.java"


# static fields
.field private static a:Lcom/umeng/message/proguard/m;


# instance fields
.field private b:Lcom/umeng/message/proguard/r;

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/umeng/message/proguard/r;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x0

    sput-object v0, Lcom/umeng/message/proguard/m;->a:Lcom/umeng/message/proguard/m;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/umeng/message/proguard/m;->c:Ljava/util/Map;

    .line 66
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_0

    .line 67
    invoke-static {}, Lcom/umeng/message/proguard/U;->a()Lcom/umeng/message/proguard/U;

    move-result-object v0

    new-instance v1, Lcom/umeng/message/proguard/ag;

    invoke-direct {v1}, Lcom/umeng/message/proguard/ag;-><init>()V

    invoke-virtual {v0, v1}, Lcom/umeng/message/proguard/U;->a(Lcom/umeng/message/proguard/T;)V

    .line 77
    :goto_0
    return-void

    .line 70
    :cond_0
    new-instance v0, Lcom/umeng/message/proguard/ag;

    invoke-direct {v0}, Lcom/umeng/message/proguard/ag;-><init>()V

    invoke-static {v0}, Lcom/umeng/message/proguard/C;->a(Lcom/umeng/message/proguard/A;)V

    goto :goto_0
.end method

.method public static declared-synchronized a()Lcom/umeng/message/proguard/m;
    .locals 2

    .prologue
    .line 109
    const-class v1, Lcom/umeng/message/proguard/m;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/umeng/message/proguard/m;->a:Lcom/umeng/message/proguard/m;

    if-nez v0, :cond_0

    .line 110
    new-instance v0, Lcom/umeng/message/proguard/m;

    invoke-direct {v0}, Lcom/umeng/message/proguard/m;-><init>()V

    sput-object v0, Lcom/umeng/message/proguard/m;->a:Lcom/umeng/message/proguard/m;

    .line 112
    :cond_0
    sget-object v0, Lcom/umeng/message/proguard/m;->a:Lcom/umeng/message/proguard/m;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 109
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public a(Landroid/app/Application;)V
    .locals 1

    .prologue
    .line 100
    invoke-static {}, Lcom/umeng/message/proguard/w;->a()Lcom/umeng/message/proguard/w;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/umeng/message/proguard/w;->a(Landroid/app/Application;)V

    .line 102
    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 84
    invoke-static {}, Lcom/umeng/message/proguard/w;->a()Lcom/umeng/message/proguard/w;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/umeng/message/proguard/w;->a(Landroid/content/Context;)V

    .line 86
    if-eqz p1, :cond_0

    .line 88
    invoke-static {}, Lcom/umeng/message/proguard/ae;->a()Lcom/umeng/message/proguard/ae;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/message/proguard/ae;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 89
    invoke-static {}, Lcom/umeng/message/proguard/ae;->a()Lcom/umeng/message/proguard/ae;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/umeng/message/proguard/ae;->a(Landroid/content/Context;)V

    .line 92
    :cond_0
    return-void
.end method

.method public a(Lcom/umeng/message/proguard/aa;)V
    .locals 3

    .prologue
    .line 139
    if-nez p1, :cond_0

    .line 140
    const/4 v0, 0x1

    const-string v1, "setRequestAuthentication"

    const-string v2, "Fatal Error,pRequestAuth must not be null."

    invoke-static {v0, v1, v2}, Lcom/umeng/message/proguard/y;->c(ILjava/lang/String;Ljava/lang/Object;)V

    .line 142
    :cond_0
    invoke-static {}, Lcom/umeng/message/proguard/w;->a()Lcom/umeng/message/proguard/w;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/umeng/message/proguard/w;->a(Lcom/umeng/message/proguard/aa;)V

    .line 144
    return-void
.end method

.method public a(Lcom/umeng/message/proguard/ad;)V
    .locals 1

    .prologue
    .line 195
    invoke-static {}, Lcom/umeng/message/proguard/ae;->a()Lcom/umeng/message/proguard/ae;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/umeng/message/proguard/ae;->a(Lcom/umeng/message/proguard/ad;)V

    .line 196
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 151
    invoke-static {}, Lcom/umeng/message/proguard/w;->a()Lcom/umeng/message/proguard/w;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/umeng/message/proguard/w;->a(Ljava/lang/String;)V

    .line 152
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 211
    invoke-static {}, Lcom/umeng/message/proguard/w;->a()Lcom/umeng/message/proguard/w;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/umeng/message/proguard/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    return-void
.end method

.method public declared-synchronized b()Lcom/umeng/message/proguard/r;
    .locals 3

    .prologue
    .line 120
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/umeng/message/proguard/m;->b:Lcom/umeng/message/proguard/r;

    if-nez v0, :cond_0

    .line 121
    invoke-static {}, Lcom/umeng/message/proguard/w;->a()Lcom/umeng/message/proguard/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/message/proguard/w;->d()Lcom/umeng/message/proguard/aa;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 123
    new-instance v0, Lcom/umeng/message/proguard/r;

    invoke-direct {v0}, Lcom/umeng/message/proguard/r;-><init>()V

    .line 124
    iput-object v0, p0, Lcom/umeng/message/proguard/m;->b:Lcom/umeng/message/proguard/r;

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/umeng/message/proguard/m;->b:Lcom/umeng/message/proguard/r;

    if-nez v0, :cond_1

    .line 128
    const/4 v0, 0x1

    const-string v1, "getDefaultTracker error"

    const-string v2, "Fatal Error,must call setRequestAuthentication method first."

    invoke-static {v0, v1, v2}, Lcom/umeng/message/proguard/y;->c(ILjava/lang/String;Ljava/lang/Object;)V

    .line 130
    :cond_1
    iget-object v0, p0, Lcom/umeng/message/proguard/m;->b:Lcom/umeng/message/proguard/r;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 120
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b(Ljava/lang/String;)Lcom/umeng/message/proguard/r;
    .locals 3

    .prologue
    .line 160
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/umeng/message/proguard/at;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 161
    iget-object v0, p0, Lcom/umeng/message/proguard/m;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/umeng/message/proguard/m;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/message/proguard/r;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 172
    :goto_0
    monitor-exit p0

    return-object v0

    .line 164
    :cond_0
    :try_start_1
    new-instance v0, Lcom/umeng/message/proguard/r;

    invoke-direct {v0}, Lcom/umeng/message/proguard/r;-><init>()V

    .line 165
    invoke-virtual {v0, p1}, Lcom/umeng/message/proguard/r;->a(Ljava/lang/String;)V

    .line 166
    iget-object v1, p0, Lcom/umeng/message/proguard/m;->c:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 160
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 170
    :cond_1
    const/4 v0, 0x1

    :try_start_2
    const-string v1, "getTracker"

    const-string v2, "TrackId is null."

    invoke-static {v0, v1, v2}, Lcom/umeng/message/proguard/y;->c(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 172
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()V
    .locals 1

    .prologue
    .line 187
    invoke-static {}, Lcom/umeng/message/proguard/ae;->a()Lcom/umeng/message/proguard/ae;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/message/proguard/ae;->c()V

    .line 188
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 180
    invoke-static {}, Lcom/umeng/message/proguard/w;->a()Lcom/umeng/message/proguard/w;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/umeng/message/proguard/w;->b(Ljava/lang/String;)V

    .line 181
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 202
    invoke-static {}, Lcom/umeng/message/proguard/w;->a()Lcom/umeng/message/proguard/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/message/proguard/w;->e()V

    .line 203
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 221
    invoke-static {p1}, Lcom/umeng/message/proguard/at;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 222
    invoke-virtual {p0}, Lcom/umeng/message/proguard/m;->b()Lcom/umeng/message/proguard/r;

    move-result-object v7

    .line 223
    if-eqz v7, :cond_0

    .line 224
    new-instance v0, Lcom/umeng/message/proguard/ay;

    const-string v1, "UT"

    const/16 v2, 0x3ee

    move-object v3, p1

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/umeng/message/proguard/ay;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 226
    invoke-virtual {v0}, Lcom/umeng/message/proguard/ay;->a()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/umeng/message/proguard/r;->a(Ljava/util/Map;)V

    .line 233
    :goto_0
    return-void

    .line 228
    :cond_0
    const-string v0, "Record userRegister event error"

    const-string v1, "Fatal Error,must call setRequestAuthentication method first."

    invoke-static {v2, v0, v1}, Lcom/umeng/message/proguard/y;->c(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 231
    :cond_1
    const-string v0, "userRegister"

    const-string v1, "Fatal Error,usernick can not be null or empty!"

    invoke-static {v2, v0, v1}, Lcom/umeng/message/proguard/y;->c(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method
