.class public final Lcom/umeng/message/protobuffer/PushMessage$PushRequest;
.super Lcom/google/protobuf/GeneratedMessage;
.source "PushMessage.java"

# interfaces
.implements Lcom/umeng/message/protobuffer/PushMessage$PushRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/message/protobuffer/PushMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PushRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;,
        Lcom/umeng/message/protobuffer/PushMessage$PushRequest$entityEncodingFormat;
    }
.end annotation


# static fields
.field public static final CHECKSUM_FIELD_NUMBER:I = 0x5

.field public static final ENCRYPTION_FIELD_NUMBER:I = 0x7

.field public static final ENTITY_FIELD_NUMBER:I = 0x8

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/umeng/message/protobuffer/PushMessage$PushRequest;",
            ">;"
        }
    .end annotation
.end field

.field public static final SALT_FIELD_NUMBER:I = 0x6

.field public static final SERIALNO_FIELD_NUMBER:I = 0x3

.field public static final SIGNATURE_FIELD_NUMBER:I = 0x2

.field public static final TIMESTAMP_FIELD_NUMBER:I = 0x4

.field public static final VERSION_FIELD_NUMBER:I = 0x1

.field private static final b:Lcom/umeng/message/protobuffer/PushMessage$PushRequest;

.field private static final o:J


# instance fields
.field private final c:Lcom/google/protobuf/UnknownFieldSet;

.field private d:I

.field private e:Ljava/lang/Object;

.field private f:Ljava/lang/Object;

.field private g:I

.field private h:I

.field private i:Ljava/lang/Object;

.field private j:Ljava/lang/Object;

.field private k:Lcom/umeng/message/protobuffer/PushMessage$PushRequest$entityEncodingFormat;

.field private l:Lcom/google/protobuf/ByteString;

.field private m:B

