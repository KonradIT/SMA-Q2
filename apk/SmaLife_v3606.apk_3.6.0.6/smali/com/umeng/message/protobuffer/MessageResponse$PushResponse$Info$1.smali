.class final Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info$1;
.super Lcom/google/protobuf/AbstractParser;
.source "MessageResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/AbstractParser",
        "<",
        "Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 427
    invoke-direct {p0}, Lcom/google/protobuf/AbstractParser;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 432
    new-instance v0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/umeng/message/protobuffer/MessageResponse$1;)V

    return-object v0
.end method

.method public synthetic parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 427
    invoke-virtual {p0, p1, p2}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info$1;->a(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;

    move-result-object v0

    return-object v0
.end method
