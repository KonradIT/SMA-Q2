.class public final Lcom/umeng/message/protobuffer/PushMessage;
.super Ljava/lang/Object;
.source "PushMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/message/protobuffer/PushMessage$PushRequest;,
        Lcom/umeng/message/protobuffer/PushMessage$PushRequestOrBuilder;
    }
.end annotation


# static fields
.field private static a:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static b:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static c:Lcom/google/protobuf/Descriptors$FileDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1422
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\n/com/umeng/message/protobuffer/PushRequest.proto\u0012\u0011com.protobuf.test\"\u008d\u0002\n\u000bPushRequest\u0012\u000f\n\u0007version\u0018\u0001 \u0001(\t\u0012\u0011\n\tsignature\u0018\u0002 \u0001(\t\u0012\u0010\n\u0008serialNo\u0018\u0003 \u0001(\u0005\u0012\u0011\n\ttimestamp\u0018\u0004 \u0001(\u0005\u0012\u0010\n\u0008checksum\u0018\u0005 \u0001(\t\u0012\u000c\n\u0004salt\u0018\u0006 \u0001(\t\u0012G\n\nencryption\u0018\u0007 \u0001(\u000e23.com.protobuf.test.PushRequest.entityEncodingFormat\u0012\u000e\n\u0006entity\u0018\u0008 \u0001(\u000c\"<\n\u0014entityEncodingFormat\u0012\u0008\n\u0004JSON\u0010\u0000\u0012\u000c\n\u0008JSON_AES\u0010\u0001\u0012\u000c\n\u0008JSON_RSA\u0010\u0002B,\n\u001dcom.umeng.message.protobufferB\u000bPushMessage"

    aput-object v1, v0, v2

    .line 1434
    new-instance v1, Lcom/umeng/message/protobuffer/PushMessage$1;

    invoke-direct {v1}, Lcom/umeng/message/protobuffer/PushMessage$1;-><init>()V

    .line 1448
    new-array v2, v2, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 1449
    invoke-static {v0, v2, v1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->internalBuildGeneratedFileFrom([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;)V

    .line 1452
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
    sget-object v0, Lcom/umeng/message/protobuffer/PushMessage;->a:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic a(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0

    .prologue
    .line 6
    sput-object p0, Lcom/umeng/message/protobuffer/PushMessage;->a:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic a(Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 0

    .prologue
    .line 6
    sput-object p0, Lcom/umeng/message/protobuffer/PushMessage;->c:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object p0
.end method

.method static synthetic a(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0

    .prologue
    .line 6
    sput-object p0, Lcom/umeng/message/protobuffer/PushMessage;->b:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic b()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/umeng/message/protobuffer/PushMessage;->b:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method public static getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    .prologue
    .line 1417
    sget-object v0, Lcom/umeng/message/protobuffer/PushMessage;->c:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method

.method public static registerAllExtensions(Lcom/google/protobuf/ExtensionRegistry;)V
    .locals 0

    .prologue
    .line 10
    return-void
.end method
