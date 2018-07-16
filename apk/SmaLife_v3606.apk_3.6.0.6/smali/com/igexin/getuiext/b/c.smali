.class public Lcom/igexin/getuiext/b/c;
.super Ljava/lang/Object;


# static fields
.field private static e:Lcom/igexin/getuiext/b/c;


# instance fields
.field private a:Lcom/igexin/getuiext/data/a;

.field private b:Lcom/igexin/getuiext/b/b;

.field private c:Lcom/igexin/getuiext/b/a;

.field private d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/igexin/getuiext/b/c;

    invoke-direct {v0}, Lcom/igexin/getuiext/b/c;-><init>()V

    sput-object v0, Lcom/igexin/getuiext/b/c;->e:Lcom/igexin/getuiext/b/c;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/igexin/getuiext/b/c;->d:Z

    return-void
.end method

.method public static d()Lcom/igexin/getuiext/b/c;
    .locals 1

    sget-object v0, Lcom/igexin/getuiext/b/c;->e:Lcom/igexin/getuiext/b/c;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/igexin/getuiext/data/a;
    .locals 1

    iget-object v0, p0, Lcom/igexin/getuiext/b/c;->a:Lcom/igexin/getuiext/data/a;

    return-object v0
.end method

.method public declared-synchronized a(Landroid/content/Context;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/igexin/getuiext/b/c;->d:Z

    if-nez v0, :cond_0

    new-instance v0, Lcom/igexin/getuiext/data/a;

    invoke-direct {v0, p1}, Lcom/igexin/getuiext/data/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/igexin/getuiext/b/c;->a:Lcom/igexin/getuiext/data/a;

    new-instance v0, Lcom/igexin/getuiext/b/b;

    iget-object v1, p0, Lcom/igexin/getuiext/b/c;->a:Lcom/igexin/getuiext/data/a;

    invoke-direct {v0, v1}, Lcom/igexin/getuiext/b/b;-><init>(Lcom/igexin/getuiext/data/a;)V

    iput-object v0, p0, Lcom/igexin/getuiext/b/c;->b:Lcom/igexin/getuiext/b/b;

    new-instance v0, Lcom/igexin/getuiext/b/a;

    iget-object v1, p0, Lcom/igexin/getuiext/b/c;->a:Lcom/igexin/getuiext/data/a;

    invoke-direct {v0, v1}, Lcom/igexin/getuiext/b/a;-><init>(Lcom/igexin/getuiext/data/a;)V

    iput-object v0, p0, Lcom/igexin/getuiext/b/c;->c:Lcom/igexin/getuiext/b/a;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/igexin/getuiext/b/c;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b()Lcom/igexin/getuiext/b/b;
    .locals 1

    iget-object v0, p0, Lcom/igexin/getuiext/b/c;->b:Lcom/igexin/getuiext/b/b;

    return-object v0
.end method

.method public c()Lcom/igexin/getuiext/b/a;
    .locals 1

    iget-object v0, p0, Lcom/igexin/getuiext/b/c;->c:Lcom/igexin/getuiext/b/a;

    return-object v0
.end method
