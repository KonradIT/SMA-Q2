.class public Lcom/tencent/map/a/a/a;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/tencent/map/b/f;

.field private static b:Lcom/tencent/map/a/a/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/tencent/map/b/f;->a()Lcom/tencent/map/b/f;

    move-result-object v0

    sput-object v0, Lcom/tencent/map/a/a/a;->a:Lcom/tencent/map/b/f;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a()Lcom/tencent/map/a/a/a;
    .locals 2

    const-class v1, Lcom/tencent/map/a/a/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tencent/map/a/a/a;->b:Lcom/tencent/map/a/a/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/map/a/a/a;

    invoke-direct {v0}, Lcom/tencent/map/a/a/a;-><init>()V

    sput-object v0, Lcom/tencent/map/a/a/a;->b:Lcom/tencent/map/a/a/a;

    :cond_0
    sget-object v0, Lcom/tencent/map/a/a/a;->b:Lcom/tencent/map/a/a/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/tencent/map/a/a/b;)Z
    .locals 1

    sget-object v0, Lcom/tencent/map/a/a/a;->a:Lcom/tencent/map/b/f;

    invoke-virtual {v0, p1, p2}, Lcom/tencent/map/b/f;->a(Landroid/content/Context;Lcom/tencent/map/a/a/b;)Z

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lcom/tencent/map/a/a/a;->a:Lcom/tencent/map/b/f;

    invoke-virtual {v0, p1, p2}, Lcom/tencent/map/b/f;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public b()V
    .locals 1

    sget-object v0, Lcom/tencent/map/a/a/a;->a:Lcom/tencent/map/b/f;

    invoke-virtual {v0}, Lcom/tencent/map/b/f;->b()V

    return-void
.end method
