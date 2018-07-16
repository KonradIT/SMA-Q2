.class public Lcom/umeng/message/proguard/B;
.super Ljava/lang/Object;
.source "UTMCAppStatusMonitor.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/message/proguard/B$1;,
        Lcom/umeng/message/proguard/B$a;
    }
.end annotation


# static fields
.field private static h:Lcom/umeng/message/proguard/B;


# instance fields
.field private a:I

.field private b:Z

.field private c:Ljava/util/TimerTask;

.field private d:Ljava/lang/Object;

.field private e:Ljava/util/Timer;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/umeng/message/proguard/A;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    sput-object v0, Lcom/umeng/message/proguard/B;->h:Lcom/umeng/message/proguard/B;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput v0, p0, Lcom/umeng/message/proguard/B;->a:I

    .line 18
    iput-boolean v0, p0, Lcom/umeng/message/proguard/B;->b:Z

    .line 20
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/umeng/message/proguard/B;->d:Ljava/lang/Object;

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/message/proguard/B;->e:Ljava/util/Timer;

    .line 22
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/umeng/message/proguard/B;->f:Ljava/util/List;

    .line 23
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/umeng/message/proguard/B;->g:Ljava/lang/Object;

    .line 28
    return-void
.end method

.method public static declared-synchronized a()Lcom/umeng/message/proguard/B;
    .locals 2

    .prologue
    .line 31
    const-class v1, Lcom/umeng/message/proguard/B;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/umeng/message/proguard/B;->h:Lcom/umeng/message/proguard/B;

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Lcom/umeng/message/proguard/B;

    invoke-direct {v0}, Lcom/umeng/message/proguard/B;-><init>()V

    sput-object v0, Lcom/umeng/message/proguard/B;->h:Lcom/umeng/message/proguard/B;

    .line 34
    :cond_0
    sget-object v0, Lcom/umeng/message/proguard/B;->h:Lcom/umeng/message/proguard/B;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 31
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lcom/umeng/message/proguard/B;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/umeng/message/proguard/B;->g:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic a(Lcom/umeng/message/proguard/B;Z)Z
    .locals 0

    .prologue
    .line 15
    iput-boolean p1, p0, Lcom/umeng/message/proguard/B;->b:Z

    return p1
.end method

.method static synthetic b(Lcom/umeng/message/proguard/B;)Ljava/util/List;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/umeng/message/proguard/B;->f:Ljava/util/List;

    return-object v0
.end method

.method private b()V
    .locals 2

    .prologue
    .line 54
    iget-object v1, p0, Lcom/umeng/message/proguard/B;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 55
    :try_start_0
    iget-object v0, p0, Lcom/umeng/message/proguard/B;->e:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/umeng/message/proguard/B;->e:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/message/proguard/B;->e:Ljava/util/Timer;

    .line 59
    :cond_0
    monitor-exit v1

    .line 60
    return-void

    .line 59
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public a(Lcom/umeng/message/proguard/A;)V
    .locals 2

    .prologue
    .line 38
    if-eqz p1, :cond_0

    .line 39
    iget-object v1, p0, Lcom/umeng/message/proguard/B;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 40
    :try_start_0
    iget-object v0, p0, Lcom/umeng/message/proguard/B;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    monitor-exit v1

    .line 43
    :cond_0
    return-void

    .line 41
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 64
    iget-object v1, p0, Lcom/umeng/message/proguard/B;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 65
    :try_start_0
    iget-object v0, p0, Lcom/umeng/message/proguard/B;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/message/proguard/A;

    .line 66
    invoke-interface {v0, p1, p2}, Lcom/umeng/message/proguard/A;->a(Landroid/app/Activity;Landroid/os/Bundle;)V

    goto :goto_0

    .line 68
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 69
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 3

    .prologue
    .line 73
    iget-object v1, p0, Lcom/umeng/message/proguard/B;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 74
    :try_start_0
    iget-object v0, p0, Lcom/umeng/message/proguard/B;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/message/proguard/A;

    .line 75
    invoke-interface {v0, p1}, Lcom/umeng/message/proguard/A;->a(Landroid/app/Activity;)V

    goto :goto_0

    .line 77
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 78
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 3

    .prologue
    .line 82
    iget-object v1, p0, Lcom/umeng/message/proguard/B;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 83
    :try_start_0
    iget-object v0, p0, Lcom/umeng/message/proguard/B;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/message/proguard/A;

    .line 84
    invoke-interface {v0, p1}, Lcom/umeng/message/proguard/A;->b(Landroid/app/Activity;)V

    goto :goto_0

    .line 86
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 87
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 3

    .prologue
    .line 91
    iget-object v1, p0, Lcom/umeng/message/proguard/B;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 92
    :try_start_0
    iget-object v0, p0, Lcom/umeng/message/proguard/B;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/message/proguard/A;

    .line 93
    invoke-interface {v0, p1}, Lcom/umeng/message/proguard/A;->c(Landroid/app/Activity;)V

    goto :goto_0

    .line 95
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 96
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 100
    iget-object v1, p0, Lcom/umeng/message/proguard/B;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 101
    :try_start_0
    iget-object v0, p0, Lcom/umeng/message/proguard/B;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/message/proguard/A;

    .line 102
    invoke-interface {v0, p1, p2}, Lcom/umeng/message/proguard/A;->b(Landroid/app/Activity;Landroid/os/Bundle;)V

    goto :goto_0

    .line 104
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 105
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 3

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/umeng/message/proguard/B;->b()V

    .line 111
    iget v0, p0, Lcom/umeng/message/proguard/B;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/umeng/message/proguard/B;->a:I

    .line 113
    iget-boolean v0, p0, Lcom/umeng/message/proguard/B;->b:Z

    if-nez v0, :cond_1

    .line 115
    iget-object v1, p0, Lcom/umeng/message/proguard/B;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 116
    :try_start_0
    iget-object v0, p0, Lcom/umeng/message/proguard/B;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/message/proguard/A;

    .line 117
    invoke-interface {v0}, Lcom/umeng/message/proguard/A;->b()V

    goto :goto_0

    .line 119
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 121
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/umeng/message/proguard/B;->b:Z

    .line 122
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 4

    .prologue
    .line 126
    iget v0, p0, Lcom/umeng/message/proguard/B;->a:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/umeng/message/proguard/B;->a:I

    .line 127
    iget v0, p0, Lcom/umeng/message/proguard/B;->a:I

    if-nez v0, :cond_0

    .line 129
    invoke-direct {p0}, Lcom/umeng/message/proguard/B;->b()V

    .line 131
    new-instance v0, Lcom/umeng/message/proguard/B$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/umeng/message/proguard/B$a;-><init>(Lcom/umeng/message/proguard/B;Lcom/umeng/message/proguard/B$1;)V

    iput-object v0, p0, Lcom/umeng/message/proguard/B;->c:Ljava/util/TimerTask;

    .line 132
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/umeng/message/proguard/B;->e:Ljava/util/Timer;

    .line 133
    iget-object v0, p0, Lcom/umeng/message/proguard/B;->e:Ljava/util/Timer;

    iget-object v1, p0, Lcom/umeng/message/proguard/B;->c:Ljava/util/TimerTask;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 136
    :cond_0
    return-void
.end method
