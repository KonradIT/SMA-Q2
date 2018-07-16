.class final Lcom/umeng/message/protobuffer/PushMessage$1;
.super Ljava/lang/Object;
.source "PushMessage.java"

# interfaces
.implements Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/message/protobuffer/PushMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1435
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public assignDescriptors(Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/ExtensionRegistry;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1438
    invoke-static {p1}, Lcom/umeng/message/protobuffer/PushMessage;->a(Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 1440
    invoke-static {}, Lcom/umeng/message/protobuffer/PushMessage;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    .line 1439
    invoke-static {v0}, Lcom/umeng/message/protobuffer/PushMessage;->a(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;

    .line 1441
    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 1443
    invoke-static {}, Lcom/umeng/message/protobuffer/PushMessage;->a()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "Version"

    aput-object v3, v2, v4

    const/4 v3, 0x1

    const-string v4, "Signature"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "SerialNo"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "Timestamp"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "Checksum"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "Salt"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "Encryption"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "Entity"

    aput-object v4, v2, v3

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    .line 1441
    invoke-static {v0}, Lcom/umeng/message/protobuffer/PushMessage;->a(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 1445
    const/4 v0, 0x0

    return-object v0
.end method
