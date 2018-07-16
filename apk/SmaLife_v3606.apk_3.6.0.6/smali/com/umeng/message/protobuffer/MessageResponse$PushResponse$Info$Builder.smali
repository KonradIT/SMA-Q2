.class public final Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "MessageResponse.java"

# interfaces
.implements Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$InfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info$Builder;",
        ">;",
        "Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$InfoOrBuilder;"
    }
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:Ljava/lang/Object;

.field private e:I

.field private f:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 736
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 942
    const-string v0, ""

    iput-object v0, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info$Builder;->d:Ljava/lang/Object;

    .line 1049
    const-string v0, ""

    iput-object v0, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info$Builder;->f:Ljava/lang/Object;

    .line 737
    invoke-direct {p0}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info$Builder;->i()V

    .line 738
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1

    .prologue
    .line 742
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 942
    const-string v0, ""

    iput-object v0, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info$Builder;->d:Ljava/lang/Object;

    .line 1049
    const-string v0, ""

    iput-object v0, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info$Builder;->f:Ljava/lang/Object;

    .line 743
    invoke-direct {p0}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info$Builder;->i()V

    .line 744
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/umeng/message/protobuffer/MessageResponse$1;)V
    .locals 0

    .prologue
    .line 720
    invoke-direct {p0, p1}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic b()Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info$Builder;
    .locals 1

    .prologue
    .line 720
    invoke-static {}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info$Builder;->j()Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 725
    invoke-static {}, Lcom/umeng/message/protobuffer/MessageResponse;->c()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private i()V
    .locals 1

    .prologue
    .line 746
    invoke-static {}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 748
    :cond_0
    return-void
.end method

.method private static j()Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info$Builder;
    .locals 1

    .prologue
    .line 750
    new-instance v0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info$Builder;

    invoke-direct {v0}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method protected a()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 3

    .prologue
    .line 730
    invoke-static {}, Lcom/umeng/message/protobuffer/MessageResponse;->d()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;

    const-class v2, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info$Builder;

    .line 731
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 720
    invoke-virtual {p0}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info$Builder;->build()Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 720
    invoke-virtual {p0}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info$Builder;->build()Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;
    .locals 2

    .prologue
    .line 782
    invoke-virtual {p0}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info$Builder;->buildPartial()Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;

    move-result-object v0

    .line 783
    invoke-virtual {v0}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 784
    invoke-static {v0}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info$Builder;->a(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 786
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 720
    invoke-virtual {p0}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info$Builder;->buildPartial()Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 720
    invoke-virtual {p0}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info$Builder;->buildPartial()Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 790
    new-instance v2, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/umeng/message/protobuffer/MessageResponse$1;)V

    .line 791
    iget v3, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info$Builder;->a:I

    .line 792
    const/4 v1, 0x0

    .line 793
    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_4

    .line 796
    :goto_0
    iget v1, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info$Builder;->b:I

    invoke-static {v2, v1}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;->a(Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;I)I

    .line 797
    and-int/lit8 v1, v3, 0x2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    .line 798
    or-int/lit8 v0, v0, 0x2

    .line 800
    :cond_0
    iget v1, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info$Builder;->c:I

    invoke-static {v2, v1}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;->b(Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;I)I

    .line 801
    and-int/lit8 v1, v3, 0x4

    const/4 v4, 0x4

    if-ne v1, v4, :cond_1

    .line 802
    or-int/lit8 v0, v0, 0x4

    .line 804
    :cond_1
    iget-object v1, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info$Builder;->d:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;->a(Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;Ljava/lang/Object;)Ljava/lang/Object;

    .line 805
    and-int/lit8 v1, v3, 0x8

    const/16 v4, 0x8

    if-ne v1, v4, :cond_2

    .line 806
    or-int/lit8 v0, v0, 0x8

    .line 808
    :cond_2
    iget v1, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info$Builder;->e:I

    invoke-static {v2, v1}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;->c(Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;I)I

    .line 809
    and-int/lit8 v1, v3, 0x10

    const/16 v3, 0x10

    if-ne v1, v3, :cond_3

    .line 810
    or-int/lit8 v0, v0, 0x10

    .line 812
    :cond_3
    iget-object v1, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info$Builder;->f:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;->b(Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;Ljava/lang/Object;)Ljava/lang/Object;

    .line 813
    invoke-static {v2, v0}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;->d(Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;I)I

    .line 814
    invoke-virtual {p0}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info$Builder;->d()V

    .line 815
    return-object v2

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 720
    invoke-virtual {p0}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info$Builder;->clear()Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 720
    invoke-virtual {p0}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info$Builder;->clear()Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 720
    invoke-virtual {p0}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info$Builder;->clear()Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 720
    invoke-virtual {p0}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info$Builder;->clear()Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 754
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 755
    iput v1, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info$Builder;->b:I

    .line 756
    iget v0, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info$Builder;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info$Builder;->a:I

    .line 757
    iput v1, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info$Builder;->c:I

    .line 758
    iget v0, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info$Builder;->a:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info$Builder;->a:I

    .line 759
    const-string v0, ""

    iput-object v0, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info$Builder;->d:Ljava/lang/Object;

    .line 760
    iget v0, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info$Builder;->a:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info$Builder;->a:I

    .line 761
    iput v1, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info$Builder;->e:I

    .line 762
    iget v0, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info$Builder;->a:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info$Builder;->a:I

    .line 763
    const-string v0, ""

    iput-object v0, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info$Builder;->f:Ljava/lang/Object;

    .line 764
    iget v0, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info$Builder;->a:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info$Builder;->a:I

    .line 765
    return-object p0
