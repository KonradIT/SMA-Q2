.class public Lcom/accloud/service/ACMsg;
.super Lcom/accloud/service/ACObject;
.source "ACMsg.java"


# static fields
.field public static final ACK_MSG:Ljava/lang/String; = "x-zc-ack"

.field public static final ERR_MSG:Ljava/lang/String; = "x-zc-err"

.field public static final JSON_PAYLOAD:Ljava/lang/String; = "text/json"

.field public static final MSG_NAME_HEADER:Ljava/lang/String; = "x-zc-msg-name"

.field public static final OBJECT_PAYLOAD:Ljava/lang/String; = "application/x-zc-object"

.field public static final STREAM_PAYLOAD:Ljava/lang/String; = "application/octet-stream"


# instance fields
.field private context:Lcom/accloud/service/ACContext;

.field private name:Ljava/lang/String;

.field private payload:[B

.field private payloadFormat:Ljava/lang/String;

.field private payloadSize:I

.field private streamPayload:Ljava/io/InputStream;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/accloud/service/ACObject;-><init>()V

    .line 29
    return-void
.end method

.method public static getACMsg(Ljava/lang/String;)Lcom/accloud/service/ACMsg;
    .locals 8
    .param p0, "subDomain"    # Ljava/lang/String;

    .prologue
    .line 113
    new-instance v0, Lcom/accloud/service/ACContext;

    sget-object v2, Lcom/accloud/cloudservice/AC;->majorDomain:Ljava/lang/String;

    sget-object v3, Lcom/accloud/cloudservice/AC;->context:Landroid/content/Context;

    const-string v4, "ablecloud_private_userId"

    const-wide/16 v6, 0x0

    invoke-static {v3, v4, v6, v7}, Lcom/accloud/utils/PreferencesUtils;->getLong(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v4

    invoke-direct {v0, v2, p0, v4, v5}, Lcom/accloud/service/ACContext;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    .line 114
    .local v0, "context":Lcom/accloud/service/ACContext;
    new-instance v1, Lcom/accloud/service/ACMsg;

    invoke-direct {v1}, Lcom/accloud/service/ACMsg;-><init>()V

    .line 115
    .local v1, "msg":Lcom/accloud/service/ACMsg;
    invoke-virtual {v1, v0}, Lcom/accloud/service/ACMsg;->setContext(Lcom/accloud/service/ACContext;)V

    .line 116
    return-object v1
.end method


# virtual methods
.method public closeStreamPayload()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 77
    iget-object v0, p0, Lcom/accloud/service/ACMsg;->streamPayload:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 78
    return-void
.end method

.method public getContext()Lcom/accloud/service/ACContext;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/accloud/service/ACMsg;->context:Lcom/accloud/service/ACContext;

    return-object v0
.end method

.method public getErrCode()Ljava/lang/Integer;
    .locals 2

    .prologue
    .line 100
    const-string v1, "errorCode"

    invoke-virtual {p0, v1}, Lcom/accloud/service/ACMsg;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    .line 101
    .local v0, "code":Ljava/lang/Number;
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1
.end method

.method public getErrMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    const-string v0, "error"

    invoke-virtual {p0, v0}, Lcom/accloud/service/ACMsg;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/accloud/service/ACMsg;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPayload()[B
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/accloud/service/ACMsg;->payload:[B

    return-object v0
.end method

.method public getPayloadFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/accloud/service/ACMsg;->payloadFormat:Ljava/lang/String;

    return-object v0
.end method

.method public getPayloadSize()I
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lcom/accloud/service/ACMsg;->payloadSize:I

    return v0
.end method

.method public getStreamPayload()Ljava/io/InputStream;
    .locals 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/accloud/service/ACMsg;->payload:[B

    if-nez v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/accloud/service/ACMsg;->streamPayload:Ljava/io/InputStream;

    .line 73
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/accloud/service/ACMsg;->payload:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    goto :goto_0
.end method

.method public isErr()Z
    .locals 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/accloud/service/ACMsg;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "x-zc-ack"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAck()V
    .locals 1

    .prologue
    .line 109
    const-string v0, "x-zc-ack"

    iput-object v0, p0, Lcom/accloud/service/ACMsg;->name:Ljava/lang/String;

    .line 110
    return-void
.end method

.method public setContext(Lcom/accloud/service/ACContext;)V
    .locals 0
    .param p1, "context"    # Lcom/accloud/service/ACContext;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/accloud/service/ACMsg;->context:Lcom/accloud/service/ACContext;

    .line 45
    return-void
.end method

.method public setContext(Ljava/lang/String;)V
    .locals 4
    .param p1, "subDomain"    # Ljava/lang/String;

    .prologue
    .line 48
    new-instance v0, Lcom/accloud/service/ACContext;

    sget-object v1, Lcom/accloud/cloudservice/AC;->majorDomain:Ljava/lang/String;

    sget-object v2, Lcom/accloud/cloudservice/AC;->context:Landroid/content/Context;

    const-string v3, "ablecloud_private_userId"

    invoke-static {v2, v3}, Lcom/accloud/utils/PreferencesUtils;->getLong(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v2

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/accloud/service/ACContext;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {p0, v0}, Lcom/accloud/service/ACMsg;->setContext(Lcom/accloud/service/ACContext;)V

    .line 49
    return-void
.end method

.method public setErr(Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 1
    .param p1, "errCode"    # Ljava/lang/Integer;
    .param p2, "errMsg"    # Ljava/lang/String;

    .prologue
    .line 90
    const-string v0, "x-zc-err"

    iput-object v0, p0, Lcom/accloud/service/ACMsg;->name:Ljava/lang/String;

    .line 91
    const-string v0, "errorCode"

    invoke-virtual {p0, v0, p1}, Lcom/accloud/service/ACMsg;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 92
    const-string v0, "error"

    invoke-virtual {p0, v0, p2}, Lcom/accloud/service/ACMsg;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 93
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/accloud/service/ACMsg;->name:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public setPayload([BLjava/lang/String;)V
    .locals 1
    .param p1, "payload"    # [B
    .param p2, "format"    # Ljava/lang/String;

    .prologue
    .line 64
    iput-object p2, p0, Lcom/accloud/service/ACMsg;->payloadFormat:Ljava/lang/String;

    .line 65
    iput-object p1, p0, Lcom/accloud/service/ACMsg;->payload:[B

    .line 66
    array-length v0, p1

    iput v0, p0, Lcom/accloud/service/ACMsg;->payloadSize:I

    .line 67
    return-void
.end method

.method public setStreamPayload(Ljava/io/InputStream;I)V
    .locals 2
    .param p1, "payload"    # Ljava/io/InputStream;
    .param p2, "size"    # I

    .prologue
    .line 81
    if-gez p2, :cond_0

    .line 82
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "size must be larger than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_0
    const-string v0, "application/octet-stream"

    iput-object v0, p0, Lcom/accloud/service/ACMsg;->payloadFormat:Ljava/lang/String;

    .line 85
    iput-object p1, p0, Lcom/accloud/service/ACMsg;->streamPayload:Ljava/io/InputStream;

    .line 86
    iput p2, p0, Lcom/accloud/service/ACMsg;->payloadSize:I

    .line 87
    return-void
.end method
