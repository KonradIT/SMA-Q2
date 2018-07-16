.class public Lcom/accloud/cloudservice/ACServiceSyncClient;
.super Ljava/lang/Object;
.source "ACServiceSyncClient.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ACServiceClient"


# instance fields
.field private req:Lcom/accloud/service/ACMsg;

.field private routerAddr:Ljava/lang/String;

.field private serviceName:Ljava/lang/String;

.field private serviceVersion:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Lcom/accloud/service/ACMsg;)V
    .locals 0
    .param p1, "serviceName"    # Ljava/lang/String;
    .param p2, "serviceVersion"    # I
    .param p3, "routerAddr"    # Ljava/lang/String;
    .param p4, "req"    # Lcom/accloud/service/ACMsg;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p4, p0, Lcom/accloud/cloudservice/ACServiceSyncClient;->req:Lcom/accloud/service/ACMsg;

    .line 27
    iput-object p1, p0, Lcom/accloud/cloudservice/ACServiceSyncClient;->serviceName:Ljava/lang/String;

    .line 28
    iput p2, p0, Lcom/accloud/cloudservice/ACServiceSyncClient;->serviceVersion:I

    .line 29
    iput-object p3, p0, Lcom/accloud/cloudservice/ACServiceSyncClient;->routerAddr:Ljava/lang/String;

    .line 30
    return-void
.end method

