.class public Lcom/igexin/push/d/c/i;
.super Lcom/igexin/push/d/c/e;


# instance fields
.field public a:J

.field public b:B

.field public c:I

.field public d:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/igexin/push/d/c/e;-><init>()V

    const/4 v0, 0x4

    iput v0, p0, Lcom/igexin/push/d/c/i;->i:I

    const/16 v0, 0x34

    iput-byte v0, p0, Lcom/igexin/push/d/c/i;->j:B

    return-void
.end method


# virtual methods
.method public a([B)V
    .locals 3

    const/16 v2, 0x8

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/igexin/a/a/b/g;->d([BI)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/igexin/push/d/c/i;->a:J

    aget-byte v0, p1, v2

    iput-byte v0, p0, Lcom/igexin/push/d/c/i;->b:B

    invoke-static {p1, v2}, Lcom/igexin/a/a/b/g;->c([BI)I

    move-result v0

    const v1, 0xffffff

    and-int/2addr v0, v1

    iput v0, p0, Lcom/igexin/push/d/c/i;->c:I

    return-void
.end method

.method public d()[B
    .locals 7

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/igexin/push/d/c/i;->d:Ljava/util/List;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/igexin/push/d/c/i;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iget-object v0, p0, Lcom/igexin/push/d/c/i;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/igexin/push/d/c/j;

    invoke-virtual {v0}, Lcom/igexin/push/d/c/j;->d()[B

    move-result-object v0

    :try_start_0
    invoke-virtual {v3, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    move-object v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_1

    :cond_0
    if-eqz v3, :cond_3

    :try_start_1
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v3, v1

    :goto_2
    if-eqz v3, :cond_2

    array-length v0, v3

    add-int/lit8 v1, v0, 0x1

    :goto_3
    add-int/lit8 v1, v1, 0xc

    new-array v1, v1, [B

    iget-wide v4, p0, Lcom/igexin/push/d/c/i;->a:J

    invoke-static {v4, v5, v1, v2}, Lcom/igexin/a/a/b/g;->a(J[BI)I

    move-result v4

    iget-byte v5, p0, Lcom/igexin/push/d/c/i;->b:B

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x18

    iget v6, p0, Lcom/igexin/push/d/c/i;->c:I

    or-int/2addr v5, v6

    invoke-static {v5, v1, v4}, Lcom/igexin/a/a/b/g;->a(I[BI)I

    move-result v5

    add-int/2addr v4, v5

    if-lez v0, :cond_1

    invoke-static {v0, v1, v4}, Lcom/igexin/a/a/b/g;->c(I[BI)I

    move-result v5

    add-int/2addr v4, v5

    invoke-static {v3, v2, v1, v4, v0}, Lcom/igexin/a/a/b/g;->a([BI[BII)I

    move-result v0

    add-int/2addr v0, v4

    :cond_1
    return-object v1

    :catch_1
    move-exception v0

    move-object v3, v1

    goto :goto_2

    :cond_2
    move v0, v2

    move v1, v2

    goto :goto_3

    :cond_3
    move-object v3, v1

    goto :goto_2

    :cond_4
    move-object v3, v1

    goto :goto_2
.end method
