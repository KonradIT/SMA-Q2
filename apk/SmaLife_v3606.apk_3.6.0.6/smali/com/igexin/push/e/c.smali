.class public Lcom/igexin/push/e/c;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/igexin/push/core/d;

.field private c:Lcom/igexin/push/f/b/f;

.field private d:Lcom/igexin/push/f/b/f;

.field private e:Lcom/igexin/push/e/b;

.field private f:Ljava/util/List;

.field private g:Ljava/util/Map;

.field private h:Ljava/util/Map;

.field private i:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a([B)Lcom/igexin/push/d/c/e;
    .locals 3

    invoke-direct {p0, p1}, Lcom/igexin/push/e/c;->b([B)Lcom/igexin/push/d/c/b;

    move-result-object v1

    const/4 v0, 0x0

    iget-byte v2, v1, Lcom/igexin/push/d/c/b;->b:B

    sparse-switch v2, :sswitch_data_0

    :goto_0
    if-eqz v0, :cond_0

    iget-object v1, v1, Lcom/igexin/push/d/c/b;->d:[B

    invoke-virtual {v0, v1}, Lcom/igexin/push/d/c/e;->a([B)V

    :cond_0
    return-object v0

    :sswitch_0
    new-instance v0, Lcom/igexin/push/d/c/i;

    invoke-direct {v0}, Lcom/igexin/push/d/c/i;-><init>()V

    goto :goto_0

    :sswitch_1
    new-instance v0, Lcom/igexin/push/d/c/k;

    invoke-direct {v0}, Lcom/igexin/push/d/c/k;-><init>()V

    goto :goto_0

    :sswitch_2
    new-instance v0, Lcom/igexin/push/d/c/l;

    invoke-direct {v0}, Lcom/igexin/push/d/c/l;-><init>()V

    goto :goto_0

    :sswitch_3
    new-instance v0, Lcom/igexin/push/d/c/m;

    invoke-direct {v0}, Lcom/igexin/push/d/c/m;-><init>()V

    goto :goto_0

    :sswitch_4
    new-instance v0, Lcom/igexin/push/d/c/f;

    invoke-direct {v0}, Lcom/igexin/push/d/c/f;-><init>()V

    goto :goto_0

    :sswitch_5
    new-instance v0, Lcom/igexin/push/d/c/o;

    invoke-direct {v0}, Lcom/igexin/push/d/c/o;-><init>()V

    goto :goto_0

    :sswitch_6
    new-instance v0, Lcom/igexin/push/d/c/d;

    invoke-direct {v0}, Lcom/igexin/push/d/c/d;-><init>()V

    goto :goto_0

    :sswitch_7
    new-instance v0, Lcom/igexin/push/d/c/n;

    invoke-direct {v0}, Lcom/igexin/push/d/c/n;-><init>()V

    goto :goto_0

    :sswitch_8
    new-instance v0, Lcom/igexin/push/d/c/a;

    invoke-direct {v0}, Lcom/igexin/push/d/c/a;-><init>()V

    goto :goto_0

    :sswitch_9
    new-instance v0, Lcom/igexin/push/d/c/c;

    invoke-direct {v0}, Lcom/igexin/push/d/c/c;-><init>()V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x5 -> :sswitch_1
        0x6 -> :sswitch_4
        0x9 -> :sswitch_5
        0x19 -> :sswitch_6
        0x1a -> :sswitch_7
        0x1b -> :sswitch_9
        0x1c -> :sswitch_8
        0x24 -> :sswitch_2
        0x25 -> :sswitch_3
    .end sparse-switch
.end method

.method static synthetic a(Lcom/igexin/push/e/c;Ljava/lang/String;)Ljava/util/List;
    .locals 1

    invoke-direct {p0, p1}, Lcom/igexin/push/e/c;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/igexin/push/e/c;)V
    .locals 0

    invoke-direct {p0}, Lcom/igexin/push/e/c;->d()V

    return-void
.end method

.method static synthetic b(Lcom/igexin/push/e/c;)Lcom/igexin/push/core/d;
    .locals 1

    iget-object v0, p0, Lcom/igexin/push/e/c;->b:Lcom/igexin/push/core/d;

    return-object v0
.end method

.method private b([B)Lcom/igexin/push/d/c/b;
    .locals 5

    const/4 v4, 0x0

    new-instance v0, Lcom/igexin/push/d/c/b;

    invoke-direct {v0}, Lcom/igexin/push/d/c/b;-><init>()V

    invoke-static {p1, v4}, Lcom/igexin/a/a/b/g;->b([BI)I

    move-result v1

    iput v1, v0, Lcom/igexin/push/d/c/b;->a:I

    const/4 v1, 0x2

    aget-byte v1, p1, v1

    iput-byte v1, v0, Lcom/igexin/push/d/c/b;->b:B

    iget v1, v0, Lcom/igexin/push/d/c/b;->a:I

    new-array v1, v1, [B

    iput-object v1, v0, Lcom/igexin/push/d/c/b;->d:[B

    const/4 v1, 0x3

    iget-object v2, v0, Lcom/igexin/push/d/c/b;->d:[B

    iget v3, v0, Lcom/igexin/push/d/c/b;->a:I

    invoke-static {p1, v1, v2, v4, v3}, Lcom/igexin/a/a/b/g;->a([BI[BII)I

    return-object v0
.end method

.method private b(Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/igexin/push/e/c;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/igexin/push/e/b;

    new-instance v1, Lcom/igexin/push/e/g;

    invoke-direct {v1, p0, v0, p1}, Lcom/igexin/push/e/g;-><init>(Lcom/igexin/push/e/c;Lcom/igexin/push/e/b;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/igexin/push/e/b;->a(Landroid/content/ServiceConnection;)V

    :try_start_0
    iget-object v1, p0, Lcom/igexin/push/e/c;->a:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/igexin/push/e/b;->a()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v0}, Lcom/igexin/push/e/b;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/igexin/push/e/c;->a:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/igexin/push/e/b;->d()Landroid/content/ServiceConnection;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v2, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v1, p0, Lcom/igexin/push/e/c;->g:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static synthetic c(Lcom/igexin/push/e/c;)Lcom/igexin/push/e/b;
    .locals 1

    iget-object v0, p0, Lcom/igexin/push/e/c;->e:Lcom/igexin/push/e/b;

    return-object v0
.end method

.method private c(Ljava/lang/String;)Ljava/util/List;
    .locals 4

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/igexin/push/e/c;->h:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/igexin/push/e/b;

    invoke-virtual {v0}, Lcom/igexin/push/e/b;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method private c()V
    .locals 2

    sget-object v0, Lcom/igexin/push/core/d;->a:Lcom/igexin/push/core/d;

    iput-object v0, p0, Lcom/igexin/push/e/c;->b:Lcom/igexin/push/core/d;

    new-instance v0, Lcom/igexin/push/e/a;

    invoke-direct {v0}, Lcom/igexin/push/e/a;-><init>()V

    sget-object v1, Lcom/igexin/push/core/c;->a:Lcom/igexin/push/core/c;

    invoke-virtual {v0, v1}, Lcom/igexin/push/e/a;->a(Lcom/igexin/push/core/c;)V

    invoke-virtual {p0, v0}, Lcom/igexin/push/e/c;->a(Lcom/igexin/push/e/a;)V

    return-void
.end method

.method private d()V
    .locals 2

    iget-object v0, p0, Lcom/igexin/push/e/c;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    sget-object v0, Lcom/igexin/push/core/d;->c:Lcom/igexin/push/core/d;

    iput-object v0, p0, Lcom/igexin/push/e/c;->b:Lcom/igexin/push/core/d;

    iget-boolean v0, p0, Lcom/igexin/push/e/c;->i:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/igexin/push/e/c;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/igexin/push/e/c;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/igexin/push/e/c;->i:Z

    :cond_1
    invoke-static {}, Lcom/igexin/push/core/f;->a()Lcom/igexin/push/core/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/push/core/f;->f()Lcom/igexin/push/e/j;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/igexin/push/e/j;->a(Z)V

    return-void
.end method

.method static synthetic d(Lcom/igexin/push/e/c;)V
    .locals 0

    invoke-direct {p0}, Lcom/igexin/push/e/c;->c()V

    return-void
.end method

.method static synthetic e(Lcom/igexin/push/e/c;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/igexin/push/e/c;->g:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic f(Lcom/igexin/push/e/c;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/igexin/push/e/c;->h:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/igexin/push/e/c;->b:Lcom/igexin/push/core/d;

    sget-object v2, Lcom/igexin/push/core/d;->b:Lcom/igexin/push/core/d;

    if-ne v1, v2, :cond_0

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/igexin/push/e/c;->d:Lcom/igexin/push/f/b/f;

    invoke-virtual {v1}, Lcom/igexin/push/f/b/f;->t()V

    iget-object v1, p0, Lcom/igexin/push/e/c;->g:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    iget-object v1, p0, Lcom/igexin/push/e/c;->h:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    iput-boolean v0, p0, Lcom/igexin/push/e/c;->i:Z

    iget-object v1, p0, Lcom/igexin/push/e/c;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lcom/igexin/push/e/c;->e:Lcom/igexin/push/e/b;

    invoke-virtual {v1, p1}, Lcom/igexin/push/e/b;->c(Ljava/lang/String;)V

    sget-object v1, Lcom/igexin/push/core/d;->d:Lcom/igexin/push/core/d;

    iput-object v1, p0, Lcom/igexin/push/e/c;->b:Lcom/igexin/push/core/d;

    invoke-static {}, Lcom/igexin/push/core/f;->a()Lcom/igexin/push/core/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/igexin/push/core/f;->f()Lcom/igexin/push/e/j;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/igexin/push/e/j;->a(Z)V

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Lcom/igexin/push/d/c/e;)I
    .locals 3

    new-instance v0, Lcom/igexin/push/d/c/b;

    invoke-direct {v0}, Lcom/igexin/push/d/c/b;-><init>()V

    invoke-virtual {p2}, Lcom/igexin/push/d/c/e;->d()[B

    move-result-object v1

    iput-object v1, v0, Lcom/igexin/push/d/c/b;->d:[B

    iget-object v1, v0, Lcom/igexin/push/d/c/b;->d:[B

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/igexin/push/d/c/b;->d:[B

    array-length v1, v1

    iput v1, v0, Lcom/igexin/push/d/c/b;->a:I

    iget v1, p2, Lcom/igexin/push/d/c/e;->i:I

    int-to-byte v1, v1

    iput-byte v1, v0, Lcom/igexin/push/d/c/b;->b:B

    invoke-virtual {v0}, Lcom/igexin/push/d/c/b;->a()[B

    move-result-object v0

    iget-object v1, p0, Lcom/igexin/push/e/c;->e:Lcom/igexin/push/e/b;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/igexin/push/e/c;->e:Lcom/igexin/push/e/b;

    invoke-virtual {v1}, Lcom/igexin/push/e/b;->c()Lcom/igexin/sdk/aidl/IGexinMsgService;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/igexin/push/e/c;->e:Lcom/igexin/push/e/b;

    invoke-virtual {v1}, Lcom/igexin/push/e/b;->c()Lcom/igexin/sdk/aidl/IGexinMsgService;

    move-result-object v1

    iget-object v2, p0, Lcom/igexin/push/e/c;->e:Lcom/igexin/push/e/b;

    invoke-virtual {v2}, Lcom/igexin/push/e/b;->e()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1, v0}, Lcom/igexin/sdk/aidl/IGexinMsgService;->sendByASNL(Ljava/lang/String;Ljava/lang/String;[B)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-direct {p0}, Lcom/igexin/push/e/c;->c()V

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    iget-object v0, p0, Lcom/igexin/push/e/c;->b:Lcom/igexin/push/core/d;

    sget-object v1, Lcom/igexin/push/core/d;->b:Lcom/igexin/push/core/d;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/igexin/push/e/c;->b:Lcom/igexin/push/core/d;

    sget-object v1, Lcom/igexin/push/core/d;->d:Lcom/igexin/push/core/d;

    if-eq v0, v1, :cond_1

    new-instance v0, Lcom/igexin/push/e/b;

    invoke-direct {v0}, Lcom/igexin/push/e/b;-><init>()V

    invoke-virtual {v0, p1}, Lcom/igexin/push/e/b;->a(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/igexin/push/e/b;->b(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/igexin/push/e/b;->c(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/igexin/push/e/c;->g:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/igexin/push/e/c;->b:Lcom/igexin/push/core/d;

    sget-object v1, Lcom/igexin/push/core/d;->c:Lcom/igexin/push/core/d;

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p1}, Lcom/igexin/push/e/c;->b(Ljava/lang/String;)V

    :goto_0
    const/4 v0, 0x0

    :goto_1
    return v0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/igexin/push/e/c;->i:Z

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;[B)I
    .locals 3

    invoke-direct {p0, p3}, Lcom/igexin/push/e/c;->a([B)Lcom/igexin/push/d/c/e;

    move-result-object v1

    iget-object v0, p0, Lcom/igexin/push/e/c;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/igexin/push/e/b;

    if-eqz v0, :cond_0

    sget-boolean v2, Lcom/igexin/push/core/g;->o:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/igexin/push/e/c;->h:Ljava/util/Map;

    invoke-interface {v2, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/igexin/push/core/f;->a()Lcom/igexin/push/core/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/push/core/f;->f()Lcom/igexin/push/e/j;

    move-result-object v0

    invoke-virtual {v0, p2, v1}, Lcom/igexin/push/e/j;->a(Ljava/lang/String;Lcom/igexin/push/d/c/e;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public a(Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lcom/igexin/push/e/c;->a:Landroid/content/Context;

    sget-object v0, Lcom/igexin/push/core/d;->a:Lcom/igexin/push/core/d;

    iput-object v0, p0, Lcom/igexin/push/e/c;->b:Lcom/igexin/push/core/d;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/igexin/push/e/c;->f:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/igexin/push/e/c;->g:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/igexin/push/e/c;->h:Ljava/util/Map;

    return-void
.end method

.method public a(Landroid/content/Intent;)V
    .locals 10

    const-wide/16 v4, 0x0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.igexin.sdk.action.snlrefresh"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/igexin/push/a/k;->s:Z

    if-eqz v0, :cond_1

    const-string v0, "groupid"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "responseSNLAction"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-boolean v2, Lcom/igexin/push/core/g;->l:Z

    sget-boolean v3, Lcom/igexin/push/core/g;->m:Z

    const-string v4, "branch"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/igexin/push/core/a/f;->a()Lcom/igexin/push/core/a/f;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/igexin/push/core/a/f;->a(J)Z

    move-result v5

    invoke-static {}, Lcom/igexin/push/core/q;->a()J

    move-result-wide v6

    invoke-static {}, Lcom/igexin/push/core/q;->b()J

    move-result-wide v8

    add-long/2addr v6, v8

    sget-object v8, Lcom/igexin/push/core/g;->f:Ljava/lang/String;

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "open"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    if-nez v5, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "groupid"

    sget-object v2, Lcom/igexin/push/core/g;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "branch"

    const-string v2, "open"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "pkgname"

    sget-object v2, Lcom/igexin/push/core/g;->i:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "classname"

    const-class v2, Lcom/igexin/sdk/PushService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "startup_time"

    sget-wide v2, Lcom/igexin/push/core/g;->Y:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "network_traffic"

    invoke-virtual {v0, v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    sget-object v1, Lcom/igexin/push/core/g;->i:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/igexin/push/core/g;->Z:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/igexin/push/a/k;->s:Z

    if-eqz v0, :cond_2

    const-string v0, "groupid"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "branch"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/igexin/push/core/g;->f:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "open"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/igexin/push/e/i;

    invoke-direct {v0}, Lcom/igexin/push/e/i;-><init>()V

    const-string v1, "groupid"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/igexin/push/e/i;->a(Ljava/lang/String;)V

    const-string v1, "pkgname"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/igexin/push/e/i;->b(Ljava/lang/String;)V

    const-string v1, "classname"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/igexin/push/e/i;->c(Ljava/lang/String;)V

    const-string v1, "startup_time"

    invoke-virtual {p1, v1, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/igexin/push/e/i;->a(J)V

    const-string v1, "network_traffic"

    invoke-virtual {p1, v1, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/igexin/push/e/i;->b(J)V

    iget-object v1, p0, Lcom/igexin/push/e/c;->f:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.igexin.sdk.action.snlretire"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/igexin/push/a/k;->s:Z

    if-eqz v0, :cond_0

    const-string v0, "groupid"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "branch"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/igexin/push/core/g;->f:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "open"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/igexin/push/e/a;

    invoke-direct {v0}, Lcom/igexin/push/e/a;-><init>()V

    sget-object v1, Lcom/igexin/push/core/c;->f:Lcom/igexin/push/core/c;

    invoke-virtual {v0, v1}, Lcom/igexin/push/e/a;->a(Lcom/igexin/push/core/c;)V

    invoke-static {}, Lcom/igexin/push/core/f;->a()Lcom/igexin/push/core/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/igexin/push/core/f;->g()Lcom/igexin/push/e/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/igexin/push/e/c;->a(Lcom/igexin/push/e/a;)V

    goto/16 :goto_0
.end method

.method public a(Lcom/igexin/push/e/a;)V
    .locals 8

    const/4 v1, 0x1

    const/4 v4, 0x0

    sget-object v0, Lcom/igexin/push/e/h;->b:[I

    iget-object v2, p0, Lcom/igexin/push/e/c;->b:Lcom/igexin/push/core/d;

    invoke-virtual {v2}, Lcom/igexin/push/core/d;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    sget-object v0, Lcom/igexin/push/e/h;->a:[I

    iget-object v2, p1, Lcom/igexin/push/e/a;->a:Lcom/igexin/push/core/c;

    invoke-virtual {v2}, Lcom/igexin/push/core/c;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/igexin/push/e/c;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/igexin/push/e/c;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/igexin/push/e/c;->h:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/igexin/push/e/c;->c:Lcom/igexin/push/f/b/f;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/igexin/push/e/c;->c:Lcom/igexin/push/f/b/f;

    invoke-virtual {v0}, Lcom/igexin/push/f/b/f;->t()V

    :cond_1
    iget-object v0, p0, Lcom/igexin/push/e/c;->d:Lcom/igexin/push/f/b/f;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/igexin/push/e/c;->d:Lcom/igexin/push/f/b/f;

    invoke-virtual {v0}, Lcom/igexin/push/f/b/f;->t()V

    :cond_2
    iput-boolean v4, p0, Lcom/igexin/push/e/c;->i:Z

    sget-boolean v0, Lcom/igexin/push/core/g;->l:Z

    sget-boolean v1, Lcom/igexin/push/core/g;->m:Z

    invoke-static {}, Lcom/igexin/push/core/a/f;->a()Lcom/igexin/push/core/a/f;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/igexin/push/core/a/f;->a(J)Z

    move-result v2

    invoke-static {}, Lcom/igexin/push/core/a/f;->a()Lcom/igexin/push/core/a/f;

    move-result-object v3

    invoke-virtual {v3}, Lcom/igexin/push/core/a/f;->n()Z

    move-result v3

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    if-nez v2, :cond_0

    if-eqz v3, :cond_0

    sget-boolean v0, Lcom/igexin/push/a/k;->s:Z

    if-eqz v0, :cond_3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.igexin.sdk.action.snlrefresh"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "groupid"

    sget-object v2, Lcom/igexin/push/core/g;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "branch"

    const-string v2, "open"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "responseSNLAction"

    sget-object v2, Lcom/igexin/push/core/g;->Z:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/igexin/push/e/c;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    new-instance v0, Lcom/igexin/push/e/d;

    const-wide/16 v2, 0x3e8

    invoke-direct {v0, p0, v2, v3}, Lcom/igexin/push/e/d;-><init>(Lcom/igexin/push/e/c;J)V

    iput-object v0, p0, Lcom/igexin/push/e/c;->c:Lcom/igexin/push/f/b/f;

    invoke-static {}, Lcom/igexin/push/core/f;->a()Lcom/igexin/push/core/f;

    move-result-object v0

    iget-object v1, p0, Lcom/igexin/push/e/c;->c:Lcom/igexin/push/f/b/f;

    invoke-virtual {v0, v1}, Lcom/igexin/push/core/f;->a(Lcom/igexin/push/f/b/f;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/igexin/push/e/c;->d()V

    goto/16 :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/igexin/push/e/c;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_4

    invoke-direct {p0}, Lcom/igexin/push/e/c;->d()V

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/igexin/push/e/c;->f:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/igexin/push/e/i;

    move v2, v1

    move-object v1, v0

    :goto_1
    if-ge v2, v3, :cond_5

    iget-object v0, p0, Lcom/igexin/push/e/c;->f:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/igexin/push/e/i;

    invoke-virtual {v0}, Lcom/igexin/push/e/i;->c()J

    move-result-wide v4

    invoke-virtual {v1}, Lcom/igexin/push/e/i;->c()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-gez v4, :cond_e

    :goto_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move-object v1, v0

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/igexin/push/e/c;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lcom/igexin/push/e/i;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-direct {p0}, Lcom/igexin/push/e/c;->d()V

    goto/16 :goto_0

    :cond_6
    sget-object v0, Lcom/igexin/push/core/d;->b:Lcom/igexin/push/core/d;

    iput-object v0, p0, Lcom/igexin/push/e/c;->b:Lcom/igexin/push/core/d;

    new-instance v0, Lcom/igexin/push/e/b;

    invoke-direct {v0}, Lcom/igexin/push/e/b;-><init>()V

    iput-object v0, p0, Lcom/igexin/push/e/c;->e:Lcom/igexin/push/e/b;

    iget-object v0, p0, Lcom/igexin/push/e/c;->e:Lcom/igexin/push/e/b;

    invoke-virtual {v1}, Lcom/igexin/push/e/i;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/igexin/push/e/b;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/igexin/push/e/c;->e:Lcom/igexin/push/e/b;

    invoke-virtual {v1}, Lcom/igexin/push/e/i;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/igexin/push/e/b;->b(Ljava/lang/String;)V

    new-instance v0, Lcom/igexin/push/e/a;

    invoke-direct {v0}, Lcom/igexin/push/e/a;-><init>()V

    sget-object v1, Lcom/igexin/push/core/c;->c:Lcom/igexin/push/core/c;

    invoke-virtual {v0, v1}, Lcom/igexin/push/e/a;->a(Lcom/igexin/push/core/c;)V

    invoke-virtual {p0, v0}, Lcom/igexin/push/e/c;->a(Lcom/igexin/push/e/a;)V

    goto/16 :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/igexin/push/e/c;->c:Lcom/igexin/push/f/b/f;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/igexin/push/e/c;->c:Lcom/igexin/push/f/b/f;

    invoke-virtual {v0}, Lcom/igexin/push/f/b/f;->t()V

    :cond_7
    invoke-direct {p0}, Lcom/igexin/push/e/c;->c()V

    goto/16 :goto_0

    :pswitch_4
    sget-object v0, Lcom/igexin/push/e/h;->a:[I

    iget-object v1, p1, Lcom/igexin/push/e/a;->a:Lcom/igexin/push/core/c;

    invoke-virtual {v1}, Lcom/igexin/push/core/c;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_2

    goto/16 :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/igexin/push/e/c;->d:Lcom/igexin/push/f/b/f;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/igexin/push/e/c;->d:Lcom/igexin/push/f/b/f;

    invoke-virtual {v0}, Lcom/igexin/push/f/b/f;->t()V

    :cond_8
    iget-object v0, p0, Lcom/igexin/push/e/c;->e:Lcom/igexin/push/e/b;

    invoke-virtual {v0}, Lcom/igexin/push/e/b;->c()Lcom/igexin/sdk/aidl/IGexinMsgService;

    move-result-object v0

    if-eqz v0, :cond_9

    :try_start_0
    iget-object v0, p0, Lcom/igexin/push/e/c;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/igexin/push/e/c;->e:Lcom/igexin/push/e/b;

    invoke-virtual {v1}, Lcom/igexin/push/e/b;->d()Landroid/content/ServiceConnection;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    :cond_9
    :goto_3
    invoke-direct {p0}, Lcom/igexin/push/e/c;->c()V

    goto/16 :goto_0

    :pswitch_6
    new-instance v0, Lcom/igexin/push/e/e;

    const-wide/16 v2, 0x1388

    invoke-direct {v0, p0, v2, v3}, Lcom/igexin/push/e/e;-><init>(Lcom/igexin/push/e/c;J)V

    iput-object v0, p0, Lcom/igexin/push/e/c;->d:Lcom/igexin/push/f/b/f;

    invoke-static {}, Lcom/igexin/push/core/f;->a()Lcom/igexin/push/core/f;

    move-result-object v0

    iget-object v1, p0, Lcom/igexin/push/e/c;->d:Lcom/igexin/push/f/b/f;

    invoke-virtual {v0, v1}, Lcom/igexin/push/core/f;->a(Lcom/igexin/push/f/b/f;)Z

    move-result v0

    if-nez v0, :cond_a

    :cond_a
    iget-object v0, p0, Lcom/igexin/push/e/c;->e:Lcom/igexin/push/e/b;

    new-instance v1, Lcom/igexin/push/e/f;

    invoke-direct {v1, p0}, Lcom/igexin/push/e/f;-><init>(Lcom/igexin/push/e/c;)V

    invoke-virtual {v0, v1}, Lcom/igexin/push/e/b;->a(Landroid/content/ServiceConnection;)V

    :try_start_1
    iget-object v0, p0, Lcom/igexin/push/e/c;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/igexin/push/e/c;->e:Lcom/igexin/push/e/b;

    invoke-virtual {v1}, Lcom/igexin/push/e/b;->a()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    iget-object v2, p0, Lcom/igexin/push/e/c;->e:Lcom/igexin/push/e/b;

    invoke-virtual {v2}, Lcom/igexin/push/e/b;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/igexin/push/e/c;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/igexin/push/e/c;->e:Lcom/igexin/push/e/b;

    invoke-virtual {v1}, Lcom/igexin/push/e/b;->d()Landroid/content/ServiceConnection;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_0

    :pswitch_7
    :try_start_2
    iget-object v0, p0, Lcom/igexin/push/e/c;->e:Lcom/igexin/push/e/b;

    invoke-virtual {v0}, Lcom/igexin/push/e/b;->c()Lcom/igexin/sdk/aidl/IGexinMsgService;

    move-result-object v0

    iget-object v1, p0, Lcom/igexin/push/e/c;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/igexin/sdk/PushService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    const-wide/16 v4, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/igexin/sdk/aidl/IGexinMsgService;->onPSNLConnected(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    goto/16 :goto_0

    :pswitch_8
    sget-object v0, Lcom/igexin/push/e/h;->a:[I

    iget-object v2, p1, Lcom/igexin/push/e/a;->a:Lcom/igexin/push/core/c;

    invoke-virtual {v2}, Lcom/igexin/push/core/c;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_3

    :pswitch_9
    goto/16 :goto_0

    :pswitch_a
    invoke-static {}, Lcom/igexin/push/core/f;->a()Lcom/igexin/push/core/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/push/core/f;->f()Lcom/igexin/push/e/j;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/igexin/push/e/j;->a(Z)V

    invoke-static {}, Lcom/igexin/push/core/f;->a()Lcom/igexin/push/core/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/push/core/f;->f()Lcom/igexin/push/e/j;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/igexin/push/e/j;->b(Z)V

    sget-boolean v0, Lcom/igexin/push/a/k;->s:Z

    if-eqz v0, :cond_c

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.igexin.sdk.action.snlretire"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "groupid"

    sget-object v2, Lcom/igexin/push/core/g;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "branch"

    const-string v2, "open"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/igexin/push/e/c;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    :pswitch_b
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.igexin.sdk.action.snlretire"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "groupid"

    sget-object v2, Lcom/igexin/push/core/g;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "branch"

    const-string v2, "open"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/igexin/push/e/c;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    :pswitch_c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/igexin/push/core/g;->Y:J

    iget-object v0, p0, Lcom/igexin/push/e/c;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/igexin/push/e/b;

    :try_start_3
    iget-object v2, p0, Lcom/igexin/push/e/c;->a:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/igexin/push/e/b;->d()Landroid/content/ServiceConnection;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_4

    :catch_2
    move-exception v0

    goto :goto_4

    :cond_b
    invoke-static {}, Lcom/igexin/push/core/f;->a()Lcom/igexin/push/core/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/push/core/f;->f()Lcom/igexin/push/e/j;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/igexin/push/e/j;->a(Z)V

    invoke-direct {p0}, Lcom/igexin/push/e/c;->c()V

    goto/16 :goto_0

    :cond_c
    new-instance v0, Lcom/igexin/push/e/a;

    invoke-direct {v0}, Lcom/igexin/push/e/a;-><init>()V

    sget-object v1, Lcom/igexin/push/core/c;->f:Lcom/igexin/push/core/c;

    invoke-virtual {v0, v1}, Lcom/igexin/push/e/a;->a(Lcom/igexin/push/core/c;)V

    invoke-static {}, Lcom/igexin/push/core/f;->a()Lcom/igexin/push/core/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/igexin/push/core/f;->g()Lcom/igexin/push/e/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/igexin/push/e/c;->a(Lcom/igexin/push/e/a;)V

    goto/16 :goto_0

    :pswitch_d
    sget-object v0, Lcom/igexin/push/e/h;->a:[I

    iget-object v2, p1, Lcom/igexin/push/e/a;->a:Lcom/igexin/push/core/c;

    invoke-virtual {v2}, Lcom/igexin/push/core/c;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_4

    goto/16 :goto_0

    :pswitch_e
    sget-boolean v0, Lcom/igexin/push/core/g;->o:Z

    if-eqz v0, :cond_d

    new-instance v0, Lcom/igexin/push/d/c/l;

    invoke-direct {v0}, Lcom/igexin/push/d/c/l;-><init>()V

    sget-wide v2, Lcom/igexin/push/core/g;->t:J

    iput-wide v2, v0, Lcom/igexin/push/d/c/l;->a:J

    invoke-static {}, Lcom/igexin/push/core/f;->a()Lcom/igexin/push/core/f;

    move-result-object v2

    invoke-virtual {v2}, Lcom/igexin/push/core/f;->f()Lcom/igexin/push/e/j;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "S-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-wide v4, Lcom/igexin/push/core/g;->t:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/igexin/push/e/j;->a(Ljava/lang/String;Lcom/igexin/push/d/c/e;)I

    :cond_d
    :pswitch_f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sput-wide v2, Lcom/igexin/push/core/g;->Y:J

    invoke-static {}, Lcom/igexin/push/core/f;->a()Lcom/igexin/push/core/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/push/core/f;->f()Lcom/igexin/push/e/j;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/igexin/push/e/j;->b(Z)V

    :try_start_4
    iget-object v0, p0, Lcom/igexin/push/e/c;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/igexin/push/e/c;->e:Lcom/igexin/push/e/b;

    invoke-virtual {v1}, Lcom/igexin/push/e/b;->d()Landroid/content/ServiceConnection;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    :goto_5
    invoke-direct {p0}, Lcom/igexin/push/e/c;->c()V

    goto/16 :goto_0

    :catch_3
    move-exception v0

    goto :goto_5

    :catch_4
    move-exception v0

    goto/16 :goto_3

    :cond_e
    move-object v0, v1

    goto/16 :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_4
        :pswitch_8
        :pswitch_d
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x3
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x3
        :pswitch_a
        :pswitch_c
        :pswitch_9
        :pswitch_9
        :pswitch_b
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x3
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method

.method public a()Z
    .locals 2

    iget-object v0, p0, Lcom/igexin/push/e/c;->b:Lcom/igexin/push/core/d;

    sget-object v1, Lcom/igexin/push/core/d;->c:Lcom/igexin/push/core/d;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/igexin/push/e/c;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/igexin/push/e/b;

    :try_start_0
    invoke-virtual {v0}, Lcom/igexin/push/e/b;->c()Lcom/igexin/sdk/aidl/IGexinMsgService;

    move-result-object v0

    invoke-interface {v0}, Lcom/igexin/sdk/aidl/IGexinMsgService;->onASNLNetworkConnected()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public b(Ljava/lang/String;Lcom/igexin/push/d/c/e;)I
    .locals 6

    new-instance v0, Lcom/igexin/push/d/c/b;

    invoke-direct {v0}, Lcom/igexin/push/d/c/b;-><init>()V

    invoke-virtual {p2}, Lcom/igexin/push/d/c/e;->d()[B

    move-result-object v1

    iput-object v1, v0, Lcom/igexin/push/d/c/b;->d:[B

    iget-object v1, v0, Lcom/igexin/push/d/c/b;->d:[B

    array-length v1, v1

    iput v1, v0, Lcom/igexin/push/d/c/b;->a:I

    iget v1, p2, Lcom/igexin/push/d/c/e;->i:I

    int-to-byte v1, v1

    iput-byte v1, v0, Lcom/igexin/push/d/c/b;->b:B

    invoke-virtual {v0}, Lcom/igexin/push/d/c/b;->a()[B

    move-result-object v1

    iget-object v0, p0, Lcom/igexin/push/e/c;->h:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/igexin/push/e/b;

    if-eqz v0, :cond_1

    :try_start_0
    const-string v2, "S-"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/igexin/a/b/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/igexin/push/e/c;->h:Ljava/util/Map;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "C-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {v0}, Lcom/igexin/push/e/b;->c()Lcom/igexin/sdk/aidl/IGexinMsgService;

    move-result-object v2

    invoke-virtual {v0}, Lcom/igexin/push/e/b;->e()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, p1, v1}, Lcom/igexin/sdk/aidl/IGexinMsgService;->receiveToPSNL(Ljava/lang/String;Ljava/lang/String;[B)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v1

    iget-object v1, p0, Lcom/igexin/push/e/c;->g:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/igexin/push/e/b;->e()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/igexin/push/e/c;->h:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;[B)I
    .locals 2

    invoke-direct {p0, p3}, Lcom/igexin/push/e/c;->a([B)Lcom/igexin/push/d/c/e;

    move-result-object v0

    invoke-static {}, Lcom/igexin/push/core/f;->a()Lcom/igexin/push/core/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/igexin/push/core/f;->f()Lcom/igexin/push/e/j;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/igexin/push/e/j;->a(Lcom/igexin/push/d/c/e;)V

    const/4 v0, 0x0

    return v0
.end method

.method public b()Z
    .locals 2

    iget-object v0, p0, Lcom/igexin/push/e/c;->b:Lcom/igexin/push/core/d;

    sget-object v1, Lcom/igexin/push/core/d;->c:Lcom/igexin/push/core/d;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/igexin/push/e/c;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/igexin/push/e/b;

    :try_start_0
    invoke-virtual {v0}, Lcom/igexin/push/e/b;->c()Lcom/igexin/sdk/aidl/IGexinMsgService;

    move-result-object v0

    invoke-interface {v0}, Lcom/igexin/sdk/aidl/IGexinMsgService;->onASNLNetworkDisconnected()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