.end method

.method public clearDeviceTokens()Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info$Builder;
    .locals 1

    .prologue
    .line 996
    iget v0, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info$Builder;->a:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info$Builder;->a:I

    .line 997
    invoke-static {}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;->getDefaultInstance()Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;->getDeviceTokens()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info$Builder;->d:Ljava/lang/Object;

    .line 998
    invoke-virtual {p0}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info$Builder;->h()V

    .line 999
    return-object p0
.end method

.method public clearLaunchPolicy()Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info$Builder;
    .locals 1

    .prologue
    .line 902
    iget v0, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info$Builder;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info$Builder;->a:I

    .line 903
    const/4 v0, 0x0

    iput v0, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info$Builder;->b:I

    .line 904
    invoke-virtual {p0}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info$Builder;->h()V

    .line 905
    return-object p0
.end method

.method public clearTagPolicy()Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info$Builder;
    .locals 1

    .prologue
    .line 935
    iget v0, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info$Builder;->a:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info$Builder;->a:I

    .line 936
    const/4 v0, 0x0

    iput v0, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info$Builder;->c:I

    .line 937
    invoke-virtual {p0}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info$Builder;->h()V

    .line 938
    return-object p0
.end method

.method public clearTagRemainCount()Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info$Builder;
    .locals 1

    .prologue
    .line 1042
    iget v0, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info$Builder;->a:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info$Builder;->a:I

    .line 1043
    const/4 v0, 0x0

    iput v0, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info$Builder;->e:I

    .line 1044
    invoke-virtual {p0}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info$Builder;->h()V

    .line 1045
    return-object p0
.end method

.method public clearTags()Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info$Builder;
    .locals 1

    .prologue
    .line 1103
    iget v0, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info$Builder;->a:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info$Builder;->a:I

    .line 1104
    invoke-static {}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;->getDefaultInstance()Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;->getTags()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info$Builder;->f:Ljava/lang/Object;

    .line 1105
    invoke-virtual {p0}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info$Builder;->h()V

    .line 1106
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 720
    invoke-virtual {p0}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info$Builder;->clone()Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 720
    invoke-virtual {p0}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info$Builder;->clone()Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 720
    invoke-virtual {p0}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info$Builder;->clone()Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 720
    invoke-virtual {p0}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info$Builder;->clone()Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 720
    invoke-virtual {p0}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info$Builder;->clone()Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info$Builder;
    .locals 2

    .prologue
    .line 769
    invoke-static {}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info$Builder;->j()Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info$Builder;->buildPartial()Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info$Builder;->mergeFrom(Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;)Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info$Builder;

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
    .line 720
    invoke-virtual {p0}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info$Builder;->clone()Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 720
    invoke-virtual {p0}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info$Builder;->getDefaultInstanceForType()Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 720
    invoke-virtual {p0}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info$Builder;->getDefaultInstanceForType()Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;
    .locals 1

    .prologue
    .line 778
    invoke-static {}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;->getDefaultInstance()Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 774
    invoke-static {}, Lcom/umeng/message/protobuffer/MessageResponse;->c()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceTokens()Ljava/lang/String;
    .locals 2

    .prologue
    .line 953
    iget-object v0, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info$Builder;->d:Ljava/lang/Object;

    .line 954
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 955
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 956
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 957
    iput-object v0, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info$Builder;->d:Ljava/lang/Object;

    .line 960
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getDeviceTokensBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 968
    iget-object v0, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info$Builder;->d:Ljava/lang/Object;

    .line 969
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 970
    check-cast v0, Ljava/lang/String;

    .line 971
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 973
    iput-object v0, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info$Builder;->d:Ljava/lang/Object;

    .line 976
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public getLaunchPolicy()I
    .locals 1

    .prologue
    .line 887
    iget v0, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info$Builder;->b:I

    return v0
