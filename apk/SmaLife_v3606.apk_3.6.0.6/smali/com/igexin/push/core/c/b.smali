.class public Lcom/igexin/push/core/c/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/igexin/push/core/c/a;


# static fields
.field private static c:Lcom/igexin/push/core/c/b;


# instance fields
.field a:Lcom/igexin/push/g/a;

.field private b:Ljava/util/Map;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/igexin/push/core/c/b;->b:Ljava/util/Map;

    new-instance v0, Lcom/igexin/push/g/a;

    invoke-direct {v0}, Lcom/igexin/push/g/a;-><init>()V

    iput-object v0, p0, Lcom/igexin/push/core/c/b;->a:Lcom/igexin/push/g/a;

    return-void
.end method

.method public static a()Lcom/igexin/push/core/c/b;
    .locals 1

    sget-object v0, Lcom/igexin/push/core/c/b;->c:Lcom/igexin/push/core/c/b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/igexin/push/core/c/b;

    invoke-direct {v0}, Lcom/igexin/push/core/c/b;-><init>()V

    sput-object v0, Lcom/igexin/push/core/c/b;->c:Lcom/igexin/push/core/c/b;

    :cond_0
    sget-object v0, Lcom/igexin/push/core/c/b;->c:Lcom/igexin/push/core/c/b;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    return-void
.end method

.method public b(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    return-void
.end method

.method public c(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    return-void
.end method
