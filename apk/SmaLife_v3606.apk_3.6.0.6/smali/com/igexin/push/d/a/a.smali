.class public Lcom/igexin/push/d/a/a;
.super Lcom/igexin/a/a/b/c;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/igexin/a/a/b/c;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/igexin/a/a/b/c;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {p0, p2}, Lcom/igexin/push/d/a/a;->a(Lcom/igexin/a/a/b/c;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/igexin/a/a/b/f;Lcom/igexin/a/a/b/e;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p3, Lcom/igexin/push/d/c/e;

    if-eqz v0, :cond_0

    check-cast p3, Lcom/igexin/push/d/c/e;

    new-instance v0, Lcom/igexin/push/d/c/b;

    invoke-direct {v0}, Lcom/igexin/push/d/c/b;-><init>()V

    iget v1, p3, Lcom/igexin/push/d/c/e;->i:I

    int-to-byte v1, v1

    iput-byte v1, v0, Lcom/igexin/push/d/c/b;->b:B

    invoke-virtual {p3}, Lcom/igexin/push/d/c/e;->d()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/igexin/push/d/c/b;->a([B)V

    iget-byte v1, p3, Lcom/igexin/push/d/c/e;->j:B

    iput-byte v1, v0, Lcom/igexin/push/d/c/b;->c:B

    :goto_0
    return-object v0

    :cond_0
    instance-of v0, p3, [Lcom/igexin/push/d/c/e;

    if-eqz v0, :cond_2

    check-cast p3, [Lcom/igexin/push/d/c/e;

    check-cast p3, [Lcom/igexin/push/d/c/e;

    array-length v0, p3

    new-array v1, v0, [Lcom/igexin/push/d/c/b;

    const/4 v0, 0x0

    :goto_1
    array-length v2, p3

    if-ge v0, v2, :cond_1

    new-instance v2, Lcom/igexin/push/d/c/b;

    invoke-direct {v2}, Lcom/igexin/push/d/c/b;-><init>()V

    aput-object v2, v1, v0

    aget-object v2, v1, v0

    aget-object v3, p3, v0

    iget v3, v3, Lcom/igexin/push/d/c/e;->i:I

    int-to-byte v3, v3

    iput-byte v3, v2, Lcom/igexin/push/d/c/b;->b:B

    aget-object v2, v1, v0

    aget-object v3, p3, v0

    invoke-virtual {v3}, Lcom/igexin/push/d/c/e;->d()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/igexin/push/d/c/b;->a([B)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move-object v0, v1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Lcom/igexin/a/a/b/f;Lcom/igexin/a/a/b/e;Ljava/lang/Object;)Lcom/igexin/a/a/d/a/f;
    .locals 2

    const/4 v0, 0x0

    if-nez p3, :cond_0

    move-object p3, v0

    :goto_0
    return-object p3

    :cond_0
    instance-of v1, p3, Lcom/igexin/push/d/c/h;

    if-eqz v1, :cond_1

    check-cast p3, Lcom/igexin/a/a/d/a/f;

    goto :goto_0

    :cond_1
    check-cast p3, Lcom/igexin/push/d/c/b;

    iget-byte v1, p3, Lcom/igexin/push/d/c/b;->b:B

    sparse-switch v1, :sswitch_data_0

    :goto_1
    if-eqz v0, :cond_2

    iget-object v1, p3, Lcom/igexin/push/d/c/b;->d:[B

    invoke-virtual {v0, v1}, Lcom/igexin/push/d/c/e;->a([B)V

    :cond_2
    move-object p3, v0

    goto :goto_0

    :sswitch_0
    new-instance v0, Lcom/igexin/push/d/c/k;

    invoke-direct {v0}, Lcom/igexin/push/d/c/k;-><init>()V

    goto :goto_1

    :sswitch_1
    new-instance v0, Lcom/igexin/push/d/c/m;

    invoke-direct {v0}, Lcom/igexin/push/d/c/m;-><init>()V

    goto :goto_1

    :sswitch_2
    new-instance v0, Lcom/igexin/push/d/c/o;

    invoke-direct {v0}, Lcom/igexin/push/d/c/o;-><init>()V

    goto :goto_1

    :sswitch_3
    new-instance v0, Lcom/igexin/push/d/c/n;

    invoke-direct {v0}, Lcom/igexin/push/d/c/n;-><init>()V

    goto :goto_1

    :sswitch_4
    new-instance v0, Lcom/igexin/push/d/c/a;

    invoke-direct {v0}, Lcom/igexin/push/d/c/a;-><init>()V

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_0
        0x9 -> :sswitch_2
        0x1a -> :sswitch_3
        0x1c -> :sswitch_4
        0x25 -> :sswitch_1
    .end sparse-switch
.end method

.method public synthetic c(Lcom/igexin/a/a/b/f;Lcom/igexin/a/a/b/e;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1, p2, p3}, Lcom/igexin/push/d/a/a;->b(Lcom/igexin/a/a/b/f;Lcom/igexin/a/a/b/e;Ljava/lang/Object;)Lcom/igexin/a/a/d/a/f;

    move-result-object v0

    return-object v0
.end method
