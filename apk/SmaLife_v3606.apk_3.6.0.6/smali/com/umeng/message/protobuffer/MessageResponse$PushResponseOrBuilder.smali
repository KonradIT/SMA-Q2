.class public interface abstract Lcom/umeng/message/protobuffer/MessageResponse$PushResponseOrBuilder;
.super Ljava/lang/Object;
.source "MessageResponse.java"

# interfaces
.implements Lcom/google/protobuf/MessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/message/protobuffer/MessageResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PushResponseOrBuilder"
.end annotation


# virtual methods
.method public abstract getCode()Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$responseCode;
.end method

.method public abstract getDescription()Ljava/lang/String;
.end method

.method public abstract getDescriptionBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getInfo()Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;
.end method

.method public abstract getInfoOrBuilder()Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$InfoOrBuilder;
.end method

.method public abstract hasCode()Z
.end method

.method public abstract hasDescription()Z
.end method

.method public abstract hasInfo()Z
.end method
