.class public final Lcom/umeng/message/protobuffer/MessageResponse$PushResponse;
.super Lcom/google/protobuf/GeneratedMessage;
.source "MessageResponse.java"

# interfaces
.implements Lcom/umeng/message/protobuffer/MessageResponse$PushResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/message/protobuffer/MessageResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PushResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Builder;,
        Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;,
        Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$InfoOrBuilder;,
        Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$responseCode;
    }
.end annotation


# static fields
.field public static final CODE_FIELD_NUMBER:I = 0x1

.field public static final DESCRIPTION_FIELD_NUMBER:I = 0x2

.field public static final INFO_FIELD_NUMBER:I = 0x3

.field public static PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/umeng/message/protobuffer/MessageResponse$PushResponse;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Lcom/umeng/message/protobuffer/MessageResponse$PushResponse;

.field private static final j:J


# instance fields
.field private final c:Lcom/google/protobuf/UnknownFieldSet;

.field private d:I

.field private e:Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$responseCode;

.field private f:Ljava/lang/Object;

.field private g:Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;

.field private h:B

.field private i:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 157
    new-instance v0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$1;

    invoke-direct {v0}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$1;-><init>()V

    sput-object v0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse;->PARSER:Lcom/google/protobuf/Parser;

    .line 1718
    new-instance v0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse;-><init>(Z)V

    sput-object v0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse;->b:Lcom/umeng/message/protobuffer/MessageResponse$PushResponse;

    .line 1719
    sget-object v0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse;->b:Lcom/umeng/message/protobuffer/MessageResponse$PushResponse;

    invoke-direct {v0}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse;->g()V

    .line 1720
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    const/4 v0, -0x1

    const/4 v1, 0x1

    .line 84
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 1220
    iput-byte v0, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse;->h:B

    .line 1244
    iput v0, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse;->i:I

    .line 85
    invoke-direct {p0}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse;->g()V

    .line 88
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v4

    .line 90
    const/4 v2, 0x0

    .line 91
    :goto_0
    if-nez v2, :cond_2

    .line 92
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 93
    sparse-switch v0, :sswitch_data_0

    .line 98
    invoke-virtual {p0, p1, v4, p2, v0}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse;->a(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v1

    :goto_1
    move v2, v0

    .line 134
    goto :goto_0

    :sswitch_0
    move v0, v1

    .line 96
    goto :goto_1

    .line 105
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 106
    invoke-static {v0}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$responseCode;->valueOf(I)Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$responseCode;

    move-result-object v3

    .line 107
    if-nez v3, :cond_0

    .line 108
    const/4 v3, 0x1

    invoke-virtual {v4, v3, v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/google/protobuf/UnknownFieldSet$Builder;

    move v0, v2

    goto :goto_1

    .line 110
    :cond_0
    iget v0, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse;->d:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse;->d:I

    .line 111
    iput-object v3, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse;->e:Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$responseCode;

    move v0, v2

    .line 113
    goto :goto_1

    .line 116
    :sswitch_2
    iget v0, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse;->d:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse;->d:I

    .line 117
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse;->f:Ljava/lang/Object;

    move v0, v2

    .line 118
    goto :goto_1

    .line 121
    :sswitch_3
    const/4 v0, 0x0

    .line 122
    iget v3, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse;->d:I

    and-int/lit8 v3, v3, 0x4

    const/4 v5, 0x4

    if-ne v3, v5, :cond_3

    .line 123
    iget-object v0, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse;->g:Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;

    invoke-virtual {v0}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;->toBuilder()Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info$Builder;

    move-result-object v0

    move-object v3, v0

    .line 125
    :goto_2
    sget-object v0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v0

    check-cast v0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;

    iput-object v0, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse;->g:Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;

    .line 126
    if-eqz v3, :cond_1

    .line 127
    iget-object v0, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse;->g:Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;

    invoke-virtual {v3, v0}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info$Builder;->mergeFrom(Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;)Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info$Builder;

    .line 128
    invoke-virtual {v3}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info$Builder;->buildPartial()Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse;->g:Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;

    .line 130
    :cond_1
    iget v0, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse;->d:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse;->d:I
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v2

    .line 131
    goto :goto_1

    .line 141
    :cond_2
    invoke-virtual {v4}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse;->c:Lcom/google/protobuf/UnknownFieldSet;

    .line 142
    invoke-virtual {p0}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse;->e()V

    .line 144
    return-void

    .line 135
    :catch_0
    move-exception v0

    .line 136
    :try_start_1
    invoke-virtual {v0, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 141
    :catchall_0
    move-exception v0

    invoke-virtual {v4}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v1

    iput-object v1, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse;->c:Lcom/google/protobuf/UnknownFieldSet;

    .line 142
    invoke-virtual {p0}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse;->e()V

    throw v0

    .line 137
    :catch_1
    move-exception v0

    .line 138
    :try_start_2
    new-instance v1, Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 139
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_3
    move-object v3, v0

    goto :goto_2

    :cond_4
    move v0, v2

    goto/16 :goto_1

    .line 93
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
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
    .line 56
    invoke-direct {p0, p1, p2}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    .line 61
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    .line 1220
    iput-byte v0, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse;->h:B

    .line 1244
    iput v0, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse;->i:I

    .line 62
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse;->c:Lcom/google/protobuf/UnknownFieldSet;

    .line 63
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/umeng/message/protobuffer/MessageResponse$1;)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 64
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 1220
    iput-byte v0, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse;->h:B

    .line 1244
    iput v0, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse;->i:I

    .line 64
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse;->c:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method static synthetic a(Lcom/umeng/message/protobuffer/MessageResponse$PushResponse;I)I
    .locals 0

    .prologue
    .line 56
    iput p1, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse;->d:I

    return p1
.end method

.method static synthetic a(Lcom/umeng/message/protobuffer/MessageResponse$PushResponse;Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;)Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse;->g:Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;

    return-object p1
.end method

.method static synthetic a(Lcom/umeng/message/protobuffer/MessageResponse$PushResponse;Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$responseCode;)Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$responseCode;
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse;->e:Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$responseCode;

    return-object p1
.end method

.method static synthetic a(Lcom/umeng/message/protobuffer/MessageResponse$PushResponse;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse;->f:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic a(Lcom/umeng/message/protobuffer/MessageResponse$PushResponse;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse;->f:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic f()Z
    .locals 1

    .prologue
    .line 56
    sget-boolean v0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse;->a:Z

    return v0
.end method

.method private g()V
    .locals 1

    .prologue
    .line 1216
    sget-object v0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$responseCode;->SUCCESS:Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$responseCode;

    iput-object v0, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse;->e:Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$responseCode;

    .line 1217
    const-string v0, ""

    iput-object v0, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse;->f:Ljava/lang/Object;

    .line 1218
    invoke-static {}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;->getDefaultInstance()Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse;->g:Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;

    .line 1219
    return-void
.end method

.method public static getDefaultInstance()Lcom/umeng/message/protobuffer/MessageResponse$PushResponse;
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse;->b:Lcom/umeng/message/protobuffer/MessageResponse$PushResponse;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 147
    invoke-static {}, Lcom/umeng/message/protobuffer/MessageResponse;->a()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Builder;
    .locals 1

    .prologue
    .line 1327
    invoke-static {}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Builder;->b()Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/umeng/message/protobuffer/MessageResponse$PushResponse;)Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Builder;
    .locals 1

    .prologue
    .line 1330
    invoke-static {}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse;->newBuilder()Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Builder;->mergeFrom(Lcom/umeng/message/protobuffer/MessageResponse$PushResponse;)Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/umeng/message/protobuffer/MessageResponse$PushResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1307
    sget-object v0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/umeng/message/protobuffer/MessageResponse$PushResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1313
    sget-object v0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/umeng/message/protobuffer/MessageResponse$PushResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1277
    sget-object v0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/umeng/message/protobuffer/MessageResponse$PushResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1283
    sget-object v0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/umeng/message/protobuffer/MessageResponse$PushResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1318
    sget-object v0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/umeng/message/protobuffer/MessageResponse$PushResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1324
    sget-object v0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/umeng/message/protobuffer/MessageResponse$PushResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1297
    sget-object v0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/umeng/message/protobuffer/MessageResponse$PushResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1303
    sget-object v0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/umeng/message/protobuffer/MessageResponse$PushResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1287
    sget-object v0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/umeng/message/protobuffer/MessageResponse$PushResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1293
    sget-object v0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse;

    return-object v0
.end method


# virtual methods
.method protected a(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Builder;
    .locals 2

    .prologue
    .line 1337
    new-instance v0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/umeng/message/protobuffer/MessageResponse$1;)V

    .line 1338
    return-object v0
.end method

.method protected b()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 3

    .prologue
    .line 152
    invoke-static {}, Lcom/umeng/message/protobuffer/MessageResponse;->b()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse;

    const-class v2, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Builder;

    .line 153
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic b(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 56
    invoke-virtual {p0, p1}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse;->a(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Builder;

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
    .line 1271
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage;->c()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getCode()Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$responseCode;
    .locals 1

    .prologue
    .line 1147
    iget-object v0, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse;->e:Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$responseCode;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse;->getDefaultInstanceForType()Lcom/umeng/message/protobuffer/MessageResponse$PushResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse;->getDefaultInstanceForType()Lcom/umeng/message/protobuffer/MessageResponse$PushResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/umeng/message/protobuffer/MessageResponse$PushResponse;
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse;->b:Lcom/umeng/message/protobuffer/MessageResponse$PushResponse;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1163
    iget-object v0, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse;->f:Ljava/lang/Object;

    .line 1164
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1165
    check-cast v0, Ljava/lang/String;

    .line 1173
    :goto_0
    return-object v0

    .line 1167
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1169
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 1170
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1171
    iput-object v1, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse;->f:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 1173
    goto :goto_0
.end method

.method public getDescriptionBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 1181
    iget-object v0, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse;->f:Ljava/lang/Object;

    .line 1182
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1183
    check-cast v0, Ljava/lang/String;

    .line 1184
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1186
    iput-object v0, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse;->f:Ljava/lang/Object;

    .line 1189
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public getInfo()Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;
    .locals 1

    .prologue
    .line 1206
    iget-object v0, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse;->g:Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;

    return-object v0
.end method

.method public getInfoOrBuilder()Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$InfoOrBuilder;
    .locals 1

    .prologue
    .line 1212
    iget-object v0, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse;->g:Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/umeng/message/protobuffer/MessageResponse$PushResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 169
    sget-object v0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 1246
    iget v0, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse;->i:I

    .line 1247
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1264
    :goto_0
    return v0

    .line 1249
    :cond_0
    const/4 v0, 0x0

    .line 1250
    iget v1, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse;->d:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    .line 1251
    iget-object v1, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse;->e:Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$responseCode;

    .line 1252
    invoke-virtual {v1}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$responseCode;->getNumber()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1254
    :cond_1
    iget v1, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse;->d:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_2

    .line 1256
    invoke-virtual {p0}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse;->getDescriptionBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1258
    :cond_2
    iget v1, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse;->d:I

    and-int/lit8 v1, v1, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    .line 1259
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse;->g:Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;

    .line 1260
    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1262
    :cond_3
    invoke-virtual {p0}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 1263
    iput v0, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse;->i:I

    goto :goto_0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse;->c:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hasCode()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1141
    iget v1, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse;->d:I

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
    .line 1157
    iget v0, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse;->d:I

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
    .line 1200
    iget v0, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse;->d:I

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
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 1222
    iget-byte v1, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse;->h:B

    .line 1223
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    if-ne v1, v0, :cond_0

    .line 1226
    :goto_0
    return v0

    .line 1223
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1225
    :cond_1
    iput-byte v0, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse;->h:B

    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse;->newBuilderForType()Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse;->newBuilderForType()Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Builder;
    .locals 1

    .prologue
    .line 1328
    invoke-static {}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse;->newBuilder()Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse;->toBuilder()Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse;->toBuilder()Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Builder;
    .locals 1

    .prologue
    .line 1332
    invoke-static {p0}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse;->newBuilder(Lcom/umeng/message/protobuffer/MessageResponse$PushResponse;)Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 1231
    invoke-virtual {p0}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse;->getSerializedSize()I

    .line 1232
    iget v0, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse;->d:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 1233
    iget-object v0, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse;->e:Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$responseCode;

    invoke-virtual {v0}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$responseCode;->getNumber()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 1235
    :cond_0
    iget v0, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse;->d:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 1236
    invoke-virtual {p0}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse;->getDescriptionBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1238
    :cond_1
    iget v0, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse;->d:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 1239
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse;->g:Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 1241
    :cond_2
    invoke-virtual {p0}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 1242
    return-void
.end method
