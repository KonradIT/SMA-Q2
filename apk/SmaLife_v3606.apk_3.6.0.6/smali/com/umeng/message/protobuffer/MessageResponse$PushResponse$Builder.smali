.class public final Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "MessageResponse.java"

# interfaces
.implements Lcom/umeng/message/protobuffer/MessageResponse$PushResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/message/protobuffer/MessageResponse$PushResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Builder;",
        ">;",
        "Lcom/umeng/message/protobuffer/MessageResponse$PushResponseOrBuilder;"
    }
.end annotation


# instance fields
.field private a:I

.field private b:Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$responseCode;

.field private c:Ljava/lang/Object;

.field private d:Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;

.field private e:Lcom/google/protobuf/SingleFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilder",
            "<",
            "Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;",
            "Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info$Builder;",
            "Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$InfoOrBuilder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 1359
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 1488
    sget-object v0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$responseCode;->SUCCESS:Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$responseCode;

    iput-object v0, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Builder;->b:Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$responseCode;

    .line 1524
    const-string v0, ""

    iput-object v0, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Builder;->c:Ljava/lang/Object;

    .line 1598
    invoke-static {}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;->getDefaultInstance()Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Builder;->d:Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;

    .line 1360
    invoke-direct {p0}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Builder;->i()V

    .line 1361
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1

    .prologue
    .line 1365
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 1488
    sget-object v0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$responseCode;->SUCCESS:Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$responseCode;

    iput-object v0, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Builder;->b:Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$responseCode;

    .line 1524
    const-string v0, ""

    iput-object v0, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Builder;->c:Ljava/lang/Object;

    .line 1598
    invoke-static {}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;->getDefaultInstance()Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Builder;->d:Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;

    .line 1366
    invoke-direct {p0}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Builder;->i()V

    .line 1367
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/umeng/message/protobuffer/MessageResponse$1;)V
    .locals 0

    .prologue
    .line 1343
    invoke-direct {p0, p1}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic b()Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Builder;
    .locals 1

    .prologue
    .line 1343
    invoke-static {}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Builder;->j()Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 1348
    invoke-static {}, Lcom/umeng/message/protobuffer/MessageResponse;->a()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private i()V
    .locals 1

    .prologue
    .line 1369
    invoke-static {}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1370
    invoke-direct {p0}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Builder;->k()Lcom/google/protobuf/SingleFieldBuilder;

    .line 1372
    :cond_0
    return-void
.end method

.method private static j()Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Builder;
    .locals 1

    .prologue
    .line 1374
    new-instance v0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Builder;

    invoke-direct {v0}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Builder;-><init>()V

    return-object v0
.end method

