.class public Lcom/accloud/service/ACDeviceMsg;
.super Ljava/lang/Object;
.source "ACDeviceMsg.java"


# instance fields
.field private code:I

.field private content:[B

.field private description:Ljava/lang/String;

.field private object:Lcom/accloud/service/ACKLVObject;

.field securityMode:Lcom/accloud/service/ACDeviceSecurityMode;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    sget-object v0, Lcom/accloud/service/ACDeviceSecurityMode;->DYNAMIC_ENCRYPTED:Lcom/accloud/service/ACDeviceSecurityMode;

    iput-object v0, p0, Lcom/accloud/service/ACDeviceMsg;->securityMode:Lcom/accloud/service/ACDeviceSecurityMode;

    .line 20
    return-void
.end method

.method public constructor <init>(ILcom/accloud/service/ACKLVObject;)V
    .locals 1
    .param p1, "code"    # I
    .param p2, "object"    # Lcom/accloud/service/ACKLVObject;

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/accloud/service/ACDeviceMsg;-><init>()V

    .line 52
    iput p1, p0, Lcom/accloud/service/ACDeviceMsg;->code:I

    .line 53
    iput-object p2, p0, Lcom/accloud/service/ACDeviceMsg;->object:Lcom/accloud/service/ACKLVObject;

    .line 54
    invoke-static {p2}, Lcom/accloud/service/ACKLVDeviceMsgMarshaller;->marshal(Lcom/accloud/service/ACKLVObject;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/accloud/service/ACDeviceMsg;->content:[B

    .line 55
    return-void
.end method

.method public constructor <init>(ILcom/accloud/service/ACKLVObject;Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # I
    .param p2, "object"    # Lcom/accloud/service/ACKLVObject;
    .param p3, "description"    # Ljava/lang/String;

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Lcom/accloud/service/ACDeviceMsg;-><init>(ILcom/accloud/service/ACKLVObject;)V

    .line 59
    iput-object p3, p0, Lcom/accloud/service/ACDeviceMsg;->description:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public constructor <init>(ILcom/accloud/service/ACObject;)V
    .locals 1
    .param p1, "code"    # I
    .param p2, "object"    # Lcom/accloud/service/ACObject;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/accloud/service/ACDeviceMsg;-><init>()V

    .line 37
    iput p1, p0, Lcom/accloud/service/ACDeviceMsg;->code:I

    .line 39
    :try_start_0
    invoke-static {p2}, Lcom/accloud/cloudservice/ACObjectMarshaller;->marshal(Lcom/accloud/service/ACObject;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/accloud/service/ACDeviceMsg;->content:[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    :goto_0
    return-void

    .line 40
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public constructor <init>(ILcom/accloud/service/ACObject;Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # I
    .param p2, "object"    # Lcom/accloud/service/ACObject;
    .param p3, "description"    # Ljava/lang/String;

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/accloud/service/ACDeviceMsg;-><init>(ILcom/accloud/service/ACObject;)V

    .line 46
    iput-object p3, p0, Lcom/accloud/service/ACDeviceMsg;->description:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public constructor <init>(I[B)V
    .locals 0
    .param p1, "code"    # I
    .param p2, "content"    # [B

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/accloud/service/ACDeviceMsg;-><init>()V

    .line 25
    iput p1, p0, Lcom/accloud/service/ACDeviceMsg;->code:I

    .line 26
    iput-object p2, p0, Lcom/accloud/service/ACDeviceMsg;->content:[B

    .line 27
    return-void
.end method

.method public constructor <init>(I[BLjava/lang/String;)V
    .locals 0
    .param p1, "code"    # I
    .param p2, "content"    # [B
    .param p3, "description"    # Ljava/lang/String;

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/accloud/service/ACDeviceMsg;-><init>(I[B)V

    .line 31
    iput-object p3, p0, Lcom/accloud/service/ACDeviceMsg;->description:Ljava/lang/String;

    .line 32
    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lcom/accloud/service/ACDeviceMsg;->code:I

    return v0
.end method

.method public getContent()[B
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/accloud/service/ACDeviceMsg;->content:[B

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/accloud/service/ACDeviceMsg;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getKLVObject()Lcom/accloud/service/ACKLVObject;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/accloud/service/ACDeviceMsg;->object:Lcom/accloud/service/ACKLVObject;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/accloud/service/ACDeviceMsg;->object:Lcom/accloud/service/ACKLVObject;

    .line 115
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/accloud/service/ACDeviceMsg;->content:[B

    invoke-static {v0}, Lcom/accloud/service/ACKLVDeviceMsgMarshaller;->unmarshal([B)Lcom/accloud/service/ACKLVObject;

    move-result-object v0

    goto :goto_0
.end method

.method public getObject()Lcom/accloud/service/ACObject;
    .locals 6

    .prologue
    .line 102
    new-instance v1, Lcom/accloud/service/ACObject;

    invoke-direct {v1}, Lcom/accloud/service/ACObject;-><init>()V

    .line 104
    .local v1, "object":Lcom/accloud/service/ACObject;
    :try_start_0
    iget-object v2, p0, Lcom/accloud/service/ACDeviceMsg;->content:[B

    invoke-static {v1, v2}, Lcom/accloud/cloudservice/ACObjectMarshaller;->unmarshal(Lcom/accloud/service/ACObject;[B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    :goto_0
    return-object v1

    .line 105
    :catch_0
    move-exception v0

    .line 106
    .local v0, "e":Ljava/io/IOException;
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "content["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/accloud/service/ACDeviceMsg;->content:[B

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] unmarshal to ACObject error["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getSecurityMode()Lcom/accloud/service/ACDeviceSecurityMode;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/accloud/service/ACDeviceMsg;->securityMode:Lcom/accloud/service/ACDeviceSecurityMode;

    return-object v0
.end method

.method public setCode(I)V
    .locals 0
    .param p1, "code"    # I

    .prologue
    .line 82
    iput p1, p0, Lcom/accloud/service/ACDeviceMsg;->code:I

    .line 83
    return-void
.end method

.method public setContent([B)V
    .locals 0
    .param p1, "content"    # [B

    .prologue
    .line 90
    iput-object p1, p0, Lcom/accloud/service/ACDeviceMsg;->content:[B

    .line 91
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 128
    iput-object p1, p0, Lcom/accloud/service/ACDeviceMsg;->description:Ljava/lang/String;

    .line 129
    return-void
.end method

.method public setKLVObject(Lcom/accloud/service/ACKLVObject;)V
    .locals 1
    .param p1, "object"    # Lcom/accloud/service/ACKLVObject;

    .prologue
    .line 119
    iput-object p1, p0, Lcom/accloud/service/ACDeviceMsg;->object:Lcom/accloud/service/ACKLVObject;

    .line 120
    invoke-static {p1}, Lcom/accloud/service/ACKLVDeviceMsgMarshaller;->marshal(Lcom/accloud/service/ACKLVObject;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/accloud/service/ACDeviceMsg;->content:[B

    .line 121
    return-void
.end method

.method public setObject(Lcom/accloud/service/ACObject;)V
    .locals 4
    .param p1, "object"    # Lcom/accloud/service/ACObject;

    .prologue
    .line 95
    :try_start_0
    invoke-static {p1}, Lcom/accloud/cloudservice/ACObjectMarshaller;->marshal(Lcom/accloud/service/ACObject;)[B

    move-result-object v1

    iput-object v1, p0, Lcom/accloud/service/ACDeviceMsg;->content:[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    :goto_0
    return-void

    .line 96
    :catch_0
    move-exception v0

    .line 97
    .local v0, "e":Ljava/io/IOException;
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "object["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/accloud/service/ACObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] marshal to content error["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setSecurityMode(Lcom/accloud/service/ACDeviceSecurityMode;)V
    .locals 0
    .param p1, "securityMode"    # Lcom/accloud/service/ACDeviceSecurityMode;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/accloud/service/ACDeviceMsg;->securityMode:Lcom/accloud/service/ACDeviceSecurityMode;

    .line 71
    return-void
.end method
