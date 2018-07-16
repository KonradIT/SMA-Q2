.class Lcom/igexin/push/core/b/g;
.super Lcom/igexin/push/c/d;


# instance fields
.field final synthetic a:Lcom/igexin/push/core/b/e;


# direct methods
.method constructor <init>(Lcom/igexin/push/core/b/e;)V
    .locals 0

    iput-object p1, p0, Lcom/igexin/push/core/b/g;->a:Lcom/igexin/push/core/b/e;

    invoke-direct {p0}, Lcom/igexin/push/c/d;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/igexin/push/core/b/g;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "ca"

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method