.field private n:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 243
    new-instance v0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$1;

    invoke-direct {v0}, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$1;-><init>()V

    sput-object v0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest;->PARSER:Lcom/google/protobuf/Parser;

    .line 1402
    new-instance v0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/umeng/message/protobuffer/PushMessage$PushRequest;-><init>(Z)V

    sput-object v0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest;->b:Lcom/umeng/message/protobuffer/PushMessage$PushRequest;

    .line 1403
    sget-object v0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest;->b:Lcom/umeng/message/protobuffer/PushMessage$PushRequest;

    invoke-direct {v0}, Lcom/umeng/message/protobuffer/PushMessage$PushRequest;->g()V

    .line 1404
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 153
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 604
    iput-byte v0, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest;->m:B

    .line 643
    iput v0, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest;->n:I

    .line 154
    invoke-direct {p0}, Lcom/umeng/message/protobuffer/PushMessage$PushRequest;->g()V

    .line 157
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v2

    .line 159
    const/4 v0, 0x0

    .line 160
    :cond_0
    :goto_0
    if-nez v0, :cond_2

    .line 161
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v3

    .line 162
    sparse-switch v3, :sswitch_data_0

    .line 167
    invoke-virtual {p0, p1, v2, p2, v3}, Lcom/umeng/message/protobuffer/PushMessage$PushRequest;->a(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    move v0, v1

    .line 169
    goto :goto_0

    :sswitch_0
    move v0, v1

    .line 165
    goto :goto_0

    .line 174
    :sswitch_1
    iget v3, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest;->d:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest;->d:I

    .line 175
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest;->e:Ljava/lang/Object;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 221
    :catch_0
    move-exception v0

    .line 222
    :try_start_1
    invoke-virtual {v0, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 227
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v1

    iput-object v1, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest;->c:Lcom/google/protobuf/UnknownFieldSet;

    .line 228
    invoke-virtual {p0}, Lcom/umeng/message/protobuffer/PushMessage$PushRequest;->e()V

    throw v0

    .line 179
    :sswitch_2
    :try_start_2
    iget v3, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest;->d:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest;->d:I

    .line 180
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest;->f:Ljava/lang/Object;
    :try_end_2
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 223
    :catch_1
    move-exception v0

    .line 224
    :try_start_3
    new-instance v1, Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 225
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 184
    :sswitch_3
    :try_start_4
    iget v3, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest;->d:I

    or-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest;->d:I

    .line 185
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v3

    iput v3, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest;->g:I

    goto :goto_0

    .line 189
    :sswitch_4
    iget v3, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest;->d:I

    or-int/lit8 v3, v3, 0x8

    iput v3, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest;->d:I

    .line 190
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v3

    iput v3, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest;->h:I

    goto :goto_0

    .line 194
    :sswitch_5
    iget v3, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest;->d:I

    or-int/lit8 v3, v3, 0x10

    iput v3, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest;->d:I

    .line 195
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest;->i:Ljava/lang/Object;

    goto :goto_0

    .line 199
    :sswitch_6
    iget v3, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest;->d:I

    or-int/lit8 v3, v3, 0x20

    iput v3, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest;->d:I

    .line 200
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest;->j:Ljava/lang/Object;

    goto :goto_0

    .line 204
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v3

    .line 205
    invoke-static {v3}, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$entityEncodingFormat;->valueOf(I)Lcom/umeng/message/protobuffer/PushMessage$PushRequest$entityEncodingFormat;

    move-result-object v4

    .line 206
    if-nez v4, :cond_1

    .line 207
    const/4 v4, 0x7

    invoke-virtual {v2, v4, v3}, Lcom/google/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/google/protobuf/UnknownFieldSet$Builder;

    goto/16 :goto_0

    .line 209
    :cond_1
    iget v3, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest;->d:I

    or-int/lit8 v3, v3, 0x40

    iput v3, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest;->d:I

    .line 210
    iput-object v4, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest;->k:Lcom/umeng/message/protobuffer/PushMessage$PushRequest$entityEncodingFormat;

    goto/16 :goto_0

    .line 215
    :sswitch_8
    iget v3, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest;->d:I

    or-int/lit16 v3, v3, 0x80

    iput v3, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest;->d:I

    .line 216
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest;->l:Lcom/google/protobuf/ByteString;
    :try_end_4
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 227
    :cond_2
    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest;->c:Lcom/google/protobuf/UnknownFieldSet;

    .line 228
    invoke-virtual {p0}, Lcom/umeng/message/protobuffer/PushMessage$PushRequest;->e()V

    .line 230
    return-void

    .line 162
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x38 -> :sswitch_7
        0x42 -> :sswitch_8
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/umeng/message/protobuffer/PushMessage$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 125
    invoke-direct {p0, p1, p2}, Lcom/umeng/message/protobuffer/PushMessage$PushRequest;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    .line 130
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    .line 604
    iput-byte v0, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest;->m:B

    .line 643
    iput v0, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest;->n:I

    .line 131
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest;->c:Lcom/google/protobuf/UnknownFieldSet;

    .line 132
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/umeng/message/protobuffer/PushMessage$1;)V
    .locals 0

    .prologue
    .line 125
    invoke-direct {p0, p1}, Lcom/umeng/message/protobuffer/PushMessage$PushRequest;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 133
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 604
    iput-byte v0, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest;->m:B

    .line 643
    iput v0, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest;->n:I

    .line 133
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest;->c:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method static synthetic a(Lcom/umeng/message/protobuffer/PushMessage$PushRequest;I)I
    .locals 0

    .prologue
    .line 125
    iput p1, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest;->g:I

    return p1
.end method

.method static synthetic a(Lcom/umeng/message/protobuffer/PushMessage$PushRequest;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest;->l:Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method static synthetic a(Lcom/umeng/message/protobuffer/PushMessage$PushRequest;Lcom/umeng/message/protobuffer/PushMessage$PushRequest$entityEncodingFormat;)Lcom/umeng/message/protobuffer/PushMessage$PushRequest$entityEncodingFormat;
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest;->k:Lcom/umeng/message/protobuffer/PushMessage$PushRequest$entityEncodingFormat;

    return-object p1
.end method

.method static synthetic a(Lcom/umeng/message/protobuffer/PushMessage$PushRequest;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest;->e:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic a(Lcom/umeng/message/protobuffer/PushMessage$PushRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest;->e:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic b(Lcom/umeng/message/protobuffer/PushMessage$PushRequest;I)I
    .locals 0

    .prologue
    .line 125
    iput p1, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest;->h:I

    return p1
.end method

.method static synthetic b(Lcom/umeng/message/protobuffer/PushMessage$PushRequest;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest;->f:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic b(Lcom/umeng/message/protobuffer/PushMessage$PushRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest;->f:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic c(Lcom/umeng/message/protobuffer/PushMessage$PushRequest;I)I
    .locals 0

    .prologue
    .line 125
    iput p1, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest;->d:I

    return p1
.end method

.method static synthetic c(Lcom/umeng/message/protobuffer/PushMessage$PushRequest;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest;->i:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic c(Lcom/umeng/message/protobuffer/PushMessage$PushRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest;->i:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic d(Lcom/umeng/message/protobuffer/PushMessage$PushRequest;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest;->j:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic d(Lcom/umeng/message/protobuffer/PushMessage$PushRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest;->j:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic f()Z
    .locals 1

    .prologue
    .line 125
    sget-boolean v0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest;->a:Z

    return v0
.end method

.method private g()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 595
    const-string v0, ""

    iput-object v0, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest;->e:Ljava/lang/Object;

    .line 596
    const-string v0, ""

    iput-object v0, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest;->f:Ljava/lang/Object;

    .line 597
    iput v1, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest;->g:I

    .line 598
    iput v1, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest;->h:I

    .line 599
    const-string v0, ""

    iput-object v0, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest;->i:Ljava/lang/Object;

    .line 600
    const-string v0, ""

    iput-object v0, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest;->j:Ljava/lang/Object;

    .line 601
    sget-object v0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$entityEncodingFormat;->JSON:Lcom/umeng/message/protobuffer/PushMessage$PushRequest$entityEncodingFormat;

    iput-object v0, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest;->k:Lcom/umeng/message/protobuffer/PushMessage$PushRequest$entityEncodingFormat;

    .line 602
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest;->l:Lcom/google/protobuf/ByteString;

    .line 603
    return-void
.end method

.method public static getDefaultInstance()Lcom/umeng/message/protobuffer/PushMessage$PushRequest;
    .locals 1

    .prologue
    .line 137
    sget-object v0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest;->b:Lcom/umeng/message/protobuffer/PushMessage$PushRequest;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 233
    invoke-static {}, Lcom/umeng/message/protobuffer/PushMessage;->a()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;
    .locals 1

    .prologue
    .line 746
    invoke-static {}, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;->b()Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/umeng/message/protobuffer/PushMessage$PushRequest;)Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;
    .locals 1

    .prologue
    .line 749
    invoke-static {}, Lcom/umeng/message/protobuffer/PushMessage$PushRequest;->newBuilder()Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;->mergeFrom(Lcom/umeng/message/protobuffer/PushMessage$PushRequest;)Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/umeng/message/protobuffer/PushMessage$PushRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 726
    sget-object v0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/umeng/message/protobuffer/PushMessage$PushRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 732
    sget-object v0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/umeng/message/protobuffer/PushMessage$PushRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 696
    sget-object v0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/umeng/message/protobuffer/PushMessage$PushRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 702
    sget-object v0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/umeng/message/protobuffer/PushMessage$PushRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 737
    sget-object v0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/umeng/message/protobuffer/PushMessage$PushRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 743
    sget-object v0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/umeng/message/protobuffer/PushMessage$PushRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 716
    sget-object v0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/umeng/message/protobuffer/PushMessage$PushRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 722
    sget-object v0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/umeng/message/protobuffer/PushMessage$PushRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 706
    sget-object v0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/umeng/message/protobuffer/PushMessage$PushRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 712
    sget-object v0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest;

    return-object v0
.end method


# virtual methods
.method protected a(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;
    .locals 2

    .prologue
    .line 756
    new-instance v0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/umeng/message/protobuffer/PushMessage$1;)V

    .line 757
    return-object v0
.end method

.method protected b()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 3

    .prologue
    .line 238
    invoke-static {}, Lcom/umeng/message/protobuffer/PushMessage;->b()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/umeng/message/protobuffer/PushMessage$PushRequest;

    const-class v2, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;

    .line 239
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic b(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 125
    invoke-virtual {p0, p1}, Lcom/umeng/message/protobuffer/PushMessage$PushRequest;->a(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;

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
    .line 690
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage;->c()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getChecksum()Ljava/lang/String;
    .locals 2

    .prologue
    .line 481
    iget-object v0, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest;->i:Ljava/lang/Object;

    .line 482
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 483
    check-cast v0, Ljava/lang/String;

    .line 491
    :goto_0
    return-object v0

    .line 485
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 487
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 488
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 489
    iput-object v1, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest;->i:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 491
    goto :goto_0
.end method

.method public getChecksumBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 499
    iget-object v0, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest;->i:Ljava/lang/Object;

    .line 500
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 501
    check-cast v0, Ljava/lang/String;

    .line 502
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 504
    iput-object v0, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest;->i:Ljava/lang/Object;

    .line 507
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 125
    invoke-virtual {p0}, Lcom/umeng/message/protobuffer/PushMessage$PushRequest;->getDefaultInstanceForType()Lcom/umeng/message/protobuffer/PushMessage$PushRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 125
    invoke-virtual {p0}, Lcom/umeng/message/protobuffer/PushMessage$PushRequest;->getDefaultInstanceForType()Lcom/umeng/message/protobuffer/PushMessage$PushRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/umeng/message/protobuffer/PushMessage$PushRequest;
    .locals 1

    .prologue
    .line 141
    sget-object v0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest;->b:Lcom/umeng/message/protobuffer/PushMessage$PushRequest;

    return-object v0
.end method

.method public getEncryption()Lcom/umeng/message/protobuffer/PushMessage$PushRequest$entityEncodingFormat;
    .locals 1

    .prologue
    .line 567
    iget-object v0, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest;->k:Lcom/umeng/message/protobuffer/PushMessage$PushRequest$entityEncodingFormat;

    return-object v0
.end method

.method public getEntity()Lcom/google/protobuf/ByteString;
    .locals 1

    .prologue
    .line 591
    iget-object v0, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest;->l:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/umeng/message/protobuffer/PushMessage$PushRequest;",
            ">;"
        }
    .end annotation

    .prologue
    .line 255
    sget-object v0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSalt()Ljava/lang/String;
    .locals 2

    .prologue
    .line 524
    iget-object v0, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest;->j:Ljava/lang/Object;

    .line 525
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 526
    check-cast v0, Ljava/lang/String;

    .line 534
    :goto_0
    return-object v0

    .line 528
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 530
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 531
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 532
    iput-object v1, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest;->j:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 534
    goto :goto_0
.end method

.method public getSaltBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 542
    iget-object v0, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest;->j:Ljava/lang/Object;

    .line 543
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 544
    check-cast v0, Ljava/lang/String;

    .line 545
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 547
    iput-object v0, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest;->j:Ljava/lang/Object;

    .line 550
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public getSerialNo()I
    .locals 1

    .prologue
    .line 449
    iget v0, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest;->g:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 645
    iget v0, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest;->n:I

    .line 646
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 683
    :goto_0
    return v0

    .line 648
    :cond_0
    const/4 v0, 0x0

    .line 649
    iget v1, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest;->d:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    .line 651
    invoke-virtual {p0}, Lcom/umeng/message/protobuffer/PushMessage$PushRequest;->getVersionBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 653
    :cond_1
    iget v1, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest;->d:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_2

    .line 655
    invoke-virtual {p0}, Lcom/umeng/message/protobuffer/PushMessage$PushRequest;->getSignatureBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 657
    :cond_2
    iget v1, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest;->d:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_3

    .line 658
    const/4 v1, 0x3

    iget v2, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest;->g:I

    .line 659
    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 661
    :cond_3
    iget v1, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest;->d:I

    and-int/lit8 v1, v1, 0x8

    if-ne v1, v5, :cond_4

    .line 662
    iget v1, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest;->h:I

    .line 663
    invoke-static {v4, v1}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 665
    :cond_4
    iget v1, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest;->d:I

    and-int/lit8 v1, v1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_5

    .line 666
    const/4 v1, 0x5

    .line 667
    invoke-virtual {p0}, Lcom/umeng/message/protobuffer/PushMessage$PushRequest;->getChecksumBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 669
    :cond_5
    iget v1, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest;->d:I

    and-int/lit8 v1, v1, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_6

    .line 670
    const/4 v1, 0x6

    .line 671
    invoke-virtual {p0}, Lcom/umeng/message/protobuffer/PushMessage$PushRequest;->getSaltBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 673
    :cond_6
    iget v1, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest;->d:I

    and-int/lit8 v1, v1, 0x40

    const/16 v2, 0x40

    if-ne v1, v2, :cond_7

    .line 674
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest;->k:Lcom/umeng/message/protobuffer/PushMessage$PushRequest$entityEncodingFormat;

    .line 675
    invoke-virtual {v2}, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$entityEncodingFormat;->getNumber()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 677
    :cond_7
    iget v1, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest;->d:I

    and-int/lit16 v1, v1, 0x80

    const/16 v2, 0x80

    if-ne v1, v2, :cond_8

    .line 678
    iget-object v1, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest;->l:Lcom/google/protobuf/ByteString;

    .line 679
    invoke-static {v5, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 681
    :cond_8
    invoke-virtual {p0}, Lcom/umeng/message/protobuffer/PushMessage$PushRequest;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 682
    iput v0, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest;->n:I

    goto/16 :goto_0
.end method

.method public getSignature()Ljava/lang/String;
    .locals 2

    .prologue
    .line 406
    iget-object v0, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest;->f:Ljava/lang/Object;

    .line 407
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 408
    check-cast v0, Ljava/lang/String;

    .line 416
    :goto_0
    return-object v0

    .line 410
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 412
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 413
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 414
    iput-object v1, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest;->f:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 416
    goto :goto_0
.end method

.method public getSignatureBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 424
    iget-object v0, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest;->f:Ljava/lang/Object;

    .line 425
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 426
    check-cast v0, Ljava/lang/String;

    .line 427
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 429
    iput-object v0, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest;->f:Ljava/lang/Object;

    .line 432
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public getTimestamp()I
    .locals 1

    .prologue
    .line 465
    iget v0, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest;->h:I

    return v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest;->c:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 363
    iget-object v0, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest;->e:Ljava/lang/Object;

    .line 364
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 365
    check-cast v0, Ljava/lang/String;

    .line 373
    :goto_0
    return-object v0

    .line 367
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 369
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 370
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 371
    iput-object v1, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest;->e:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 373
    goto :goto_0
.end method

.method public getVersionBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 381
    iget-object v0, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest;->e:Ljava/lang/Object;

    .line 382
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 383
    check-cast v0, Ljava/lang/String;

    .line 384
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 386
    iput-object v0, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest;->e:Ljava/lang/Object;

    .line 389
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public hasChecksum()Z
    .locals 2

    .prologue
    .line 475
    iget v0, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest;->d:I

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
    .line 561
    iget v0, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest;->d:I

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
    .line 581
    iget v0, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest;->d:I

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
    .line 518
    iget v0, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest;->d:I

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
    .line 443
    iget v0, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest;->d:I

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
    .line 400
    iget v0, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest;->d:I

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
    .line 459
    iget v0, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest;->d:I

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

    .line 357
    iget v1, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest;->d:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

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

    .line 606
    iget-byte v1, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest;->m:B

    .line 607
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    if-ne v1, v0, :cond_0

    .line 610
    :goto_0
    return v0

    .line 607
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 609
    :cond_1
    iput-byte v0, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest;->m:B

    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 125
    invoke-virtual {p0}, Lcom/umeng/message/protobuffer/PushMessage$PushRequest;->newBuilderForType()Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 125
    invoke-virtual {p0}, Lcom/umeng/message/protobuffer/PushMessage$PushRequest;->newBuilderForType()Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;
    .locals 1

    .prologue
    .line 747
    invoke-static {}, Lcom/umeng/message/protobuffer/PushMessage$PushRequest;->newBuilder()Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 125
    invoke-virtual {p0}, Lcom/umeng/message/protobuffer/PushMessage$PushRequest;->toBuilder()Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 125
    invoke-virtual {p0}, Lcom/umeng/message/protobuffer/PushMessage$PushRequest;->toBuilder()Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;
    .locals 1

    .prologue
    .line 751
    invoke-static {p0}, Lcom/umeng/message/protobuffer/PushMessage$PushRequest;->newBuilder(Lcom/umeng/message/protobuffer/PushMessage$PushRequest;)Lcom/umeng/message/protobuffer/PushMessage$PushRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x4

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 615
    invoke-virtual {p0}, Lcom/umeng/message/protobuffer/PushMessage$PushRequest;->getSerializedSize()I

    .line 616
    iget v0, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest;->d:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 617
    invoke-virtual {p0}, Lcom/umeng/message/protobuffer/PushMessage$PushRequest;->getVersionBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 619
    :cond_0
    iget v0, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest;->d:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 620
    invoke-virtual {p0}, Lcom/umeng/message/protobuffer/PushMessage$PushRequest;->getSignatureBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 622
    :cond_1
    iget v0, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest;->d:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2

    .line 623
    const/4 v0, 0x3

    iget v1, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest;->g:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 625
    :cond_2
    iget v0, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest;->d:I

    and-int/lit8 v0, v0, 0x8

    if-ne v0, v4, :cond_3

    .line 626
    iget v0, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest;->h:I

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 628
    :cond_3
    iget v0, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest;->d:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_4

    .line 629
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/umeng/message/protobuffer/PushMessage$PushRequest;->getChecksumBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 631
    :cond_4
    iget v0, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest;->d:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_5

    .line 632
    const/4 v0, 0x6

    invoke-virtual {p0}, Lcom/umeng/message/protobuffer/PushMessage$PushRequest;->getSaltBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 634
    :cond_5
    iget v0, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest;->d:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_6

    .line 635
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest;->k:Lcom/umeng/message/protobuffer/PushMessage$PushRequest$entityEncodingFormat;

    invoke-virtual {v1}, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$entityEncodingFormat;->getNumber()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 637
    :cond_6
    iget v0, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest;->d:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_7

    .line 638
    iget-object v0, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest;->l:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v4, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 640
    :cond_7
    invoke-virtual {p0}, Lcom/umeng/message/protobuffer/PushMessage$PushRequest;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 641
    return-void
.end method
