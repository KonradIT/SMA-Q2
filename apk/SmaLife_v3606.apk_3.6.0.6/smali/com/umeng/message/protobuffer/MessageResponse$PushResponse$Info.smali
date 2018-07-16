.class public final Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;
.super Lcom/google/protobuf/GeneratedMessage;
.source "MessageResponse.java"

# interfaces
.implements Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$InfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/message/protobuffer/MessageResponse$PushResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Info"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info$Builder;
    }
.end annotation


# static fields
.field public static final DEVICETOKENS_FIELD_NUMBER:I = 0x3

.field public static final LAUNCHPOLICY_FIELD_NUMBER:I = 0x1

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;",
            ">;"
        }
    .end annotation
.end field

.field public static final TAGPOLICY_FIELD_NUMBER:I = 0x2

.field public static final TAGREMAINCOUNT_FIELD_NUMBER:I = 0x4

.field public static final TAGS_FIELD_NUMBER:I = 0x5

.field private static final b:Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;

.field private static final l:J


# instance fields
.field private final c:Lcom/google/protobuf/UnknownFieldSet;

.field private d:I

.field private e:I

.field private f:I

.field private g:Ljava/lang/Object;

.field private h:I

.field private i:Ljava/lang/Object;

.field private j:B

.field private k:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 426
    new-instance v0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info$1;

    invoke-direct {v0}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info$1;-><init>()V

    sput-object v0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;->PARSER:Lcom/google/protobuf/Parser;

    .line 1126
    new-instance v0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;-><init>(Z)V

    sput-object v0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;->b:Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;

    .line 1127
    sget-object v0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;->b:Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;

    invoke-direct {v0}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;->g()V

    .line 1128
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 357
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 583
    iput-byte v0, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;->j:B

    .line 613
    iput v0, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;->k:I

    .line 358
    invoke-direct {p0}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;->g()V

    .line 361
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v2

    .line 363
    const/4 v0, 0x0

    .line 364
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 365
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v3

    .line 366
    sparse-switch v3, :sswitch_data_0

    .line 371
    invoke-virtual {p0, p1, v2, p2, v3}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;->a(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    move v0, v1

    .line 373
    goto :goto_0

    :sswitch_0
    move v0, v1

    .line 369
    goto :goto_0

    .line 378
    :sswitch_1
    iget v3, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;->d:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;->d:I

    .line 379
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v3

    iput v3, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;->e:I
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 404
    :catch_0
    move-exception v0

    .line 405
    :try_start_1
    invoke-virtual {v0, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 410
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v1

    iput-object v1, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;->c:Lcom/google/protobuf/UnknownFieldSet;

    .line 411
    invoke-virtual {p0}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;->e()V

    throw v0

    .line 383
    :sswitch_2
    :try_start_2
    iget v3, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;->d:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;->d:I

    .line 384
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v3

    iput v3, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;->f:I
    :try_end_2
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 406
    :catch_1
    move-exception v0

    .line 407
    :try_start_3
    new-instance v1, Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 408
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 388
    :sswitch_3
    :try_start_4
    iget v3, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;->d:I

    or-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;->d:I

    .line 389
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;->g:Ljava/lang/Object;

    goto :goto_0

    .line 393
    :sswitch_4
    iget v3, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;->d:I

    or-int/lit8 v3, v3, 0x8

    iput v3, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;->d:I

    .line 394
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v3

    iput v3, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;->h:I

    goto :goto_0

    .line 398
    :sswitch_5
    iget v3, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;->d:I

    or-int/lit8 v3, v3, 0x10

    iput v3, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;->d:I

    .line 399
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;->i:Ljava/lang/Object;
    :try_end_4
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 410
    :cond_1
    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;->c:Lcom/google/protobuf/UnknownFieldSet;

    .line 411
    invoke-virtual {p0}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;->e()V

    .line 413
    return-void

    .line 366
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
        0x2a -> :sswitch_5
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/umeng/message/protobuffer/MessageResponse$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 329
    invoke-direct {p0, p1, p2}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/GeneratedMessage$Builder",
            "<*>;)V"
        }
    .end annotation

    .prologue
    const/4 v0, -0x1

    .line 334
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    .line 583
    iput-byte v0, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;->j:B

    .line 613
    iput v0, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;->k:I

    .line 335
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;->c:Lcom/google/protobuf/UnknownFieldSet;

    .line 336
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/umeng/message/protobuffer/MessageResponse$1;)V
    .locals 0

    .prologue
    .line 329
    invoke-direct {p0, p1}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 337
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 583
    iput-byte v0, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;->j:B

    .line 613
    iput v0, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;->k:I

    .line 337
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;->c:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method static synthetic a(Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;I)I
    .locals 0

    .prologue
    .line 329
    iput p1, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;->e:I

    return p1
