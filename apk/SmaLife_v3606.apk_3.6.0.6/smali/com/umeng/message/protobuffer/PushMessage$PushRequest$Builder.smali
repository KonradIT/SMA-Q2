.class public final Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "PushMessage.java"

# interfaces
.implements Lcom/umeng/message/protobuffer/PushMessage$PushRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/message/protobuffer/PushMessage$PushRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;",
        ">;",
        "Lcom/umeng/message/protobuffer/PushMessage$PushRequestOrBuilder;"
    }
.end annotation


# instance fields
.field private a:I

.field private b:Ljava/lang/Object;

.field private c:Ljava/lang/Object;

.field private d:I

.field private e:I

.field private f:Ljava/lang/Object;

.field private g:Ljava/lang/Object;

.field private h:Lcom/umeng/message/protobuffer/PushMessage$PushRequest$entityEncodingFormat;

.field private i:Lcom/google/protobuf/ByteString;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 778
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 949
    const-string v0, ""

    iput-object v0, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;->b:Ljava/lang/Object;

    .line 1023
    const-string v0, ""

    iput-object v0, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;->c:Ljava/lang/Object;

    .line 1163
    const-string v0, ""

    iput-object v0, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;->f:Ljava/lang/Object;

    .line 1237
    const-string v0, ""

    iput-object v0, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;->g:Ljava/lang/Object;

    .line 1311
    sget-object v0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$entityEncodingFormat;->JSON:Lcom/umeng/message/protobuffer/PushMessage$PushRequest$entityEncodingFormat;

    iput-object v0, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;->h:Lcom/umeng/message/protobuffer/PushMessage$PushRequest$entityEncodingFormat;

    .line 1347
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;->i:Lcom/google/protobuf/ByteString;

    .line 779
    invoke-direct {p0}, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;->i()V

    .line 780
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1

    .prologue
    .line 784
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 949
    const-string v0, ""

    iput-object v0, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;->b:Ljava/lang/Object;

    .line 1023
    const-string v0, ""

    iput-object v0, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;->c:Ljava/lang/Object;

    .line 1163
    const-string v0, ""

    iput-object v0, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;->f:Ljava/lang/Object;

    .line 1237
    const-string v0, ""

    iput-object v0, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;->g:Ljava/lang/Object;

    .line 1311
    sget-object v0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$entityEncodingFormat;->JSON:Lcom/umeng/message/protobuffer/PushMessage$PushRequest$entityEncodingFormat;

    iput-object v0, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;->h:Lcom/umeng/message/protobuffer/PushMessage$PushRequest$entityEncodingFormat;

    .line 1347
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;->i:Lcom/google/protobuf/ByteString;

    .line 785
    invoke-direct {p0}, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;->i()V

    .line 786
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/umeng/message/protobuffer/PushMessage$1;)V
    .locals 0

    .prologue
    .line 762
    invoke-direct {p0, p1}, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic b()Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;
    .locals 1

    .prologue
    .line 762
    invoke-static {}, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;->j()Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 767
    invoke-static {}, Lcom/umeng/message/protobuffer/PushMessage;->a()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private i()V
    .locals 1

    .prologue
    .line 788
    invoke-static {}, Lcom/umeng/message/protobuffer/PushMessage$PushRequest;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 790
    :cond_0
    return-void
.end method

