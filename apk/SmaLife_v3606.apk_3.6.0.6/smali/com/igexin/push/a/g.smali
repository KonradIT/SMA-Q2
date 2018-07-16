.class Lcom/igexin/push/a/g;
.super Lcom/igexin/push/c/d;


# instance fields
.field final synthetic a:Lcom/igexin/push/a/a;


# direct methods
.method constructor <init>(Lcom/igexin/push/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/igexin/push/a/g;->a:Lcom/igexin/push/a/a;

    invoke-direct {p0}, Lcom/igexin/push/c/d;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    sget-object v0, Lcom/igexin/push/a/k;->x:Lcom/igexin/push/core/bean/f;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/igexin/push/core/a/f;->a()Lcom/igexin/push/core/a/f;

    move-result-object v0

    sget-object v1, Lcom/igexin/push/a/k;->x:Lcom/igexin/push/core/bean/f;

    invoke-virtual {v0, v1}, Lcom/igexin/push/core/a/f;->b(Lcom/igexin/push/core/bean/f;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sget-object v1, Lcom/igexin/push/core/g;->D:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/igexin/a/a/a/a;->b([BLjava/lang/String;)[B

    move-result-object v0

    iget-object v1, p0, Lcom/igexin/push/a/g;->a:Lcom/igexin/push/a/a;

    iget-object v2, p0, Lcom/igexin/push/a/g;->c:Landroid/database/sqlite/SQLiteDatabase;

    const/16 v3, 0x14

    invoke-static {v1, v2, v3, v0}, Lcom/igexin/push/a/a;->a(Lcom/igexin/push/a/a;Landroid/database/sqlite/SQLiteDatabase;I[B)V

    :cond_0
    return-void
.end method
