.class public Lcom/accloud/cloudservice/ACServiceClient;
.super Landroid/os/AsyncTask;
.source "ACServiceClient.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/accloud/service/ACMsg;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ACServiceClient"


# instance fields
.field private accessTokenExpire:J

.field private error:Lcom/accloud/service/ACException;

.field private listener:Lcom/accloud/cloudservice/ACMsgListener;

.field private refreshTokenExpire:J

.field private req:Lcom/accloud/service/ACMsg;

.field private routerAddr:Ljava/lang/String;

.field private serviceName:Ljava/lang/String;

.field private serviceVersion:I

.field private updateToken:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Lcom/accloud/service/ACMsg;Lcom/accloud/cloudservice/ACMsgListener;)V
    .locals 4
    .param p1, "serviceName"    # Ljava/lang/String;
    .param p2, "serviceVersion"    # I
    .param p3, "routerAddr"    # Ljava/lang/String;
    .param p4, "req"    # Lcom/accloud/service/ACMsg;
    .param p5, "listener"    # Lcom/accloud/cloudservice/ACMsgListener;

    .prologue
    const-wide/16 v2, 0x0

    .line 36
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/accloud/cloudservice/ACServiceClient;->error:Lcom/accloud/service/ACException;

    .line 37
    iput-object p4, p0, Lcom/accloud/cloudservice/ACServiceClient;->req:Lcom/accloud/service/ACMsg;

    .line 38
    iput-object p5, p0, Lcom/accloud/cloudservice/ACServiceClient;->listener:Lcom/accloud/cloudservice/ACMsgListener;

    .line 39
    iput-object p1, p0, Lcom/accloud/cloudservice/ACServiceClient;->serviceName:Ljava/lang/String;

    .line 40
    iput p2, p0, Lcom/accloud/cloudservice/ACServiceClient;->serviceVersion:I

    .line 41
    iput-object p3, p0, Lcom/accloud/cloudservice/ACServiceClient;->routerAddr:Ljava/lang/String;

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/accloud/cloudservice/ACServiceClient;->updateToken:Z

    .line 43
    sget-object v0, Lcom/accloud/cloudservice/AC;->context:Landroid/content/Context;

    const-string v1, "ablecloud_private_token_expire"

    invoke-static {v0, v1, v2, v3}, Lcom/accloud/utils/PreferencesUtils;->getLong(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/accloud/cloudservice/ACServiceClient;->accessTokenExpire:J

    .line 44
    sget-object v0, Lcom/accloud/cloudservice/AC;->context:Landroid/content/Context;

    const-string v1, "ablecloud_private_fefresh_token_expire"

    invoke-static {v0, v1, v2, v3}, Lcom/accloud/utils/PreferencesUtils;->getLong(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/accloud/cloudservice/ACServiceClient;->refreshTokenExpire:J

    .line 45
    return-void
.end method

.method private getFullUrl(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "service"    # Ljava/lang/String;
    .param p2, "version"    # I
    .param p3, "addr"    # Ljava/lang/String;

    .prologue
    .line 48
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

    iget-object v2, p0, Lcom/accloud/cloudservice/ACServiceClient;->req:Lcom/accloud/service/ACMsg;

    invoke-virtual {v2}, Lcom/accloud/service/ACMsg;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 49
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
    .line 268
    new-instance v7, Lcom/accloud/service/ACMsg;

    invoke-direct {v7}, Lcom/accloud/service/ACMsg;-><init>()V

    .line 269
    .local v7, "resp":Lcom/accloud/service/ACMsg;
    const/4 v5, 0x0

    .line 271
    .local v5, "msgName":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v1

    .line 272
    .local v1, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    if-eqz v1, :cond_3

    .line 273
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

    .line 274
    .local v4, "key":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 275
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    const-string v9, "x-zc-msg-name"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 276
    invoke-virtual {p1, v4}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 280
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

    .line 277
    :cond_2
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    const-string v9, "x-zc-msg-attr_"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 278
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

    .line 285
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

    .line 286
    if-eqz v5, :cond_4

    const-string v8, ""

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 287
    :cond_4
    new-instance v8, Ljava/lang/Exception;

    const-string v9, "no msg name"

    invoke-direct {v8, v9}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v8

    .line 289
    :cond_5
    invoke-virtual {v7, v5}, Lcom/accloud/service/ACMsg;->setName(Ljava/lang/String;)V

    .line 291
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v6

    .line 292
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

    .line 295
    :cond_6
    new-instance v8, Ljava/lang/Exception;

    const-string v9, "invalid payloadFormat"

    invoke-direct {v8, v9}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v8

    .line 297
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

    .line 299
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v8

    if-gtz v8, :cond_9

    .line 300
    const-string v8, "ACServiceClient"

    const-string v9, "content length:0"

    invoke-static {v8, v9}, Lcom/accloud/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    const/4 v8, 0x0

    new-array v8, v8, [B

    invoke-virtual {v7, v8, v6}, Lcom/accloud/service/ACMsg;->setPayload([BLjava/lang/String;)V

    .line 330
    :cond_8
    :goto_2
    return-object v7

    .line 305
    :cond_9
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 307
    .local v3, "in":Ljava/io/InputStream;
    if-nez v3, :cond_a

    .line 308
    new-instance v8, Ljava/lang/Exception;

    const-string v9, "invalid payload"

    invoke-direct {v8, v9}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v8

    .line 312
    :cond_a
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v8

    const/high16 v9, 0xa00000

    if-le v8, v9, :cond_b

    const-string v8, "application/octet-stream"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 313
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v8

    invoke-virtual {v7, v3, v8}, Lcom/accloud/service/ACMsg;->setStreamPayload(Ljava/io/InputStream;I)V

    goto :goto_2

    .line 317
    :cond_b
    invoke-static {v3}, Lcom/accloud/utils/ACUtils;->inToBytes(Ljava/io/InputStream;)[B

    move-result-object v0

    .line 318
    .local v0, "content":[B
    if-eqz v0, :cond_c

    array-length v8, v0

    if-nez v8, :cond_d

    .line 319
    :cond_c
    new-instance v8, Ljava/lang/Exception;

    const-string v9, "invalid payload"

    invoke-direct {v8, v9}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v8

    .line 321
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

    .line 323
    const-string v8, "ACServiceClient"

    const-string v9, "setPayload"

    invoke-static {v8, v9}, Lcom/accloud/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    invoke-virtual {v7, v0, v6}, Lcom/accloud/service/ACMsg;->setPayload([BLjava/lang/String;)V

    .line 326
    const-string v8, "application/x-zc-object"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 327
    const-string v8, "ACServiceClient"

    const-string v9, "start-unmarshal"

    invoke-static {v8, v9}, Lcom/accloud/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    invoke-static {v7, v0}, Lcom/accloud/cloudservice/ACObjectMarshaller;->unmarshal(Lcom/accloud/service/ACObject;[B)V

    goto :goto_2
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/accloud/service/ACMsg;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/accloud/cloudservice/ACServiceClient;->postData()Lcom/accloud/service/ACMsg;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 21
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/accloud/cloudservice/ACServiceClient;->doInBackground([Ljava/lang/Void;)Lcom/accloud/service/ACMsg;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/accloud/service/ACMsg;)V
    .locals 2
    .param p1, "result"    # Lcom/accloud/service/ACMsg;

    .prologue
    .line 64
    if-eqz p1, :cond_0

    .line 65
    iget-object v0, p0, Lcom/accloud/cloudservice/ACServiceClient;->listener:Lcom/accloud/cloudservice/ACMsgListener;

    invoke-interface {v0, p1}, Lcom/accloud/cloudservice/ACMsgListener;->finish(Lcom/accloud/service/ACMsg;)V

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/accloud/cloudservice/ACServiceClient;->error:Lcom/accloud/service/ACException;

    if-eqz v0, :cond_1

    .line 67
    iget-object v0, p0, Lcom/accloud/cloudservice/ACServiceClient;->listener:Lcom/accloud/cloudservice/ACMsgListener;

    iget-object v1, p0, Lcom/accloud/cloudservice/ACServiceClient;->error:Lcom/accloud/service/ACException;

    invoke-interface {v0, v1}, Lcom/accloud/cloudservice/ACMsgListener;->error(Lcom/accloud/service/ACException;)V

    .line 69
    :cond_1
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 21
    check-cast p1, Lcom/accloud/service/ACMsg;

    invoke-virtual {p0, p1}, Lcom/accloud/cloudservice/ACServiceClient;->onPostExecute(Lcom/accloud/service/ACMsg;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 59
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 60
    return-void
.end method

.method public postData()Lcom/accloud/service/ACMsg;
    .locals 28

    .prologue
    .line 72
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/accloud/cloudservice/ACServiceClient;->req:Lcom/accloud/service/ACMsg;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/accloud/service/ACMsg;->getContext()Lcom/accloud/service/ACContext;

    move-result-object v24

    if-eqz v24, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/accloud/cloudservice/ACServiceClient;->req:Lcom/accloud/service/ACMsg;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/accloud/service/ACMsg;->getContext()Lcom/accloud/service/ACContext;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/accloud/service/ACContext;->getSignature()Ljava/lang/String;

    move-result-object v24

    if-eqz v24, :cond_1

    .line 73
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    const-wide/16 v26, 0x1388

    add-long v6, v24, v26

    .line 75
    .local v6, "currentTimeMillis":J
    :try_start_0
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/accloud/cloudservice/ACServiceClient;->accessTokenExpire:J

    move-wide/from16 v24, v0

    const-wide/16 v26, 0x0

    cmp-long v24, v24, v26

    if-eqz v24, :cond_0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/accloud/cloudservice/ACServiceClient;->accessTokenExpire:J

    move-wide/from16 v24, v0

    cmp-long v24, v24, v6

    if-gez v24, :cond_0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/accloud/cloudservice/ACServiceClient;->refreshTokenExpire:J

    move-wide/from16 v24, v0

    cmp-long v24, v24, v6

    if-lez v24, :cond_0

    .line 77
    invoke-static {}, Lcom/accloud/cloudservice/AC;->accountMgr()Lcom/accloud/service/ACAccountMgr;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Lcom/accloud/service/ACAccountMgr;->updateAccessToken()V

    .line 79
    :cond_0
    new-instance v24, Lcom/accloud/common/ACHelper;

    invoke-direct/range {v24 .. v24}, Lcom/accloud/common/ACHelper;-><init>()V

    invoke-virtual/range {v24 .. v24}, Lcom/accloud/common/ACHelper;->genSignature()Lcom/accloud/common/ACSignature;

    move-result-object v23

    .line 80
    .local v23, "zSignature":Lcom/accloud/common/ACSignature;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/accloud/cloudservice/ACServiceClient;->req:Lcom/accloud/service/ACMsg;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/accloud/service/ACMsg;->getContext()Lcom/accloud/service/ACContext;

    move-result-object v24

    invoke-virtual/range {v23 .. v23}, Lcom/accloud/common/ACSignature;->getTimestamp()J

    move-result-wide v26

    invoke-static/range {v26 .. v27}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lcom/accloud/service/ACContext;->setTimestamp(Ljava/lang/String;)V

    .line 81
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/accloud/cloudservice/ACServiceClient;->req:Lcom/accloud/service/ACMsg;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/accloud/service/ACMsg;->getContext()Lcom/accloud/service/ACContext;

    move-result-object v24

    invoke-virtual/range {v23 .. v23}, Lcom/accloud/common/ACSignature;->getNonce()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lcom/accloud/service/ACContext;->setNonce(Ljava/lang/String;)V

    .line 82
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/accloud/cloudservice/ACServiceClient;->req:Lcom/accloud/service/ACMsg;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/accloud/service/ACMsg;->getContext()Lcom/accloud/service/ACContext;

    move-result-object v24

    invoke-virtual/range {v23 .. v23}, Lcom/accloud/common/ACSignature;->getSignature()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lcom/accloud/service/ACContext;->setSignature(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/accloud/service/ACException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    .end local v6    # "currentTimeMillis":J
    .end local v23    # "zSignature":Lcom/accloud/common/ACSignature;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/accloud/cloudservice/ACServiceClient;->serviceName:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/accloud/cloudservice/ACServiceClient;->serviceVersion:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/accloud/cloudservice/ACServiceClient;->routerAddr:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v25

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/accloud/cloudservice/ACServiceClient;->getFullUrl(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 89
    .local v21, "urlStr":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/accloud/cloudservice/ACServiceClient;->req:Lcom/accloud/service/ACMsg;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/accloud/service/ACMsg;->getPayloadFormat()Ljava/lang/String;

    move-result-object v16

    .line 90
    .local v16, "payloadFormat":Ljava/lang/String;
    const-string v24, "ACServiceClient"

    move-object/from16 v0, v24

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/accloud/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/accloud/cloudservice/ACServiceClient;->req:Lcom/accloud/service/ACMsg;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/accloud/service/ACMsg;->getPayloadSize()I

    move-result v13

    .line 92
    .local v13, "length":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/accloud/cloudservice/ACServiceClient;->req:Lcom/accloud/service/ACMsg;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/accloud/service/ACMsg;->getPayload()[B

    move-result-object v15

    .line 94
    .local v15, "payload":[B
    if-nez v16, :cond_2

    .line 96
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/accloud/cloudservice/ACServiceClient;->req:Lcom/accloud/service/ACMsg;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/accloud/cloudservice/ACObjectMarshaller;->marshal(Lcom/accloud/service/ACObject;)[B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v15

    .line 101
    const-string v16, "application/x-zc-object"

    .line 102
    array-length v13, v15

    .line 103
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/accloud/cloudservice/ACServiceClient;->req:Lcom/accloud/service/ACMsg;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Lcom/accloud/service/ACMsg;->setPayload([BLjava/lang/String;)V

    .line 106
    :cond_2
    if-eqz v16, :cond_3

    const-string v24, "application/octet-stream"

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_4

    const-string v24, "application/x-zc-object"

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_4

    const-string v24, "text/json"

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_4

    .line 110
    :cond_3
    new-instance v24, Lcom/accloud/service/ACException;

    sget v25, Lcom/accloud/service/ACException;->WRONG_PAYLOAD_FORMAT:I

    const-string v26, "wrong request payload format"

    invoke-direct/range {v24 .. v26}, Lcom/accloud/service/ACException;-><init>(ILjava/lang/String;)V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/accloud/cloudservice/ACServiceClient;->error:Lcom/accloud/service/ACException;

    .line 111
    const/16 v17, 0x0

    .line 264
    .end local v13    # "length":I
    .end local v15    # "payload":[B
    .end local v16    # "payloadFormat":Ljava/lang/String;
    .end local v21    # "urlStr":Ljava/lang/String;
    :goto_0
    return-object v17

    .line 83
    .restart local v6    # "currentTimeMillis":J
    :catch_0
    move-exception v8

    .line 84
    .local v8, "e":Lcom/accloud/service/ACException;
    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/accloud/cloudservice/ACServiceClient;->error:Lcom/accloud/service/ACException;

    .line 85
    const/16 v17, 0x0

    goto :goto_0

    .line 97
    .end local v6    # "currentTimeMillis":J
    .end local v8    # "e":Lcom/accloud/service/ACException;
    .restart local v13    # "length":I
    .restart local v15    # "payload":[B
    .restart local v16    # "payloadFormat":Ljava/lang/String;
    .restart local v21    # "urlStr":Ljava/lang/String;
    :catch_1
    move-exception v8

    .line 98
    .local v8, "e":Ljava/lang/Exception;
    new-instance v24, Lcom/accloud/service/ACException;

    sget v25, Lcom/accloud/service/ACException;->MARSHAL_ERROR:I

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v26

    invoke-direct/range {v24 .. v26}, Lcom/accloud/service/ACException;-><init>(ILjava/lang/String;)V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/accloud/cloudservice/ACServiceClient;->error:Lcom/accloud/service/ACException;

    .line 99
    const/16 v17, 0x0

    goto :goto_0

    .line 114
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_4
    const-string v24, "application/octet-stream"

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_7

    .line 115
    if-nez v15, :cond_5

    .line 116
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/accloud/cloudservice/ACServiceClient;->req:Lcom/accloud/service/ACMsg;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/accloud/service/ACMsg;->getStreamPayload()Ljava/io/InputStream;

    move-result-object v19

    .line 117
    .local v19, "streamPayload":Ljava/io/InputStream;
    if-eqz v19, :cond_5

    .line 119
    :try_start_2
    invoke-static/range {v19 .. v19}, Lcom/accloud/utils/ACUtils;->inToBytes(Ljava/io/InputStream;)[B

    move-result-object v15

    .line 120
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/accloud/cloudservice/ACServiceClient;->req:Lcom/accloud/service/ACMsg;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/accloud/service/ACMsg;->closeStreamPayload()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 127
    .end local v19    # "streamPayload":Ljava/io/InputStream;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/accloud/cloudservice/ACServiceClient;->req:Lcom/accloud/service/ACMsg;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/accloud/service/ACMsg;->getKeys()Ljava/util/Set;

    move-result-object v12

    .line 128
    .local v12, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v12}, Ljava/util/Set;->isEmpty()Z

    move-result v24

    if-nez v24, :cond_7

    .line 129
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "?"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 130
    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 131
    .local v10, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_7

    .line 132
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 133
    .local v11, "key":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/accloud/cloudservice/ACServiceClient;->req:Lcom/accloud/service/ACMsg;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Lcom/accloud/service/ACMsg;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v22

    .line 135
    .local v22, "value":Ljava/lang/String;
    :try_start_3
    const-string v24, "utf-8"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_8

    move-result-object v22

    .line 138
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_6

    .line 139
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "&"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    goto :goto_1

    .line 121
    .end local v10    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v11    # "key":Ljava/lang/String;
    .end local v12    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v22    # "value":Ljava/lang/String;
    .restart local v19    # "streamPayload":Ljava/io/InputStream;
    :catch_2
    move-exception v8

    .line 122
    .restart local v8    # "e":Ljava/lang/Exception;
    new-instance v24, Lcom/accloud/service/ACException;

    sget v25, Lcom/accloud/service/ACException;->INTERNAL_ERROR:I

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-direct/range {v24 .. v26}, Lcom/accloud/service/ACException;-><init>(ILjava/lang/String;)V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/accloud/cloudservice/ACServiceClient;->error:Lcom/accloud/service/ACException;

    .line 123
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 141
    .end local v8    # "e":Ljava/lang/Exception;
    .end local v19    # "streamPayload":Ljava/io/InputStream;
    .restart local v10    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v11    # "key":Ljava/lang/String;
    .restart local v12    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v22    # "value":Ljava/lang/String;
    :cond_6
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_1

    .line 146
    .end local v10    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v11    # "key":Ljava/lang/String;
    .end local v12    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v22    # "value":Ljava/lang/String;
    :cond_7
    const-string v24, "ACServiceClient"

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/accloud/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    const-string v24, "application/octet-stream"

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_16

    .line 148
    const-string v24, "ACServiceClient"

    invoke-static {v15}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/accloud/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    :goto_3
    const/4 v5, 0x0

    .line 155
    .local v5, "connection":Ljava/net/HttpURLConnection;
    :try_start_4
    new-instance v20, Ljava/net/URL;

    invoke-direct/range {v20 .. v21}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 157
    .local v20, "url":Ljava/net/URL;
    invoke-virtual/range {v20 .. v20}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v24

    move-object/from16 v0, v24

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v5, v0

    .line 158
    sget v24, Lcom/accloud/common/ACConfiguration;->CONNECT_TIMEOUT:I

    move/from16 v0, v24

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v24, v0

    move/from16 v0, v24

    invoke-virtual {v5, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 159
    sget v24, Lcom/accloud/common/ACConfiguration;->READ_TIMEOUT:I

    move/from16 v0, v24

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v24, v0

    move/from16 v0, v24

    invoke-virtual {v5, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 160
    const-string v24, "POST"

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 161
    const-string v24, "Content-Type"

    move-object/from16 v0, v24

    move-object/from16 v1, v16

    invoke-virtual {v5, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    const-string v24, "X-Zc-Content-Length"

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v5, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/accloud/cloudservice/ACServiceClient;->req:Lcom/accloud/service/ACMsg;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/accloud/service/ACMsg;->getContext()Lcom/accloud/service/ACContext;

    move-result-object v24

    if-eqz v24, :cond_15

    .line 165
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/accloud/cloudservice/ACServiceClient;->req:Lcom/accloud/service/ACMsg;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/accloud/service/ACMsg;->getContext()Lcom/accloud/service/ACContext;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/accloud/service/ACContext;->getMajorDomain()Ljava/lang/String;

    move-result-object v24

    if-eqz v24, :cond_8

    .line 166
    const-string v24, "X-Zc-Major-Domain"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/accloud/cloudservice/ACServiceClient;->req:Lcom/accloud/service/ACMsg;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/accloud/service/ACMsg;->getContext()Lcom/accloud/service/ACContext;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/accloud/service/ACContext;->getMajorDomain()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v5, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    const-string v24, "ACHeader"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "X-Zc-Major-Domain:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/accloud/cloudservice/ACServiceClient;->req:Lcom/accloud/service/ACMsg;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/accloud/service/ACMsg;->getContext()Lcom/accloud/service/ACContext;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/accloud/service/ACContext;->getMajorDomain()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/accloud/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/accloud/cloudservice/ACServiceClient;->req:Lcom/accloud/service/ACMsg;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/accloud/service/ACMsg;->getContext()Lcom/accloud/service/ACContext;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/accloud/service/ACContext;->getMajorDomainId()Ljava/lang/Long;

    move-result-object v24

    if-eqz v24, :cond_9

    .line 170
    const-string v24, "X-Zc-Major-Domain-Id"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/accloud/cloudservice/ACServiceClient;->req:Lcom/accloud/service/ACMsg;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/accloud/service/ACMsg;->getContext()Lcom/accloud/service/ACContext;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/accloud/service/ACContext;->getMajorDomainId()Ljava/lang/Long;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v5, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    const-string v24, "ACHeader"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "X-Zc-Major-Domain-Id:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/accloud/cloudservice/ACServiceClient;->req:Lcom/accloud/service/ACMsg;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/accloud/service/ACMsg;->getContext()Lcom/accloud/service/ACContext;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/accloud/service/ACContext;->getMajorDomainId()Ljava/lang/Long;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/accloud/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/accloud/cloudservice/ACServiceClient;->req:Lcom/accloud/service/ACMsg;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/accloud/service/ACMsg;->getContext()Lcom/accloud/service/ACContext;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/accloud/service/ACContext;->getSubDomain()Ljava/lang/String;

    move-result-object v24

    if-eqz v24, :cond_a

    .line 174
    const-string v24, "X-Zc-Sub-Domain"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/accloud/cloudservice/ACServiceClient;->req:Lcom/accloud/service/ACMsg;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/accloud/service/ACMsg;->getContext()Lcom/accloud/service/ACContext;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/accloud/service/ACContext;->getSubDomain()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v5, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    const-string v24, "ACHeader"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "X-Zc-Sub-Domain:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/accloud/cloudservice/ACServiceClient;->req:Lcom/accloud/service/ACMsg;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/accloud/service/ACMsg;->getContext()Lcom/accloud/service/ACContext;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/accloud/service/ACContext;->getSubDomain()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/accloud/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/accloud/cloudservice/ACServiceClient;->req:Lcom/accloud/service/ACMsg;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/accloud/service/ACMsg;->getContext()Lcom/accloud/service/ACContext;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/accloud/service/ACContext;->getAccessMode()Ljava/lang/String;

    move-result-object v24

    if-eqz v24, :cond_b

    .line 178
    const-string v24, "X-Zc-Access-Mode"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/accloud/cloudservice/ACServiceClient;->req:Lcom/accloud/service/ACMsg;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/accloud/service/ACMsg;->getContext()Lcom/accloud/service/ACContext;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/accloud/service/ACContext;->getAccessMode()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v5, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    const-string v24, "ACHeader"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "X-Zc-Access-Mode:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/accloud/cloudservice/ACServiceClient;->req:Lcom/accloud/service/ACMsg;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/accloud/service/ACMsg;->getContext()Lcom/accloud/service/ACContext;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/accloud/service/ACContext;->getAccessMode()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/accloud/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/accloud/cloudservice/ACServiceClient;->req:Lcom/accloud/service/ACMsg;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/accloud/service/ACMsg;->getContext()Lcom/accloud/service/ACContext;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/accloud/service/ACContext;->getTraceId()Ljava/lang/String;

    move-result-object v24

    if-eqz v24, :cond_c

    .line 182
    const-string v24, "X-Zc-Trace-Id"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/accloud/cloudservice/ACServiceClient;->req:Lcom/accloud/service/ACMsg;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/accloud/service/ACMsg;->getContext()Lcom/accloud/service/ACContext;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/accloud/service/ACContext;->getTraceId()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v5, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    const-string v24, "ACHeader"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "X-Zc-Trace-Id:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/accloud/cloudservice/ACServiceClient;->req:Lcom/accloud/service/ACMsg;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/accloud/service/ACMsg;->getContext()Lcom/accloud/service/ACContext;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/accloud/service/ACContext;->getTraceId()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/accloud/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/accloud/cloudservice/ACServiceClient;->req:Lcom/accloud/service/ACMsg;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/accloud/service/ACMsg;->getContext()Lcom/accloud/service/ACContext;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/accloud/service/ACContext;->getTraceStartTime()Ljava/lang/String;

    move-result-object v24

    if-eqz v24, :cond_d

    .line 186
    const-string v24, "X-Zc-Trace-Start-Time"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/accloud/cloudservice/ACServiceClient;->req:Lcom/accloud/service/ACMsg;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/accloud/service/ACMsg;->getContext()Lcom/accloud/service/ACContext;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/accloud/service/ACContext;->getTraceStartTime()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v5, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    const-string v24, "ACHeader"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "X-Zc-Trace-Start-Time:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/accloud/cloudservice/ACServiceClient;->req:Lcom/accloud/service/ACMsg;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/accloud/service/ACMsg;->getContext()Lcom/accloud/service/ACContext;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/accloud/service/ACContext;->getTraceStartTime()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/accloud/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/accloud/cloudservice/ACServiceClient;->req:Lcom/accloud/service/ACMsg;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/accloud/service/ACMsg;->getContext()Lcom/accloud/service/ACContext;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/accloud/service/ACContext;->getTimestamp()Ljava/lang/String;

    move-result-object v24

    if-eqz v24, :cond_e

    .line 190
    const-string v24, "X-Zc-Timestamp"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/accloud/cloudservice/ACServiceClient;->req:Lcom/accloud/service/ACMsg;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/accloud/service/ACMsg;->getContext()Lcom/accloud/service/ACContext;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/accloud/service/ACContext;->getTimestamp()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v5, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    const-string v24, "ACHeader"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "X-Zc-Timestamp:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/accloud/cloudservice/ACServiceClient;->req:Lcom/accloud/service/ACMsg;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/accloud/service/ACMsg;->getContext()Lcom/accloud/service/ACContext;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/accloud/service/ACContext;->getTimestamp()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/accloud/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/accloud/cloudservice/ACServiceClient;->req:Lcom/accloud/service/ACMsg;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/accloud/service/ACMsg;->getContext()Lcom/accloud/service/ACContext;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/accloud/service/ACContext;->getTimeout()Ljava/lang/String;

    move-result-object v24

    if-eqz v24, :cond_f

    .line 194
    const-string v24, "X-Zc-Timeout"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/accloud/cloudservice/ACServiceClient;->req:Lcom/accloud/service/ACMsg;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/accloud/service/ACMsg;->getContext()Lcom/accloud/service/ACContext;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/accloud/service/ACContext;->getTimeout()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v5, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    const-string v24, "ACHeader"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "X-Zc-Timeout:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/accloud/cloudservice/ACServiceClient;->req:Lcom/accloud/service/ACMsg;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/accloud/service/ACMsg;->getContext()Lcom/accloud/service/ACContext;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/accloud/service/ACContext;->getTimeout()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/accloud/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/accloud/cloudservice/ACServiceClient;->req:Lcom/accloud/service/ACMsg;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/accloud/service/ACMsg;->getContext()Lcom/accloud/service/ACContext;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/accloud/service/ACContext;->getNonce()Ljava/lang/String;

    move-result-object v24

    if-eqz v24, :cond_10

    .line 198
    const-string v24, "X-Zc-Nonce"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/accloud/cloudservice/ACServiceClient;->req:Lcom/accloud/service/ACMsg;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/accloud/service/ACMsg;->getContext()Lcom/accloud/service/ACContext;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/accloud/service/ACContext;->getNonce()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v5, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    const-string v24, "ACHeader"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "X-Zc-Nonce:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/accloud/cloudservice/ACServiceClient;->req:Lcom/accloud/service/ACMsg;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/accloud/service/ACMsg;->getContext()Lcom/accloud/service/ACContext;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/accloud/service/ACContext;->getNonce()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/accloud/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/accloud/cloudservice/ACServiceClient;->req:Lcom/accloud/service/ACMsg;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/accloud/service/ACMsg;->getContext()Lcom/accloud/service/ACContext;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/accloud/service/ACContext;->getUserId()Ljava/lang/String;

    move-result-object v24

    if-eqz v24, :cond_11

    .line 202
    const-string v24, "X-Zc-User-Id"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/accloud/cloudservice/ACServiceClient;->req:Lcom/accloud/service/ACMsg;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/accloud/service/ACMsg;->getContext()Lcom/accloud/service/ACContext;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/accloud/service/ACContext;->getUserId()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v5, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    const-string v24, "ACHeader"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "X-Zc-User-Id:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/accloud/cloudservice/ACServiceClient;->req:Lcom/accloud/service/ACMsg;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/accloud/service/ACMsg;->getContext()Lcom/accloud/service/ACContext;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/accloud/service/ACContext;->getUserId()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/accloud/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/accloud/cloudservice/ACServiceClient;->req:Lcom/accloud/service/ACMsg;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/accloud/service/ACMsg;->getContext()Lcom/accloud/service/ACContext;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/accloud/service/ACContext;->getSignature()Ljava/lang/String;

    move-result-object v24

    if-eqz v24, :cond_12

    .line 206
    const-string v24, "X-Zc-User-Signature"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/accloud/cloudservice/ACServiceClient;->req:Lcom/accloud/service/ACMsg;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/accloud/service/ACMsg;->getContext()Lcom/accloud/service/ACContext;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/accloud/service/ACContext;->getSignature()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v5, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    const-string v24, "ACHeader"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "X-Zc-User-Signature:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/accloud/cloudservice/ACServiceClient;->req:Lcom/accloud/service/ACMsg;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/accloud/service/ACMsg;->getContext()Lcom/accloud/service/ACContext;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/accloud/service/ACContext;->getSignature()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/accloud/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/accloud/cloudservice/ACServiceClient;->req:Lcom/accloud/service/ACMsg;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/accloud/service/ACMsg;->getContext()Lcom/accloud/service/ACContext;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/accloud/service/ACContext;->getMethodVersion()Ljava/lang/Long;

    move-result-object v24

    if-eqz v24, :cond_13

    .line 210
    const-string v24, "X-Zc-Version"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/accloud/cloudservice/ACServiceClient;->req:Lcom/accloud/service/ACMsg;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/accloud/service/ACMsg;->getContext()Lcom/accloud/service/ACContext;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/accloud/service/ACContext;->getMethodVersion()Ljava/lang/Long;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v5, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    const-string v24, "ACHeader"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "X-Zc-Version:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/accloud/cloudservice/ACServiceClient;->req:Lcom/accloud/service/ACMsg;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/accloud/service/ACMsg;->getContext()Lcom/accloud/service/ACContext;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/accloud/service/ACContext;->getMethodVersion()Ljava/lang/Long;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/accloud/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/accloud/cloudservice/ACServiceClient;->req:Lcom/accloud/service/ACMsg;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/accloud/service/ACMsg;->getContext()Lcom/accloud/service/ACContext;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/accloud/service/ACContext;->getPhoneId()Ljava/lang/String;

    move-result-object v24

    if-eqz v24, :cond_14

    .line 214
    const-string v24, "X-Zc-Phone-Id"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/accloud/cloudservice/ACServiceClient;->req:Lcom/accloud/service/ACMsg;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/accloud/service/ACMsg;->getContext()Lcom/accloud/service/ACContext;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/accloud/service/ACContext;->getPhoneId()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v5, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    const-string v24, "ACHeader"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "X-Zc-Phone-Id:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/accloud/cloudservice/ACServiceClient;->req:Lcom/accloud/service/ACMsg;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/accloud/service/ACMsg;->getContext()Lcom/accloud/service/ACContext;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/accloud/service/ACContext;->getPhoneId()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/accloud/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    :cond_14
    const-string v24, "X-Zc-Device-Os"

    const-string v25, "android"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v5, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    const-string v24, "X-Zc-Operation-Type"

    const-string v25, "app"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v5, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    :cond_15
    if-eqz v15, :cond_17

    array-length v0, v15

    move/from16 v24, v0

    if-lez v24, :cond_17

    .line 221
    const/16 v24, 0x1

    move/from16 v0, v24

    invoke-virtual {v5, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 222
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->connect()V

    .line 225
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v14

    .line 226
    .local v14, "os":Ljava/io/OutputStream;
    invoke-virtual {v14, v15}, Ljava/io/OutputStream;->write([B)V

    .line 227
    invoke-virtual {v14}, Ljava/io/OutputStream;->flush()V

    .line 228
    invoke-virtual {v14}, Ljava/io/OutputStream;->close()V

    .line 232
    .end local v14    # "os":Ljava/io/OutputStream;
    :goto_4
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v24

    const/16 v25, 0xc8

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_19

    .line 233
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/accloud/cloudservice/ACServiceClient;->parseClientResp(Ljava/net/HttpURLConnection;)Lcom/accloud/service/ACMsg;

    move-result-object v17

    .line 234
    .local v17, "resp":Lcom/accloud/service/ACMsg;
    invoke-virtual/range {v17 .. v17}, Lcom/accloud/service/ACMsg;->isErr()Z

    move-result v24

    if-eqz v24, :cond_18

    invoke-virtual/range {v17 .. v17}, Lcom/accloud/service/ACMsg;->getErrCode()Ljava/lang/Integer;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v24

    const/16 v25, 0xdbb

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_18

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/accloud/cloudservice/ACServiceClient;->updateToken:Z

    move/from16 v24, v0

    if-nez v24, :cond_18

    .line 235
    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/accloud/cloudservice/ACServiceClient;->updateToken:Z

    .line 236
    invoke-static {}, Lcom/accloud/cloudservice/AC;->accountMgr()Lcom/accloud/service/ACAccountMgr;

    move-result-object v4

    .line 237
    .local v4, "accountMgr":Lcom/accloud/service/ACAccountMgr;
    invoke-interface {v4}, Lcom/accloud/service/ACAccountMgr;->updateAccessToken()V

    .line 238
    new-instance v9, Lcom/accloud/common/ACHelper;

    invoke-direct {v9}, Lcom/accloud/common/ACHelper;-><init>()V

    .line 239
    .local v9, "helper":Lcom/accloud/common/ACHelper;
    invoke-virtual {v9}, Lcom/accloud/common/ACHelper;->genSignature()Lcom/accloud/common/ACSignature;

    move-result-object v18

    .line 240
    .local v18, "signature":Lcom/accloud/common/ACSignature;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/accloud/cloudservice/ACServiceClient;->req:Lcom/accloud/service/ACMsg;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/accloud/service/ACMsg;->getContext()Lcom/accloud/service/ACContext;

    move-result-object v24

    invoke-virtual/range {v18 .. v18}, Lcom/accloud/common/ACSignature;->getTimestamp()J

    move-result-wide v26

    invoke-static/range {v26 .. v27}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lcom/accloud/service/ACContext;->setTimestamp(Ljava/lang/String;)V

    .line 241
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/accloud/cloudservice/ACServiceClient;->req:Lcom/accloud/service/ACMsg;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/accloud/service/ACMsg;->getContext()Lcom/accloud/service/ACContext;

    move-result-object v24

    invoke-virtual/range {v18 .. v18}, Lcom/accloud/common/ACSignature;->getNonce()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lcom/accloud/service/ACContext;->setNonce(Ljava/lang/String;)V

    .line 242
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/accloud/cloudservice/ACServiceClient;->req:Lcom/accloud/service/ACMsg;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/accloud/service/ACMsg;->getContext()Lcom/accloud/service/ACContext;

    move-result-object v24

    invoke-virtual/range {v18 .. v18}, Lcom/accloud/common/ACSignature;->getSignature()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lcom/accloud/service/ACContext;->setSignature(Ljava/lang/String;)V

    .line 243
    invoke-virtual/range {p0 .. p0}, Lcom/accloud/cloudservice/ACServiceClient;->postData()Lcom/accloud/service/ACMsg;
    :try_end_4
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/net/SocketException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Lcom/accloud/service/ACException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_7
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v17

    .line 262
    .end local v17    # "resp":Lcom/accloud/service/ACMsg;
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_0

    .line 150
    .end local v4    # "accountMgr":Lcom/accloud/service/ACAccountMgr;
    .end local v5    # "connection":Ljava/net/HttpURLConnection;
    .end local v9    # "helper":Lcom/accloud/common/ACHelper;
    .end local v18    # "signature":Lcom/accloud/common/ACSignature;
    .end local v20    # "url":Ljava/net/URL;
    :cond_16
    const-string v24, "ACServiceClient"

    new-instance v25, Ljava/lang/String;

    move-object/from16 v0, v25

    invoke-direct {v0, v15}, Ljava/lang/String;-><init>([B)V

    invoke-static/range {v24 .. v25}, Lcom/accloud/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 230
    .restart local v5    # "connection":Ljava/net/HttpURLConnection;
    .restart local v20    # "url":Ljava/net/URL;
    :cond_17
    :try_start_5
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->connect()V
    :try_end_5
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/net/SocketException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Lcom/accloud/service/ACException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_7
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_4

    .line 251
    .end local v20    # "url":Ljava/net/URL;
    :catch_3
    move-exception v8

    .line 252
    .local v8, "e":Lorg/apache/http/conn/ConnectTimeoutException;
    :try_start_6
    new-instance v24, Lcom/accloud/service/ACException;

    sget v25, Lcom/accloud/service/ACException;->TIMEOUT:I

    const-string v26, "connect timeout"

    invoke-direct/range {v24 .. v26}, Lcom/accloud/service/ACException;-><init>(ILjava/lang/String;)V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/accloud/cloudservice/ACServiceClient;->error:Lcom/accloud/service/ACException;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 262
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 264
    .end local v8    # "e":Lorg/apache/http/conn/ConnectTimeoutException;
    :goto_5
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 262
    .restart local v17    # "resp":Lcom/accloud/service/ACMsg;
    .restart local v20    # "url":Ljava/net/URL;
    :cond_18
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_0

    .line 248
    .end local v17    # "resp":Lcom/accloud/service/ACMsg;
    :cond_19
    :try_start_7
    const-string v24, "ACServiceClient"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "errorCode:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "  errorMessage:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/accloud/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    new-instance v24, Lcom/accloud/service/ACException;

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v25

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v26

    invoke-direct/range {v24 .. v26}, Lcom/accloud/service/ACException;-><init>(ILjava/lang/String;)V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/accloud/cloudservice/ACServiceClient;->error:Lcom/accloud/service/ACException;
    :try_end_7
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/net/SocketException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Lcom/accloud/service/ACException; {:try_start_7 .. :try_end_7} :catch_6
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 262
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_5

    .line 253
    .end local v20    # "url":Ljava/net/URL;
    :catch_4
    move-exception v8

    .line 254
    .local v8, "e":Ljava/net/SocketTimeoutException;
    :try_start_8
    new-instance v24, Lcom/accloud/service/ACException;

    sget v25, Lcom/accloud/service/ACException;->TIMEOUT:I

    const-string v26, "request timeout"

    invoke-direct/range {v24 .. v26}, Lcom/accloud/service/ACException;-><init>(ILjava/lang/String;)V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/accloud/cloudservice/ACServiceClient;->error:Lcom/accloud/service/ACException;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 262
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_5

    .line 255
    .end local v8    # "e":Ljava/net/SocketTimeoutException;
    :catch_5
    move-exception v8

    .line 256
    .local v8, "e":Ljava/net/SocketException;
    :try_start_9
    new-instance v24, Lcom/accloud/service/ACException;

    sget v25, Lcom/accloud/service/ACException;->INTERNET_ERROR:I

    const-string v26, "internet error"

    invoke-direct/range {v24 .. v26}, Lcom/accloud/service/ACException;-><init>(ILjava/lang/String;)V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/accloud/cloudservice/ACServiceClient;->error:Lcom/accloud/service/ACException;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 262
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_5

    .line 257
    .end local v8    # "e":Ljava/net/SocketException;
    :catch_6
    move-exception v8

    .line 258
    .local v8, "e":Lcom/accloud/service/ACException;
    :try_start_a
    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/accloud/cloudservice/ACServiceClient;->error:Lcom/accloud/service/ACException;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 262
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_5

    .line 259
    .end local v8    # "e":Lcom/accloud/service/ACException;
    :catch_7
    move-exception v8

    .line 260
    .local v8, "e":Ljava/lang/Exception;
    :try_start_b
    new-instance v24, Lcom/accloud/service/ACException;

    sget v25, Lcom/accloud/service/ACException;->INTERNAL_ERROR:I

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-direct/range {v24 .. v26}, Lcom/accloud/service/ACException;-><init>(ILjava/lang/String;)V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/accloud/cloudservice/ACServiceClient;->error:Lcom/accloud/service/ACException;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 262
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_5

    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v24

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    throw v24

    .line 136
    .end local v5    # "connection":Ljava/net/HttpURLConnection;
    .restart local v10    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v11    # "key":Ljava/lang/String;
    .restart local v12    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v22    # "value":Ljava/lang/String;
    :catch_8
    move-exception v24

    goto/16 :goto_2
.end method
