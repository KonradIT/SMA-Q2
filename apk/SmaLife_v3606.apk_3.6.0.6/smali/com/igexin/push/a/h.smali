.class Lcom/igexin/push/a/h;
.super Lcom/igexin/push/c/d;


# instance fields
.field final synthetic a:Lcom/igexin/push/a/a;


# direct methods
.method constructor <init>(Lcom/igexin/push/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/igexin/push/a/h;->a:Lcom/igexin/push/a/a;

    invoke-direct {p0}, Lcom/igexin/push/c/d;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Lcom/igexin/push/a/h;->a:Lcom/igexin/push/a/a;

    iget-object v1, p0, Lcom/igexin/push/a/h;->c:Landroid/database/sqlite/SQLiteDatabase;

    const/16 v2, 0x14

    invoke-static {v0, v1, v2}, Lcom/igexin/push/a/a;->a(Lcom/igexin/push/a/a;Landroid/database/sqlite/SQLiteDatabase;I)V

    return-void
.end method
