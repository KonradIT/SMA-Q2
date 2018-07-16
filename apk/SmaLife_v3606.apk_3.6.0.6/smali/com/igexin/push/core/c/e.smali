.class Lcom/igexin/push/core/c/e;
.super Lcom/igexin/push/c/d;


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/igexin/push/core/c/c;


# direct methods
.method constructor <init>(Lcom/igexin/push/core/c/c;Landroid/content/ContentValues;J)V
    .locals 1

    iput-object p1, p0, Lcom/igexin/push/core/c/e;->b:Lcom/igexin/push/core/c/c;

    iput-wide p3, p0, Lcom/igexin/push/core/c/e;->a:J

    invoke-direct {p0, p2}, Lcom/igexin/push/c/d;-><init>(Landroid/content/ContentValues;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 8

    iget-object v0, p0, Lcom/igexin/push/core/c/e;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "ral"

    const-string v2, "id=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-wide v6, p0, Lcom/igexin/push/core/c/e;->a:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method
