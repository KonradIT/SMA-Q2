.class public interface abstract Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$InfoOrBuilder;
.super Ljava/lang/Object;
.source "MessageResponse.java"

# interfaces
.implements Lcom/google/protobuf/MessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/message/protobuffer/MessageResponse$PushResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "InfoOrBuilder"
.end annotation


# virtual methods
.method public abstract getDeviceTokens()Ljava/lang/String;
.end method

.method public abstract getDeviceTokensBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getLaunchPolicy()I
.end method

.method public abstract getTagPolicy()I
.end method

.method public abstract getTagRemainCount()I
.end method

.method public abstract getTags()Ljava/lang/String;
.end method

.method public abstract getTagsBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract hasDeviceTokens()Z
.end method

.method public abstract hasLaunchPolicy()Z
.end method

.method public abstract hasTagPolicy()Z
.end method

.method public abstract hasTagRemainCount()Z
.end method

.method public abstract hasTags()Z
.end method
