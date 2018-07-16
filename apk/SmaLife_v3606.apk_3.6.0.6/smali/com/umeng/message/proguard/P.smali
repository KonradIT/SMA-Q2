.class public Lcom/umeng/message/proguard/P;
.super Ljava/lang/Object;
.source "UTMCABTest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/message/proguard/P$a;
    }
.end annotation


# static fields
.field private static b:Ljava/util/Random;

.field private static e:Lcom/umeng/message/proguard/P;


# instance fields
.field private a:Z

.field private c:Z

.field private d:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/umeng/message/proguard/P;->b:Ljava/util/Random;

    .line 26
    const/4 v0, 0x0

    sput-object v0, Lcom/umeng/message/proguard/P;->e:Lcom/umeng/message/proguard/P;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-boolean v0, p0, Lcom/umeng/message/proguard/P;->a:Z

    .line 24
    iput-boolean v0, p0, Lcom/umeng/message/proguard/P;->c:Z

    .line 25
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/umeng/message/proguard/P;->d:Ljava/lang/Object;

    .line 30
    return-void
.end method

.method public static declared-synchronized a()Lcom/umeng/message/proguard/P;
    .locals 2

    .prologue
    .line 33
    const-class v1, Lcom/umeng/message/proguard/P;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/umeng/message/proguard/P;->e:Lcom/umeng/message/proguard/P;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Lcom/umeng/message/proguard/P;

    invoke-direct {v0}, Lcom/umeng/message/proguard/P;-><init>()V

    sput-object v0, Lcom/umeng/message/proguard/P;->e:Lcom/umeng/message/proguard/P;

    .line 36
    :cond_0
    sget-object v0, Lcom/umeng/message/proguard/P;->e:Lcom/umeng/message/proguard/P;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 33
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lcom/umeng/message/proguard/P;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/umeng/message/proguard/P;->d:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic a(Lcom/umeng/message/proguard/P;Z)Z
    .locals 0

    .prologue
    .line 20
    iput-boolean p1, p0, Lcom/umeng/message/proguard/P;->c:Z

    return p1
.end method

.method static synthetic b(Lcom/umeng/message/proguard/P;)Z
    .locals 1

    .prologue
    .line 20
    iget-boolean v0, p0, Lcom/umeng/message/proguard/P;->c:Z

    return v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 45
    iget-object v1, p0, Lcom/umeng/message/proguard/P;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 46
    :try_start_0
    iget-boolean v0, p0, Lcom/umeng/message/proguard/P;->c:Z

    if-eqz v0, :cond_1

    .line 47
    monitor-exit v1

    .line 60
    :cond_0
    :goto_0
    return-void

    .line 49
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/umeng/message/proguard/P;->a:Z

    if-nez v0, :cond_0

    .line 53
    sget-object v0, Lcom/umeng/message/proguard/P;->b:Ljava/util/Random;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    .line 54
    if-ne v2, v0, :cond_0

    .line 55
    iput-boolean v2, p0, Lcom/umeng/message/proguard/P;->a:Z

    .line 56
    new-instance v0, Lcom/umeng/message/proguard/P$a;

    invoke-direct {v0, p0, p1}, Lcom/umeng/message/proguard/P$a;-><init>(Lcom/umeng/message/proguard/P;Ljava/lang/String;)V

    .line 57
    invoke-virtual {v0}, Lcom/umeng/message/proguard/P$a;->start()V

    goto :goto_0

    .line 49
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
