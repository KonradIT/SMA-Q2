.class public Lcom/igexin/sdk/a/a;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/lang/String;

.field private static c:Lcom/igexin/sdk/a/a;


# instance fields
.field private b:Lcom/igexin/sdk/IPushCore;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "PushSdk"

    sput-object v0, Lcom/igexin/sdk/a/a;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/igexin/sdk/a/a;
    .locals 1

    sget-object v0, Lcom/igexin/sdk/a/a;->c:Lcom/igexin/sdk/a/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/igexin/sdk/a/a;

    invoke-direct {v0}, Lcom/igexin/sdk/a/a;-><init>()V

    sput-object v0, Lcom/igexin/sdk/a/a;->c:Lcom/igexin/sdk/a/a;

    :cond_0
    sget-object v0, Lcom/igexin/sdk/a/a;->c:Lcom/igexin/sdk/a/a;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/igexin/sdk/IPushCore;)V
    .locals 0

    iput-object p1, p0, Lcom/igexin/sdk/a/a;->b:Lcom/igexin/sdk/IPushCore;

    return-void
.end method

.method public a(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "com.igexin.push.core.stub.PushCore"

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/igexin/sdk/IPushCore;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/igexin/sdk/a/a;->a(Lcom/igexin/sdk/IPushCore;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Lcom/igexin/sdk/IPushCore;
    .locals 1

    iget-object v0, p0, Lcom/igexin/sdk/a/a;->b:Lcom/igexin/sdk/IPushCore;

    return-object v0
.end method