.end method

.method public getTagPolicy()I
    .locals 1

    .prologue
    .line 920
    iget v0, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info$Builder;->c:I

    return v0
.end method

.method public getTagRemainCount()I
    .locals 1

    .prologue
    .line 1027
    iget v0, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info$Builder;->e:I

    return v0
.end method

.method public getTags()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1060
    iget-object v0, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info$Builder;->f:Ljava/lang/Object;

    .line 1061
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 1062
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1063
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 1064
    iput-object v0, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info$Builder;->f:Ljava/lang/Object;

    .line 1067
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getTagsBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 1075
    iget-object v0, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info$Builder;->f:Ljava/lang/Object;

    .line 1076
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1077
    check-cast v0, Ljava/lang/String;

    .line 1078
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1080
    iput-object v0, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info$Builder;->f:Ljava/lang/Object;

    .line 1083
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public hasDeviceTokens()Z
    .locals 2

    .prologue
    .line 947
    iget v0, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info$Builder;->a:I

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

.method public hasLaunchPolicy()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 881
    iget v1, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info$Builder;->a:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasTagPolicy()Z
    .locals 2

    .prologue
    .line 914
    iget v0, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info$Builder;->a:I

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

.method public hasTagRemainCount()Z
    .locals 2

    .prologue
    .line 1021
    iget v0, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info$Builder;->a:I

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

