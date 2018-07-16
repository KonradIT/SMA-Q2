.class Lcom/igexin/download/i;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/util/Set;

.field private c:I

.field private d:I

.field private final e:[C


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Set;)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v3, p0, Lcom/igexin/download/i;->c:I

    iput v3, p0, Lcom/igexin/download/i;->d:I

    iput-object p1, p0, Lcom/igexin/download/i;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/igexin/download/i;->b:Ljava/util/Set;

    iget-object v0, p0, Lcom/igexin/download/i;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/igexin/download/i;->e:[C

    iget-object v0, p0, Lcom/igexin/download/i;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/igexin/download/i;->e:[C

    array-length v1, v1

    iget-object v2, p0, Lcom/igexin/download/i;->e:[C

    invoke-virtual {v0, v3, v1, v2, v3}, Ljava/lang/String;->getChars(II[CI)V

    invoke-virtual {p0}, Lcom/igexin/download/i;->b()V

    return-void
.end method

.method private static final a(C)Z
    .locals 1

    const/16 v0, 0x5f

    if-eq p0, v0, :cond_1

    const/16 v0, 0x41

    if-lt p0, v0, :cond_0

    const/16 v0, 0x5a

    if-le p0, v0, :cond_1

    :cond_0
    const/16 v0, 0x61

    if-lt p0, v0, :cond_2

    const/16 v0, 0x7a

    if-gt p0, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static final b(C)Z
    .locals 1

    const/16 v0, 0x5f

    if-eq p0, v0, :cond_2

    const/16 v0, 0x41

    if-lt p0, v0, :cond_0

    const/16 v0, 0x5a

    if-le p0, v0, :cond_2

    :cond_0
    const/16 v0, 0x61

    if-lt p0, v0, :cond_1

    const/16 v0, 0x7a

    if-le p0, v0, :cond_2

    :cond_1
    const/16 v0, 0x30

    if-lt p0, v0, :cond_3

    const/16 v0, 0x39

    if-gt p0, v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/igexin/download/i;->d:I

    return v0
.end method

.method public b()V
    .locals 8

    const/4 v7, 0x6

    const/4 v6, 0x4

    const/16 v5, 0x27

    const/4 v4, 0x5

    const/16 v3, 0x3d

    iget-object v0, p0, Lcom/igexin/download/i;->e:[C

    :goto_0
    iget v1, p0, Lcom/igexin/download/i;->c:I

    array-length v2, v0

    if-ge v1, v2, :cond_0

    iget v1, p0, Lcom/igexin/download/i;->c:I

    aget-char v1, v0, v1

    const/16 v2, 0x20

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/igexin/download/i;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/igexin/download/i;->c:I

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/igexin/download/i;->c:I

    array-length v2, v0

    if-ne v1, v2, :cond_2

    const/16 v0, 0x9

    iput v0, p0, Lcom/igexin/download/i;->d:I

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget v1, p0, Lcom/igexin/download/i;->c:I

    aget-char v1, v0, v1

    const/16 v2, 0x28

    if-ne v1, v2, :cond_3

    iget v0, p0, Lcom/igexin/download/i;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/igexin/download/i;->c:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/igexin/download/i;->d:I

    goto :goto_1

    :cond_3
    iget v1, p0, Lcom/igexin/download/i;->c:I

    aget-char v1, v0, v1

    const/16 v2, 0x29

    if-ne v1, v2, :cond_4

    iget v0, p0, Lcom/igexin/download/i;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/igexin/download/i;->c:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/igexin/download/i;->d:I

    goto :goto_1

    :cond_4
    iget v1, p0, Lcom/igexin/download/i;->c:I

    aget-char v1, v0, v1

    const/16 v2, 0x3f

    if-ne v1, v2, :cond_5

    iget v0, p0, Lcom/igexin/download/i;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/igexin/download/i;->c:I

    iput v7, p0, Lcom/igexin/download/i;->d:I

    goto :goto_1

    :cond_5
    iget v1, p0, Lcom/igexin/download/i;->c:I

    aget-char v1, v0, v1

    if-ne v1, v3, :cond_6

    iget v1, p0, Lcom/igexin/download/i;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/igexin/download/i;->c:I

    iput v4, p0, Lcom/igexin/download/i;->d:I

    iget v1, p0, Lcom/igexin/download/i;->c:I

    array-length v2, v0

    if-ge v1, v2, :cond_1

    iget v1, p0, Lcom/igexin/download/i;->c:I

    aget-char v0, v0, v1

    if-ne v0, v3, :cond_1

    iget v0, p0, Lcom/igexin/download/i;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/igexin/download/i;->c:I

    goto :goto_1

    :cond_6
    iget v1, p0, Lcom/igexin/download/i;->c:I

    aget-char v1, v0, v1

    const/16 v2, 0x3e

    if-ne v1, v2, :cond_7

    iget v1, p0, Lcom/igexin/download/i;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/igexin/download/i;->c:I

    iput v4, p0, Lcom/igexin/download/i;->d:I

    iget v1, p0, Lcom/igexin/download/i;->c:I

    array-length v2, v0

    if-ge v1, v2, :cond_1

    iget v1, p0, Lcom/igexin/download/i;->c:I

    aget-char v0, v0, v1

    if-ne v0, v3, :cond_1

    iget v0, p0, Lcom/igexin/download/i;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/igexin/download/i;->c:I

    goto :goto_1

    :cond_7
    iget v1, p0, Lcom/igexin/download/i;->c:I

    aget-char v1, v0, v1

    const/16 v2, 0x3c

    if-ne v1, v2, :cond_9

    iget v1, p0, Lcom/igexin/download/i;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/igexin/download/i;->c:I

    iput v4, p0, Lcom/igexin/download/i;->d:I

    iget v1, p0, Lcom/igexin/download/i;->c:I

    array-length v2, v0

    if-ge v1, v2, :cond_1

    iget v1, p0, Lcom/igexin/download/i;->c:I

    aget-char v1, v0, v1

    if-eq v1, v3, :cond_8

    iget v1, p0, Lcom/igexin/download/i;->c:I

    aget-char v0, v0, v1

    const/16 v1, 0x3e

    if-ne v0, v1, :cond_1

    :cond_8
    iget v0, p0, Lcom/igexin/download/i;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/igexin/download/i;->c:I

    goto/16 :goto_1

    :cond_9
    iget v1, p0, Lcom/igexin/download/i;->c:I

    aget-char v1, v0, v1

    const/16 v2, 0x21

    if-ne v1, v2, :cond_b

    iget v1, p0, Lcom/igexin/download/i;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/igexin/download/i;->c:I

    iput v4, p0, Lcom/igexin/download/i;->d:I

    iget v1, p0, Lcom/igexin/download/i;->c:I

    array-length v2, v0

    if-ge v1, v2, :cond_a

    iget v1, p0, Lcom/igexin/download/i;->c:I

    aget-char v0, v0, v1

    if-ne v0, v3, :cond_a

    iget v0, p0, Lcom/igexin/download/i;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/igexin/download/i;->c:I

    goto/16 :goto_1

    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unexpected character after !"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    iget v1, p0, Lcom/igexin/download/i;->c:I

    aget-char v1, v0, v1

    invoke-static {v1}, Lcom/igexin/download/i;->a(C)Z

    move-result v1

    if-eqz v1, :cond_12

    iget v1, p0, Lcom/igexin/download/i;->c:I

    iget v2, p0, Lcom/igexin/download/i;->c:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/igexin/download/i;->c:I

    :goto_2
    iget v2, p0, Lcom/igexin/download/i;->c:I

    array-length v3, v0

    if-ge v2, v3, :cond_c

    iget v2, p0, Lcom/igexin/download/i;->c:I

    aget-char v2, v0, v2

    invoke-static {v2}, Lcom/igexin/download/i;->b(C)Z

    move-result v2

    if-eqz v2, :cond_c

    iget v2, p0, Lcom/igexin/download/i;->c:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/igexin/download/i;->c:I

    goto :goto_2

    :cond_c
    iget-object v0, p0, Lcom/igexin/download/i;->a:Ljava/lang/String;

    iget v2, p0, Lcom/igexin/download/i;->c:I

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iget v2, p0, Lcom/igexin/download/i;->c:I

    sub-int v1, v2, v1

    if-gt v1, v6, :cond_10

    const-string v1, "IS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    const/4 v0, 0x7

    iput v0, p0, Lcom/igexin/download/i;->d:I

    goto/16 :goto_1

    :cond_d
    const-string v1, "OR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    const-string v1, "AND"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    :cond_e
    const/4 v0, 0x3

    iput v0, p0, Lcom/igexin/download/i;->d:I

    goto/16 :goto_1

    :cond_f
    const-string v1, "NULL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    const/16 v0, 0x8

    iput v0, p0, Lcom/igexin/download/i;->d:I

    goto/16 :goto_1

    :cond_10
    iget-object v1, p0, Lcom/igexin/download/i;->b:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    iput v6, p0, Lcom/igexin/download/i;->d:I

    goto/16 :goto_1

    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unrecognized column or keyword"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    iget v1, p0, Lcom/igexin/download/i;->c:I

    aget-char v1, v0, v1

    if-ne v1, v5, :cond_16

    iget v1, p0, Lcom/igexin/download/i;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/igexin/download/i;->c:I

    :goto_3
    iget v1, p0, Lcom/igexin/download/i;->c:I

    array-length v2, v0

    if-ge v1, v2, :cond_14

    iget v1, p0, Lcom/igexin/download/i;->c:I

    aget-char v1, v0, v1

    if-ne v1, v5, :cond_13

    iget v1, p0, Lcom/igexin/download/i;->c:I

    add-int/lit8 v1, v1, 0x1

    array-length v2, v0

    if-ge v1, v2, :cond_14

    iget v1, p0, Lcom/igexin/download/i;->c:I

    add-int/lit8 v1, v1, 0x1

    aget-char v1, v0, v1

    if-ne v1, v5, :cond_14

    iget v1, p0, Lcom/igexin/download/i;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/igexin/download/i;->c:I

    :cond_13
    iget v1, p0, Lcom/igexin/download/i;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/igexin/download/i;->c:I

    goto :goto_3

    :cond_14
    iget v1, p0, Lcom/igexin/download/i;->c:I

    array-length v0, v0

    if-ne v1, v0, :cond_15

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unterminated string"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_15
    iget v0, p0, Lcom/igexin/download/i;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/igexin/download/i;->c:I

    iput v7, p0, Lcom/igexin/download/i;->d:I

    goto/16 :goto_1

    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "illegal character"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
