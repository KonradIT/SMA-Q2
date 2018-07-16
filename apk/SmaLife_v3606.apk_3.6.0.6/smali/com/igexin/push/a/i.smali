.class public Lcom/igexin/push/a/i;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/igexin/push/a/i;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/igexin/push/a/i;
    .locals 1

    sget-object v0, Lcom/igexin/push/a/i;->a:Lcom/igexin/push/a/i;

    if-nez v0, :cond_0

    new-instance v0, Lcom/igexin/push/a/i;

    invoke-direct {v0}, Lcom/igexin/push/a/i;-><init>()V

    sput-object v0, Lcom/igexin/push/a/i;->a:Lcom/igexin/push/a/i;

    :cond_0
    sget-object v0, Lcom/igexin/push/a/i;->a:Lcom/igexin/push/a/i;

    return-object v0
.end method


# virtual methods
.method public b()Z
    .locals 1

    invoke-static {}, Lcom/igexin/push/a/l;->a()V

    sget-object v0, Lcom/igexin/push/core/g;->i:Landroid/content/Context;

    invoke-static {v0}, Lcom/igexin/push/a/l;->a(Landroid/content/Context;)V

    const/4 v0, 0x1

    return v0
.end method
