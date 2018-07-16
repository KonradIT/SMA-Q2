.class public final Lcom/google/protobuf/ByteString$Output;
.super Ljava/io/OutputStream;
.source "ByteString.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/ByteString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Output"
.end annotation


# static fields
.field private static final a:[B


# instance fields
.field private final b:I

.field private final c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/protobuf/ByteString;",
            ">;"
        }
    .end annotation
.end field

.field private d:I

.field private e:[B

.field private f:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 713
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/google/protobuf/ByteString$Output;->a:[B

    return-void
.end method

.method constructor <init>(I)V
    .locals 2

    .prologue
    .line 731
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 732
    if-gez p1, :cond_0

    .line 733
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Buffer size < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 735
    :cond_0
    iput p1, p0, Lcom/google/protobuf/ByteString$Output;->b:I

    .line 736
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/protobuf/ByteString$Output;->c:Ljava/util/ArrayList;

    .line 737
    new-array v0, p1, [B

    iput-object v0, p0, Lcom/google/protobuf/ByteString$Output;->e:[B

    .line 738
    return-void
.end method

.method private a()V
    .locals 3

    .prologue
    .line 862
    iget v0, p0, Lcom/google/protobuf/ByteString$Output;->f:I

    iget-object v1, p0, Lcom/google/protobuf/ByteString$Output;->e:[B

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 863
    iget v0, p0, Lcom/google/protobuf/ByteString$Output;->f:I

    if-lez v0, :cond_0

    .line 864
    iget-object v0, p0, Lcom/google/protobuf/ByteString$Output;->e:[B

    iget v1, p0, Lcom/google/protobuf/ByteString$Output;->f:I

    invoke-direct {p0, v0, v1}, Lcom/google/protobuf/ByteString$Output;->a([BI)[B

    move-result-object v0

    .line 865
    iget-object v1, p0, Lcom/google/protobuf/ByteString$Output;->c:Ljava/util/ArrayList;

    new-instance v2, Lcom/google/protobuf/c;

    invoke-direct {v2, v0}, Lcom/google/protobuf/c;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 878
    :cond_0
    :goto_0
    iget v0, p0, Lcom/google/protobuf/ByteString$Output;->d:I

    iget v1, p0, Lcom/google/protobuf/ByteString$Output;->f:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/ByteString$Output;->d:I

    .line 879
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protobuf/ByteString$Output;->f:I

    .line 880
    return-void

    .line 870
    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/ByteString$Output;->c:Ljava/util/ArrayList;

    new-instance v1, Lcom/google/protobuf/c;

    iget-object v2, p0, Lcom/google/protobuf/ByteString$Output;->e:[B

    invoke-direct {v1, v2}, Lcom/google/protobuf/c;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 876
    sget-object v0, Lcom/google/protobuf/ByteString$Output;->a:[B

    iput-object v0, p0, Lcom/google/protobuf/ByteString$Output;->e:[B

    goto :goto_0
.end method

.method private a(I)V
    .locals 3

    .prologue
    .line 846
    iget-object v0, p0, Lcom/google/protobuf/ByteString$Output;->c:Ljava/util/ArrayList;

    new-instance v1, Lcom/google/protobuf/c;

    iget-object v2, p0, Lcom/google/protobuf/ByteString$Output;->e:[B

    invoke-direct {v1, v2}, Lcom/google/protobuf/c;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 847
    iget v0, p0, Lcom/google/protobuf/ByteString$Output;->d:I

    iget-object v1, p0, Lcom/google/protobuf/ByteString$Output;->e:[B

    array-length v1, v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/ByteString$Output;->d:I

    .line 851
    iget v0, p0, Lcom/google/protobuf/ByteString$Output;->b:I

    iget v1, p0, Lcom/google/protobuf/ByteString$Output;->d:I

    ushr-int/lit8 v1, v1, 0x1

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 853
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/protobuf/ByteString$Output;->e:[B

    .line 854
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protobuf/ByteString$Output;->f:I

    .line 855
    return-void
.end method

.method private a([BI)[B
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 783
    new-array v0, p2, [B

    .line 784
    array-length v1, p1

    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 785
    return-object v0
.end method


# virtual methods
.method public declared-synchronized reset()V
    .locals 1

    .prologue
    .line 829
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/protobuf/ByteString$Output;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 830
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protobuf/ByteString$Output;->d:I

    .line 831
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protobuf/ByteString$Output;->f:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 832
    monitor-exit p0

    return-void

    .line 829
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized size()I
    .locals 2

    .prologue
    .line 820
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/protobuf/ByteString$Output;->d:I

    iget v1, p0, Lcom/google/protobuf/ByteString$Output;->f:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/2addr v0, v1

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized toByteString()Lcom/google/protobuf/ByteString;
    .locals 1

    .prologue
    .line 775
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/google/protobuf/ByteString$Output;->a()V

    .line 776
    iget-object v0, p0, Lcom/google/protobuf/ByteString$Output;->c:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFrom(Ljava/lang/Iterable;)Lcom/google/protobuf/ByteString;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 775
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 836
    const-string v0, "<ByteString.Output@%s size=%d>"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/protobuf/ByteString$Output;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized write(I)V
    .locals 3

    .prologue
    .line 742
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/protobuf/ByteString$Output;->f:I

    iget-object v1, p0, Lcom/google/protobuf/ByteString$Output;->e:[B

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 743
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/protobuf/ByteString$Output;->a(I)V

    .line 745
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/ByteString$Output;->e:[B

    iget v1, p0, Lcom/google/protobuf/ByteString$Output;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/protobuf/ByteString$Output;->f:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 746
    monitor-exit p0

    return-void

    .line 742
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized write([BII)V
    .locals 4

    .prologue
    .line 750
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/protobuf/ByteString$Output;->e:[B

    array-length v0, v0

    iget v1, p0, Lcom/google/protobuf/ByteString$Output;->f:I

    sub-int/2addr v0, v1

    if-gt p3, v0, :cond_0

    .line 752
    iget-object v0, p0, Lcom/google/protobuf/ByteString$Output;->e:[B

    iget v1, p0, Lcom/google/protobuf/ByteString$Output;->f:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 753
    iget v0, p0, Lcom/google/protobuf/ByteString$Output;->f:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/google/protobuf/ByteString$Output;->f:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 766
    :goto_0
    monitor-exit p0

    return-void

    .line 756
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/protobuf/ByteString$Output;->e:[B

    array-length v0, v0

    iget v1, p0, Lcom/google/protobuf/ByteString$Output;->f:I

    sub-int/2addr v0, v1

    .line 757
    iget-object v1, p0, Lcom/google/protobuf/ByteString$Output;->e:[B

    iget v2, p0, Lcom/google/protobuf/ByteString$Output;->f:I

    invoke-static {p1, p2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 758
    add-int v1, p2, v0

    .line 759
    sub-int v0, p3, v0

    .line 762
    invoke-direct {p0, v0}, Lcom/google/protobuf/ByteString$Output;->a(I)V

    .line 763
    iget-object v2, p0, Lcom/google/protobuf/ByteString$Output;->e:[B

    const/4 v3, 0x0

    invoke-static {p1, v1, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 764
    iput v0, p0, Lcom/google/protobuf/ByteString$Output;->f:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 750
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 799
    monitor-enter p0

    .line 802
    :try_start_0
    iget-object v0, p0, Lcom/google/protobuf/ByteString$Output;->c:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/protobuf/ByteString$Output;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lcom/google/protobuf/ByteString;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/protobuf/ByteString;

    .line 804
    iget-object v2, p0, Lcom/google/protobuf/ByteString$Output;->e:[B

    .line 805
    iget v3, p0, Lcom/google/protobuf/ByteString$Output;->f:I

    .line 806
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 807
    array-length v4, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v4, :cond_0

    aget-object v5, v0, v1

    .line 808
    invoke-virtual {v5, p1}, Lcom/google/protobuf/ByteString;->writeTo(Ljava/io/OutputStream;)V

    .line 807
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 806
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 811
    :cond_0
    invoke-direct {p0, v2, v3}, Lcom/google/protobuf/ByteString$Output;->a([BI)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 812
    return-void
.end method