.method private k()Lcom/google/protobuf/SingleFieldBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilder",
            "<",
            "Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;",
            "Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info$Builder;",
            "Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$InfoOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1703
    iget-object v0, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Builder;->e:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 1704
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilder;

    iget-object v1, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Builder;->d:Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;

    .line 1707
    invoke-virtual {p0}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Builder;->g()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v2

    .line 1708
    invoke-virtual {p0}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Builder;->f()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilder;-><init>(Lcom/google/protobuf/GeneratedMessage;Lcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Builder;->e:Lcom/google/protobuf/SingleFieldBuilder;

    .line 1709
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Builder;->d:Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;

    .line 1711
    :cond_0
    iget-object v0, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Builder;->e:Lcom/google/protobuf/SingleFieldBuilder;

    return-object v0
.end method


# virtual methods
.method protected a()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 3

    .prologue
    .line 1353
    invoke-static {}, Lcom/umeng/message/protobuffer/MessageResponse;->b()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse;

    const-class v2, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Builder;

    .line 1354
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1343
    invoke-virtual {p0}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Builder;->build()Lcom/umeng/message/protobuffer/MessageResponse$PushResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1343
    invoke-virtual {p0}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Builder;->build()Lcom/umeng/message/protobuffer/MessageResponse$PushResponse;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/umeng/message/protobuffer/MessageResponse$PushResponse;
    .locals 2

    .prologue
    .line 1406
    invoke-virtual {p0}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Builder;->buildPartial()Lcom/umeng/message/protobuffer/MessageResponse$PushResponse;

    move-result-object v0

    .line 1407
    invoke-virtual {v0}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1408
    invoke-static {v0}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Builder;->a(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 1410
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1343
    invoke-virtual {p0}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Builder;->buildPartial()Lcom/umeng/message/protobuffer/MessageResponse$PushResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1343
    invoke-virtual {p0}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Builder;->buildPartial()Lcom/umeng/message/protobuffer/MessageResponse$PushResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/umeng/message/protobuffer/MessageResponse$PushResponse;
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 1414
    new-instance v2, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/umeng/message/protobuffer/MessageResponse$1;)V

    .line 1415
    iget v3, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Builder;->a:I

    .line 1416
    const/4 v1, 0x0

    .line 1417
    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_3

    .line 1420
    :goto_0
    iget-object v1, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Builder;->b:Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$responseCode;

    invoke-static {v2, v1}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse;->a(Lcom/umeng/message/protobuffer/MessageResponse$PushResponse;Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$responseCode;)Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$responseCode;

    .line 1421
    and-int/lit8 v1, v3, 0x2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    .line 1422
    or-int/lit8 v0, v0, 0x2

    .line 1424
    :cond_0
    iget-object v1, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Builder;->c:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse;->a(Lcom/umeng/message/protobuffer/MessageResponse$PushResponse;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1425
    and-int/lit8 v1, v3, 0x4

    const/4 v3, 0x4

    if-ne v1, v3, :cond_2

    .line 1426
    or-int/lit8 v0, v0, 0x4

    move v1, v0

    .line 1428
    :goto_1
    iget-object v0, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Builder;->e:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    .line 1429
    iget-object v0, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Builder;->d:Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;

    invoke-static {v2, v0}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse;->a(Lcom/umeng/message/protobuffer/MessageResponse$PushResponse;Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;)Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;

    .line 1433
    :goto_2
    invoke-static {v2, v1}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse;->a(Lcom/umeng/message/protobuffer/MessageResponse$PushResponse;I)I

    .line 1434
    invoke-virtual {p0}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Builder;->d()V

    .line 1435
    return-object v2

    .line 1431
    :cond_1
    iget-object v0, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Builder;->e:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->build()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;

    invoke-static {v2, v0}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse;->a(Lcom/umeng/message/protobuffer/MessageResponse$PushResponse;Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;)Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;

    goto :goto_2

    :cond_2
    move v1, v0

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 1343
    invoke-virtual {p0}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Builder;->clear()Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 1343
    invoke-virtual {p0}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Builder;->clear()Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1343
    invoke-virtual {p0}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Builder;->clear()Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1343
    invoke-virtual {p0}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Builder;->clear()Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Builder;
    .locals 1

    .prologue
    .line 1378
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 1379
    sget-object v0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$responseCode;->SUCCESS:Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$responseCode;

    iput-object v0, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Builder;->b:Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$responseCode;

    .line 1380
    iget v0, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Builder;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Builder;->a:I

    .line 1381
    const-string v0, ""

    iput-object v0, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Builder;->c:Ljava/lang/Object;

    .line 1382
    iget v0, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Builder;->a:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Builder;->a:I

    .line 1383
    iget-object v0, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Builder;->e:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 1384
    invoke-static {}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;->getDefaultInstance()Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Builder;->d:Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;

    .line 1388
    :goto_0
    iget v0, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Builder;->a:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Builder;->a:I

    .line 1389
    return-object p0

    .line 1386
    :cond_0
    iget-object v0, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Builder;->e:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public clearCode()Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Builder;
    .locals 1

    .prologue
    .line 1517
    iget v0, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Builder;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Builder;->a:I

    .line 1518
    sget-object v0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$responseCode;->SUCCESS:Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$responseCode;

    iput-object v0, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Builder;->b:Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$responseCode;

    .line 1519
    invoke-virtual {p0}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Builder;->h()V

    .line 1520
    return-object p0
.end method

.method public clearDescription()Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Builder;
    .locals 1

    .prologue
    .line 1578
    iget v0, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Builder;->a:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Builder;->a:I

    .line 1579
    invoke-static {}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse;->getDefaultInstance()Lcom/umeng/message/protobuffer/MessageResponse$PushResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse;->getDescription()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Builder;->c:Ljava/lang/Object;

    .line 1580
    invoke-virtual {p0}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Builder;->h()V

    .line 1581
    return-object p0
.end method

.method public clearInfo()Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Builder;
    .locals 1

    .prologue
    .line 1670
    iget-object v0, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Builder;->e:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 1671
    invoke-static {}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;->getDefaultInstance()Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Builder;->d:Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;

    .line 1672
    invoke-virtual {p0}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Builder;->h()V

    .line 1676
    :goto_0
    iget v0, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Builder;->a:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Builder;->a:I

    .line 1677
    return-object p0

    .line 1674
    :cond_0
    iget-object v0, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Builder;->e:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 1343
    invoke-virtual {p0}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Builder;->clone()Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 1343
    invoke-virtual {p0}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Builder;->clone()Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 1343
    invoke-virtual {p0}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Builder;->clone()Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1343
    invoke-virtual {p0}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Builder;->clone()Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1343
    invoke-virtual {p0}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Builder;->clone()Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Builder;
    .locals 2

    .prologue
    .line 1393
    invoke-static {}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Builder;->j()Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Builder;->buildPartial()Lcom/umeng/message/protobuffer/MessageResponse$PushResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Builder;->mergeFrom(Lcom/umeng/message/protobuffer/MessageResponse$PushResponse;)Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Builder;

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
    .line 1343
    invoke-virtual {p0}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Builder;->clone()Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getCode()Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$responseCode;
    .locals 1

    .prologue
    .line 1499
    iget-object v0, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Builder;->b:Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$responseCode;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1343
    invoke-virtual {p0}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Builder;->getDefaultInstanceForType()Lcom/umeng/message/protobuffer/MessageResponse$PushResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1343
    invoke-virtual {p0}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Builder;->getDefaultInstanceForType()Lcom/umeng/message/protobuffer/MessageResponse$PushResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/umeng/message/protobuffer/MessageResponse$PushResponse;
    .locals 1

    .prologue
    .line 1402
    invoke-static {}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse;->getDefaultInstance()Lcom/umeng/message/protobuffer/MessageResponse$PushResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1535
    iget-object v0, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Builder;->c:Ljava/lang/Object;

    .line 1536
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 1537
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1538
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 1539
    iput-object v0, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Builder;->c:Ljava/lang/Object;

    .line 1542
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getDescriptionBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 1550
    iget-object v0, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Builder;->c:Ljava/lang/Object;

    .line 1551
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1552
    check-cast v0, Ljava/lang/String;

    .line 1553
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1555
    iput-object v0, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Builder;->c:Ljava/lang/Object;

    .line 1558
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 1398
    invoke-static {}, Lcom/umeng/message/protobuffer/MessageResponse;->a()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getInfo()Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;
    .locals 1

    .prologue
    .line 1611
    iget-object v0, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Builder;->e:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 1612
    iget-object v0, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Builder;->d:Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;

    .line 1614
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Builder;->e:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessage()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;

    goto :goto_0
.end method

.method public getInfoBuilder()Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info$Builder;
    .locals 1

    .prologue
    .line 1683
    iget v0, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Builder;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Builder;->a:I

    .line 1684
    invoke-virtual {p0}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Builder;->h()V

    .line 1685
    invoke-direct {p0}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Builder;->k()Lcom/google/protobuf/SingleFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getBuilder()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info$Builder;

    return-object v0
.end method

.method public getInfoOrBuilder()Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$InfoOrBuilder;
    .locals 1

    .prologue
    .line 1691
    iget-object v0, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Builder;->e:Lcom/google/protobuf/SingleFieldBuilder;

    if-eqz v0, :cond_0

    .line 1692
    iget-object v0, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Builder;->e:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$InfoOrBuilder;

    .line 1694
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Builder;->d:Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;

    goto :goto_0
.end method

.method public hasCode()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1493
    iget v1, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Builder;->a:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasDescription()Z
    .locals 2

    .prologue
    .line 1529
    iget v0, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Builder;->a:I

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

.method public hasInfo()Z
    .locals 2

    .prologue
    .line 1605
    iget v0, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Builder;->a:I

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

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 1465
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
    .line 1343
    invoke-virtual {p0, p1, p2}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 1343
    invoke-virtual {p0, p1}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Builder;

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
    .line 1343
    invoke-virtual {p0, p1, p2}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Builder;

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
    .line 1343
    invoke-virtual {p0, p1, p2}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1343
    invoke-virtual {p0, p1}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Builder;

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
    .line 1343
    invoke-virtual {p0, p1, p2}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Builder;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1472
    const/4 v2, 0x0

    .line 1474
    :try_start_0
    sget-object v0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1479
    if-eqz v0, :cond_0

    .line 1480
    invoke-virtual {p0, v0}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Builder;->mergeFrom(Lcom/umeng/message/protobuffer/MessageResponse$PushResponse;)Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Builder;

    .line 1483
    :cond_0
    return-object p0

    .line 1475
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 1476
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v0

    check-cast v0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1477
    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1479
    :catchall_0
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    :goto_0
    if-eqz v1, :cond_1

    .line 1480
    invoke-virtual {p0, v1}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Builder;->mergeFrom(Lcom/umeng/message/protobuffer/MessageResponse$PushResponse;)Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Builder;

    :cond_1
    throw v0

    .line 1479
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Builder;
    .locals 1

    .prologue
    .line 1439
    instance-of v0, p1, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse;

    if-eqz v0, :cond_0

    .line 1440
    check-cast p1, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse;

    invoke-virtual {p0, p1}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Builder;->mergeFrom(Lcom/umeng/message/protobuffer/MessageResponse$PushResponse;)Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Builder;

    move-result-object p0

    .line 1443
    :goto_0
    return-object p0

    .line 1442
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/umeng/message/protobuffer/MessageResponse$PushResponse;)Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Builder;
    .locals 1

    .prologue
    .line 1448
    invoke-static {}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse;->getDefaultInstance()Lcom/umeng/message/protobuffer/MessageResponse$PushResponse;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 1461
    :goto_0
    return-object p0

    .line 1449
    :cond_0
    invoke-virtual {p1}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse;->hasCode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1450
    invoke-virtual {p1}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse;->getCode()Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$responseCode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Builder;->setCode(Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$responseCode;)Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Builder;

    .line 1452
    :cond_1
    invoke-virtual {p1}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse;->hasDescription()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1453
    iget v0, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Builder;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Builder;->a:I

    .line 1454
    invoke-static {p1}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse;->a(Lcom/umeng/message/protobuffer/MessageResponse$PushResponse;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Builder;->c:Ljava/lang/Object;

    .line 1455
    invoke-virtual {p0}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Builder;->h()V

    .line 1457
    :cond_2
    invoke-virtual {p1}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse;->hasInfo()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1458
    invoke-virtual {p1}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse;->getInfo()Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Builder;->mergeInfo(Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;)Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Builder;

    .line 1460
    :cond_3
    invoke-virtual {p1}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public mergeInfo(Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;)Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Builder;
    .locals 2

    .prologue
    .line 1651
    iget-object v0, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Builder;->e:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    .line 1652
    iget v0, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Builder;->a:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Builder;->d:Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;

    .line 1653
    invoke-static {}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;->getDefaultInstance()Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 1654
    iget-object v0, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Builder;->d:Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;

    .line 1655
    invoke-static {v0}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;->newBuilder(Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;)Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info$Builder;->mergeFrom(Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;)Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info$Builder;->buildPartial()Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Builder;->d:Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;

    .line 1659
    :goto_0
    invoke-virtual {p0}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Builder;->h()V

    .line 1663
    :goto_1
    iget v0, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Builder;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Builder;->a:I

    .line 1664
    return-object p0

    .line 1657
    :cond_0
    iput-object p1, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Builder;->d:Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;

    goto :goto_0

    .line 1661
    :cond_1
    iget-object v0, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Builder;->e:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->mergeFrom(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_1
.end method

.method public setCode(Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$responseCode;)Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Builder;
    .locals 1

    .prologue
    .line 1505
    if-nez p1, :cond_0

    .line 1506
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1508
    :cond_0
    iget v0, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Builder;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Builder;->a:I

    .line 1509
    iput-object p1, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Builder;->b:Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$responseCode;

    .line 1510
    invoke-virtual {p0}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Builder;->h()V

    .line 1511
    return-object p0
.end method

.method public setDescription(Ljava/lang/String;)Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Builder;
    .locals 1

    .prologue
    .line 1566
    if-nez p1, :cond_0

    .line 1567
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1569
    :cond_0
    iget v0, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Builder;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Builder;->a:I

    .line 1570
    iput-object p1, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Builder;->c:Ljava/lang/Object;

    .line 1571
    invoke-virtual {p0}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Builder;->h()V

    .line 1572
    return-object p0
.end method

.method public setDescriptionBytes(Lcom/google/protobuf/ByteString;)Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Builder;
    .locals 1

    .prologue
    .line 1588
    if-nez p1, :cond_0

    .line 1589
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1591
    :cond_0
    iget v0, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Builder;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Builder;->a:I

    .line 1592
    iput-object p1, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Builder;->c:Ljava/lang/Object;

    .line 1593
    invoke-virtual {p0}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Builder;->h()V

    .line 1594
    return-object p0
.end method

.method public setInfo(Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info$Builder;)Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Builder;
    .locals 2

    .prologue
    .line 1638
    iget-object v0, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Builder;->e:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 1639
    invoke-virtual {p1}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info$Builder;->build()Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Builder;->d:Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;

    .line 1640
    invoke-virtual {p0}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Builder;->h()V

    .line 1644
    :goto_0
    iget v0, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Builder;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Builder;->a:I

    .line 1645
    return-object p0

    .line 1642
    :cond_0
    iget-object v0, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Builder;->e:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {p1}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info$Builder;->build()Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public setInfo(Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;)Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Builder;
    .locals 1

    .prologue
    .line 1621
    iget-object v0, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Builder;->e:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    .line 1622
    if-nez p1, :cond_0

    .line 1623
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1625
    :cond_0
    iput-object p1, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Builder;->d:Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;

    .line 1626
    invoke-virtual {p0}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Builder;->h()V

    .line 1630
    :goto_0
    iget v0, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Builder;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Builder;->a:I

    .line 1631
    return-object p0

    .line 1628
    :cond_1
    iget-object v0, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Builder;->e:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method
