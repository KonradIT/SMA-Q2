.class Lcom/igexin/push/a/b;
.super Lcom/igexin/push/c/d;


# instance fields
.field final synthetic a:Lcom/igexin/push/a/a;


# direct methods
.method constructor <init>(Lcom/igexin/push/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/igexin/push/a/b;->a:Lcom/igexin/push/a/a;

    invoke-direct {p0}, Lcom/igexin/push/c/d;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    iget-object v0, p0, Lcom/igexin/push/a/b;->a:Lcom/igexin/push/a/a;

    iget-object v1, p0, Lcom/igexin/push/a/b;->c:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x1

    sget v3, Lcom/igexin/push/a/k;->e:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/igexin/push/a/a;->a(Lcom/igexin/push/a/a;Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/igexin/push/a/b;->a:Lcom/igexin/push/a/a;

    iget-object v1, p0, Lcom/igexin/push/a/b;->c:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x2

    sget v3, Lcom/igexin/push/a/k;->f:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/igexin/push/a/a;->a(Lcom/igexin/push/a/a;Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;)V

    return-void
.end method
