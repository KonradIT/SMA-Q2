.class public Lcom/igexin/getuiext/b/a;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/igexin/getuiext/data/a;


# direct methods
.method public constructor <init>(Lcom/igexin/getuiext/data/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/igexin/getuiext/b/a;->a:Lcom/igexin/getuiext/data/a;

    return-void
.end method


# virtual methods
.method public a(I)Lcom/igexin/getuiext/data/a/a;
    .locals 8

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/igexin/getuiext/b/a;->a:Lcom/igexin/getuiext/data/a;

    const-string v1, "appinfo"

    const-string v3, "download_id = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/igexin/getuiext/data/a;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v2, Lcom/igexin/getuiext/data/a/e;

    invoke-direct {v2}, Lcom/igexin/getuiext/data/a/e;-><init>()V

    const-string v1, "name"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/igexin/getuiext/data/a/e;->a:Ljava/lang/String;

    const-string v1, "pkgName"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/igexin/getuiext/data/a/e;->b:Ljava/lang/String;

    const-string v1, "versionCode"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v2, Lcom/igexin/getuiext/data/a/e;->d:I

    const-string v1, "versionName"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/igexin/getuiext/data/a/e;->c:Ljava/lang/String;

    const-string v1, "diffSize"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v2, Lcom/igexin/getuiext/data/a/e;->o:J

    const-string v1, "fullSize"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v2, Lcom/igexin/getuiext/data/a/e;->i:J

    const-string v1, "logo"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/igexin/getuiext/data/a/e;->f:Ljava/lang/String;

    const-string v1, "url"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/igexin/getuiext/data/a/e;->g:Ljava/lang/String;

    const-string v1, "updateType"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/igexin/getuiext/data/a/f;->a(Ljava/lang/String;)Lcom/igexin/getuiext/data/a/f;

    move-result-object v1

    iput-object v1, v2, Lcom/igexin/getuiext/data/a/e;->n:Lcom/igexin/getuiext/data/a/f;

    const-string v1, "diffChecksum"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/igexin/getuiext/data/a/e;->p:Ljava/lang/String;

    const-string v1, "fullChecksum"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/igexin/getuiext/data/a/e;->q:Ljava/lang/String;

    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v2
.end method

.method public a(ILcom/igexin/getuiext/data/a/a;)V
    .locals 6

    if-eqz p2, :cond_8

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v0, "download_id"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v0, p2, Lcom/igexin/getuiext/data/a/a;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, "name"

    iget-object v2, p2, Lcom/igexin/getuiext/data/a/a;->a:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p2, Lcom/igexin/getuiext/data/a/a;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v0, "pkgName"

    iget-object v2, p2, Lcom/igexin/getuiext/data/a/a;->b:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v0, p2, Lcom/igexin/getuiext/data/a/a;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    const-string v0, "versionName"

    iget-object v2, p2, Lcom/igexin/getuiext/data/a/a;->c:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const-string v0, "versionCode"

    iget v2, p2, Lcom/igexin/getuiext/data/a/a;->d:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    instance-of v0, p2, Lcom/igexin/getuiext/data/a/d;

    if-eqz v0, :cond_7

    move-object v0, p2

    check-cast v0, Lcom/igexin/getuiext/data/a/d;

    iget-object v0, v0, Lcom/igexin/getuiext/data/a/d;->f:Ljava/lang/String;

    if-eqz v0, :cond_3

    const-string v2, "logo"

    move-object v0, p2

    check-cast v0, Lcom/igexin/getuiext/data/a/d;

    iget-object v0, v0, Lcom/igexin/getuiext/data/a/d;->f:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const-string v2, "fullSize"

    move-object v0, p2

    check-cast v0, Lcom/igexin/getuiext/data/a/d;

    iget-wide v4, v0, Lcom/igexin/getuiext/data/a/d;->i:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    move-object v0, p2

    check-cast v0, Lcom/igexin/getuiext/data/a/d;

    iget-object v0, v0, Lcom/igexin/getuiext/data/a/d;->g:Ljava/lang/String;

    if-eqz v0, :cond_4

    const-string v2, "url"

    move-object v0, p2

    check-cast v0, Lcom/igexin/getuiext/data/a/d;

    iget-object v0, v0, Lcom/igexin/getuiext/data/a/d;->g:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    instance-of v0, p2, Lcom/igexin/getuiext/data/a/e;

    if-eqz v0, :cond_7

    check-cast p2, Lcom/igexin/getuiext/data/a/e;

    const-string v0, "diffSize"

    iget-wide v2, p2, Lcom/igexin/getuiext/data/a/e;->o:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v0, p2, Lcom/igexin/getuiext/data/a/e;->n:Lcom/igexin/getuiext/data/a/f;

    if-eqz v0, :cond_5

    const-string v0, "updateType"

    iget-object v2, p2, Lcom/igexin/getuiext/data/a/e;->n:Lcom/igexin/getuiext/data/a/f;

    invoke-virtual {v2}, Lcom/igexin/getuiext/data/a/f;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    iget-object v0, p2, Lcom/igexin/getuiext/data/a/e;->p:Ljava/lang/String;

    if-eqz v0, :cond_6

    const-string v0, "diffChecksum"

    iget-object v2, p2, Lcom/igexin/getuiext/data/a/e;->p:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    iget-object v0, p2, Lcom/igexin/getuiext/data/a/e;->q:Ljava/lang/String;

    if-eqz v0, :cond_7

    const-string v0, "fullChecksum"

    iget-object v2, p2, Lcom/igexin/getuiext/data/a/e;->q:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    iget-object v0, p0, Lcom/igexin/getuiext/b/a;->a:Lcom/igexin/getuiext/data/a;

    const-string v2, "appinfo"

    invoke-virtual {v0, v2, v1}, Lcom/igexin/getuiext/data/a;->a(Ljava/lang/String;Landroid/content/ContentValues;)V

    :cond_8
    return-void
.end method

.method public b(I)V
    .locals 6

    iget-object v0, p0, Lcom/igexin/getuiext/b/a;->a:Lcom/igexin/getuiext/data/a;

    const-string v1, "appinfo"

    const-string v2, "download_id = ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/igexin/getuiext/data/a;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method
