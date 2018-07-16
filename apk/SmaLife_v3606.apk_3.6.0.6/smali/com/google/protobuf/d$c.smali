.class Lcom/google/protobuf/d$c;
.super Ljava/lang/Object;
.source "RopeByteString.java"

# interfaces
.implements Lcom/google/protobuf/ByteString$ByteIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field a:I

.field final synthetic b:Lcom/google/protobuf/d;

.field private final c:Lcom/google/protobuf/d$b;

.field private d:Lcom/google/protobuf/ByteString$ByteIterator;


# direct methods
.method private constructor <init>(Lcom/google/protobuf/d;)V
    .locals 2

    .prologue
    .line 774
    iput-object p1, p0, Lcom/google/protobuf/d$c;->b:Lcom/google/protobuf/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 775
    new-instance v0, Lcom/google/protobuf/d$b;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/protobuf/d$b;-><init>(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/d$1;)V

    iput-object v0, p0, Lcom/google/protobuf/d$c;->c:Lcom/google/protobuf/d$b;

    .line 776
    iget-object v0, p0, Lcom/google/protobuf/d$c;->c:Lcom/google/protobuf/d$b;

    invoke-virtual {v0}, Lcom/google/protobuf/d$b;->a()Lcom/google/protobuf/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/c;->iterator()Lcom/google/protobuf/ByteString$ByteIterator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/d$c;->d:Lcom/google/protobuf/ByteString$ByteIterator;

    .line 777
    invoke-virtual {p1}, Lcom/google/protobuf/d;->size()I

    move-result v0

    iput v0, p0, Lcom/google/protobuf/d$c;->a:I

    .line 778
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/d;Lcom/google/protobuf/d$1;)V
    .locals 0

    .prologue
    .line 768
    invoke-direct {p0, p1}, Lcom/google/protobuf/d$c;-><init>(Lcom/google/protobuf/d;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Byte;
    .locals 1

    .prologue
    .line 785
    invoke-virtual {p0}, Lcom/google/protobuf/d$c;->nextByte()B

    move-result v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0
.end method

.method public hasNext()Z
    .locals 1

    .prologue
    .line 781
    iget v0, p0, Lcom/google/protobuf/d$c;->a:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 768
    invoke-virtual {p0}, Lcom/google/protobuf/d$c;->a()Ljava/lang/Byte;

    move-result-object v0

    return-object v0
.end method

.method public nextByte()B
    .locals 1

    .prologue
    .line 789
    iget-object v0, p0, Lcom/google/protobuf/d$c;->d:Lcom/google/protobuf/ByteString$ByteIterator;

    invoke-interface {v0}, Lcom/google/protobuf/ByteString$ByteIterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 790
    iget-object v0, p0, Lcom/google/protobuf/d$c;->c:Lcom/google/protobuf/d$b;

    invoke-virtual {v0}, Lcom/google/protobuf/d$b;->a()Lcom/google/protobuf/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/c;->iterator()Lcom/google/protobuf/ByteString$ByteIterator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/d$c;->d:Lcom/google/protobuf/ByteString$ByteIterator;

    .line 792
    :cond_0
    iget v0, p0, Lcom/google/protobuf/d$c;->a:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/protobuf/d$c;->a:I

    .line 793
    iget-object v0, p0, Lcom/google/protobuf/d$c;->d:Lcom/google/protobuf/ByteString$ByteIterator;

    invoke-interface {v0}, Lcom/google/protobuf/ByteString$ByteIterator;->nextByte()B

    move-result v0

    return v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 797
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
