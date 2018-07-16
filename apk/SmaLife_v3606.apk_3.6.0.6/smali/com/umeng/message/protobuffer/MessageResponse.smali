.class public final Lcom/umeng/message/protobuffer/MessageResponse;
.super Ljava/lang/Object;
.source "MessageResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/message/protobuffer/MessageResponse$PushResponse;,
        Lcom/umeng/message/protobuffer/MessageResponse$PushResponseOrBuilder;
    }
.end annotation


# static fields
.field private static a:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static b:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static c:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static d:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static e:Lcom/google/protobuf/Descriptors$FileDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1743
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\n0com/umeng/message/protobuffer/PushResponse.proto\u0012\u001dcom.umeng.message.protobuffer\"\u00e0\u0002\n\u000cPushResponse\u0012F\n\u0004code\u0018\u0001 \u0001(\u000e28.com.umeng.message.protobuffer.PushResponse.responseCode\u0012\u0013\n\u000bdescription\u0018\u0002 \u0001(\t\u0012>\n\u0004info\u0018\u0003 \u0001(\u000b20.com.umeng.message.protobuffer.PushResponse.Info\u001ak\n\u0004Info\u0012\u0014\n\u000claunchPolicy\u0018\u0001 \u0001(\u0005\u0012\u0011\n\ttagPolicy\u0018\u0002 \u0001(\u0005\u0012\u0014\n\u000cdeviceTokens\u0018\u0003 \u0001(\t\u0012\u0016\n\u000etagRemainCount\u0018\u0004 \u0001(\u0005\u0012\u000c\n\u0004tags\u0018\u0005 \u0001(\t\"F\n\u000cresponseCode\u0012\u000b\n\u0007SUCCESS\u0010\u0000\u0012\u0013\n\u000fINV"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "ALID_REQUEST\u0010\u0001\u0012\u0014\n\u0010SERVER_EXCEPTION\u0010\u0002B0\n\u001dcom.umeng.message.protobufferB\u000fMessageResponse"

    aput-object v2, v0, v1

    .line 1758
    new-instance v1, Lcom/umeng/message/protobuffer/MessageResponse$1;

    invoke-direct {v1}, Lcom/umeng/message/protobuffer/MessageResponse$1;-><init>()V

    .line 1778
    new-array v2, v3, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 1779
    invoke-static {v0, v2, v1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->internalBuildGeneratedFileFrom([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;)V

    .line 1782
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/umeng/message/protobuffer/MessageResponse;->a:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic a(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0

    .prologue
    .line 6
    sput-object p0, Lcom/umeng/message/protobuffer/MessageResponse;->a:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic a(Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 0

    .prologue
    .line 6
    sput-object p0, Lcom/umeng/message/protobuffer/MessageResponse;->e:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object p0
.end method

.method static synthetic a(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0

    .prologue
    .line 6
    sput-object p0, Lcom/umeng/message/protobuffer/MessageResponse;->b:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic b(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0

    .prologue
    .line 6
    sput-object p0, Lcom/umeng/message/protobuffer/MessageResponse;->c:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic b()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/umeng/message/protobuffer/MessageResponse;->b:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic b(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0

    .prologue
    .line 6
    sput-object p0, Lcom/umeng/message/protobuffer/MessageResponse;->d:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic c()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/umeng/message/protobuffer/MessageResponse;->c:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic d()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/umeng/message/protobuffer/MessageResponse;->d:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method public static getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    .prologue
    .line 1738
    sget-object v0, Lcom/umeng/message/protobuffer/MessageResponse;->e:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method

.method public static registerAllExtensions(Lcom/google/protobuf/ExtensionRegistry;)V
    .locals 0

    .prologue
    .line 10
    return-void
.end method