.method private getFullUrl(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "service"    # Ljava/lang/String;
    .param p2, "version"    # I
    .param p3, "addr"    # Ljava/lang/String;

    .prologue
    .line 33
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/v"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/accloud/cloudservice/ACServiceSyncClient;->req:Lcom/accloud/service/ACMsg;

    invoke-virtual {v2}, Lcom/accloud/service/ACMsg;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 34
    .local v0, "fullUrl":Ljava/lang/String;
    return-object v0
.end method

.method private parseClientResp(Ljava/net/HttpURLConnection;)Lcom/accloud/service/ACMsg;
    .locals 11
    .param p1, "connection"    # Ljava/net/HttpURLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 200
    new-instance v7, Lcom/accloud/service/ACMsg;

    invoke-direct {v7}, Lcom/accloud/service/ACMsg;-><init>()V

    .line 201
    .local v7, "resp":Lcom/accloud/service/ACMsg;
    const/4 v5, 0x0

    .line 202
    .local v5, "msgName":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v1

    .line 203
    .local v1, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    if-eqz v1, :cond_3

    .line 204
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 205
    .local v4, "key":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 206
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    const-string v9, "x-zc-msg-name"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 207
    invoke-virtual {p1, v4}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 211
    :cond_1
    :goto_1
    const-string v8, "ACServiceClient"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "header:[name:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "---value:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1, v4}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/accloud/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 208
    :cond_2
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    const-string v9, "x-zc-msg-attr_"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 209
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    const-string v9, "x-zc-msg-attr_"

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v4}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/accloud/service/ACMsg;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    goto :goto_1

    .line 216
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "key":Ljava/lang/String;
    :cond_3
    const-string v8, "ACServiceClient"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "msgName:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/accloud/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    if-eqz v5, :cond_4

    const-string v8, ""

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 218
    :cond_4
    new-instance v8, Ljava/lang/Exception;

    const-string v9, "no msg name"

    invoke-direct {v8, v9}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v8

    .line 220
    :cond_5
    invoke-virtual {v7, v5}, Lcom/accloud/service/ACMsg;->setName(Ljava/lang/String;)V

    .line 222
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v6

    .line 223
    .local v6, "payloadFormat":Ljava/lang/String;
    if-eqz v6, :cond_6

    const-string v8, "application/octet-stream"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    const-string v8, "application/x-zc-object"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    const-string v8, "text/json"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    .line 226
    :cond_6
    new-instance v8, Ljava/lang/Exception;

    const-string v9, "invalid payloadFormat"

    invoke-direct {v8, v9}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v8

    .line 228
    :cond_7
    const-string v8, "ACServiceClient"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "payloadFormat:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/accloud/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v8

    if-gtz v8, :cond_9

    .line 231
    const-string v8, "ACServiceClient"

    const-string v9, "content length:0"

    invoke-static {v8, v9}, Lcom/accloud/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    const/4 v8, 0x0

    new-array v8, v8, [B

    invoke-virtual {v7, v8, v6}, Lcom/accloud/service/ACMsg;->setPayload([BLjava/lang/String;)V

    .line 261
    :cond_8
    :goto_2
    return-object v7

    .line 236
    :cond_9
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 238
    .local v3, "in":Ljava/io/InputStream;
    if-nez v3, :cond_a

    .line 239
    new-instance v8, Ljava/lang/Exception;

    const-string v9, "invalid payload"

    invoke-direct {v8, v9}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v8

    .line 243
    :cond_a
    const-string v8, "application/octet-stream"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 244
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v8

    invoke-virtual {v7, v3, v8}, Lcom/accloud/service/ACMsg;->setStreamPayload(Ljava/io/InputStream;I)V

    goto :goto_2

    .line 248
    :cond_b
    invoke-static {v3}, Lcom/accloud/utils/ACUtils;->inToBytes(Ljava/io/InputStream;)[B

    move-result-object v0

    .line 249
    .local v0, "content":[B
    if-eqz v0, :cond_c

    array-length v8, v0

    if-nez v8, :cond_d

    .line 250
    :cond_c
    new-instance v8, Ljava/lang/Exception;

    const-string v9, "invalid payload"

    invoke-direct {v8, v9}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v8

    .line 252
    :cond_d
    const-string v8, "ACServiceClient"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "payload:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    new-instance v10, Ljava/lang/String;

    invoke-direct {v10, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/accloud/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    const-string v8, "ACServiceClient"

    const-string v9, "setPayload"

    invoke-static {v8, v9}, Lcom/accloud/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    invoke-virtual {v7, v0, v6}, Lcom/accloud/service/ACMsg;->setPayload([BLjava/lang/String;)V

    .line 257
    const-string v8, "application/x-zc-object"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 258
    const-string v8, "ACServiceClient"

    const-string v9, "start-unmarshal"

    invoke-static {v8, v9}, Lcom/accloud/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    invoke-static {v7, v0}, Lcom/accloud/cloudservice/ACObjectMarshaller;->unmarshal(Lcom/accloud/service/ACObject;[B)V

    goto :goto_2
.end method


# virtual methods
.method public postData()Lcom/accloud/service/ACMsg;
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/accloud/service/ACException;
        }
    .end annotation

    .prologue
    .line 38
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/accloud/cloudservice/ACServiceSyncClient;->serviceName:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/accloud/cloudservice/ACServiceSyncClient;->serviceVersion:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/accloud/cloudservice/ACServiceSyncClient;->routerAddr:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    move-object/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Lcom/accloud/cloudservice/ACServiceSyncClient;->getFullUrl(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 39
    .local v15, "urlStr":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/accloud/cloudservice/ACServiceSyncClient;->req:Lcom/accloud/service/ACMsg;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/accloud/service/ACMsg;->getPayloadFormat()Ljava/lang/String;

    move-result-object v12

    .line 40
    .local v12, "payloadFormat":Ljava/lang/String;
    const-string v17, "ACServiceClient"

    move-object/from16 v0, v17

    invoke-static {v0, v12}, Lcom/accloud/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/accloud/cloudservice/ACServiceSyncClient;->req:Lcom/accloud/service/ACMsg;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/accloud/service/ACMsg;->getPayloadSize()I

    move-result v9

    .line 42
    .local v9, "length":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/accloud/cloudservice/ACServiceSyncClient;->req:Lcom/accloud/service/ACMsg;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/accloud/service/ACMsg;->getPayload()[B

    move-result-object v11

    .line 44
    .local v11, "payload":[B
    if-nez v12, :cond_0

    .line 46
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/accloud/cloudservice/ACServiceSyncClient;->req:Lcom/accloud/service/ACMsg;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/accloud/cloudservice/ACObjectMarshaller;->marshal(Lcom/accloud/service/ACObject;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    .line 50
    const-string v12, "application/x-zc-object"

    .line 51
    array-length v9, v11

    .line 52
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/accloud/cloudservice/ACServiceSyncClient;->req:Lcom/accloud/service/ACMsg;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v11, v12}, Lcom/accloud/service/ACMsg;->setPayload([BLjava/lang/String;)V

    .line 55
    :cond_0
    if-eqz v12, :cond_1

    const-string v17, "application/octet-stream"

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_2

    const-string v17, "application/x-zc-object"

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_2

    const-string v17, "text/json"

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_2

    .line 59
    :cond_1
    new-instance v17, Lcom/accloud/service/ACException;

    sget v18, Lcom/accloud/service/ACException;->WRONG_PAYLOAD_FORMAT:I

    const-string v19, "wrong request payload format"

    invoke-direct/range {v17 .. v19}, Lcom/accloud/service/ACException;-><init>(ILjava/lang/String;)V

    throw v17

    .line 47
    :catch_0
    move-exception v5

    .line 48
    .local v5, "e":Ljava/lang/Exception;
    new-instance v17, Lcom/accloud/service/ACException;

    sget v18, Lcom/accloud/service/ACException;->MARSHAL_ERROR:I

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v17 .. v19}, Lcom/accloud/service/ACException;-><init>(ILjava/lang/String;)V

    throw v17

    .line 62
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_2
    const-string v17, "application/octet-stream"

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_6

    .line 63
    if-nez v11, :cond_3

    .line 64
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/accloud/cloudservice/ACServiceSyncClient;->req:Lcom/accloud/service/ACMsg;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/accloud/service/ACMsg;->getStreamPayload()Ljava/io/InputStream;

    move-result-object v13

    .line 65
    .local v13, "streamPayload":Ljava/io/InputStream;
    if-eqz v13, :cond_3

    .line 67
    :try_start_1
    invoke-static {v13}, Lcom/accloud/utils/ACUtils;->inToBytes(Ljava/io/InputStream;)[B

    move-result-object v11

    .line 68
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/accloud/cloudservice/ACServiceSyncClient;->req:Lcom/accloud/service/ACMsg;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/accloud/service/ACMsg;->closeStreamPayload()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 74
    .end local v13    # "streamPayload":Ljava/io/InputStream;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/accloud/cloudservice/ACServiceSyncClient;->req:Lcom/accloud/service/ACMsg;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/accloud/service/ACMsg;->getKeys()Ljava/util/Set;

    move-result-object v8

    .line 75
    .local v8, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v8}, Ljava/util/Set;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_6

    .line 76
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "?"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 77
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 78
    .local v6, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_6

    .line 79
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 80
    .local v7, "key":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/accloud/cloudservice/ACServiceSyncClient;->req:Lcom/accloud/service/ACMsg;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Lcom/accloud/service/ACMsg;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v16

    .line 82
    .local v16, "value":Ljava/lang/String;
    :try_start_2
    const-string v17, " "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 83
    const-string v17, "utf-8"

    invoke-static/range {v16 .. v17}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_6

    move-result-object v16

    .line 86
    :cond_4
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_5

    .line 87
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "&"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    goto :goto_0

    .line 69
    .end local v6    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v7    # "key":Ljava/lang/String;
    .end local v8    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v16    # "value":Ljava/lang/String;
    .restart local v13    # "streamPayload":Ljava/io/InputStream;
    :catch_1
    move-exception v5

    .line 70
    .restart local v5    # "e":Ljava/lang/Exception;
    new-instance v17, Lcom/accloud/service/ACException;

    sget v18, Lcom/accloud/service/ACException;->INTERNAL_ERROR:I

    invoke-virtual {v5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v17 .. v19}, Lcom/accloud/service/ACException;-><init>(ILjava/lang/String;)V

    throw v17

    .line 89
    .end local v5    # "e":Ljava/lang/Exception;
    .end local v13    # "streamPayload":Ljava/io/InputStream;
    .restart local v6    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v7    # "key":Ljava/lang/String;
    .restart local v8    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v16    # "value":Ljava/lang/String;
    :cond_5
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_0

    .line 94
    .end local v6    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v7    # "key":Ljava/lang/String;
    .end local v8    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v16    # "value":Ljava/lang/String;
    :cond_6
    const-string v17, "ACServiceClient"

    move-object/from16 v0, v17

    invoke-static {v0, v15}, Lcom/accloud/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    const-string v17, "application/octet-stream"

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_15

    .line 96
    const-string v17, "ACServiceClient"

    invoke-static {v11}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/accloud/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    :goto_2
    const/4 v4, 0x0

    .line 103
    .local v4, "connection":Ljava/net/HttpURLConnection;
    :try_start_3
    new-instance v14, Ljava/net/URL;

    invoke-direct {v14, v15}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 105
    .local v14, "url":Ljava/net/URL;
    invoke-virtual {v14}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v17

    move-object/from16 v0, v17

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v4, v0

    .line 106
    sget v17, Lcom/accloud/common/ACConfiguration;->CONNECT_TIMEOUT:I

    move/from16 v0, v17

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 107
    sget v17, Lcom/accloud/common/ACConfiguration;->READ_TIMEOUT:I

    move/from16 v0, v17

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 108
    const-string v17, "POST"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 109
    const-string v17, "Content-Type"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0, v12}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    const-string v17, "X-Zc-Content-Length"

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/accloud/cloudservice/ACServiceSyncClient;->req:Lcom/accloud/service/ACMsg;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/accloud/service/ACMsg;->getContext()Lcom/accloud/service/ACContext;

    move-result-object v17

    if-eqz v17, :cond_14

    .line 113
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/accloud/cloudservice/ACServiceSyncClient;->req:Lcom/accloud/service/ACMsg;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/accloud/service/ACMsg;->getContext()Lcom/accloud/service/ACContext;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/accloud/service/ACContext;->getMajorDomain()Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_7

    .line 114
    const-string v17, "X-Zc-Major-Domain"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/accloud/cloudservice/ACServiceSyncClient;->req:Lcom/accloud/service/ACMsg;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/accloud/service/ACMsg;->getContext()Lcom/accloud/service/ACContext;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/accloud/service/ACContext;->getMajorDomain()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    const-string v17, "ACHeader"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "X-Zc-Major-Domain:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/accloud/cloudservice/ACServiceSyncClient;->req:Lcom/accloud/service/ACMsg;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/accloud/service/ACMsg;->getContext()Lcom/accloud/service/ACContext;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/accloud/service/ACContext;->getMajorDomain()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/accloud/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/accloud/cloudservice/ACServiceSyncClient;->req:Lcom/accloud/service/ACMsg;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/accloud/service/ACMsg;->getContext()Lcom/accloud/service/ACContext;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/accloud/service/ACContext;->getMajorDomainId()Ljava/lang/Long;

    move-result-object v17

    if-eqz v17, :cond_8

    .line 118
    const-string v17, "X-Zc-Major-Domain-Id"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/accloud/cloudservice/ACServiceSyncClient;->req:Lcom/accloud/service/ACMsg;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/accloud/service/ACMsg;->getContext()Lcom/accloud/service/ACContext;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/accloud/service/ACContext;->getMajorDomainId()Ljava/lang/Long;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    const-string v17, "ACHeader"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "X-Zc-Major-Domain-Id:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/accloud/cloudservice/ACServiceSyncClient;->req:Lcom/accloud/service/ACMsg;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/accloud/service/ACMsg;->getContext()Lcom/accloud/service/ACContext;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/accloud/service/ACContext;->getMajorDomainId()Ljava/lang/Long;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/accloud/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/accloud/cloudservice/ACServiceSyncClient;->req:Lcom/accloud/service/ACMsg;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/accloud/service/ACMsg;->getContext()Lcom/accloud/service/ACContext;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/accloud/service/ACContext;->getSubDomain()Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_9

    .line 122
    const-string v17, "X-Zc-Sub-Domain"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/accloud/cloudservice/ACServiceSyncClient;->req:Lcom/accloud/service/ACMsg;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/accloud/service/ACMsg;->getContext()Lcom/accloud/service/ACContext;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/accloud/service/ACContext;->getSubDomain()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    const-string v17, "ACHeader"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "X-Zc-Sub-Domain:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/accloud/cloudservice/ACServiceSyncClient;->req:Lcom/accloud/service/ACMsg;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/accloud/service/ACMsg;->getContext()Lcom/accloud/service/ACContext;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/accloud/service/ACContext;->getSubDomain()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/accloud/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/accloud/cloudservice/ACServiceSyncClient;->req:Lcom/accloud/service/ACMsg;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/accloud/service/ACMsg;->getContext()Lcom/accloud/service/ACContext;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/accloud/service/ACContext;->getAccessMode()Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_a

    .line 126
    const-string v17, "X-Zc-Access-Mode"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/accloud/cloudservice/ACServiceSyncClient;->req:Lcom/accloud/service/ACMsg;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/accloud/service/ACMsg;->getContext()Lcom/accloud/service/ACContext;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/accloud/service/ACContext;->getAccessMode()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    const-string v17, "ACHeader"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "X-Zc-Access-Mode:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/accloud/cloudservice/ACServiceSyncClient;->req:Lcom/accloud/service/ACMsg;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/accloud/service/ACMsg;->getContext()Lcom/accloud/service/ACContext;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/accloud/service/ACContext;->getAccessMode()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/accloud/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/accloud/cloudservice/ACServiceSyncClient;->req:Lcom/accloud/service/ACMsg;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/accloud/service/ACMsg;->getContext()Lcom/accloud/service/ACContext;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/accloud/service/ACContext;->getTraceId()Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_b

    .line 130
    const-string v17, "X-Zc-Trace-Id"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/accloud/cloudservice/ACServiceSyncClient;->req:Lcom/accloud/service/ACMsg;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/accloud/service/ACMsg;->getContext()Lcom/accloud/service/ACContext;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/accloud/service/ACContext;->getTraceId()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    const-string v17, "ACHeader"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "X-Zc-Trace-Id:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/accloud/cloudservice/ACServiceSyncClient;->req:Lcom/accloud/service/ACMsg;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/accloud/service/ACMsg;->getContext()Lcom/accloud/service/ACContext;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/accloud/service/ACContext;->getTraceId()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/accloud/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/accloud/cloudservice/ACServiceSyncClient;->req:Lcom/accloud/service/ACMsg;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/accloud/service/ACMsg;->getContext()Lcom/accloud/service/ACContext;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/accloud/service/ACContext;->getTraceStartTime()Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_c

    .line 134
    const-string v17, "X-Zc-Trace-Start-Time"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/accloud/cloudservice/ACServiceSyncClient;->req:Lcom/accloud/service/ACMsg;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/accloud/service/ACMsg;->getContext()Lcom/accloud/service/ACContext;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/accloud/service/ACContext;->getTraceStartTime()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    const-string v17, "ACHeader"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "X-Zc-Trace-Start-Time:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/accloud/cloudservice/ACServiceSyncClient;->req:Lcom/accloud/service/ACMsg;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/accloud/service/ACMsg;->getContext()Lcom/accloud/service/ACContext;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/accloud/service/ACContext;->getTraceStartTime()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/accloud/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/accloud/cloudservice/ACServiceSyncClient;->req:Lcom/accloud/service/ACMsg;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/accloud/service/ACMsg;->getContext()Lcom/accloud/service/ACContext;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/accloud/service/ACContext;->getTimestamp()Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_d

    .line 138
    const-string v17, "X-Zc-Timestamp"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/accloud/cloudservice/ACServiceSyncClient;->req:Lcom/accloud/service/ACMsg;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/accloud/service/ACMsg;->getContext()Lcom/accloud/service/ACContext;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/accloud/service/ACContext;->getTimestamp()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    const-string v17, "ACHeader"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "X-Zc-Timestamp:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/accloud/cloudservice/ACServiceSyncClient;->req:Lcom/accloud/service/ACMsg;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/accloud/service/ACMsg;->getContext()Lcom/accloud/service/ACContext;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/accloud/service/ACContext;->getTimestamp()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/accloud/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/accloud/cloudservice/ACServiceSyncClient;->req:Lcom/accloud/service/ACMsg;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/accloud/service/ACMsg;->getContext()Lcom/accloud/service/ACContext;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/accloud/service/ACContext;->getTimeout()Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_e

    .line 142
    const-string v17, "X-Zc-Timeout"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/accloud/cloudservice/ACServiceSyncClient;->req:Lcom/accloud/service/ACMsg;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/accloud/service/ACMsg;->getContext()Lcom/accloud/service/ACContext;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/accloud/service/ACContext;->getTimeout()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    const-string v17, "ACHeader"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "X-Zc-Timeout:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/accloud/cloudservice/ACServiceSyncClient;->req:Lcom/accloud/service/ACMsg;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/accloud/service/ACMsg;->getContext()Lcom/accloud/service/ACContext;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/accloud/service/ACContext;->getTimeout()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/accloud/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/accloud/cloudservice/ACServiceSyncClient;->req:Lcom/accloud/service/ACMsg;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/accloud/service/ACMsg;->getContext()Lcom/accloud/service/ACContext;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/accloud/service/ACContext;->getNonce()Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_f

    .line 146
    const-string v17, "X-Zc-Nonce"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/accloud/cloudservice/ACServiceSyncClient;->req:Lcom/accloud/service/ACMsg;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/accloud/service/ACMsg;->getContext()Lcom/accloud/service/ACContext;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/accloud/service/ACContext;->getNonce()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    const-string v17, "ACHeader"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "X-Zc-Nonce:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/accloud/cloudservice/ACServiceSyncClient;->req:Lcom/accloud/service/ACMsg;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/accloud/service/ACMsg;->getContext()Lcom/accloud/service/ACContext;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/accloud/service/ACContext;->getNonce()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/accloud/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/accloud/cloudservice/ACServiceSyncClient;->req:Lcom/accloud/service/ACMsg;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/accloud/service/ACMsg;->getContext()Lcom/accloud/service/ACContext;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/accloud/service/ACContext;->getUserId()Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_10

    .line 150
    const-string v17, "X-Zc-User-Id"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/accloud/cloudservice/ACServiceSyncClient;->req:Lcom/accloud/service/ACMsg;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/accloud/service/ACMsg;->getContext()Lcom/accloud/service/ACContext;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/accloud/service/ACContext;->getUserId()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    const-string v17, "ACHeader"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "X-Zc-User-Id:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/accloud/cloudservice/ACServiceSyncClient;->req:Lcom/accloud/service/ACMsg;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/accloud/service/ACMsg;->getContext()Lcom/accloud/service/ACContext;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/accloud/service/ACContext;->getUserId()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/accloud/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/accloud/cloudservice/ACServiceSyncClient;->req:Lcom/accloud/service/ACMsg;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/accloud/service/ACMsg;->getContext()Lcom/accloud/service/ACContext;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/accloud/service/ACContext;->getSignature()Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_11

    .line 154
    const-string v17, "X-Zc-User-Signature"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/accloud/cloudservice/ACServiceSyncClient;->req:Lcom/accloud/service/ACMsg;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/accloud/service/ACMsg;->getContext()Lcom/accloud/service/ACContext;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/accloud/service/ACContext;->getSignature()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    const-string v17, "ACHeader"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "X-Zc-User-Signature:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/accloud/cloudservice/ACServiceSyncClient;->req:Lcom/accloud/service/ACMsg;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/accloud/service/ACMsg;->getContext()Lcom/accloud/service/ACContext;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/accloud/service/ACContext;->getSignature()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/accloud/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/accloud/cloudservice/ACServiceSyncClient;->req:Lcom/accloud/service/ACMsg;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/accloud/service/ACMsg;->getContext()Lcom/accloud/service/ACContext;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/accloud/service/ACContext;->getMethodVersion()Ljava/lang/Long;

    move-result-object v17

    if-eqz v17, :cond_12

    .line 158
    const-string v17, "X-Zc-Version"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/accloud/cloudservice/ACServiceSyncClient;->req:Lcom/accloud/service/ACMsg;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/accloud/service/ACMsg;->getContext()Lcom/accloud/service/ACContext;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/accloud/service/ACContext;->getMethodVersion()Ljava/lang/Long;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    const-string v17, "ACHeader"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "X-Zc-Version:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/accloud/cloudservice/ACServiceSyncClient;->req:Lcom/accloud/service/ACMsg;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/accloud/service/ACMsg;->getContext()Lcom/accloud/service/ACContext;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/accloud/service/ACContext;->getMethodVersion()Ljava/lang/Long;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/accloud/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/accloud/cloudservice/ACServiceSyncClient;->req:Lcom/accloud/service/ACMsg;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/accloud/service/ACMsg;->getContext()Lcom/accloud/service/ACContext;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/accloud/service/ACContext;->getPhoneId()Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_13

    .line 162
    const-string v17, "X-Zc-Phone-Id"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/accloud/cloudservice/ACServiceSyncClient;->req:Lcom/accloud/service/ACMsg;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/accloud/service/ACMsg;->getContext()Lcom/accloud/service/ACContext;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/accloud/service/ACContext;->getPhoneId()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    const-string v17, "ACHeader"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "X-Zc-Phone-Id:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/accloud/cloudservice/ACServiceSyncClient;->req:Lcom/accloud/service/ACMsg;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/accloud/service/ACMsg;->getContext()Lcom/accloud/service/ACContext;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/accloud/service/ACContext;->getPhoneId()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/accloud/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    :cond_13
    const-string v17, "X-Zc-Device-Os"

    const-string v18, "android"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    const-string v17, "X-Zc-Operation-Type"

    const-string v18, "app"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    :cond_14
    if-eqz v11, :cond_16

    array-length v0, v11

    move/from16 v17, v0

    if-lez v17, :cond_16

    .line 169
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 170
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->connect()V

    .line 173
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v10

    .line 174
    .local v10, "os":Ljava/io/OutputStream;
    invoke-virtual {v10, v11}, Ljava/io/OutputStream;->write([B)V

    .line 175
    invoke-virtual {v10}, Ljava/io/OutputStream;->flush()V

    .line 176
    invoke-virtual {v10}, Ljava/io/OutputStream;->close()V

    .line 180
    .end local v10    # "os":Ljava/io/OutputStream;
    :goto_3
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v17

    const/16 v18, 0xc8

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_17

    .line 181
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/accloud/cloudservice/ACServiceSyncClient;->parseClientResp(Ljava/net/HttpURLConnection;)Lcom/accloud/service/ACMsg;
    :try_end_3
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/net/SocketException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v17

    .line 195
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object v17

    .line 98
    .end local v4    # "connection":Ljava/net/HttpURLConnection;
    .end local v14    # "url":Ljava/net/URL;
    :cond_15
    const-string v17, "ACServiceClient"

    new-instance v18, Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-direct {v0, v11}, Ljava/lang/String;-><init>([B)V

    invoke-static/range {v17 .. v18}, Lcom/accloud/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 178
    .restart local v4    # "connection":Ljava/net/HttpURLConnection;
    .restart local v14    # "url":Ljava/net/URL;
    :cond_16
    :try_start_4
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->connect()V
    :try_end_4
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/net/SocketException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    .line 186
    .end local v14    # "url":Ljava/net/URL;
    :catch_2
    move-exception v5

    .line 187
    .local v5, "e":Lorg/apache/http/conn/ConnectTimeoutException;
    :try_start_5
    new-instance v17, Lcom/accloud/service/ACException;

    sget v18, Lcom/accloud/service/ACException;->TIMEOUT:I

    const-string v19, "connect timeout"

    invoke-direct/range {v17 .. v19}, Lcom/accloud/service/ACException;-><init>(ILjava/lang/String;)V

    throw v17
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 195
    .end local v5    # "e":Lorg/apache/http/conn/ConnectTimeoutException;
    :catchall_0
    move-exception v17

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    throw v17

    .line 183
    .restart local v14    # "url":Ljava/net/URL;
    :cond_17
    :try_start_6
    const-string v17, "ACServiceClient"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "errorCode:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "  errorMessage:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/accloud/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    new-instance v17, Lcom/accloud/service/ACException;

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v18

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v17 .. v19}, Lcom/accloud/service/ACException;-><init>(ILjava/lang/String;)V

    throw v17
    :try_end_6
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/net/SocketException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 188
    .end local v14    # "url":Ljava/net/URL;
    :catch_3
    move-exception v5

    .line 189
    .local v5, "e":Ljava/net/SocketTimeoutException;
    :try_start_7
    new-instance v17, Lcom/accloud/service/ACException;

    sget v18, Lcom/accloud/service/ACException;->TIMEOUT:I

    const-string v19, "request timeout"

    invoke-direct/range {v17 .. v19}, Lcom/accloud/service/ACException;-><init>(ILjava/lang/String;)V

    throw v17

    .line 190
    .end local v5    # "e":Ljava/net/SocketTimeoutException;
    :catch_4
    move-exception v5

    .line 191
    .local v5, "e":Ljava/net/SocketException;
    new-instance v17, Lcom/accloud/service/ACException;

    sget v18, Lcom/accloud/service/ACException;->INTERNET_ERROR:I

    const-string v19, "internet error"

    invoke-direct/range {v17 .. v19}, Lcom/accloud/service/ACException;-><init>(ILjava/lang/String;)V

    throw v17

    .line 192
    .end local v5    # "e":Ljava/net/SocketException;
    :catch_5
    move-exception v5

    .line 193
    .local v5, "e":Ljava/lang/Exception;
    new-instance v17, Lcom/accloud/service/ACException;

    sget v18, Lcom/accloud/service/ACException;->INTERNAL_ERROR:I

    invoke-virtual {v5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v17 .. v19}, Lcom/accloud/service/ACException;-><init>(ILjava/lang/String;)V

    throw v17
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 84
    .end local v4    # "connection":Ljava/net/HttpURLConnection;
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v6    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v7    # "key":Ljava/lang/String;
    .restart local v8    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v16    # "value":Ljava/lang/String;
    :catch_6
    move-exception v17

    goto/16 :goto_1
.end method
