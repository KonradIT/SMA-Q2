.class Lcom/igexin/push/core/c/g;
.super Lcom/igexin/push/c/d;


# instance fields
.field final synthetic a:Lcom/igexin/push/core/c/f;


# direct methods
.method constructor <init>(Lcom/igexin/push/core/c/f;)V
    .locals 0

    iput-object p1, p0, Lcom/igexin/push/core/c/g;->a:Lcom/igexin/push/core/c/f;

    invoke-direct {p0}, Lcom/igexin/push/c/d;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/igexin/push/core/c/g;->a:Lcom/igexin/push/core/c/f;

    iget-object v1, p0, Lcom/igexin/push/core/c/g;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, v1}, Lcom/igexin/push/core/c/f;->c(Landroid/database/sqlite/SQLiteDatabase;)V

    iget-object v0, p0, Lcom/igexin/push/core/c/g;->a:Lcom/igexin/push/core/c/f;

    invoke-static {v0}, Lcom/igexin/push/core/c/f;->a(Lcom/igexin/push/core/c/f;)V

    return-void
.end method