.end method

.method static synthetic a(Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;->g:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic a(Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 329
    iput-object p1, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;->g:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic b(Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;I)I
    .locals 0

    .prologue
    .line 329
    iput p1, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;->f:I

    return p1
.end method

.method static synthetic b(Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;->i:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic b(Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 329
    iput-object p1, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;->i:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic c(Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;I)I
    .locals 0

    .prologue
    .line 329
    iput p1, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;->h:I

    return p1
.end method

.method static synthetic d(Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;I)I
    .locals 0

    .prologue
    .line 329
    iput p1, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;->d:I

    return p1
.end method

.method static synthetic f()Z
    .locals 1

    .prologue
    .line 329
    sget-boolean v0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;->a:Z

    return v0
.end method

.method private g()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 577
    iput v1, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;->e:I

    .line 578
    iput v1, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;->f:I

    .line 579
    const-string v0, ""

    iput-object v0, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;->g:Ljava/lang/Object;

    .line 580
    iput v1, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;->h:I

    .line 581
    const-string v0, ""

    iput-object v0, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;->i:Ljava/lang/Object;

    .line 582
    return-void
.end method

.method public static getDefaultInstance()Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;
    .locals 1

    .prologue
    .line 341
    sget-object v0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;->b:Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 416
    invoke-static {}, Lcom/umeng/message/protobuffer/MessageResponse;->c()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info$Builder;
    .locals 1

    .prologue
    .line 704
    invoke-static {}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info$Builder;->b()Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;)Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info$Builder;
    .locals 1

    .prologue
    .line 707
    invoke-static {}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;->newBuilder()Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info$Builder;->mergeFrom(Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;)Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 684
    sget-object v0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 690
    sget-object v0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 654
    sget-object v0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 660
    sget-object v0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 695
    sget-object v0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 701
    sget-object v0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 674
    sget-object v0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 680
    sget-object v0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 664
    sget-object v0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 670
    sget-object v0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;

    return-object v0
.end method


# virtual methods
.method protected a(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info$Builder;
    .locals 2

    .prologue
    .line 714
    new-instance v0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/umeng/message/protobuffer/MessageResponse$1;)V

    .line 715
    return-object v0
.end method

.method protected b()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 3

    .prologue
    .line 421
    invoke-static {}, Lcom/umeng/message/protobuffer/MessageResponse;->d()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;

    const-class v2, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info$Builder;

    .line 422
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic b(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 329
    invoke-virtual {p0, p1}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;->a(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected c()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 648
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage;->c()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 329
    invoke-virtual {p0}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;->getDefaultInstanceForType()Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 329
    invoke-virtual {p0}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;->getDefaultInstanceForType()Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;
    .locals 1

    .prologue
    .line 345
    sget-object v0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;->b:Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;

    return-object v0
.end method

.method public getDeviceTokens()Ljava/lang/String;
    .locals 2

    .prologue
    .line 487
    iget-object v0, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;->g:Ljava/lang/Object;

    .line 488
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 489
    check-cast v0, Ljava/lang/String;

    .line 497
    :goto_0
    return-object v0

    .line 491
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 493
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 494
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 495
    iput-object v1, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;->g:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 497
    goto :goto_0
.end method

.method public getDeviceTokensBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 505
    iget-object v0, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;->g:Ljava/lang/Object;

    .line 506
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 507
    check-cast v0, Ljava/lang/String;

    .line 508
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 510
    iput-object v0, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;->g:Ljava/lang/Object;

    .line 513
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public getLaunchPolicy()I
    .locals 1

    .prologue
    .line 455
    iget v0, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;->e:I

    return v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;",
            ">;"
        }
    .end annotation

    .prologue
    .line 438
    sget-object v0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 615
    iget v0, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;->k:I

    .line 616
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 641
    :goto_0
    return v0

    .line 618
    :cond_0
    const/4 v0, 0x0

    .line 619
    iget v1, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;->d:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    .line 620
    iget v1, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;->e:I

    .line 621
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 623
    :cond_1
    iget v1, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;->d:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_2

    .line 624
    iget v1, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;->f:I

    .line 625
    invoke-static {v3, v1}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 627
    :cond_2
    iget v1, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;->d:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_3

    .line 628
    const/4 v1, 0x3

    .line 629
    invoke-virtual {p0}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;->getDeviceTokensBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 631
    :cond_3
    iget v1, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;->d:I

    and-int/lit8 v1, v1, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_4

    .line 632
    iget v1, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;->h:I

    .line 633
    invoke-static {v4, v1}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 635
    :cond_4
    iget v1, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;->d:I

    and-int/lit8 v1, v1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_5

    .line 636
    const/4 v1, 0x5

    .line 637
    invoke-virtual {p0}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;->getTagsBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 639
    :cond_5
    invoke-virtual {p0}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 640
    iput v0, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;->k:I

    goto :goto_0
.end method

.method public getTagPolicy()I
    .locals 1

    .prologue
    .line 471
    iget v0, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;->f:I

    return v0
.end method

.method public getTagRemainCount()I
    .locals 1

    .prologue
    .line 530
    iget v0, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;->h:I

    return v0
.end method

.method public getTags()Ljava/lang/String;
    .locals 2

    .prologue
    .line 546
    iget-object v0, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;->i:Ljava/lang/Object;

    .line 547
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 548
    check-cast v0, Ljava/lang/String;

    .line 556
    :goto_0
    return-object v0

    .line 550
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 552
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 553
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 554
    iput-object v1, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;->i:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 556
    goto :goto_0
.end method

.method public getTagsBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 564
    iget-object v0, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;->i:Ljava/lang/Object;

    .line 565
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 566
    check-cast v0, Ljava/lang/String;

    .line 567
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 569
    iput-object v0, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;->i:Ljava/lang/Object;

    .line 572
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .prologue
    .line 352
    iget-object v0, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;->c:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hasDeviceTokens()Z
    .locals 2

    .prologue
    .line 481
    iget v0, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;->d:I

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

    .line 449
    iget v1, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;->d:I

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
    .line 465
    iget v0, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;->d:I

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
    .line 524
    iget v0, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;->d:I

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
    .line 540
    iget v0, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;->d:I

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
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 585
    iget-byte v1, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;->j:B

    .line 586
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    if-ne v1, v0, :cond_0

    .line 589
    :goto_0
    return v0

    .line 586
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 588
    :cond_1
    iput-byte v0, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;->j:B

    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 329
    invoke-virtual {p0}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;->newBuilderForType()Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 329
    invoke-virtual {p0}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;->newBuilderForType()Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info$Builder;
    .locals 1

    .prologue
    .line 705
    invoke-static {}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;->newBuilder()Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 329
    invoke-virtual {p0}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;->toBuilder()Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 329
    invoke-virtual {p0}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;->toBuilder()Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info$Builder;
    .locals 1

    .prologue
    .line 709
    invoke-static {p0}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;->newBuilder(Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;)Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info$Builder;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 594
    invoke-virtual {p0}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;->getSerializedSize()I

    .line 595
    iget v0, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;->d:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 596
    iget v0, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;->e:I

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 598
    :cond_0
    iget v0, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;->d:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 599
    iget v0, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;->f:I

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 601
    :cond_1
    iget v0, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;->d:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2

    .line 602
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;->getDeviceTokensBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 604
    :cond_2
    iget v0, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;->d:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    .line 605
    iget v0, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;->h:I

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 607
    :cond_3
    iget v0, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;->d:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_4

    .line 608
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;->getTagsBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 610
    :cond_4
    invoke-virtual {p0}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 611
    return-void
.end method
