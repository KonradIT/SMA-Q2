.class Lcom/google/protobuf/d;
.super Lcom/google/protobuf/ByteString;
.source "RopeByteString.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/d$1;,
        Lcom/google/protobuf/d$d;,
        Lcom/google/protobuf/d$c;,
        Lcom/google/protobuf/d$b;,
        Lcom/google/protobuf/d$a;
    }
.end annotation


# static fields
.field private static final e:[I


# instance fields
.field private final f:I

.field private final g:Lcom/google/protobuf/ByteString;

.field private final h:Lcom/google/protobuf/ByteString;

.field private final i:I

.field private final j:I

.field private k:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 89
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move v1, v0

    .line 97
    :goto_0
    if-lez v0, :cond_0

    .line 98
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    add-int/2addr v1, v0

    move v4, v1

    move v1, v0

    move v0, v4

    .line 102
    goto :goto_0

    .line 106
    :cond_0
    const v0, 0x7fffffff

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/protobuf/d;->e:[I

    .line 108
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    sget-object v0, Lcom/google/protobuf/d;->e:[I

    array-length v0, v0

    if-ge v1, v0, :cond_1

    .line 110
    sget-object v3, Lcom/google/protobuf/d;->e:[I

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, v3, v1

    .line 108
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 112
    :cond_1
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ByteString;)V
    .locals 2

    .prologue
    .line 129
    invoke-direct {p0}, Lcom/google/protobuf/ByteString;-><init>()V

    .line 529
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protobuf/d;->k:I

    .line 130
    iput-object p1, p0, Lcom/google/protobuf/d;->g:Lcom/google/protobuf/ByteString;

    .line 131
    iput-object p2, p0, Lcom/google/protobuf/d;->h:Lcom/google/protobuf/ByteString;

    .line 132
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->size()I

    move-result v0

    iput v0, p0, Lcom/google/protobuf/d;->i:I

    .line 133
    iget v0, p0, Lcom/google/protobuf/d;->i:I

    invoke-virtual {p2}, Lcom/google/protobuf/ByteString;->size()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/d;->f:I

    .line 134
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->b()I

    move-result v0

    invoke-virtual {p2}, Lcom/google/protobuf/ByteString;->b()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protobuf/d;->j:I

    .line 135
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/d$1;)V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/d;-><init>(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static a(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/16 v5, 0x80

    .line 153
    instance-of v0, p0, Lcom/google/protobuf/d;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/google/protobuf/d;

    .line 155
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 201
    :goto_1
    return-object p0

    :cond_0
    move-object v0, v1

    .line 153
    goto :goto_0

    .line 157
    :cond_1
    invoke-virtual {p0}, Lcom/google/protobuf/ByteString;->size()I

    move-result v2

    if-nez v2, :cond_2

    move-object p0, p1

    .line 158
    goto :goto_1

    .line 160
    :cond_2
    invoke-virtual {p0}, Lcom/google/protobuf/ByteString;->size()I

    move-result v2

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->size()I

    move-result v3

    add-int/2addr v2, v3

    .line 161
    if-ge v2, v5, :cond_3

    .line 164
    invoke-static {p0, p1}, Lcom/google/protobuf/d;->c(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/c;

    move-result-object p0

    goto :goto_1

    .line 165
    :cond_3
    if-eqz v0, :cond_4

    iget-object v3, v0, Lcom/google/protobuf/d;->h:Lcom/google/protobuf/ByteString;

    invoke-virtual {v3}, Lcom/google/protobuf/ByteString;->size()I

    move-result v3

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->size()I

    move-result v4

    add-int/2addr v3, v4

    if-ge v3, v5, :cond_4

    .line 177
    iget-object v1, v0, Lcom/google/protobuf/d;->h:Lcom/google/protobuf/ByteString;

    invoke-static {v1, p1}, Lcom/google/protobuf/d;->c(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/c;

    move-result-object v1

    .line 178
    new-instance p0, Lcom/google/protobuf/d;

    iget-object v0, v0, Lcom/google/protobuf/d;->g:Lcom/google/protobuf/ByteString;

    invoke-direct {p0, v0, v1}, Lcom/google/protobuf/d;-><init>(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ByteString;)V

    goto :goto_1

    .line 179
    :cond_4
    if-eqz v0, :cond_5

    iget-object v3, v0, Lcom/google/protobuf/d;->g:Lcom/google/protobuf/ByteString;

    invoke-virtual {v3}, Lcom/google/protobuf/ByteString;->b()I

    move-result v3

    iget-object v4, v0, Lcom/google/protobuf/d;->h:Lcom/google/protobuf/ByteString;

    invoke-virtual {v4}, Lcom/google/protobuf/ByteString;->b()I

    move-result v4

    if-le v3, v4, :cond_5

    invoke-virtual {v0}, Lcom/google/protobuf/d;->b()I

    move-result v3

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->b()I

    move-result v4

    if-le v3, v4, :cond_5

    .line 187
    new-instance v1, Lcom/google/protobuf/d;

    iget-object v2, v0, Lcom/google/protobuf/d;->h:Lcom/google/protobuf/ByteString;

    invoke-direct {v1, v2, p1}, Lcom/google/protobuf/d;-><init>(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ByteString;)V

    .line 188
    new-instance p0, Lcom/google/protobuf/d;

    iget-object v0, v0, Lcom/google/protobuf/d;->g:Lcom/google/protobuf/ByteString;

    invoke-direct {p0, v0, v1}, Lcom/google/protobuf/d;-><init>(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ByteString;)V

    goto :goto_1

    .line 192
    :cond_5
    invoke-virtual {p0}, Lcom/google/protobuf/ByteString;->b()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->b()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 193
    sget-object v3, Lcom/google/protobuf/d;->e:[I

    aget v0, v3, v0

    if-lt v2, v0, :cond_6

    .line 195
    new-instance v0, Lcom/google/protobuf/d;

    invoke-direct {v0, p0, p1}, Lcom/google/protobuf/d;-><init>(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ByteString;)V

    move-object p0, v0

    goto :goto_1

    .line 197
    :cond_6
    new-instance v0, Lcom/google/protobuf/d$a;

    invoke-direct {v0, v1}, Lcom/google/protobuf/d$a;-><init>(Lcom/google/protobuf/d$1;)V

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/d$a;->a(Lcom/google/protobuf/d$a;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    move-result-object p0

    goto/16 :goto_1
.end method

.method static synthetic a(Lcom/google/protobuf/d;)Lcom/google/protobuf/ByteString;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/protobuf/d;->g:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method private a(Lcom/google/protobuf/ByteString;)Z
    .locals 13

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 479
    .line 480
    new-instance v7, Lcom/google/protobuf/d$b;

    invoke-direct {v7, p0, v1}, Lcom/google/protobuf/d$b;-><init>(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/d$1;)V

    .line 481
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/c;

    .line 484
    new-instance v8, Lcom/google/protobuf/d$b;

    invoke-direct {v8, p1, v1}, Lcom/google/protobuf/d$b;-><init>(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/d$1;)V

    .line 485
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/c;

    move-object v3, v1

    move v4, v2

    move-object v5, v0

    move v6, v2

    move v0, v2

    .line 489
    :goto_0
    invoke-virtual {v5}, Lcom/google/protobuf/c;->size()I

    move-result v1

    sub-int v9, v1, v6

    .line 490
    invoke-virtual {v3}, Lcom/google/protobuf/c;->size()I

    move-result v1

    sub-int v10, v1, v4

    .line 491
    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 494
    if-nez v6, :cond_0

    invoke-virtual {v5, v3, v4, v11}, Lcom/google/protobuf/c;->a(Lcom/google/protobuf/c;II)Z

    move-result v1

    .line 497
    :goto_1
    if-nez v1, :cond_1

    .line 504
    :goto_2
    return v2

    .line 494
    :cond_0
    invoke-virtual {v3, v5, v6, v11}, Lcom/google/protobuf/c;->a(Lcom/google/protobuf/c;II)Z

    move-result v1

    goto :goto_1

    .line 501
    :cond_1
    add-int v1, v0, v11

    .line 502
    iget v0, p0, Lcom/google/protobuf/d;->f:I

    if-lt v1, v0, :cond_3

    .line 503
    iget v0, p0, Lcom/google/protobuf/d;->f:I

    if-ne v1, v0, :cond_2

    .line 504
    const/4 v2, 0x1

    goto :goto_2

    .line 506
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 509
    :cond_3
    if-ne v11, v9, :cond_4

    .line 511
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/c;

    move-object v5, v0

    move v6, v2

    .line 515
    :goto_3
    if-ne v11, v10, :cond_5

    .line 517
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/c;

    move v3, v2

    :goto_4
    move v4, v3

    move-object v3, v0

    move v0, v1

    .line 521
    goto :goto_0

    .line 513
    :cond_4
    add-int/2addr v6, v11

    goto :goto_3

    .line 519
    :cond_5
    add-int v0, v4, v11

    move-object v12, v3

    move v3, v0

    move-object v0, v12

    goto :goto_4
.end method

.method static synthetic a()[I
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lcom/google/protobuf/d;->e:[I

    return-object v0
.end method

.method static synthetic b(Lcom/google/protobuf/d;)Lcom/google/protobuf/ByteString;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/protobuf/d;->h:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method static b(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/d;
    .locals 1

    .prologue
    .line 234
    new-instance v0, Lcom/google/protobuf/d;

    invoke-direct {v0, p0, p1}, Lcom/google/protobuf/d;-><init>(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ByteString;)V

    return-object v0
.end method

.method private static c(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/c;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 214
    invoke-virtual {p0}, Lcom/google/protobuf/ByteString;->size()I

    move-result v0

    .line 215
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->size()I

    move-result v1

    .line 216
    add-int v2, v0, v1

    new-array v2, v2, [B

    .line 217
    invoke-virtual {p0, v2, v3, v3, v0}, Lcom/google/protobuf/ByteString;->copyTo([BIII)V

    .line 218
    invoke-virtual {p1, v2, v3, v0, v1}, Lcom/google/protobuf/ByteString;->copyTo([BIII)V

    .line 219
    new-instance v0, Lcom/google/protobuf/c;

    invoke-direct {v0, v2}, Lcom/google/protobuf/c;-><init>([B)V

    return-object v0
.end method


# virtual methods
.method protected a(III)I
    .locals 4

    .prologue
    .line 422
    add-int v0, p2, p3

    .line 423
    iget v1, p0, Lcom/google/protobuf/d;->i:I

    if-gt v0, v1, :cond_0

    .line 424
    iget-object v0, p0, Lcom/google/protobuf/d;->g:Lcom/google/protobuf/ByteString;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/protobuf/ByteString;->a(III)I

    move-result v0

    .line 430
    :goto_0
    return v0

    .line 425
    :cond_0
    iget v0, p0, Lcom/google/protobuf/d;->i:I

    if-lt p2, v0, :cond_1

    .line 426
    iget-object v0, p0, Lcom/google/protobuf/d;->h:Lcom/google/protobuf/ByteString;

    iget v1, p0, Lcom/google/protobuf/d;->i:I

    sub-int v1, p2, v1

    invoke-virtual {v0, p1, v1, p3}, Lcom/google/protobuf/ByteString;->a(III)I

    move-result v0

    goto :goto_0

    .line 428
    :cond_1
    iget v0, p0, Lcom/google/protobuf/d;->i:I

    sub-int/2addr v0, p2

    .line 429
    iget-object v1, p0, Lcom/google/protobuf/d;->g:Lcom/google/protobuf/ByteString;

    invoke-virtual {v1, p1, p2, v0}, Lcom/google/protobuf/ByteString;->a(III)I

    move-result v1

    .line 430
    iget-object v2, p0, Lcom/google/protobuf/d;->h:Lcom/google/protobuf/ByteString;

    const/4 v3, 0x0

    sub-int v0, p3, v0

    invoke-virtual {v2, v1, v3, v0}, Lcom/google/protobuf/ByteString;->a(III)I

    move-result v0

    goto :goto_0
.end method

.method protected a([BIII)V
    .locals 4

    .prologue
    .line 360
    add-int v0, p2, p4

    iget v1, p0, Lcom/google/protobuf/d;->i:I

    if-gt v0, v1, :cond_0

    .line 361
    iget-object v0, p0, Lcom/google/protobuf/d;->g:Lcom/google/protobuf/ByteString;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/protobuf/ByteString;->a([BIII)V

    .line 371
    :goto_0
    return-void

    .line 362
    :cond_0
    iget v0, p0, Lcom/google/protobuf/d;->i:I

    if-lt p2, v0, :cond_1

    .line 363
    iget-object v0, p0, Lcom/google/protobuf/d;->h:Lcom/google/protobuf/ByteString;

    iget v1, p0, Lcom/google/protobuf/d;->i:I

    sub-int v1, p2, v1

    invoke-virtual {v0, p1, v1, p3, p4}, Lcom/google/protobuf/ByteString;->a([BIII)V

    goto :goto_0

    .line 366
    :cond_1
    iget v0, p0, Lcom/google/protobuf/d;->i:I

    sub-int/2addr v0, p2

    .line 367
    iget-object v1, p0, Lcom/google/protobuf/d;->g:Lcom/google/protobuf/ByteString;

    invoke-virtual {v1, p1, p2, p3, v0}, Lcom/google/protobuf/ByteString;->a([BIII)V

    .line 368
    iget-object v1, p0, Lcom/google/protobuf/d;->h:Lcom/google/protobuf/ByteString;

    const/4 v2, 0x0

    add-int v3, p3, v0

    sub-int v0, p4, v0

    invoke-virtual {v1, p1, v2, v3, v0}, Lcom/google/protobuf/ByteString;->a([BIII)V

    goto :goto_0
.end method

.method public asReadOnlyByteBuffer()Ljava/nio/ByteBuffer;
    .locals 1

    .prologue
    .line 381
    invoke-virtual {p0}, Lcom/google/protobuf/d;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 382
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public asReadOnlyByteBufferList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 389
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 390
    new-instance v1, Lcom/google/protobuf/d$b;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/protobuf/d$b;-><init>(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/d$1;)V

    .line 391
    :goto_0
    invoke-virtual {v1}, Lcom/google/protobuf/d$b;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 392
    invoke-virtual {v1}, Lcom/google/protobuf/d$b;->a()Lcom/google/protobuf/c;

    move-result-object v2

    .line 393
    invoke-virtual {v2}, Lcom/google/protobuf/c;->asReadOnlyByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 395
    :cond_0
    return-object v0
.end method

.method protected b()I
    .locals 1

    .prologue
    .line 277
    iget v0, p0, Lcom/google/protobuf/d;->j:I

    return v0
.end method

.method protected b(III)I
    .locals 4

    .prologue
    .line 553
    add-int v0, p2, p3

    .line 554
    iget v1, p0, Lcom/google/protobuf/d;->i:I

    if-gt v0, v1, :cond_0

    .line 555
    iget-object v0, p0, Lcom/google/protobuf/d;->g:Lcom/google/protobuf/ByteString;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/protobuf/ByteString;->b(III)I

    move-result v0

    .line 561
    :goto_0
    return v0

    .line 556
    :cond_0
    iget v0, p0, Lcom/google/protobuf/d;->i:I

    if-lt p2, v0, :cond_1

    .line 557
    iget-object v0, p0, Lcom/google/protobuf/d;->h:Lcom/google/protobuf/ByteString;

    iget v1, p0, Lcom/google/protobuf/d;->i:I

    sub-int v1, p2, v1

    invoke-virtual {v0, p1, v1, p3}, Lcom/google/protobuf/ByteString;->b(III)I

    move-result v0

    goto :goto_0

    .line 559
    :cond_1
    iget v0, p0, Lcom/google/protobuf/d;->i:I

    sub-int/2addr v0, p2

    .line 560
    iget-object v1, p0, Lcom/google/protobuf/d;->g:Lcom/google/protobuf/ByteString;

    invoke-virtual {v1, p1, p2, v0}, Lcom/google/protobuf/ByteString;->b(III)I

    move-result v1

    .line 561
    iget-object v2, p0, Lcom/google/protobuf/d;->h:Lcom/google/protobuf/ByteString;

    const/4 v3, 0x0

    sub-int v0, p3, v0

    invoke-virtual {v2, v1, v3, v0}, Lcom/google/protobuf/ByteString;->b(III)I

    move-result v0

    goto :goto_0
.end method

.method public byteAt(I)B
    .locals 3

    .prologue
    .line 249
    if-gez p1, :cond_0

    .line 250
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Index < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 252
    :cond_0
    iget v0, p0, Lcom/google/protobuf/d;->f:I

    if-le p1, v0, :cond_1

    .line 253
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Index > length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/protobuf/d;->f:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 259
    :cond_1
    iget v0, p0, Lcom/google/protobuf/d;->i:I

    if-ge p1, v0, :cond_2

    .line 260
    iget-object v0, p0, Lcom/google/protobuf/d;->g:Lcom/google/protobuf/ByteString;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/ByteString;->byteAt(I)B

    move-result v0

    .line 264
    :goto_0
    return v0

    .line 262
    :cond_2
    iget-object v0, p0, Lcom/google/protobuf/d;->h:Lcom/google/protobuf/ByteString;

    iget v1, p0, Lcom/google/protobuf/d;->i:I

    sub-int v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/ByteString;->byteAt(I)B

    move-result v0

    goto :goto_0
.end method

.method protected c()Z
    .locals 3

    .prologue
    .line 290
    iget v0, p0, Lcom/google/protobuf/d;->f:I

    sget-object v1, Lcom/google/protobuf/d;->e:[I

    iget v2, p0, Lcom/google/protobuf/d;->j:I

    aget v1, v1, v2

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public copyTo(Ljava/nio/ByteBuffer;)V
    .locals 1

    .prologue
    .line 375
    iget-object v0, p0, Lcom/google/protobuf/d;->g:Lcom/google/protobuf/ByteString;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/ByteString;->copyTo(Ljava/nio/ByteBuffer;)V

    .line 376
    iget-object v0, p0, Lcom/google/protobuf/d;->h:Lcom/google/protobuf/ByteString;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/ByteString;->copyTo(Ljava/nio/ByteBuffer;)V

    .line 377
    return-void
.end method

.method protected d()I
    .locals 1

    .prologue
    .line 548
    iget v0, p0, Lcom/google/protobuf/d;->k:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 439
    if-ne p1, p0, :cond_1

    .line 466
    :cond_0
    :goto_0
    return v0

    .line 442
    :cond_1
    instance-of v2, p1, Lcom/google/protobuf/ByteString;

    if-nez v2, :cond_2

    move v0, v1

    .line 443
    goto :goto_0

    .line 446
    :cond_2
    check-cast p1, Lcom/google/protobuf/ByteString;

    .line 447
    iget v2, p0, Lcom/google/protobuf/d;->f:I

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->size()I

    move-result v3

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 448
    goto :goto_0

    .line 450
    :cond_3
    iget v2, p0, Lcom/google/protobuf/d;->f:I

    if-eqz v2, :cond_0

    .line 459
    iget v0, p0, Lcom/google/protobuf/d;->k:I

    if-eqz v0, :cond_4

    .line 460
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->d()I

    move-result v0

    .line 461
    if-eqz v0, :cond_4

    iget v2, p0, Lcom/google/protobuf/d;->k:I

    if-eq v2, v0, :cond_4

    move v0, v1

    .line 462
    goto :goto_0

    .line 466
    :cond_4
    invoke-direct {p0, p1}, Lcom/google/protobuf/d;->a(Lcom/google/protobuf/ByteString;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 533
    iget v0, p0, Lcom/google/protobuf/d;->k:I

    .line 535
    if-nez v0, :cond_1

    .line 536
    iget v0, p0, Lcom/google/protobuf/d;->f:I

    .line 537
    const/4 v1, 0x0

    iget v2, p0, Lcom/google/protobuf/d;->f:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/protobuf/d;->b(III)I

    move-result v0

    .line 538
    if-nez v0, :cond_0

    .line 539
    const/4 v0, 0x1

    .line 541
    :cond_0
    iput v0, p0, Lcom/google/protobuf/d;->k:I

    .line 543
    :cond_1
    return v0
.end method

.method public isValidUtf8()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 415
    iget-object v1, p0, Lcom/google/protobuf/d;->g:Lcom/google/protobuf/ByteString;

    iget v2, p0, Lcom/google/protobuf/d;->i:I

    invoke-virtual {v1, v0, v0, v2}, Lcom/google/protobuf/ByteString;->a(III)I

    move-result v1

    .line 416
    iget-object v2, p0, Lcom/google/protobuf/d;->h:Lcom/google/protobuf/ByteString;

    iget-object v3, p0, Lcom/google/protobuf/d;->h:Lcom/google/protobuf/ByteString;

    invoke-virtual {v3}, Lcom/google/protobuf/ByteString;->size()I

    move-result v3

    invoke-virtual {v2, v1, v0, v3}, Lcom/google/protobuf/ByteString;->a(III)I

    move-result v1

    .line 417
    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public iterator()Lcom/google/protobuf/ByteString$ByteIterator;
    .locals 2

    .prologue
    .line 765
    new-instance v0, Lcom/google/protobuf/d$c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/protobuf/d$c;-><init>(Lcom/google/protobuf/d;Lcom/google/protobuf/d$1;)V

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/google/protobuf/d;->iterator()Lcom/google/protobuf/ByteString$ByteIterator;

    move-result-object v0

    return-object v0
.end method

.method public newCodedInput()Lcom/google/protobuf/CodedInputStream;
    .locals 1

    .prologue
    .line 570
    new-instance v0, Lcom/google/protobuf/d$d;

    invoke-direct {v0, p0}, Lcom/google/protobuf/d$d;-><init>(Lcom/google/protobuf/d;)V

    invoke-static {v0}, Lcom/google/protobuf/CodedInputStream;->newInstance(Ljava/io/InputStream;)Lcom/google/protobuf/CodedInputStream;

    move-result-object v0

    return-object v0
.end method

.method public newInput()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 575
    new-instance v0, Lcom/google/protobuf/d$d;

    invoke-direct {v0, p0}, Lcom/google/protobuf/d$d;-><init>(Lcom/google/protobuf/d;)V

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 269
    iget v0, p0, Lcom/google/protobuf/d;->f:I

    return v0
.end method

.method public substring(II)Lcom/google/protobuf/ByteString;
    .locals 4

    .prologue
    .line 310
    if-gez p1, :cond_0

    .line 311
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Beginning index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " < 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 314
    :cond_0
    iget v0, p0, Lcom/google/protobuf/d;->f:I

    if-le p2, v0, :cond_1

    .line 315
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "End index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/protobuf/d;->f:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 318
    :cond_1
    sub-int v0, p2, p1

    .line 319
    if-gez v0, :cond_2

    .line 320
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Beginning index larger than ending index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 326
    :cond_2
    if-nez v0, :cond_4

    .line 328
    sget-object p0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    .line 351
    :cond_3
    :goto_0
    return-object p0

    .line 329
    :cond_4
    iget v1, p0, Lcom/google/protobuf/d;->f:I

    if-eq v0, v1, :cond_3

    .line 334
    iget v0, p0, Lcom/google/protobuf/d;->i:I

    if-gt p2, v0, :cond_5

    .line 336
    iget-object v0, p0, Lcom/google/protobuf/d;->g:Lcom/google/protobuf/ByteString;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/ByteString;->substring(II)Lcom/google/protobuf/ByteString;

    move-result-object p0

    goto :goto_0

    .line 337
    :cond_5
    iget v0, p0, Lcom/google/protobuf/d;->i:I

    if-lt p1, v0, :cond_6

    .line 339
    iget-object v0, p0, Lcom/google/protobuf/d;->h:Lcom/google/protobuf/ByteString;

    iget v1, p0, Lcom/google/protobuf/d;->i:I

    sub-int v1, p1, v1

    iget v2, p0, Lcom/google/protobuf/d;->i:I

    sub-int v2, p2, v2

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/ByteString;->substring(II)Lcom/google/protobuf/ByteString;

    move-result-object p0

    goto :goto_0

    .line 343
    :cond_6
    iget-object v0, p0, Lcom/google/protobuf/d;->g:Lcom/google/protobuf/ByteString;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/ByteString;->substring(I)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 344
    iget-object v1, p0, Lcom/google/protobuf/d;->h:Lcom/google/protobuf/ByteString;

    const/4 v2, 0x0

    iget v3, p0, Lcom/google/protobuf/d;->i:I

    sub-int v3, p2, v3

    invoke-virtual {v1, v2, v3}, Lcom/google/protobuf/ByteString;->substring(II)Lcom/google/protobuf/ByteString;

    move-result-object v1

    .line 348
    new-instance p0, Lcom/google/protobuf/d;

    invoke-direct {p0, v0, v1}, Lcom/google/protobuf/d;-><init>(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ByteString;)V

    goto :goto_0
.end method

.method public toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 407
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/protobuf/d;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 400
    iget-object v0, p0, Lcom/google/protobuf/d;->g:Lcom/google/protobuf/ByteString;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/ByteString;->writeTo(Ljava/io/OutputStream;)V

    .line 401
    iget-object v0, p0, Lcom/google/protobuf/d;->h:Lcom/google/protobuf/ByteString;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/ByteString;->writeTo(Ljava/io/OutputStream;)V

    .line 402
    return-void
.end method
