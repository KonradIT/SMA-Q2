.class public abstract Lcom/umeng/message/proguard/d;
.super Ljava/lang/Object;
.source "BaseNCodec.java"


# static fields
.field private static final a:I = 0x2

.field public static final b:I = 0x4c

.field public static final c:I = 0x40

.field protected static final d:I = 0xff

.field protected static final e:B = 0x3dt

.field private static final m:I = 0x2000


# instance fields
.field protected final f:B

.field protected final g:I

.field protected h:[B

.field protected i:I

.field protected j:Z

.field protected k:I

.field protected l:I

.field private final n:I

.field private final o:I

.field private final p:I

.field private q:I


# direct methods
.method protected constructor <init>(IIII)V
    .locals 1

    .prologue
    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    const/16 v0, 0x3d

    iput-byte v0, p0, Lcom/umeng/message/proguard/d;->f:B

    .line 132
    iput p1, p0, Lcom/umeng/message/proguard/d;->n:I

    .line 133
    iput p2, p0, Lcom/umeng/message/proguard/d;->o:I

    .line 134
    if-lez p3, :cond_0

    if-lez p4, :cond_0

    div-int v0, p3, p2

    mul-int/2addr v0, p2

    :goto_0
    iput v0, p0, Lcom/umeng/message/proguard/d;->g:I

    .line 135
    iput p4, p0, Lcom/umeng/message/proguard/d;->p:I

    .line 136
    return-void

    .line 134
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 167
    iget-object v0, p0, Lcom/umeng/message/proguard/d;->h:[B

    if-nez v0, :cond_0

    .line 168
    invoke-virtual {p0}, Lcom/umeng/message/proguard/d;->d()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/umeng/message/proguard/d;->h:[B

    .line 169
    iput v3, p0, Lcom/umeng/message/proguard/d;->i:I

    .line 170
    iput v3, p0, Lcom/umeng/message/proguard/d;->q:I

    .line 176
    :goto_0
    return-void

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/umeng/message/proguard/d;->h:[B

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    .line 173
    iget-object v1, p0, Lcom/umeng/message/proguard/d;->h:[B

    iget-object v2, p0, Lcom/umeng/message/proguard/d;->h:[B

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 174
    iput-object v0, p0, Lcom/umeng/message/proguard/d;->h:[B

    goto :goto_0
.end method

.method protected static c(B)Z
    .locals 1

    .prologue
    .line 222
    sparse-switch p0, :sswitch_data_0

    .line 229
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 227
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 222
    nop

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0xa -> :sswitch_0
        0xd -> :sswitch_0
        0x20 -> :sswitch_0
    .end sparse-switch
.end method

.method private e()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 237
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/message/proguard/d;->h:[B

    .line 238
    iput v1, p0, Lcom/umeng/message/proguard/d;->i:I

    .line 239
    iput v1, p0, Lcom/umeng/message/proguard/d;->q:I

    .line 240
    iput v1, p0, Lcom/umeng/message/proguard/d;->k:I

    .line 241
    iput v1, p0, Lcom/umeng/message/proguard/d;->l:I

    .line 242
    iput-boolean v1, p0, Lcom/umeng/message/proguard/d;->j:Z

    .line 243
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 256
    instance-of v0, p1, [B

    if-nez v0, :cond_0

    .line 257
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Parameter supplied to Base-N encode is not a byte[]"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 259
    :cond_0
    check-cast p1, [B

    check-cast p1, [B

    invoke-virtual {p0, p1}, Lcom/umeng/message/proguard/d;->l([B)[B

    move-result-object v0

    return-object v0
.end method

.method protected a(I)V
    .locals 2

    .prologue
    .line 184
    iget-object v0, p0, Lcom/umeng/message/proguard/d;->h:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/umeng/message/proguard/d;->h:[B

    array-length v0, v0

    iget v1, p0, Lcom/umeng/message/proguard/d;->i:I

    add-int/2addr v1, p1

    if-ge v0, v1, :cond_1

    .line 185
    :cond_0
    invoke-direct {p0}, Lcom/umeng/message/proguard/d;->a()V

    .line 187
    :cond_1
    return-void
.end method

.method abstract a([BII)V
.end method

.method public b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 284
    instance-of v0, p1, [B

    if-eqz v0, :cond_0

    .line 285
    check-cast p1, [B

    check-cast p1, [B

    invoke-virtual {p0, p1}, Lcom/umeng/message/proguard/d;->k([B)[B

    move-result-object v0

    .line 287
    :goto_0
    return-object v0

    .line 286
    :cond_0
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 287
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/umeng/message/proguard/d;->c(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_0

    .line 289
    :cond_1
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Parameter supplied to Base-N decode is not a byte[] or a String"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method abstract b([BII)V
.end method

.method b()Z
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/umeng/message/proguard/d;->h:[B

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract b(B)Z
.end method

.method public b([BZ)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 378
    move v0, v1

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_2

    .line 379
    aget-byte v2, p1, v0

    invoke-virtual {p0, v2}, Lcom/umeng/message/proguard/d;->b(B)Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz p2, :cond_0

    aget-byte v2, p1, v0

    const/16 v3, 0x3d

    if-eq v2, v3, :cond_1

    aget-byte v2, p1, v0

    .line 380
    invoke-static {v2}, Lcom/umeng/message/proguard/d;->c(B)Z

    move-result v2

    if-nez v2, :cond_1

    .line 384
    :cond_0
    :goto_1
    return v1

    .line 378
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 384
    :cond_2
    const/4 v1, 0x1

    goto :goto_1
.end method

.method c()I
    .locals 2

    .prologue
    .line 153
    iget-object v0, p0, Lcom/umeng/message/proguard/d;->h:[B

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/umeng/message/proguard/d;->i:I

    iget v1, p0, Lcom/umeng/message/proguard/d;->q:I

    sub-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method c([BII)I
    .locals 3

    .prologue
    .line 202
    iget-object v0, p0, Lcom/umeng/message/proguard/d;->h:[B

    if-eqz v0, :cond_1

    .line 203
    invoke-virtual {p0}, Lcom/umeng/message/proguard/d;->c()I

    move-result v0

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 204
    iget-object v1, p0, Lcom/umeng/message/proguard/d;->h:[B

    iget v2, p0, Lcom/umeng/message/proguard/d;->q:I

    invoke-static {v1, v2, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 205
    iget v1, p0, Lcom/umeng/message/proguard/d;->q:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/umeng/message/proguard/d;->q:I

    .line 206
    iget v1, p0, Lcom/umeng/message/proguard/d;->q:I

    iget v2, p0, Lcom/umeng/message/proguard/d;->i:I

    if-lt v1, v2, :cond_0

    .line 207
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/umeng/message/proguard/d;->h:[B

    .line 211
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-boolean v0, p0, Lcom/umeng/message/proguard/d;->j:Z

    if-eqz v0, :cond_2

    const/4 v0, -0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c(Ljava/lang/String;)[B
    .locals 1

    .prologue
    .line 301
    invoke-static {p1}, Lcom/umeng/message/proguard/a;->f(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/umeng/message/proguard/d;->k([B)[B

    move-result-object v0

    return-object v0
.end method

.method protected d()I
    .locals 1

    .prologue
    .line 162
    const/16 v0, 0x2000

    return v0
.end method

.method public d(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 397
    invoke-static {p1}, Lcom/umeng/message/proguard/a;->f(Ljava/lang/String;)[B

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/umeng/message/proguard/d;->b([BZ)Z

    move-result v0

    return v0
.end method

.method public j([B)Ljava/lang/String;
    .locals 1

    .prologue
    .line 270
    invoke-virtual {p0, p1}, Lcom/umeng/message/proguard/d;->l([B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/message/proguard/a;->f([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public k([B)[B
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 312
    invoke-direct {p0}, Lcom/umeng/message/proguard/d;->e()V

    .line 313
    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    .line 320
    :cond_0
    :goto_0
    return-object p1

    .line 316
    :cond_1
    array-length v0, p1

    invoke-virtual {p0, p1, v1, v0}, Lcom/umeng/message/proguard/d;->b([BII)V

    .line 317
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v1, v0}, Lcom/umeng/message/proguard/d;->b([BII)V

    .line 318
    iget v0, p0, Lcom/umeng/message/proguard/d;->i:I

    new-array p1, v0, [B

    .line 319
    array-length v0, p1

    invoke-virtual {p0, p1, v1, v0}, Lcom/umeng/message/proguard/d;->c([BII)I

    goto :goto_0
.end method

.method public l([B)[B
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 331
    invoke-direct {p0}, Lcom/umeng/message/proguard/d;->e()V

    .line 332
    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    .line 339
    :cond_0
    :goto_0
    return-object p1

    .line 335
    :cond_1
    array-length v0, p1

    invoke-virtual {p0, p1, v2, v0}, Lcom/umeng/message/proguard/d;->a([BII)V

    .line 336
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v2, v0}, Lcom/umeng/message/proguard/d;->a([BII)V

    .line 337
    iget v0, p0, Lcom/umeng/message/proguard/d;->i:I

    iget v1, p0, Lcom/umeng/message/proguard/d;->q:I

    sub-int/2addr v0, v1

    new-array p1, v0, [B

    .line 338
    array-length v0, p1

    invoke-virtual {p0, p1, v2, v0}, Lcom/umeng/message/proguard/d;->c([BII)I

    goto :goto_0
.end method

.method public m([B)Ljava/lang/String;
    .locals 1

    .prologue
    .line 350
    invoke-virtual {p0, p1}, Lcom/umeng/message/proguard/d;->l([B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/message/proguard/a;->f([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected n([B)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 410
    if-nez p1, :cond_1

    .line 418
    :cond_0
    :goto_0
    return v1

    :cond_1
    move v0, v1

    .line 413
    :goto_1
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 414
    const/16 v2, 0x3d

    aget-byte v3, p1, v0

    if-eq v2, v3, :cond_2

    aget-byte v2, p1, v0

    invoke-virtual {p0, v2}, Lcom/umeng/message/proguard/d;->b(B)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 415
    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    .line 413
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public o([B)J
    .locals 6

    .prologue
    .line 432
    array-length v0, p1

    iget v1, p0, Lcom/umeng/message/proguard/d;->n:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/umeng/message/proguard/d;->n:I

    div-int/2addr v0, v1

    int-to-long v0, v0

    iget v2, p0, Lcom/umeng/message/proguard/d;->o:I

    int-to-long v2, v2

    mul-long/2addr v0, v2

    .line 433
    iget v2, p0, Lcom/umeng/message/proguard/d;->g:I

    if-lez v2, :cond_0

    .line 435
    iget v2, p0, Lcom/umeng/message/proguard/d;->g:I

    int-to-long v2, v2

    add-long/2addr v2, v0

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    iget v4, p0, Lcom/umeng/message/proguard/d;->g:I

    int-to-long v4, v4

    div-long/2addr v2, v4

    iget v4, p0, Lcom/umeng/message/proguard/d;->p:I

    int-to-long v4, v4

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 437
    :cond_0
    return-wide v0
.end method
