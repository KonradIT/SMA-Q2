.class public Lcom/accloud/cloudservice/ACPushManager;
.super Ljava/lang/Object;
.source "ACPushManager.java"

# interfaces
.implements Lcom/accloud/service/ACPushMgr;


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private TIME:I

.field callback:Lcom/accloud/cloudservice/PayloadCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/accloud/cloudservice/PayloadCallback",
            "<",
            "Lcom/accloud/service/ACPushReceive;",
            ">;"
        }
    .end annotation
.end field

.field client:Lorg/java_websocket/client/WebSocketClient;

.field connectCallback:Lcom/accloud/cloudservice/VoidCallback;

.field private disconnect:Z

.field handler:Landroid/os/Handler;

.field private isConnect:Z

.field public pushTables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/accloud/service/ACPushTable;",
            ">;"
        }
    .end annotation
.end field

.field private rewatching:Z

.field public seqId:I

.field unwatchCallbacks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/accloud/cloudservice/VoidCallback;",
            ">;"
        }
    .end annotation
.end field

.field watchCallbacks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/accloud/cloudservice/VoidCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/accloud/cloudservice/ACPushManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/accloud/cloudservice/ACPushManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput v0, p0, Lcom/accloud/cloudservice/ACPushManager;->seqId:I

    .line 37
    iput-boolean v0, p0, Lcom/accloud/cloudservice/ACPushManager;->isConnect:Z

    .line 38
    iput-boolean v0, p0, Lcom/accloud/cloudservice/ACPushManager;->disconnect:Z

    .line 39
    iput-boolean v0, p0, Lcom/accloud/cloudservice/ACPushManager;->rewatching:Z

    .line 42
    const/16 v0, 0x7d0

    iput v0, p0, Lcom/accloud/cloudservice/ACPushManager;->TIME:I

    .line 44
    new-instance v0, Lcom/accloud/cloudservice/ACPushManager$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/accloud/cloudservice/ACPushManager$1;-><init>(Lcom/accloud/cloudservice/ACPushManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/accloud/cloudservice/ACPushManager;->handler:Landroid/os/Handler;

    .line 191
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/accloud/cloudservice/ACPushManager;->watchCallbacks:Ljava/util/Map;

    .line 192
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/accloud/cloudservice/ACPushManager;->unwatchCallbacks:Ljava/util/Map;

    .line 193
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/accloud/cloudservice/ACPushManager;->pushTables:Ljava/util/List;

    .line 194
    return-void
.end method

.method static synthetic access$002(Lcom/accloud/cloudservice/ACPushManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/accloud/cloudservice/ACPushManager;
    .param p1, "x1"    # Z

    .prologue
    .line 26
    iput-boolean p1, p0, Lcom/accloud/cloudservice/ACPushManager;->rewatching:Z

    return p1
.end method

.method static synthetic access$100(Lcom/accloud/cloudservice/ACPushManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/accloud/cloudservice/ACPushManager;

    .prologue
    .line 26
    iget v0, p0, Lcom/accloud/cloudservice/ACPushManager;->TIME:I

    return v0
.end method

.method static synthetic access$102(Lcom/accloud/cloudservice/ACPushManager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/accloud/cloudservice/ACPushManager;
    .param p1, "x1"    # I

    .prologue
    .line 26
    iput p1, p0, Lcom/accloud/cloudservice/ACPushManager;->TIME:I

    return p1
.end method

.method static synthetic access$128(Lcom/accloud/cloudservice/ACPushManager;I)I
    .locals 1
    .param p0, "x0"    # Lcom/accloud/cloudservice/ACPushManager;
    .param p1, "x1"    # I

    .prologue
    .line 26
    iget v0, p0, Lcom/accloud/cloudservice/ACPushManager;->TIME:I

    mul-int/2addr v0, p1

    iput v0, p0, Lcom/accloud/cloudservice/ACPushManager;->TIME:I

    return v0
.end method

.method static synthetic access$202(Lcom/accloud/cloudservice/ACPushManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/accloud/cloudservice/ACPushManager;
    .param p1, "x1"    # Z

    .prologue
    .line 26
    iput-boolean p1, p0, Lcom/accloud/cloudservice/ACPushManager;->isConnect:Z

    return p1
.end method

.method static synthetic access$300(Lcom/accloud/cloudservice/ACPushManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/accloud/cloudservice/ACPushManager;

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/accloud/cloudservice/ACPushManager;->disconnect:Z

    return v0
.end method


# virtual methods
.method public connect(Lcom/accloud/cloudservice/VoidCallback;)V
    .locals 3
    .param p1, "connectCallback"    # Lcom/accloud/cloudservice/VoidCallback;

    .prologue
    .line 259
    invoke-static {}, Lcom/accloud/cloudservice/AC;->accountMgr()Lcom/accloud/service/ACAccountMgr;

    move-result-object v0

    invoke-interface {v0}, Lcom/accloud/service/ACAccountMgr;->isLogin()Z

    move-result v0

    if-nez v0, :cond_0

    .line 260
    new-instance v0, Lcom/accloud/service/ACException;

    sget v1, Lcom/accloud/service/ACException;->NO_LOGIN:I

    const-string v2, "no login"

    invoke-direct {v0, v1, v2}, Lcom/accloud/service/ACException;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/accloud/cloudservice/VoidCallback;->error(Lcom/accloud/service/ACException;)V

    .line 275
    :goto_0
    return-void

    .line 263
    :cond_0
    iget-boolean v0, p0, Lcom/accloud/cloudservice/ACPushManager;->rewatching:Z

    if-nez v0, :cond_1

    invoke-static {}, Lcom/accloud/utils/ACUtils;->isNetworkConnected()Z

    move-result v0

    if-nez v0, :cond_1

    .line 264
    new-instance v0, Lcom/accloud/service/ACException;

    sget v1, Lcom/accloud/service/ACException;->NO_NETWORK_AVAILABLE:I

    const-string v2, "no network available"

    invoke-direct {v0, v1, v2}, Lcom/accloud/service/ACException;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/accloud/cloudservice/VoidCallback;->error(Lcom/accloud/service/ACException;)V

    goto :goto_0

    .line 267
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/accloud/cloudservice/ACPushManager;->rewatching:Z

    .line 268
    iget-boolean v0, p0, Lcom/accloud/cloudservice/ACPushManager;->isConnect:Z

    if-nez v0, :cond_2

    .line 269
    sget-object v0, Lcom/accloud/cloudservice/ACPushManager;->TAG:Ljava/lang/String;

    const-string v1, "connecting"

    invoke-static {v0, v1}, Lcom/accloud/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    invoke-virtual {p0}, Lcom/accloud/cloudservice/ACPushManager;->init()V

    .line 271
    iget-object v0, p0, Lcom/accloud/cloudservice/ACPushManager;->client:Lorg/java_websocket/client/WebSocketClient;

    invoke-virtual {v0}, Lorg/java_websocket/client/WebSocketClient;->connect()V

    .line 274
    :goto_1
    iput-object p1, p0, Lcom/accloud/cloudservice/ACPushManager;->connectCallback:Lcom/accloud/cloudservice/VoidCallback;

    goto :goto_0

    .line 273
    :cond_2
    invoke-interface {p1}, Lcom/accloud/cloudservice/VoidCallback;->success()V

    goto :goto_1
.end method

.method public disconnect()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 430
    iput v1, p0, Lcom/accloud/cloudservice/ACPushManager;->seqId:I

    .line 431
    iget-object v0, p0, Lcom/accloud/cloudservice/ACPushManager;->pushTables:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 432
    iget-object v0, p0, Lcom/accloud/cloudservice/ACPushManager;->watchCallbacks:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 433
    iget-object v0, p0, Lcom/accloud/cloudservice/ACPushManager;->unwatchCallbacks:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 434
    iput-object v2, p0, Lcom/accloud/cloudservice/ACPushManager;->callback:Lcom/accloud/cloudservice/PayloadCallback;

    .line 435
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/accloud/cloudservice/ACPushManager;->disconnect:Z

    .line 436
    iput-boolean v1, p0, Lcom/accloud/cloudservice/ACPushManager;->rewatching:Z

    .line 437
    const/16 v0, 0x7d0

    iput v0, p0, Lcom/accloud/cloudservice/ACPushManager;->TIME:I

    .line 438
    iget-object v0, p0, Lcom/accloud/cloudservice/ACPushManager;->client:Lorg/java_websocket/client/WebSocketClient;

    if-eqz v0, :cond_0

    .line 439
    iget-object v0, p0, Lcom/accloud/cloudservice/ACPushManager;->client:Lorg/java_websocket/client/WebSocketClient;

    invoke-virtual {v0}, Lorg/java_websocket/client/WebSocketClient;->close()V

    .line 440
    iput-object v2, p0, Lcom/accloud/cloudservice/ACPushManager;->client:Lorg/java_websocket/client/WebSocketClient;

    .line 442
    :cond_0
    return-void
.end method

.method public init()V
    .locals 3

    .prologue
    .line 198
    :try_start_0
    sget-object v0, Lcom/accloud/cloudservice/ACPushManager;->TAG:Ljava/lang/String;

    invoke-static {}, Lcom/accloud/common/ACConfiguration;->getAppGatewayAddr()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/accloud/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    new-instance v0, Lcom/accloud/cloudservice/ACPushManager$2;

    new-instance v1, Ljava/net/URI;

    invoke-static {}, Lcom/accloud/common/ACConfiguration;->getAppGatewayAddr()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    new-instance v2, Lorg/java_websocket/drafts/Draft_17;

    invoke-direct {v2}, Lorg/java_websocket/drafts/Draft_17;-><init>()V

    invoke-direct {v0, p0, v1, v2}, Lcom/accloud/cloudservice/ACPushManager$2;-><init>(Lcom/accloud/cloudservice/ACPushManager;Ljava/net/URI;Lorg/java_websocket/drafts/Draft;)V

    iput-object v0, p0, Lcom/accloud/cloudservice/ACPushManager;->client:Lorg/java_websocket/client/WebSocketClient;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 256
    :goto_0
    return-void

    .line 254
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public loginWithSign()V
    .locals 10

    .prologue
    .line 278
    sget-object v4, Lcom/accloud/cloudservice/ACPushManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, p0, Lcom/accloud/cloudservice/ACPushManager;->seqId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":loginWithSign"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/accloud/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    new-instance v1, Lcom/accloud/service/ACObject;

    invoke-direct {v1}, Lcom/accloud/service/ACObject;-><init>()V

    .line 281
    .local v1, "object":Lcom/accloud/service/ACObject;
    new-instance v0, Lcom/accloud/service/ACObject;

    invoke-direct {v0}, Lcom/accloud/service/ACObject;-><init>()V

    .line 282
    .local v0, "header":Lcom/accloud/service/ACObject;
    const-string v4, "name"

    const-string v5, "loginWithSign"

    invoke-virtual {v0, v4, v5}, Lcom/accloud/service/ACObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 283
    const-string v4, "type"

    const-string v5, "json"

    invoke-virtual {v0, v4, v5}, Lcom/accloud/service/ACObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 284
    const-string v4, "ver"

    const-string v5, "1.0.0"

    invoke-virtual {v0, v4, v5}, Lcom/accloud/service/ACObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 285
    const-string v4, "seqId"

    iget v5, p0, Lcom/accloud/cloudservice/ACPushManager;->seqId:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/accloud/cloudservice/ACPushManager;->seqId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/accloud/service/ACObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 287
    new-instance v3, Lcom/accloud/service/ACObject;

    invoke-direct {v3}, Lcom/accloud/service/ACObject;-><init>()V

    .line 288
    .local v3, "verifySign":Lcom/accloud/service/ACObject;
    new-instance v4, Lcom/accloud/common/ACHelper;

    invoke-direct {v4}, Lcom/accloud/common/ACHelper;-><init>()V

    invoke-virtual {v4}, Lcom/accloud/common/ACHelper;->genSignature()Lcom/accloud/common/ACSignature;

    move-result-object v2

    .line 289
    .local v2, "signature":Lcom/accloud/common/ACSignature;
    const-string v4, "domain"

    sget-object v5, Lcom/accloud/cloudservice/AC;->majorDomain:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/accloud/service/ACObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 290
    const-string v4, "userId"

    sget-object v5, Lcom/accloud/cloudservice/AC;->context:Landroid/content/Context;

    const-string v6, "ablecloud_private_userId"

    const-wide/16 v8, 0x0

    invoke-static {v5, v6, v8, v9}, Lcom/accloud/utils/PreferencesUtils;->getLong(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/accloud/service/ACObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 291
    const-string v4, "timestamp"

    invoke-virtual {v2}, Lcom/accloud/common/ACSignature;->getTimestamp()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/accloud/service/ACObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 292
    const-string v4, "timeout"

    invoke-virtual {v2}, Lcom/accloud/common/ACSignature;->getTimeout()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/accloud/service/ACObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 293
    const-string v4, "nonce"

    invoke-virtual {v2}, Lcom/accloud/common/ACSignature;->getNonce()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/accloud/service/ACObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 294
    const-string v4, "sign"

    invoke-virtual {v2}, Lcom/accloud/common/ACSignature;->getSignature()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/accloud/service/ACObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 296
    const-string v4, "header"

    invoke-virtual {v1, v4, v0}, Lcom/accloud/service/ACObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 297
    const-string v4, "verifySign"

    invoke-virtual {v1, v4, v3}, Lcom/accloud/service/ACObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 300
    :try_start_0
    iget-object v4, p0, Lcom/accloud/cloudservice/ACPushManager;->client:Lorg/java_websocket/client/WebSocketClient;

    invoke-static {v1}, Lcom/accloud/cloudservice/ACObjectMarshaller;->marshal(Lcom/accloud/service/ACObject;)[B

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/java_websocket/client/WebSocketClient;->send([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 303
    :goto_0
    return-void

    .line 301
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method public onReceive(Lcom/accloud/cloudservice/PayloadCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/accloud/cloudservice/PayloadCallback",
            "<",
            "Lcom/accloud/service/ACPushReceive;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 426
    .local p1, "callback":Lcom/accloud/cloudservice/PayloadCallback;, "Lcom/accloud/cloudservice/PayloadCallback<Lcom/accloud/service/ACPushReceive;>;"
    iput-object p1, p0, Lcom/accloud/cloudservice/ACPushManager;->callback:Lcom/accloud/cloudservice/PayloadCallback;

    .line 427
    return-void
.end method

.method public rewatch(Lcom/accloud/service/ACPushTable;Lcom/accloud/cloudservice/VoidCallback;)V
    .locals 16
    .param p1, "table"    # Lcom/accloud/service/ACPushTable;
    .param p2, "callback"    # Lcom/accloud/cloudservice/VoidCallback;

    .prologue
    .line 348
    sget-object v11, Lcom/accloud/cloudservice/ACPushManager;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget v13, v0, Lcom/accloud/cloudservice/ACPushManager;->seqId:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ":rewatch"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/accloud/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/accloud/cloudservice/ACPushManager;->watchCallbacks:Ljava/util/Map;

    move-object/from16 v0, p0

    iget v12, v0, Lcom/accloud/cloudservice/ACPushManager;->seqId:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-interface {v11, v12, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    new-instance v7, Lcom/accloud/service/ACObject;

    invoke-direct {v7}, Lcom/accloud/service/ACObject;-><init>()V

    .line 352
    .local v7, "object":Lcom/accloud/service/ACObject;
    new-instance v4, Lcom/accloud/service/ACObject;

    invoke-direct {v4}, Lcom/accloud/service/ACObject;-><init>()V

    .line 353
    .local v4, "header":Lcom/accloud/service/ACObject;
    const-string v11, "name"

    const-string v12, "watch"

    invoke-virtual {v4, v11, v12}, Lcom/accloud/service/ACObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 354
    const-string v11, "type"

    const-string v12, "json"

    invoke-virtual {v4, v11, v12}, Lcom/accloud/service/ACObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 355
    const-string v11, "ver"

    const-string v12, "1.0.0"

    invoke-virtual {v4, v11, v12}, Lcom/accloud/service/ACObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 356
    const-string v11, "seqId"

    move-object/from16 v0, p0

    iget v12, v0, Lcom/accloud/cloudservice/ACPushManager;->seqId:I

    add-int/lit8 v13, v12, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/accloud/cloudservice/ACPushManager;->seqId:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v4, v11, v12}, Lcom/accloud/service/ACObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 357
    const-string v11, "header"

    invoke-virtual {v7, v11, v4}, Lcom/accloud/service/ACObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 359
    new-instance v8, Lcom/accloud/service/ACObject;

    invoke-direct {v8}, Lcom/accloud/service/ACObject;-><init>()V

    .line 360
    .local v8, "payload":Lcom/accloud/service/ACObject;
    const-string v11, "className"

    invoke-virtual/range {p1 .. p1}, Lcom/accloud/service/ACPushTable;->getClassName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v11, v12}, Lcom/accloud/service/ACObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 361
    invoke-virtual/range {p1 .. p1}, Lcom/accloud/service/ACPushTable;->getColumes()[Ljava/lang/String;

    move-result-object v2

    .local v2, "arr$":[Ljava/lang/String;
    array-length v6, v2

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_0
    if-ge v5, v6, :cond_0

    aget-object v3, v2, v5

    .line 362
    .local v3, "colume":Ljava/lang/String;
    const-string v11, "columes"

    invoke-virtual {v8, v11, v3}, Lcom/accloud/service/ACObject;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 361
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 363
    .end local v3    # "colume":Ljava/lang/String;
    :cond_0
    const-string v11, "primaryKey"

    invoke-virtual/range {p1 .. p1}, Lcom/accloud/service/ACPushTable;->getPrimaryKey()Lcom/accloud/service/ACObject;

    move-result-object v12

    invoke-virtual {v8, v11, v12}, Lcom/accloud/service/ACObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 364
    const-string v11, "opType"

    invoke-virtual/range {p1 .. p1}, Lcom/accloud/service/ACPushTable;->getOpType()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v8, v11, v12}, Lcom/accloud/service/ACObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 365
    const-string v11, "payload"

    invoke-virtual {v7, v11, v8}, Lcom/accloud/service/ACObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 367
    new-instance v10, Lcom/accloud/service/ACObject;

    invoke-direct {v10}, Lcom/accloud/service/ACObject;-><init>()V

    .line 368
    .local v10, "verifySign":Lcom/accloud/service/ACObject;
    new-instance v11, Lcom/accloud/common/ACHelper;

    invoke-direct {v11}, Lcom/accloud/common/ACHelper;-><init>()V

    invoke-virtual {v11}, Lcom/accloud/common/ACHelper;->genSignature()Lcom/accloud/common/ACSignature;

    move-result-object v9

    .line 369
    .local v9, "signature":Lcom/accloud/common/ACSignature;
    const-string v11, "domain"

    sget-object v12, Lcom/accloud/cloudservice/AC;->majorDomain:Ljava/lang/String;

    invoke-virtual {v10, v11, v12}, Lcom/accloud/service/ACObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 370
    const-string v11, "userId"

    sget-object v12, Lcom/accloud/cloudservice/AC;->context:Landroid/content/Context;

    const-string v13, "ablecloud_private_userId"

    const-wide/16 v14, 0x0

    invoke-static {v12, v13, v14, v15}, Lcom/accloud/utils/PreferencesUtils;->getLong(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/accloud/service/ACObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 371
    const-string v11, "timestamp"

    invoke-virtual {v9}, Lcom/accloud/common/ACSignature;->getTimestamp()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/accloud/service/ACObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 372
    const-string v11, "timeout"

    invoke-virtual {v9}, Lcom/accloud/common/ACSignature;->getTimeout()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/accloud/service/ACObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 373
    const-string v11, "nonce"

    invoke-virtual {v9}, Lcom/accloud/common/ACSignature;->getNonce()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/accloud/service/ACObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 374
    const-string v11, "sign"

    invoke-virtual {v9}, Lcom/accloud/common/ACSignature;->getSignature()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/accloud/service/ACObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 375
    const-string v11, "verifySign"

    invoke-virtual {v7, v11, v10}, Lcom/accloud/service/ACObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 377
    :try_start_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/accloud/cloudservice/ACPushManager;->client:Lorg/java_websocket/client/WebSocketClient;

    invoke-static {v7}, Lcom/accloud/cloudservice/ACObjectMarshaller;->marshal(Lcom/accloud/service/ACObject;)[B

    move-result-object v12

    invoke-virtual {v11, v12}, Lorg/java_websocket/client/WebSocketClient;->send([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 380
    :goto_1
    return-void

    .line 378
    :catch_0
    move-exception v11

    goto :goto_1
.end method

.method public unwatch(Lcom/accloud/service/ACPushTable;Lcom/accloud/cloudservice/VoidCallback;)V
    .locals 12
    .param p1, "table"    # Lcom/accloud/service/ACPushTable;
    .param p2, "callback"    # Lcom/accloud/cloudservice/VoidCallback;

    .prologue
    .line 383
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v7, p0, Lcom/accloud/cloudservice/ACPushManager;->pushTables:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v1, v7, :cond_1

    .line 384
    iget-object v7, p0, Lcom/accloud/cloudservice/ACPushManager;->pushTables:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/accloud/service/ACPushTable;

    .line 385
    .local v4, "pushTable":Lcom/accloud/service/ACPushTable;
    invoke-virtual {v4, p1}, Lcom/accloud/service/ACPushTable;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 386
    sget-object v7, Lcom/accloud/cloudservice/ACPushManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "remove className["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Lcom/accloud/service/ACPushTable;->getClassName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "], payload["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Lcom/accloud/service/ACPushTable;->getPrimaryKey()Lcom/accloud/service/ACObject;

    move-result-object v9

    invoke-virtual {v9}, Lcom/accloud/service/ACObject;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/accloud/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    iget-object v7, p0, Lcom/accloud/cloudservice/ACPushManager;->pushTables:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 388
    add-int/lit8 v1, v1, -0x1

    .line 383
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 391
    .end local v4    # "pushTable":Lcom/accloud/service/ACPushTable;
    :cond_1
    invoke-static {}, Lcom/accloud/utils/ACUtils;->isNetworkConnected()Z

    move-result v7

    if-eqz v7, :cond_2

    iget-boolean v7, p0, Lcom/accloud/cloudservice/ACPushManager;->isConnect:Z

    if-nez v7, :cond_3

    .line 392
    :cond_2
    invoke-interface {p2}, Lcom/accloud/cloudservice/VoidCallback;->success()V

    .line 423
    :goto_1
    return-void

    .line 395
    :cond_3
    sget-object v7, Lcom/accloud/cloudservice/ACPushManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget v9, p0, Lcom/accloud/cloudservice/ACPushManager;->seqId:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ":unwatch"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/accloud/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    iget-object v7, p0, Lcom/accloud/cloudservice/ACPushManager;->unwatchCallbacks:Ljava/util/Map;

    iget v8, p0, Lcom/accloud/cloudservice/ACPushManager;->seqId:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 398
    new-instance v2, Lcom/accloud/service/ACObject;

    invoke-direct {v2}, Lcom/accloud/service/ACObject;-><init>()V

    .line 400
    .local v2, "object":Lcom/accloud/service/ACObject;
    new-instance v0, Lcom/accloud/service/ACObject;

    invoke-direct {v0}, Lcom/accloud/service/ACObject;-><init>()V

    .line 401
    .local v0, "header":Lcom/accloud/service/ACObject;
    const-string v7, "name"

    const-string v8, "unwatch"

    invoke-virtual {v0, v7, v8}, Lcom/accloud/service/ACObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 402
    const-string v7, "type"

    const-string v8, "json"

    invoke-virtual {v0, v7, v8}, Lcom/accloud/service/ACObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 403
    const-string v7, "ver"

    const-string v8, "1.0.0"

    invoke-virtual {v0, v7, v8}, Lcom/accloud/service/ACObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 404
    const-string v7, "seqId"

    iget v8, p0, Lcom/accloud/cloudservice/ACPushManager;->seqId:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lcom/accloud/cloudservice/ACPushManager;->seqId:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Lcom/accloud/service/ACObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 405
    const-string v7, "header"

    invoke-virtual {v2, v7, v0}, Lcom/accloud/service/ACObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 406
    new-instance v3, Lcom/accloud/service/ACObject;

    invoke-direct {v3}, Lcom/accloud/service/ACObject;-><init>()V

    .line 407
    .local v3, "payload":Lcom/accloud/service/ACObject;
    const-string v7, "className"

    invoke-virtual {p1}, Lcom/accloud/service/ACPushTable;->getClassName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Lcom/accloud/service/ACObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 408
    const-string v7, "primaryKey"

    invoke-virtual {p1}, Lcom/accloud/service/ACPushTable;->getPrimaryKey()Lcom/accloud/service/ACObject;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Lcom/accloud/service/ACObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 409
    const-string v7, "payload"

    invoke-virtual {v2, v7, v3}, Lcom/accloud/service/ACObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 410
    new-instance v6, Lcom/accloud/service/ACObject;

    invoke-direct {v6}, Lcom/accloud/service/ACObject;-><init>()V

    .line 411
    .local v6, "verifySign":Lcom/accloud/service/ACObject;
    new-instance v7, Lcom/accloud/common/ACHelper;

    invoke-direct {v7}, Lcom/accloud/common/ACHelper;-><init>()V

    invoke-virtual {v7}, Lcom/accloud/common/ACHelper;->genSignature()Lcom/accloud/common/ACSignature;

    move-result-object v5

    .line 412
    .local v5, "signature":Lcom/accloud/common/ACSignature;
    const-string v7, "domain"

    sget-object v8, Lcom/accloud/cloudservice/AC;->majorDomain:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Lcom/accloud/service/ACObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 413
    const-string v7, "userId"

    sget-object v8, Lcom/accloud/cloudservice/AC;->context:Landroid/content/Context;

    const-string v9, "ablecloud_private_userId"

    const-wide/16 v10, 0x0

    invoke-static {v8, v9, v10, v11}, Lcom/accloud/utils/PreferencesUtils;->getLong(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/accloud/service/ACObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 414
    const-string v7, "timestamp"

    invoke-virtual {v5}, Lcom/accloud/common/ACSignature;->getTimestamp()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/accloud/service/ACObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 415
    const-string v7, "timeout"

    invoke-virtual {v5}, Lcom/accloud/common/ACSignature;->getTimeout()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/accloud/service/ACObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 416
    const-string v7, "nonce"

    invoke-virtual {v5}, Lcom/accloud/common/ACSignature;->getNonce()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/accloud/service/ACObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 417
    const-string v7, "sign"

    invoke-virtual {v5}, Lcom/accloud/common/ACSignature;->getSignature()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/accloud/service/ACObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 418
    const-string v7, "verifySign"

    invoke-virtual {v2, v7, v6}, Lcom/accloud/service/ACObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 420
    :try_start_0
    iget-object v7, p0, Lcom/accloud/cloudservice/ACPushManager;->client:Lorg/java_websocket/client/WebSocketClient;

    invoke-static {v2}, Lcom/accloud/cloudservice/ACObjectMarshaller;->marshal(Lcom/accloud/service/ACObject;)[B

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/java_websocket/client/WebSocketClient;->send([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 421
    :catch_0
    move-exception v7

    goto/16 :goto_1
.end method

.method public watch(Lcom/accloud/service/ACPushTable;Lcom/accloud/cloudservice/VoidCallback;)V
    .locals 16
    .param p1, "table"    # Lcom/accloud/service/ACPushTable;
    .param p2, "callback"    # Lcom/accloud/cloudservice/VoidCallback;

    .prologue
    .line 306
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/accloud/cloudservice/ACPushManager;->isConnect:Z

    if-nez v11, :cond_0

    .line 307
    new-instance v11, Lcom/accloud/service/ACException;

    sget v12, Lcom/accloud/service/ACException;->CONNECTED_FIRST:I

    const-string v13, "you should use connect first"

    invoke-direct {v11, v12, v13}, Lcom/accloud/service/ACException;-><init>(ILjava/lang/String;)V

    move-object/from16 v0, p2

    invoke-interface {v0, v11}, Lcom/accloud/cloudservice/VoidCallback;->error(Lcom/accloud/service/ACException;)V

    .line 345
    :goto_0
    return-void

    .line 310
    :cond_0
    sget-object v11, Lcom/accloud/cloudservice/ACPushManager;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget v13, v0, Lcom/accloud/cloudservice/ACPushManager;->seqId:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ":watch---className["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Lcom/accloud/service/ACPushTable;->getClassName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "], "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "primaryKey["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Lcom/accloud/service/ACPushTable;->getPrimaryKey()Lcom/accloud/service/ACObject;

    move-result-object v13

    invoke-virtual {v13}, Lcom/accloud/service/ACObject;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "], columes"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Lcom/accloud/service/ACPushTable;->getColumes()[Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/accloud/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/accloud/cloudservice/ACPushManager;->pushTables:Ljava/util/List;

    move-object/from16 v0, p1

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 313
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/accloud/cloudservice/ACPushManager;->watchCallbacks:Ljava/util/Map;

    move-object/from16 v0, p0

    iget v12, v0, Lcom/accloud/cloudservice/ACPushManager;->seqId:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-interface {v11, v12, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    new-instance v7, Lcom/accloud/service/ACObject;

    invoke-direct {v7}, Lcom/accloud/service/ACObject;-><init>()V

    .line 317
    .local v7, "object":Lcom/accloud/service/ACObject;
    new-instance v4, Lcom/accloud/service/ACObject;

    invoke-direct {v4}, Lcom/accloud/service/ACObject;-><init>()V

    .line 318
    .local v4, "header":Lcom/accloud/service/ACObject;
    const-string v11, "name"

    const-string v12, "watch"

    invoke-virtual {v4, v11, v12}, Lcom/accloud/service/ACObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 319
    const-string v11, "type"

    const-string v12, "json"

    invoke-virtual {v4, v11, v12}, Lcom/accloud/service/ACObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 320
    const-string v11, "ver"

    const-string v12, "1.0.0"

    invoke-virtual {v4, v11, v12}, Lcom/accloud/service/ACObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 321
    const-string v11, "seqId"

    move-object/from16 v0, p0

    iget v12, v0, Lcom/accloud/cloudservice/ACPushManager;->seqId:I

    add-int/lit8 v13, v12, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/accloud/cloudservice/ACPushManager;->seqId:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v4, v11, v12}, Lcom/accloud/service/ACObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 322
    const-string v11, "header"

    invoke-virtual {v7, v11, v4}, Lcom/accloud/service/ACObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 324
    new-instance v8, Lcom/accloud/service/ACObject;

    invoke-direct {v8}, Lcom/accloud/service/ACObject;-><init>()V

    .line 325
    .local v8, "payload":Lcom/accloud/service/ACObject;
    const-string v11, "className"

    invoke-virtual/range {p1 .. p1}, Lcom/accloud/service/ACPushTable;->getClassName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v11, v12}, Lcom/accloud/service/ACObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 326
    invoke-virtual/range {p1 .. p1}, Lcom/accloud/service/ACPushTable;->getColumes()[Ljava/lang/String;

    move-result-object v2

    .local v2, "arr$":[Ljava/lang/String;
    array-length v6, v2

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_1
    if-ge v5, v6, :cond_1

    aget-object v3, v2, v5

    .line 327
    .local v3, "colume":Ljava/lang/String;
    const-string v11, "columes"

    invoke-virtual {v8, v11, v3}, Lcom/accloud/service/ACObject;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 326
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 328
    .end local v3    # "colume":Ljava/lang/String;
    :cond_1
    const-string v11, "primaryKey"

    invoke-virtual/range {p1 .. p1}, Lcom/accloud/service/ACPushTable;->getPrimaryKey()Lcom/accloud/service/ACObject;

    move-result-object v12

    invoke-virtual {v8, v11, v12}, Lcom/accloud/service/ACObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 329
    const-string v11, "opType"

    invoke-virtual/range {p1 .. p1}, Lcom/accloud/service/ACPushTable;->getOpType()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v8, v11, v12}, Lcom/accloud/service/ACObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 330
    const-string v11, "payload"

    invoke-virtual {v7, v11, v8}, Lcom/accloud/service/ACObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 332
    new-instance v10, Lcom/accloud/service/ACObject;

    invoke-direct {v10}, Lcom/accloud/service/ACObject;-><init>()V

    .line 333
    .local v10, "verifySign":Lcom/accloud/service/ACObject;
    new-instance v11, Lcom/accloud/common/ACHelper;

    invoke-direct {v11}, Lcom/accloud/common/ACHelper;-><init>()V

    invoke-virtual {v11}, Lcom/accloud/common/ACHelper;->genSignature()Lcom/accloud/common/ACSignature;

    move-result-object v9

    .line 334
    .local v9, "signature":Lcom/accloud/common/ACSignature;
    const-string v11, "domain"

    sget-object v12, Lcom/accloud/cloudservice/AC;->majorDomain:Ljava/lang/String;

    invoke-virtual {v10, v11, v12}, Lcom/accloud/service/ACObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 335
    const-string v11, "userId"

    sget-object v12, Lcom/accloud/cloudservice/AC;->context:Landroid/content/Context;

    const-string v13, "ablecloud_private_userId"

    const-wide/16 v14, 0x0

    invoke-static {v12, v13, v14, v15}, Lcom/accloud/utils/PreferencesUtils;->getLong(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/accloud/service/ACObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 336
    const-string v11, "timestamp"

    invoke-virtual {v9}, Lcom/accloud/common/ACSignature;->getTimestamp()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/accloud/service/ACObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 337
    const-string v11, "timeout"

    invoke-virtual {v9}, Lcom/accloud/common/ACSignature;->getTimeout()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/accloud/service/ACObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 338
    const-string v11, "nonce"

    invoke-virtual {v9}, Lcom/accloud/common/ACSignature;->getNonce()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/accloud/service/ACObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 339
    const-string v11, "sign"

    invoke-virtual {v9}, Lcom/accloud/common/ACSignature;->getSignature()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/accloud/service/ACObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 340
    const-string v11, "verifySign"

    invoke-virtual {v7, v11, v10}, Lcom/accloud/service/ACObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 342
    :try_start_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/accloud/cloudservice/ACPushManager;->client:Lorg/java_websocket/client/WebSocketClient;

    invoke-static {v7}, Lcom/accloud/cloudservice/ACObjectMarshaller;->marshal(Lcom/accloud/service/ACObject;)[B

    move-result-object v12

    invoke-virtual {v11, v12}, Lorg/java_websocket/client/WebSocketClient;->send([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 343
    :catch_0
    move-exception v11

    goto/16 :goto_0
.end method
