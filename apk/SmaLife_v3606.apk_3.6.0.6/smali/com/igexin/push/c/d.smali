.class public abstract Lcom/igexin/push/c/d;
.super Lcom/igexin/a/a/d/d;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field protected c:Landroid/database/sqlite/SQLiteDatabase;

.field protected d:Landroid/database/Cursor;

.field protected e:Landroid/content/ContentValues;

.field public f:Lcom/igexin/push/c/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/igexin/push/a/j;->a:Ljava/lang/String;

    sput-object v0, Lcom/igexin/push/c/d;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/igexin/a/a/d/d;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/ContentValues;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/igexin/a/a/d/d;-><init>(I)V

    iput-object p1, p0, Lcom/igexin/push/c/d;->e:Landroid/content/ContentValues;

    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method public a_()V
    .locals 2

    invoke-super {p0}, Lcom/igexin/a/a/d/d;->a_()V

    invoke-static {}, Lcom/igexin/push/core/f;->a()Lcom/igexin/push/core/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/push/core/f;->j()Lcom/igexin/push/c/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/push/c/b;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/igexin/push/c/d;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0}, Lcom/igexin/push/c/d;->a()V

    iget-object v0, p0, Lcom/igexin/push/c/d;->f:Lcom/igexin/push/c/c;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/igexin/a/a/b/d;->c()Lcom/igexin/a/a/b/d;

    move-result-object v0

    iget-object v1, p0, Lcom/igexin/push/c/d;->f:Lcom/igexin/push/c/c;

    invoke-virtual {v0, v1}, Lcom/igexin/a/a/b/d;->a(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/igexin/a/a/b/d;->c()Lcom/igexin/a/a/b/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/a/a/b/d;->d()V

    :cond_0
    return-void
.end method

.method public final b()I
    .locals 1

    const v0, -0x7ffffff8

    return v0
.end method

.method public c()V
    .locals 1

    invoke-super {p0}, Lcom/igexin/a/a/d/d;->c()V

    iget-object v0, p0, Lcom/igexin/push/c/d;->d:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/igexin/push/c/d;->d:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/igexin/push/c/d;->d:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public d()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/igexin/push/c/d;->z:Z

    iput-boolean v0, p0, Lcom/igexin/push/c/d;->U:Z

    return-void
.end method

.method protected e()V
    .locals 0

    return-void
.end method
