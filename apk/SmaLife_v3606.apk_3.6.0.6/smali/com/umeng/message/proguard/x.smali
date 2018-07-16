.class public Lcom/umeng/message/proguard/x;
.super Ljava/lang/Object;
.source "UTMCRC4.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/message/proguard/x$1;,
        Lcom/umeng/message/proguard/x$a;
    }
.end annotation


# direct methods
.method private static a(Ljava/lang/String;)Lcom/umeng/message/proguard/x$a;
    .locals 9

    .prologue
    const/16 v8, 0x100

    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 28
    if-eqz p0, :cond_2

    .line 29
    new-instance v1, Lcom/umeng/message/proguard/x$a;

    invoke-direct {v1, v0}, Lcom/umeng/message/proguard/x$a;-><init>(Lcom/umeng/message/proguard/x$1;)V

    move v3, v2

    .line 33
    :goto_0
    if-ge v3, v8, :cond_0

    .line 34
    iget-object v4, v1, Lcom/umeng/message/proguard/x$a;->a:[I

    aput v3, v4, v3

    .line 33
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 36
    :cond_0
    iput v2, v1, Lcom/umeng/message/proguard/x$a;->b:I

    .line 37
    iput v2, v1, Lcom/umeng/message/proguard/x$a;->c:I

    move v3, v2

    move v4, v2

    .line 41
    :goto_1
    if-ge v2, v8, :cond_1

    .line 42
    :try_start_0
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    iget-object v6, v1, Lcom/umeng/message/proguard/x$a;->a:[I

    aget v6, v6, v2

    add-int/2addr v5, v6

    add-int/2addr v3, v5

    rem-int/lit16 v3, v3, 0x100

    .line 43
    iget-object v5, v1, Lcom/umeng/message/proguard/x$a;->a:[I

    aget v5, v5, v2

    .line 44
    iget-object v6, v1, Lcom/umeng/message/proguard/x$a;->a:[I

    iget-object v7, v1, Lcom/umeng/message/proguard/x$a;->a:[I

    aget v7, v7, v3

    aput v7, v6, v2

    .line 45
    iget-object v6, v1, Lcom/umeng/message/proguard/x$a;->a:[I

    aput v5, v6, v3

    .line 46
    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    rem-int/2addr v4, v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    move-object v0, v1

    .line 53
    :cond_2
    :goto_2
    return-object v0

    .line 48
    :catch_0
    move-exception v1

    goto :goto_2
.end method

.method private static a([BLcom/umeng/message/proguard/x$a;)[B
    .locals 6

    .prologue
    .line 57
    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    .line 62
    iget v2, p1, Lcom/umeng/message/proguard/x$a;->b:I

    .line 63
    iget v1, p1, Lcom/umeng/message/proguard/x$a;->c:I

    .line 65
    const/4 v0, 0x0

    :goto_0
    array-length v3, p0

    if-ge v0, v3, :cond_0

    .line 67
    add-int/lit8 v2, v2, 0x1

    rem-int/lit16 v2, v2, 0x100

    .line 68
    iget-object v3, p1, Lcom/umeng/message/proguard/x$a;->a:[I

    aget v3, v3, v2

    add-int/2addr v1, v3

    rem-int/lit16 v1, v1, 0x100

    .line 69
    iget-object v3, p1, Lcom/umeng/message/proguard/x$a;->a:[I

    aget v3, v3, v2

    .line 70
    iget-object v4, p1, Lcom/umeng/message/proguard/x$a;->a:[I

    iget-object v5, p1, Lcom/umeng/message/proguard/x$a;->a:[I

    aget v5, v5, v1

    aput v5, v4, v2

    .line 71
    iget-object v4, p1, Lcom/umeng/message/proguard/x$a;->a:[I

    aput v3, v4, v1

    .line 72
    iget-object v3, p1, Lcom/umeng/message/proguard/x$a;->a:[I

    aget v3, v3, v2

    iget-object v4, p1, Lcom/umeng/message/proguard/x$a;->a:[I

    aget v4, v4, v1

    add-int/2addr v3, v4

    rem-int/lit16 v3, v3, 0x100

    .line 74
    aget-byte v4, p0, v0

    iget-object v5, p1, Lcom/umeng/message/proguard/x$a;->a:[I

    aget v3, v5, v3

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, p0, v0

    .line 65
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 76
    :cond_0
    iput v2, p1, Lcom/umeng/message/proguard/x$a;->b:I

    .line 77
    iput v1, p1, Lcom/umeng/message/proguard/x$a;->c:I

    .line 80
    :goto_1
    return-object p0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1
.end method

.method public static a([BLjava/lang/String;)[B
    .locals 1

    .prologue
    .line 18
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 19
    invoke-static {p1}, Lcom/umeng/message/proguard/x;->a(Ljava/lang/String;)Lcom/umeng/message/proguard/x$a;

    move-result-object v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    invoke-static {p0, v0}, Lcom/umeng/message/proguard/x;->a([BLcom/umeng/message/proguard/x$a;)[B

    move-result-object v0

    .line 24
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