.method public hasTags()Z
    .locals 2

    .prologue
    .line 1054
    iget v0, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info$Builder;->a:I

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

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 853
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
    .line 720
    invoke-virtual {p0, p1, p2}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 720
    invoke-virtual {p0, p1}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info$Builder;

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
    .line 720
    invoke-virtual {p0, p1, p2}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info$Builder;

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
    .line 720
    invoke-virtual {p0, p1, p2}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 720
    invoke-virtual {p0, p1}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info$Builder;

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
    .line 720
    invoke-virtual {p0, p1, p2}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info$Builder;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 860
    const/4 v2, 0x0

    .line 862
    :try_start_0
    sget-object v0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 867
    if-eqz v0, :cond_0

    .line 868
    invoke-virtual {p0, v0}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info$Builder;->mergeFrom(Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;)Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info$Builder;

    .line 871
    :cond_0
    return-object p0

    .line 863
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 864
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v0

    check-cast v0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 865
    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 867
    :catchall_0
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    :goto_0
    if-eqz v1, :cond_1

    .line 868
    invoke-virtual {p0, v1}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info$Builder;->mergeFrom(Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;)Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info$Builder;

    :cond_1
    throw v0

    .line 867
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info$Builder;
    .locals 1

    .prologue
    .line 819
    instance-of v0, p1, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;

    if-eqz v0, :cond_0

    .line 820
    check-cast p1, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;

    invoke-virtual {p0, p1}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info$Builder;->mergeFrom(Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;)Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info$Builder;

    move-result-object p0

    .line 823
    :goto_0
    return-object p0

    .line 822
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;)Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info$Builder;
    .locals 1

    .prologue
    .line 828
    invoke-static {}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;->getDefaultInstance()Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 849
    :goto_0
    return-object p0

    .line 829
    :cond_0
    invoke-virtual {p1}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;->hasLaunchPolicy()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 830
    invoke-virtual {p1}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;->getLaunchPolicy()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info$Builder;->setLaunchPolicy(I)Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info$Builder;

    .line 832
    :cond_1
    invoke-virtual {p1}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;->hasTagPolicy()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 833
    invoke-virtual {p1}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;->getTagPolicy()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info$Builder;->setTagPolicy(I)Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info$Builder;

    .line 835
    :cond_2
    invoke-virtual {p1}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;->hasDeviceTokens()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 836
    iget v0, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info$Builder;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info$Builder;->a:I

    .line 837
    invoke-static {p1}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;->a(Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info$Builder;->d:Ljava/lang/Object;

    .line 838
    invoke-virtual {p0}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info$Builder;->h()V

    .line 840
    :cond_3
    invoke-virtual {p1}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;->hasTagRemainCount()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 841
    invoke-virtual {p1}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;->getTagRemainCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info$Builder;->setTagRemainCount(I)Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info$Builder;

    .line 843
    :cond_4
    invoke-virtual {p1}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;->hasTags()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 844
    iget v0, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info$Builder;->a:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info$Builder;->a:I

    .line 845
    invoke-static {p1}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;->b(Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info$Builder;->f:Ljava/lang/Object;

    .line 846
    invoke-virtual {p0}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info$Builder;->h()V

    .line 848
    :cond_5
    invoke-virtual {p1}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public setDeviceTokens(Ljava/lang/String;)Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info$Builder;
    .locals 1

    .prologue
    .line 984
    if-nez p1, :cond_0

    .line 985
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 987
    :cond_0
    iget v0, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info$Builder;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info$Builder;->a:I

    .line 988
    iput-object p1, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info$Builder;->d:Ljava/lang/Object;

    .line 989
    invoke-virtual {p0}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info$Builder;->h()V

    .line 990
    return-object p0
.end method

.method public setDeviceTokensBytes(Lcom/google/protobuf/ByteString;)Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info$Builder;
    .locals 1

    .prologue
    .line 1006
    if-nez p1, :cond_0

    .line 1007
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1009
    :cond_0
    iget v0, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info$Builder;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info$Builder;->a:I

    .line 1010
    iput-object p1, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info$Builder;->d:Ljava/lang/Object;

    .line 1011
    invoke-virtual {p0}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info$Builder;->h()V

    .line 1012
    return-object p0
.end method

.method public setLaunchPolicy(I)Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info$Builder;
    .locals 1

    .prologue
    .line 893
    iget v0, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info$Builder;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info$Builder;->a:I

    .line 894
    iput p1, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info$Builder;->b:I

    .line 895
    invoke-virtual {p0}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info$Builder;->h()V

    .line 896
    return-object p0
.end method

.method public setTagPolicy(I)Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info$Builder;
    .locals 1

    .prologue
    .line 926
    iget v0, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info$Builder;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info$Builder;->a:I

    .line 927
    iput p1, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info$Builder;->c:I

    .line 928
    invoke-virtual {p0}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info$Builder;->h()V

    .line 929
    return-object p0
.end method

.method public setTagRemainCount(I)Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info$Builder;
    .locals 1

    .prologue
    .line 1033
    iget v0, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info$Builder;->a:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info$Builder;->a:I

    .line 1034
    iput p1, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info$Builder;->e:I

    .line 1035
    invoke-virtual {p0}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info$Builder;->h()V

    .line 1036
    return-object p0
.end method

.method public setTags(Ljava/lang/String;)Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info$Builder;
    .locals 1

    .prologue
    .line 1091
    if-nez p1, :cond_0

    .line 1092
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1094
    :cond_0
    iget v0, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info$Builder;->a:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info$Builder;->a:I

    .line 1095
    iput-object p1, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info$Builder;->f:Ljava/lang/Object;

    .line 1096
    invoke-virtual {p0}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info$Builder;->h()V

    .line 1097
    return-object p0
.end method

.method public setTagsBytes(Lcom/google/protobuf/ByteString;)Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info$Builder;
    .locals 1

    .prologue
    .line 1113
    if-nez p1, :cond_0

    .line 1114
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1116
    :cond_0
    iget v0, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info$Builder;->a:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info$Builder;->a:I

    .line 1117
    iput-object p1, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info$Builder;->f:Ljava/lang/Object;

    .line 1118
    invoke-virtual {p0}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info$Builder;->h()V

    .line 1119
    return-object p0
.end method
