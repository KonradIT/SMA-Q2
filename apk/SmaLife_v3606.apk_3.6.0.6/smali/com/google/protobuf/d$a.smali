.class Lcom/google/protobuf/d$a;
.super Ljava/lang/Object;
.source "RopeByteString.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/google/protobuf/ByteString;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 588
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 592
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/google/protobuf/d$a;->a:Ljava/util/Stack;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/d$1;)V
    .locals 0

    .prologue
    .line 588
    invoke-direct {p0}, Lcom/google/protobuf/d$a;-><init>()V

    return-void
.end method

.method private a(I)I
    .locals 1

    .prologue
    .line 681
    invoke-static {}, Lcom/google/protobuf/d;->a()[I

    move-result-object v0

    invoke-static {v0, p1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    .line 682
    if-gez v0, :cond_0

    .line 685
    add-int/lit8 v0, v0, 0x1

    neg-int v0, v0

    .line 686
    add-int/lit8 v0, v0, -0x1

    .line 689
    :cond_0
    return v0
.end method

.method private a(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .locals 4

    .prologue
    .line 595
    invoke-direct {p0, p1}, Lcom/google/protobuf/d$a;->a(Lcom/google/protobuf/ByteString;)V

    .line 596
    invoke-direct {p0, p2}, Lcom/google/protobuf/d$a;->a(Lcom/google/protobuf/ByteString;)V

    .line 599
    iget-object v0, p0, Lcom/google/protobuf/d$a;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/ByteString;

    move-object v1, v0

    .line 600
    :goto_0
    iget-object v0, p0, Lcom/google/protobuf/d$a;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 601
    iget-object v0, p0, Lcom/google/protobuf/d$a;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 602
    new-instance v2, Lcom/google/protobuf/d;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/google/protobuf/d;-><init>(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/d$1;)V

    move-object v1, v2

    .line 603
    goto :goto_0

    .line 606
    :cond_0
    return-object v1
.end method

.method static synthetic a(Lcom/google/protobuf/d$a;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .locals 1

    .prologue
    .line 588
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/d$a;->a(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/google/protobuf/ByteString;)V
    .locals 3

    .prologue
    .line 614
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 615
    invoke-direct {p0, p1}, Lcom/google/protobuf/d$a;->b(Lcom/google/protobuf/ByteString;)V

    .line 625
    :goto_0
    return-void

    .line 616
    :cond_0
    instance-of v0, p1, Lcom/google/protobuf/d;

    if-eqz v0, :cond_1

    .line 617
    check-cast p1, Lcom/google/protobuf/d;

    .line 618
    invoke-static {p1}, Lcom/google/protobuf/d;->a(Lcom/google/protobuf/d;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/d$a;->a(Lcom/google/protobuf/ByteString;)V

    .line 619
    invoke-static {p1}, Lcom/google/protobuf/d;->b(Lcom/google/protobuf/d;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/d$a;->a(Lcom/google/protobuf/ByteString;)V

    goto :goto_0

    .line 621
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Has a new type of ByteString been created? Found "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private b(Lcom/google/protobuf/ByteString;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 642
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/d$a;->a(I)I

    move-result v1

    .line 643
    invoke-static {}, Lcom/google/protobuf/d;->a()[I

    move-result-object v0

    add-int/lit8 v2, v1, 0x1

    aget v2, v0, v2

    .line 649
    iget-object v0, p0, Lcom/google/protobuf/d$a;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/d$a;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->size()I

    move-result v0

    if-lt v0, v2, :cond_1

    .line 650
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/d$a;->a:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 678
    :goto_0
    return-void

    .line 652
    :cond_1
    invoke-static {}, Lcom/google/protobuf/d;->a()[I

    move-result-object v0

    aget v3, v0, v1

    .line 655
    iget-object v0, p0, Lcom/google/protobuf/d$a;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/ByteString;

    move-object v1, v0

    .line 656
    :goto_1
    iget-object v0, p0, Lcom/google/protobuf/d$a;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/protobuf/d$a;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->size()I

    move-result v0

    if-ge v0, v3, :cond_2

    .line 658
    iget-object v0, p0, Lcom/google/protobuf/d$a;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 659
    new-instance v2, Lcom/google/protobuf/d;

    invoke-direct {v2, v0, v1, v4}, Lcom/google/protobuf/d;-><init>(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/d$1;)V

    move-object v1, v2

    .line 660
    goto :goto_1

    .line 663
    :cond_2
    new-instance v0, Lcom/google/protobuf/d;

    invoke-direct {v0, v1, p1, v4}, Lcom/google/protobuf/d;-><init>(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/d$1;)V

    move-object v1, v0

    .line 666
    :goto_2
    iget-object v0, p0, Lcom/google/protobuf/d$a;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 667
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/d$a;->a(I)I

    move-result v0

    .line 668
    invoke-static {}, Lcom/google/protobuf/d;->a()[I

    move-result-object v2

    add-int/lit8 v0, v0, 0x1

    aget v2, v2, v0

    .line 669
    iget-object v0, p0, Lcom/google/protobuf/d$a;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->size()I

    move-result v0

    if-ge v0, v2, :cond_3

    .line 670
    iget-object v0, p0, Lcom/google/protobuf/d$a;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 671
    new-instance v2, Lcom/google/protobuf/d;

    invoke-direct {v2, v0, v1, v4}, Lcom/google/protobuf/d;-><init>(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/d$1;)V

    move-object v1, v2

    .line 672
    goto :goto_2

    .line 676
    :cond_3
    iget-object v0, p0, Lcom/google/protobuf/d$a;->a:Ljava/util/Stack;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
