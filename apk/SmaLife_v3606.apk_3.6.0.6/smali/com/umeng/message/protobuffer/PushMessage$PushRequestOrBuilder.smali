.class public interface abstract Lcom/umeng/message/protobuffer/PushMessage$PushRequestOrBuilder;
.super Ljava/lang/Object;
.source "PushMessage.java"

# interfaces
.implements Lcom/google/protobuf/MessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/message/protobuffer/PushMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PushRequestOrBuilder"
.end annotation


# virtual methods
.method public abstract getChecksum()Ljava/lang/String;
.end method

.method public abstract getChecksumBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getEncryption()Lcom/umeng/message/protobuffer/PushMessage$PushRequest$entityEncodingFormat;
.end method

.method public abstract getEntity()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getSalt()Ljava/lang/String;
.end method

.method public abstract getSaltBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getSerialNo()I
.end method

.method public abstract getSignature()Ljava/lang/String;
.end method

.method public abstract getSignatureBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getTimestamp()I
.end method

.method public abstract getVersion()Ljava/lang/String;
.end method

.method public abstract getVersionBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract hasChecksum()Z
.end method

.method public abstract hasEncryption()Z
.end method

.method public abstract hasEntity()Z
.end method

.method public abstract hasSalt()Z
.end method

.method public abstract hasSerialNo()Z
.end method

.method public abstract hasSignature()Z
.end method

.method public abstract hasTimestamp()Z
.end method

.method public abstract hasVersion()Z
.end method
