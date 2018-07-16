.class public Lcom/igexin/push/core/e/b;
.super Ljava/lang/Object;


# static fields
.field private static b:Lcom/igexin/push/core/e/b;


# instance fields
.field private a:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/igexin/push/core/e/b;->a:Ljava/util/Map;

    return-void
.end method

.method public static a()Lcom/igexin/push/core/e/b;
    .locals 1

    sget-object v0, Lcom/igexin/push/core/e/b;->b:Lcom/igexin/push/core/e/b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/igexin/push/core/e/b;

    invoke-direct {v0}, Lcom/igexin/push/core/e/b;-><init>()V

    sput-object v0, Lcom/igexin/push/core/e/b;->b:Lcom/igexin/push/core/e/b;

    :cond_0
    sget-object v0, Lcom/igexin/push/core/e/b;->b:Lcom/igexin/push/core/e/b;

    return-object v0
.end method

.method private d(Lcom/igexin/push/core/e/a;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/igexin/push/core/e/b;->a:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/igexin/push/core/e/a;->a()Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Long;)Lcom/igexin/push/core/e/a;
    .locals 1

    iget-object v0, p0, Lcom/igexin/push/core/e/b;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/igexin/push/core/e/a;

    return-object v0
.end method

.method public a(Lcom/igexin/push/core/e/a;)V
    .locals 3

    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Lcom/igexin/push/core/e/b;->d(Lcom/igexin/push/core/e/a;)V

    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/igexin/push/core/g;->i:Landroid/content/Context;

    const-class v2, Lcom/igexin/sdk/PushActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "activityid"

    invoke-virtual {p1}, Lcom/igexin/push/core/e/a;->a()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    sget-object v1, Lcom/igexin/push/core/g;->i:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public b(Lcom/igexin/push/core/e/a;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/igexin/push/core/e/a;->i()V

    invoke-virtual {p0, p1}, Lcom/igexin/push/core/e/b;->c(Lcom/igexin/push/core/e/a;)V

    :cond_0
    return-void
.end method

.method public c(Lcom/igexin/push/core/e/a;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/igexin/push/core/e/b;->a:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/igexin/push/core/e/a;->a()Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
