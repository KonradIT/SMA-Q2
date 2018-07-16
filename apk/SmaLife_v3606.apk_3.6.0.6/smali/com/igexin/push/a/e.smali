.class Lcom/igexin/push/a/e;
.super Lcom/igexin/push/c/d;


# instance fields
.field final synthetic a:Lcom/igexin/push/a/a;


# direct methods
.method constructor <init>(Lcom/igexin/push/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/igexin/push/a/e;->a:Lcom/igexin/push/a/a;

    invoke-direct {p0}, Lcom/igexin/push/c/d;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 6

    iget-object v0, p0, Lcom/igexin/push/a/e;->a:Lcom/igexin/push/a/a;

    iget-object v1, p0, Lcom/igexin/push/a/e;->c:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x3

    sget-wide v4, Lcom/igexin/push/a/k;->g:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/igexin/push/a/a;->a(Lcom/igexin/push/a/a;Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;)V

    return-void
.end method
