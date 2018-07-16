.class public Lcom/igexin/getuiext/b/b;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/igexin/getuiext/data/a;


# direct methods
.method public constructor <init>(Lcom/igexin/getuiext/data/a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/igexin/getuiext/b/b;->a:Lcom/igexin/getuiext/data/a;

    iput-object p1, p0, Lcom/igexin/getuiext/b/b;->a:Lcom/igexin/getuiext/data/a;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 9

    const/4 v8, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/igexin/getuiext/b/b;->a:Lcom/igexin/getuiext/data/a;

    const-string v1, "biinfo"

    const-string v3, "bitype=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v8

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/igexin/getuiext/data/a;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move v0, v8

    :goto_0
    const/16 v3, 0x14

    if-ge v0, v3, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Lcom/igexin/getuiext/data/a/b;

    invoke-direct {v3}, Lcom/igexin/getuiext/data/a/b;-><init>()V

    const-string v4, "id"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const-string v5, "value"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput v4, v3, Lcom/igexin/getuiext/data/a/b;->a:I

    iput-object v5, v3, Lcom/igexin/getuiext/data/a/b;->b:Ljava/lang/String;

    iput-object p1, v3, Lcom/igexin/getuiext/data/a/b;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v2
.end method

.method public a(Ljava/lang/String;I)V
    .locals 7

    iget-object v0, p0, Lcom/igexin/getuiext/b/b;->a:Lcom/igexin/getuiext/data/a;

    const-string v1, "biinfo"

    invoke-virtual {v0, v1}, Lcom/igexin/getuiext/data/a;->a(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    const/16 v2, 0x14

    if-lt v1, v2, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v1, "id"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iget-object v2, p0, Lcom/igexin/getuiext/b/b;->a:Lcom/igexin/getuiext/data/a;

    const-string v3, "biinfo"

    const-string v4, "id = ?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v6

    invoke-virtual {v2, v3, v4, v5}, Lcom/igexin/getuiext/data/a;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    :cond_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "value"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "bitype"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/igexin/getuiext/b/b;->a:Lcom/igexin/getuiext/data/a;

    const-string v2, "biinfo"

    invoke-virtual {v1, v2, v0}, Lcom/igexin/getuiext/data/a;->a(Ljava/lang/String;Landroid/content/ContentValues;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/igexin/getuiext/b/b;->a:Lcom/igexin/getuiext/data/a;

    const-string v1, "biinfo"

    const-string v2, "bitype = ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/igexin/getuiext/data/a;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method