.method private static j()Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;
    .locals 1

    .prologue
    .line 792
    new-instance v0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;

    invoke-direct {v0}, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method protected a()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 3

    .prologue
    .line 772
    invoke-static {}, Lcom/umeng/message/protobuffer/PushMessage;->b()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/umeng/message/protobuffer/PushMessage$PushRequest;

    const-class v2, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;

    .line 773
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 762
    invoke-virtual {p0}, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;->build()Lcom/umeng/message/protobuffer/PushMessage$PushRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 762
    invoke-virtual {p0}, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;->build()Lcom/umeng/message/protobuffer/PushMessage$PushRequest;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/umeng/message/protobuffer/PushMessage$PushRequest;
    .locals 2

    .prologue
    .line 830
    invoke-virtual {p0}, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;->buildPartial()Lcom/umeng/message/protobuffer/PushMessage$PushRequest;

    move-result-object v0

    .line 831
    invoke-virtual {v0}, Lcom/umeng/message/protobuffer/PushMessage$PushRequest;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 832
    invoke-static {v0}, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;->a(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 834
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 762
    invoke-virtual {p0}, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;->buildPartial()Lcom/umeng/message/protobuffer/PushMessage$PushRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 762
    invoke-virtual {p0}, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;->buildPartial()Lcom/umeng/message/protobuffer/PushMessage$PushRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/umeng/message/protobuffer/PushMessage$PushRequest;
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 838
    new-instance v2, Lcom/umeng/message/protobuffer/PushMessage$PushRequest;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Lcom/umeng/message/protobuffer/PushMessage$PushRequest;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/umeng/message/protobuffer/PushMessage$1;)V

    .line 839
    iget v3, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;->a:I

    .line 840
    const/4 v1, 0x0

    .line 841
    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_7

    .line 844
    :goto_0
    iget-object v1, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;->b:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/umeng/message/protobuffer/PushMessage$PushRequest;->a(Lcom/umeng/message/protobuffer/PushMessage$PushRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 845
    and-int/lit8 v1, v3, 0x2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    .line 846
    or-int/lit8 v0, v0, 0x2

    .line 848
    :cond_0
    iget-object v1, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;->c:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/umeng/message/protobuffer/PushMessage$PushRequest;->b(Lcom/umeng/message/protobuffer/PushMessage$PushRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 849
    and-int/lit8 v1, v3, 0x4

    const/4 v4, 0x4

    if-ne v1, v4, :cond_1

    .line 850
    or-int/lit8 v0, v0, 0x4

    .line 852
    :cond_1
    iget v1, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;->d:I

    invoke-static {v2, v1}, Lcom/umeng/message/protobuffer/PushMessage$PushRequest;->a(Lcom/umeng/message/protobuffer/PushMessage$PushRequest;I)I

    .line 853
    and-int/lit8 v1, v3, 0x8

    const/16 v4, 0x8

    if-ne v1, v4, :cond_2

    .line 854
    or-int/lit8 v0, v0, 0x8

    .line 856
    :cond_2
    iget v1, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;->e:I

    invoke-static {v2, v1}, Lcom/umeng/message/protobuffer/PushMessage$PushRequest;->b(Lcom/umeng/message/protobuffer/PushMessage$PushRequest;I)I

    .line 857
    and-int/lit8 v1, v3, 0x10

    const/16 v4, 0x10

    if-ne v1, v4, :cond_3

    .line 858
    or-int/lit8 v0, v0, 0x10

    .line 860
    :cond_3
    iget-object v1, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;->f:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/umeng/message/protobuffer/PushMessage$PushRequest;->c(Lcom/umeng/message/protobuffer/PushMessage$PushRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 861
    and-int/lit8 v1, v3, 0x20

    const/16 v4, 0x20

    if-ne v1, v4, :cond_4

    .line 862
    or-int/lit8 v0, v0, 0x20

    .line 864
    :cond_4
    iget-object v1, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;->g:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/umeng/message/protobuffer/PushMessage$PushRequest;->d(Lcom/umeng/message/protobuffer/PushMessage$PushRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 865
    and-int/lit8 v1, v3, 0x40

    const/16 v4, 0x40

    if-ne v1, v4, :cond_5

    .line 866
    or-int/lit8 v0, v0, 0x40

    .line 868
    :cond_5
    iget-object v1, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;->h:Lcom/umeng/message/protobuffer/PushMessage$PushRequest$entityEncodingFormat;

    invoke-static {v2, v1}, Lcom/umeng/message/protobuffer/PushMessage$PushRequest;->a(Lcom/umeng/message/protobuffer/PushMessage$PushRequest;Lcom/umeng/message/protobuffer/PushMessage$PushRequest$entityEncodingFormat;)Lcom/umeng/message/protobuffer/PushMessage$PushRequest$entityEncodingFormat;

    .line 869
    and-int/lit16 v1, v3, 0x80

    const/16 v3, 0x80

    if-ne v1, v3, :cond_6

    .line 870
    or-int/lit16 v0, v0, 0x80

    .line 872
    :cond_6
    iget-object v1, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;->i:Lcom/google/protobuf/ByteString;

    invoke-static {v2, v1}, Lcom/umeng/message/protobuffer/PushMessage$PushRequest;->a(Lcom/umeng/message/protobuffer/PushMessage$PushRequest;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    .line 873
    invoke-static {v2, v0}, Lcom/umeng/message/protobuffer/PushMessage$PushRequest;->c(Lcom/umeng/message/protobuffer/PushMessage$PushRequest;I)I

    .line 874
    invoke-virtual {p0}, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;->d()V

    .line 875
    return-object v2

    :cond_7
    move v0, v1

    goto :goto_0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 762
    invoke-virtual {p0}, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;->clear()Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 762
    invoke-virtual {p0}, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;->clear()Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 762
    invoke-virtual {p0}, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;->clear()Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 762
    invoke-virtual {p0}, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;->clear()Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 796
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 797
    const-string v0, ""

    iput-object v0, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;->b:Ljava/lang/Object;

    .line 798
    iget v0, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;->a:I

    .line 799
    const-string v0, ""

    iput-object v0, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;->c:Ljava/lang/Object;

    .line 800
    iget v0, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;->a:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;->a:I

    .line 801
    iput v1, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;->d:I

    .line 802
    iget v0, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;->a:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;->a:I

    .line 803
    iput v1, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;->e:I

    .line 804
    iget v0, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;->a:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;->a:I

    .line 805
    const-string v0, ""

    iput-object v0, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;->f:Ljava/lang/Object;

    .line 806
    iget v0, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;->a:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;->a:I

    .line 807
    const-string v0, ""

    iput-object v0, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;->g:Ljava/lang/Object;

    .line 808
    iget v0, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;->a:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;->a:I

    .line 809
    sget-object v0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$entityEncodingFormat;->JSON:Lcom/umeng/message/protobuffer/PushMessage$PushRequest$entityEncodingFormat;

    iput-object v0, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;->h:Lcom/umeng/message/protobuffer/PushMessage$PushRequest$entityEncodingFormat;

    .line 810
    iget v0, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;->a:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;->a:I

    .line 811
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;->i:Lcom/google/protobuf/ByteString;

    .line 812
    iget v0, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;->a:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;->a:I

    .line 813
    return-object p0
.end method

.method public clearChecksum()Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;
    .locals 1

    .prologue
    .line 1217
    iget v0, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;->a:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;->a:I

    .line 1218
    invoke-static {}, Lcom/umeng/message/protobuffer/PushMessage$PushRequest;->getDefaultInstance()Lcom/umeng/message/protobuffer/PushMessage$PushRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/message/protobuffer/PushMessage$PushRequest;->getChecksum()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;->f:Ljava/lang/Object;

    .line 1219
    invoke-virtual {p0}, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;->h()V

    .line 1220
    return-object p0
.end method

.method public clearEncryption()Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;
    .locals 1

    .prologue
    .line 1340
    iget v0, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;->a:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;->a:I

    .line 1341
    sget-object v0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$entityEncodingFormat;->JSON:Lcom/umeng/message/protobuffer/PushMessage$PushRequest$entityEncodingFormat;

    iput-object v0, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;->h:Lcom/umeng/message/protobuffer/PushMessage$PushRequest$entityEncodingFormat;

    .line 1342
    invoke-virtual {p0}, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;->h()V

    .line 1343
    return-object p0
.end method

.method public clearEntity()Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;
    .locals 1

    .prologue
    .line 1392
    iget v0, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;->a:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;->a:I

    .line 1393
    invoke-static {}, Lcom/umeng/message/protobuffer/PushMessage$PushRequest;->getDefaultInstance()Lcom/umeng/message/protobuffer/PushMessage$PushRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/message/protobuffer/PushMessage$PushRequest;->getEntity()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;->i:Lcom/google/protobuf/ByteString;

    .line 1394
    invoke-virtual {p0}, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;->h()V

    .line 1395
    return-object p0
.end method

.method public clearSalt()Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;
    .locals 1

    .prologue
    .line 1291
    iget v0, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;->a:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;->a:I

    .line 1292
    invoke-static {}, Lcom/umeng/message/protobuffer/PushMessage$PushRequest;->getDefaultInstance()Lcom/umeng/message/protobuffer/PushMessage$PushRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/message/protobuffer/PushMessage$PushRequest;->getSalt()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;->g:Ljava/lang/Object;

    .line 1293
    invoke-virtual {p0}, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;->h()V

    .line 1294
    return-object p0
.end method

.method public clearSerialNo()Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;
    .locals 1

    .prologue
    .line 1123
    iget v0, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;->a:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;->a:I

    .line 1124
    const/4 v0, 0x0

    iput v0, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;->d:I

    .line 1125
    invoke-virtual {p0}, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;->h()V

    .line 1126
    return-object p0
.end method

.method public clearSignature()Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;
    .locals 1

    .prologue
    .line 1077
    iget v0, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;->a:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;->a:I

    .line 1078
    invoke-static {}, Lcom/umeng/message/protobuffer/PushMessage$PushRequest;->getDefaultInstance()Lcom/umeng/message/protobuffer/PushMessage$PushRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/message/protobuffer/PushMessage$PushRequest;->getSignature()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;->c:Ljava/lang/Object;

    .line 1079
    invoke-virtual {p0}, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;->h()V

    .line 1080
    return-object p0
.end method

.method public clearTimestamp()Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;
    .locals 1

    .prologue
    .line 1156
    iget v0, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;->a:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;->a:I

    .line 1157
    const/4 v0, 0x0

    iput v0, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;->e:I

    .line 1158
    invoke-virtual {p0}, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;->h()V

    .line 1159
    return-object p0
.end method

.method public clearVersion()Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;
    .locals 1

    .prologue
    .line 1003
    iget v0, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;->a:I

    .line 1004
    invoke-static {}, Lcom/umeng/message/protobuffer/PushMessage$PushRequest;->getDefaultInstance()Lcom/umeng/message/protobuffer/PushMessage$PushRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/message/protobuffer/PushMessage$PushRequest;->getVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;->b:Ljava/lang/Object;

    .line 1005
    invoke-virtual {p0}, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;->h()V

    .line 1006
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 762
    invoke-virtual {p0}, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;->clone()Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 762
    invoke-virtual {p0}, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;->clone()Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 762
    invoke-virtual {p0}, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;->clone()Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 762
    invoke-virtual {p0}, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;->clone()Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 762
    invoke-virtual {p0}, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;->clone()Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;
    .locals 2

    .prologue
    .line 817
    invoke-static {}, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;->j()Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;->buildPartial()Lcom/umeng/message/protobuffer/PushMessage$PushRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;->mergeFrom(Lcom/umeng/message/protobuffer/PushMessage$PushRequest;)Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 762
    invoke-virtual {p0}, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;->clone()Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getChecksum()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1174
    iget-object v0, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;->f:Ljava/lang/Object;

    .line 1175
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 1176
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1177
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 1178
    iput-object v0, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;->f:Ljava/lang/Object;

    .line 1181
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getChecksumBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 1189
    iget-object v0, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;->f:Ljava/lang/Object;

    .line 1190
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1191
    check-cast v0, Ljava/lang/String;

    .line 1192
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1194
    iput-object v0, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;->f:Ljava/lang/Object;

    .line 1197
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 762
    invoke-virtual {p0}, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;->getDefaultInstanceForType()Lcom/umeng/message/protobuffer/PushMessage$PushRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 762
    invoke-virtual {p0}, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;->getDefaultInstanceForType()Lcom/umeng/message/protobuffer/PushMessage$PushRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/umeng/message/protobuffer/PushMessage$PushRequest;
    .locals 1

    .prologue
    .line 826
    invoke-static {}, Lcom/umeng/message/protobuffer/PushMessage$PushRequest;->getDefaultInstance()Lcom/umeng/message/protobuffer/PushMessage$PushRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 822
    invoke-static {}, Lcom/umeng/message/protobuffer/PushMessage;->a()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getEncryption()Lcom/umeng/message/protobuffer/PushMessage$PushRequest$entityEncodingFormat;
    .locals 1

    .prologue
    .line 1322
    iget-object v0, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;->h:Lcom/umeng/message/protobuffer/PushMessage$PushRequest$entityEncodingFormat;

    return-object v0
.end method

.method public getEntity()Lcom/google/protobuf/ByteString;
    .locals 1

    .prologue
    .line 1366
    iget-object v0, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;->i:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getSalt()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1248
    iget-object v0, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;->g:Ljava/lang/Object;

    .line 1249
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 1250
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1251
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 1252
    iput-object v0, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;->g:Ljava/lang/Object;

    .line 1255
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getSaltBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 1263
    iget-object v0, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;->g:Ljava/lang/Object;

    .line 1264
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1265
    check-cast v0, Ljava/lang/String;

    .line 1266
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1268
    iput-object v0, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;->g:Ljava/lang/Object;

    .line 1271
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public getSerialNo()I
    .locals 1

    .prologue
    .line 1108
    iget v0, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;->d:I

    return v0
.end method

.method public getSignature()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1034
    iget-object v0, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;->c:Ljava/lang/Object;

    .line 1035
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 1036
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1037
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 1038
    iput-object v0, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;->c:Ljava/lang/Object;

    .line 1041
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getSignatureBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 1049
    iget-object v0, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;->c:Ljava/lang/Object;

    .line 1050
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1051
    check-cast v0, Ljava/lang/String;

    .line 1052
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1054
    iput-object v0, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;->c:Ljava/lang/Object;

    .line 1057
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public getTimestamp()I
    .locals 1

    .prologue
    .line 1141
    iget v0, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;->e:I

    return v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 960
    iget-object v0, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;->b:Ljava/lang/Object;

    .line 961
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 962
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 963
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 964
    iput-object v0, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;->b:Ljava/lang/Object;

    .line 967
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getVersionBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 975
    iget-object v0, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;->b:Ljava/lang/Object;

    .line 976
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 977
    check-cast v0, Ljava/lang/String;

    .line 978
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 980
    iput-object v0, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;->b:Ljava/lang/Object;

    .line 983
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public hasChecksum()Z
    .locals 2

    .prologue
    .line 1168
    iget v0, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;->a:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasEncryption()Z
    .locals 2

    .prologue
    .line 1316
    iget v0, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;->a:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasEntity()Z
    .locals 2

    .prologue
    .line 1356
    iget v0, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;->a:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSalt()Z
    .locals 2

    .prologue
    .line 1242
    iget v0, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;->a:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSerialNo()Z
    .locals 2

    .prologue
    .line 1102
    iget v0, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;->a:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSignature()Z
    .locals 2

    .prologue
    .line 1028
    iget v0, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;->a:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasTimestamp()Z
    .locals 2

    .prologue
    .line 1135
    iget v0, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;->a:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasVersion()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 954
    iget v1, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;->a:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 926
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 762
    invoke-virtual {p0, p1, p2}, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 762
    invoke-virtual {p0, p1}, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 762
    invoke-virtual {p0, p1, p2}, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 762
    invoke-virtual {p0, p1, p2}, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 762
    invoke-virtual {p0, p1}, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 762
    invoke-virtual {p0, p1, p2}, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 933
    const/4 v2, 0x0

    .line 935
    :try_start_0
    sget-object v0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 940
    if-eqz v0, :cond_0

    .line 941
    invoke-virtual {p0, v0}, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;->mergeFrom(Lcom/umeng/message/protobuffer/PushMessage$PushRequest;)Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;

    .line 944
    :cond_0
    return-object p0

    .line 936
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 937
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v0

    check-cast v0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 938
    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 940
    :catchall_0
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    :goto_0
    if-eqz v1, :cond_1

    .line 941
    invoke-virtual {p0, v1}, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;->mergeFrom(Lcom/umeng/message/protobuffer/PushMessage$PushRequest;)Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;

    :cond_1
    throw v0

    .line 940
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;
    .locals 1

    .prologue
    .line 879
    instance-of v0, p1, Lcom/umeng/message/protobuffer/PushMessage$PushRequest;

    if-eqz v0, :cond_0

    .line 880
    check-cast p1, Lcom/umeng/message/protobuffer/PushMessage$PushRequest;

    invoke-virtual {p0, p1}, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;->mergeFrom(Lcom/umeng/message/protobuffer/PushMessage$PushRequest;)Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;

    move-result-object p0

    .line 883
    :goto_0
    return-object p0

    .line 882
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/umeng/message/protobuffer/PushMessage$PushRequest;)Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;
    .locals 1

    .prologue
    .line 888
    invoke-static {}, Lcom/umeng/message/protobuffer/PushMessage$PushRequest;->getDefaultInstance()Lcom/umeng/message/protobuffer/PushMessage$PushRequest;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 922
    :goto_0
    return-object p0

    .line 889
    :cond_0
    invoke-virtual {p1}, Lcom/umeng/message/protobuffer/PushMessage$PushRequest;->hasVersion()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 890
    iget v0, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;->a:I

    .line 891
    invoke-static {p1}, Lcom/umeng/message/protobuffer/PushMessage$PushRequest;->a(Lcom/umeng/message/protobuffer/PushMessage$PushRequest;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;->b:Ljava/lang/Object;

    .line 892
    invoke-virtual {p0}, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;->h()V

    .line 894
    :cond_1
    invoke-virtual {p1}, Lcom/umeng/message/protobuffer/PushMessage$PushRequest;->hasSignature()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 895
    iget v0, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;->a:I

    .line 896
    invoke-static {p1}, Lcom/umeng/message/protobuffer/PushMessage$PushRequest;->b(Lcom/umeng/message/protobuffer/PushMessage$PushRequest;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;->c:Ljava/lang/Object;

    .line 897
    invoke-virtual {p0}, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;->h()V

    .line 899
    :cond_2
    invoke-virtual {p1}, Lcom/umeng/message/protobuffer/PushMessage$PushRequest;->hasSerialNo()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 900
    invoke-virtual {p1}, Lcom/umeng/message/protobuffer/PushMessage$PushRequest;->getSerialNo()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;->setSerialNo(I)Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;

    .line 902
    :cond_3
    invoke-virtual {p1}, Lcom/umeng/message/protobuffer/PushMessage$PushRequest;->hasTimestamp()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 903
    invoke-virtual {p1}, Lcom/umeng/message/protobuffer/PushMessage$PushRequest;->getTimestamp()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;->setTimestamp(I)Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;

    .line 905
    :cond_4
    invoke-virtual {p1}, Lcom/umeng/message/protobuffer/PushMessage$PushRequest;->hasChecksum()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 906
    iget v0, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;->a:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;->a:I

    .line 907
    invoke-static {p1}, Lcom/umeng/message/protobuffer/PushMessage$PushRequest;->c(Lcom/umeng/message/protobuffer/PushMessage$PushRequest;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;->f:Ljava/lang/Object;

    .line 908
    invoke-virtual {p0}, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;->h()V

    .line 910
    :cond_5
    invoke-virtual {p1}, Lcom/umeng/message/protobuffer/PushMessage$PushRequest;->hasSalt()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 911
    iget v0, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;->a:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;->a:I

    .line 912
    invoke-static {p1}, Lcom/umeng/message/protobuffer/PushMessage$PushRequest;->d(Lcom/umeng/message/protobuffer/PushMessage$PushRequest;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;->g:Ljava/lang/Object;

    .line 913
    invoke-virtual {p0}, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;->h()V

    .line 915
    :cond_6
    invoke-virtual {p1}, Lcom/umeng/message/protobuffer/PushMessage$PushRequest;->hasEncryption()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 916
    invoke-virtual {p1}, Lcom/umeng/message/protobuffer/PushMessage$PushRequest;->getEncryption()Lcom/umeng/message/protobuffer/PushMessage$PushRequest$entityEncodingFormat;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;->setEncryption(Lcom/umeng/message/protobuffer/PushMessage$PushRequest$entityEncodingFormat;)Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;

    .line 918
    :cond_7
    invoke-virtual {p1}, Lcom/umeng/message/protobuffer/PushMessage$PushRequest;->hasEntity()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 919
    invoke-virtual {p1}, Lcom/umeng/message/protobuffer/PushMessage$PushRequest;->getEntity()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;->setEntity(Lcom/google/protobuf/ByteString;)Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;

    .line 921
    :cond_8
    invoke-virtual {p1}, Lcom/umeng/message/protobuffer/PushMessage$PushRequest;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto/16 :goto_0
.end method

.method public setChecksum(Ljava/lang/String;)Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;
    .locals 1

    .prologue
    .line 1205
    if-nez p1, :cond_0

    .line 1206
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1208
    :cond_0
    iget v0, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;->a:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;->a:I

    .line 1209
    iput-object p1, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;->f:Ljava/lang/Object;

    .line 1210
    invoke-virtual {p0}, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;->h()V

    .line 1211
    return-object p0
.end method

.method public setChecksumBytes(Lcom/google/protobuf/ByteString;)Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;
    .locals 1

    .prologue
    .line 1227
    if-nez p1, :cond_0

    .line 1228
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1230
    :cond_0
    iget v0, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;->a:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;->a:I

    .line 1231
    iput-object p1, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;->f:Ljava/lang/Object;

    .line 1232
    invoke-virtual {p0}, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;->h()V

    .line 1233
    return-object p0
.end method

.method public setEncryption(Lcom/umeng/message/protobuffer/PushMessage$PushRequest$entityEncodingFormat;)Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;
    .locals 1

    .prologue
    .line 1328
    if-nez p1, :cond_0

    .line 1329
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1331
    :cond_0
    iget v0, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;->a:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;->a:I

    .line 1332
    iput-object p1, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;->h:Lcom/umeng/message/protobuffer/PushMessage$PushRequest$entityEncodingFormat;

    .line 1333
    invoke-virtual {p0}, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;->h()V

    .line 1334
    return-object p0
.end method

.method public setEntity(Lcom/google/protobuf/ByteString;)Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;
    .locals 1

    .prologue
    .line 1376
    if-nez p1, :cond_0

    .line 1377
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1379
    :cond_0
    iget v0, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;->a:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;->a:I

    .line 1380
    iput-object p1, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;->i:Lcom/google/protobuf/ByteString;

    .line 1381
    invoke-virtual {p0}, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;->h()V

    .line 1382
    return-object p0
.end method

.method public setSalt(Ljava/lang/String;)Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;
    .locals 1

    .prologue
    .line 1279
    if-nez p1, :cond_0

    .line 1280
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1282
    :cond_0
    iget v0, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;->a:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;->a:I

    .line 1283
    iput-object p1, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;->g:Ljava/lang/Object;

    .line 1284
    invoke-virtual {p0}, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;->h()V

    .line 1285
    return-object p0
.end method

.method public setSaltBytes(Lcom/google/protobuf/ByteString;)Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;
    .locals 1

    .prologue
    .line 1301
    if-nez p1, :cond_0

    .line 1302
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1304
    :cond_0
    iget v0, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;->a:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;->a:I

    .line 1305
    iput-object p1, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;->g:Ljava/lang/Object;

    .line 1306
    invoke-virtual {p0}, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;->h()V

    .line 1307
    return-object p0
.end method

.method public setSerialNo(I)Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;
    .locals 1

    .prologue
    .line 1114
    iget v0, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;->a:I

    .line 1115
    iput p1, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;->d:I

    .line 1116
    invoke-virtual {p0}, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;->h()V

    .line 1117
    return-object p0
.end method

.method public setSignature(Ljava/lang/String;)Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;
    .locals 1

    .prologue
    .line 1065
    if-nez p1, :cond_0

    .line 1066
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1068
    :cond_0
    iget v0, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;->a:I

    .line 1069
    iput-object p1, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;->c:Ljava/lang/Object;

    .line 1070
    invoke-virtual {p0}, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;->h()V

    .line 1071
    return-object p0
.end method

.method public setSignatureBytes(Lcom/google/protobuf/ByteString;)Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;
    .locals 1

    .prologue
    .line 1087
    if-nez p1, :cond_0

    .line 1088
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1090
    :cond_0
    iget v0, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;->a:I

    .line 1091
    iput-object p1, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;->c:Ljava/lang/Object;

    .line 1092
    invoke-virtual {p0}, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;->h()V

    .line 1093
    return-object p0
.end method

.method public setTimestamp(I)Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;
    .locals 1

    .prologue
    .line 1147
    iget v0, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;->a:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;->a:I

    .line 1148
    iput p1, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;->e:I

    .line 1149
    invoke-virtual {p0}, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;->h()V

    .line 1150
    return-object p0
.end method

.method public setVersion(Ljava/lang/String;)Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;
    .locals 1

    .prologue
    .line 991
    if-nez p1, :cond_0

    .line 992
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 994
    :cond_0
    iget v0, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;->a:I

    .line 995
    iput-object p1, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;->b:Ljava/lang/Object;

    .line 996
    invoke-virtual {p0}, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;->h()V

    .line 997
    return-object p0
.end method

.method public setVersionBytes(Lcom/google/protobuf/ByteString;)Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;
    .locals 1

    .prologue
    .line 1013
    if-nez p1, :cond_0

    .line 1014
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1016
    :cond_0
    iget v0, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;->a:I

    .line 1017
    iput-object p1, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;->b:Ljava/lang/Object;

    .line 1018
    invoke-virtual {p0}, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;->h()V

    .line 1019
    return-object p0
.end method
