.class public Lcom/accloud/cloudservice/ACFileManager;
.super Ljava/lang/Object;
.source "ACFileManager.java"

# interfaces
.implements Lcom/accloud/service/ACFileMgr;


# instance fields
.field client:Lcom/loopj/android/http/AsyncHttpClient;

.field handler:Landroid/os/Handler;

.field isCrcSuccess:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field uploadCancelledMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field uploadManager:Lcom/qiniu/android/storage/UploadManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/accloud/cloudservice/ACFileManager;->uploadCancelledMap:Ljava/util/Map;

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/accloud/cloudservice/ACFileManager;->isCrcSuccess:Ljava/util/Map;

    .line 41
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/accloud/cloudservice/ACFileManager;->handler:Landroid/os/Handler;

    .line 42
    return-void
.end method

.method static synthetic access$000(Lcom/accloud/cloudservice/ACFileManager;Lcom/accloud/service/ACFileInfo;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/accloud/cloudservice/ACFileManager;
    .param p1, "x1"    # Lcom/accloud/service/ACFileInfo;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/accloud/cloudservice/ACFileManager;->getUploadKey(Lcom/accloud/service/ACFileInfo;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getUploadKey(Lcom/accloud/service/ACFileInfo;)Ljava/lang/String;
    .locals 2
    .param p1, "file"    # Lcom/accloud/service/ACFileInfo;

    .prologue
    .line 330
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/accloud/service/ACFileInfo;->getBucket()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/accloud/service/ACFileInfo;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public cancelDownload(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 174
    iget-object v0, p0, Lcom/accloud/cloudservice/ACFileManager;->client:Lcom/loopj/android/http/AsyncHttpClient;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/loopj/android/http/AsyncHttpClient;->cancelRequestsByTAG(Ljava/lang/Object;Z)V

    .line 175
    return-void
.end method

.method public cancelUpload(Lcom/accloud/service/ACFileInfo;)V
    .locals 3
    .param p1, "file"    # Lcom/accloud/service/ACFileInfo;

    .prologue
    const/4 v2, 0x1

    .line 322
    iget-object v0, p0, Lcom/accloud/cloudservice/ACFileManager;->uploadManager:Lcom/qiniu/android/storage/UploadManager;

    if-eqz v0, :cond_0

    .line 323
    iget-object v0, p0, Lcom/accloud/cloudservice/ACFileManager;->uploadCancelledMap:Ljava/util/Map;

    invoke-direct {p0, p1}, Lcom/accloud/cloudservice/ACFileManager;->getUploadKey(Lcom/accloud/service/ACFileInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    :goto_0
    return-void

    .line 325
    :cond_0
    iget-object v0, p0, Lcom/accloud/cloudservice/ACFileManager;->client:Lcom/loopj/android/http/AsyncHttpClient;

    invoke-direct {p0, p1}, Lcom/accloud/cloudservice/ACFileManager;->getUploadKey(Lcom/accloud/service/ACFileInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/loopj/android/http/AsyncHttpClient;->cancelRequestsByTAG(Ljava/lang/Object;Z)V

    goto :goto_0
.end method

.method public downloadFile(Ljava/io/File;Ljava/lang/String;ILcom/accloud/cloudservice/ProgressCallback;Lcom/accloud/cloudservice/VoidCallback;)V
    .locals 9
    .param p1, "file"    # Ljava/io/File;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "crc"    # I
    .param p4, "progressCallback"    # Lcom/accloud/cloudservice/ProgressCallback;
    .param p5, "callback"    # Lcom/accloud/cloudservice/VoidCallback;

    .prologue
    .line 135
    iget-object v0, p0, Lcom/accloud/cloudservice/ACFileManager;->client:Lcom/loopj/android/http/AsyncHttpClient;

    if-nez v0, :cond_0

    .line 136
    new-instance v0, Lcom/loopj/android/http/AsyncHttpClient;

    invoke-direct {v0}, Lcom/loopj/android/http/AsyncHttpClient;-><init>()V

    iput-object v0, p0, Lcom/accloud/cloudservice/ACFileManager;->client:Lcom/loopj/android/http/AsyncHttpClient;

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/accloud/cloudservice/ACFileManager;->isCrcSuccess:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    iget-object v7, p0, Lcom/accloud/cloudservice/ACFileManager;->client:Lcom/loopj/android/http/AsyncHttpClient;

    sget-object v8, Lcom/accloud/cloudservice/AC;->context:Landroid/content/Context;

    new-instance v0, Lcom/accloud/cloudservice/ACFileManager$3;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p5

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/accloud/cloudservice/ACFileManager$3;-><init>(Lcom/accloud/cloudservice/ACFileManager;Ljava/io/File;Ljava/lang/String;Lcom/accloud/cloudservice/VoidCallback;ILcom/accloud/cloudservice/ProgressCallback;)V

    invoke-virtual {v7, v8, p2, v0}, Lcom/loopj/android/http/AsyncHttpClient;->get(Landroid/content/Context;Ljava/lang/String;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;

    .line 171
    return-void
.end method

.method public downloadFile(Ljava/lang/String;ILcom/accloud/cloudservice/ProgressCallback;Lcom/accloud/cloudservice/PayloadCallback;)V
    .locals 8
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "crc"    # I
    .param p3, "progressCallback"    # Lcom/accloud/cloudservice/ProgressCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lcom/accloud/cloudservice/ProgressCallback;",
            "Lcom/accloud/cloudservice/PayloadCallback",
            "<[B>;)V"
        }
    .end annotation

    .prologue
    .line 96
    .local p4, "callback":Lcom/accloud/cloudservice/PayloadCallback;, "Lcom/accloud/cloudservice/PayloadCallback<[B>;"
    iget-object v0, p0, Lcom/accloud/cloudservice/ACFileManager;->client:Lcom/loopj/android/http/AsyncHttpClient;

    if-nez v0, :cond_0

    .line 97
    new-instance v0, Lcom/loopj/android/http/AsyncHttpClient;

    invoke-direct {v0}, Lcom/loopj/android/http/AsyncHttpClient;-><init>()V

    iput-object v0, p0, Lcom/accloud/cloudservice/ACFileManager;->client:Lcom/loopj/android/http/AsyncHttpClient;

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/accloud/cloudservice/ACFileManager;->isCrcSuccess:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    iget-object v6, p0, Lcom/accloud/cloudservice/ACFileManager;->client:Lcom/loopj/android/http/AsyncHttpClient;

    sget-object v7, Lcom/accloud/cloudservice/AC;->context:Landroid/content/Context;

    new-instance v0, Lcom/accloud/cloudservice/ACFileManager$2;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p4

    move-object v4, p3

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/accloud/cloudservice/ACFileManager$2;-><init>(Lcom/accloud/cloudservice/ACFileManager;Ljava/lang/String;Lcom/accloud/cloudservice/PayloadCallback;Lcom/accloud/cloudservice/ProgressCallback;I)V

    invoke-virtual {v6, v7, p1, v0}, Lcom/loopj/android/http/AsyncHttpClient;->get(Landroid/content/Context;Ljava/lang/String;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;

    .line 132
    return-void
.end method

.method public getDownloadUrl(Lcom/accloud/service/ACFileInfo;JLcom/accloud/cloudservice/PayloadCallback;)V
    .locals 6
    .param p1, "file"    # Lcom/accloud/service/ACFileInfo;
    .param p2, "expireTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/accloud/service/ACFileInfo;",
            "J",
            "Lcom/accloud/cloudservice/PayloadCallback",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 70
    .local p4, "callback":Lcom/accloud/cloudservice/PayloadCallback;, "Lcom/accloud/cloudservice/PayloadCallback<Ljava/lang/String;>;"
    const-string v0, ""

    invoke-static {v0}, Lcom/accloud/service/ACMsg;->getACMsg(Ljava/lang/String;)Lcom/accloud/service/ACMsg;

    move-result-object v4

    .line 71
    .local v4, "req":Lcom/accloud/service/ACMsg;
    const-string v0, "getDownloadUrl"

    invoke-virtual {v4, v0}, Lcom/accloud/service/ACMsg;->setName(Ljava/lang/String;)V

    .line 72
    const-string v0, "bucket"

    invoke-virtual {p1}, Lcom/accloud/service/ACFileInfo;->getBucket()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Lcom/accloud/service/ACMsg;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 73
    const-string v0, "name"

    invoke-virtual {p1}, Lcom/accloud/service/ACFileInfo;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Lcom/accloud/service/ACMsg;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 74
    const-string v0, "expireTime"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Lcom/accloud/service/ACMsg;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 75
    new-instance v0, Lcom/accloud/cloudservice/ACServiceClient;

    const-string v1, "zc-blobstore"

    const/4 v2, 0x1

    invoke-static {}, Lcom/accloud/common/ACConfiguration;->getRouterAddr()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lcom/accloud/cloudservice/ACFileManager$1;

    invoke-direct {v5, p0, p4}, Lcom/accloud/cloudservice/ACFileManager$1;-><init>(Lcom/accloud/cloudservice/ACFileManager;Lcom/accloud/cloudservice/PayloadCallback;)V

    invoke-direct/range {v0 .. v5}, Lcom/accloud/cloudservice/ACServiceClient;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/accloud/service/ACMsg;Lcom/accloud/cloudservice/ACMsgListener;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/accloud/cloudservice/ACServiceClient;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 93
    return-void
.end method

.method public uploadFile(Lcom/accloud/service/ACFileInfo;Lcom/accloud/cloudservice/ProgressCallback;Lcom/accloud/cloudservice/VoidCallback;)V
    .locals 8
    .param p1, "file"    # Lcom/accloud/service/ACFileInfo;
    .param p2, "progressCallback"    # Lcom/accloud/cloudservice/ProgressCallback;
    .param p3, "callback"    # Lcom/accloud/cloudservice/VoidCallback;

    .prologue
    const/4 v7, 0x0

    .line 178
    invoke-static {}, Lcom/accloud/cloudservice/AC;->accountMgr()Lcom/accloud/service/ACAccountMgr;

    move-result-object v0

    invoke-interface {v0}, Lcom/accloud/service/ACAccountMgr;->isLogin()Z

    move-result v0

    if-nez v0, :cond_0

    .line 179
    new-instance v0, Lcom/accloud/service/ACException;

    sget v1, Lcom/accloud/service/ACException;->NO_LOGIN:I

    const-string v2, "no login"

    invoke-direct {v0, v1, v2}, Lcom/accloud/service/ACException;-><init>(ILjava/lang/String;)V

    invoke-interface {p3, v0}, Lcom/accloud/cloudservice/VoidCallback;->error(Lcom/accloud/service/ACException;)V

    .line 223
    :goto_0
    return-void

    .line 182
    :cond_0
    invoke-virtual {p1}, Lcom/accloud/service/ACFileInfo;->getData()[B

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/accloud/service/ACFileInfo;->getFile()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_1

    .line 183
    new-instance v0, Lcom/accloud/service/ACException;

    sget v1, Lcom/accloud/service/ACException;->INVALID_PARAMETERS:I

    const-string v2, "no input data"

    invoke-direct {v0, v1, v2}, Lcom/accloud/service/ACException;-><init>(ILjava/lang/String;)V

    invoke-interface {p3, v0}, Lcom/accloud/cloudservice/VoidCallback;->error(Lcom/accloud/service/ACException;)V

    .line 186
    :cond_1
    invoke-direct {p0, p1}, Lcom/accloud/cloudservice/ACFileManager;->getUploadKey(Lcom/accloud/service/ACFileInfo;)Ljava/lang/String;

    move-result-object v6

    .line 187
    .local v6, "key":Ljava/lang/String;
    iget-object v0, p0, Lcom/accloud/cloudservice/ACFileManager;->uploadCancelledMap:Ljava/util/Map;

    invoke-interface {v0, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 188
    iget-object v0, p0, Lcom/accloud/cloudservice/ACFileManager;->uploadCancelledMap:Ljava/util/Map;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    :cond_2
    const-string v0, ""

    invoke-static {v0}, Lcom/accloud/service/ACMsg;->getACMsg(Ljava/lang/String;)Lcom/accloud/service/ACMsg;

    move-result-object v4

    .line 191
    .local v4, "req":Lcom/accloud/service/ACMsg;
    const-string v0, "uploadFileInfo"

    invoke-virtual {v4, v0}, Lcom/accloud/service/ACMsg;->setName(Ljava/lang/String;)V

    .line 192
    const-string v0, "bucket"

    invoke-virtual {p1}, Lcom/accloud/service/ACFileInfo;->getBucket()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Lcom/accloud/service/ACMsg;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 193
    const-string v0, "name"

    invoke-virtual {p1}, Lcom/accloud/service/ACFileInfo;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Lcom/accloud/service/ACMsg;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 194
    const-string v0, "acl"

    invoke-virtual {p1}, Lcom/accloud/service/ACFileInfo;->getACL()Lcom/accloud/service/ACACL;

    move-result-object v1

    invoke-virtual {v1}, Lcom/accloud/service/ACACL;->toObject()Lcom/accloud/service/ACObject;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Lcom/accloud/service/ACMsg;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 195
    invoke-virtual {p1}, Lcom/accloud/service/ACFileInfo;->isPublic()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 196
    const-string v0, "accessType"

    const-string v1, "public"

    invoke-virtual {v4, v0, v1}, Lcom/accloud/service/ACMsg;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 200
    :goto_1
    new-instance v0, Lcom/accloud/cloudservice/ACServiceClient;

    const-string v1, "zc-blobstore"

    const/4 v2, 0x1

    invoke-static {}, Lcom/accloud/common/ACConfiguration;->getRouterAddr()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lcom/accloud/cloudservice/ACFileManager$4;

    invoke-direct {v5, p0, p3, p1, p2}, Lcom/accloud/cloudservice/ACFileManager$4;-><init>(Lcom/accloud/cloudservice/ACFileManager;Lcom/accloud/cloudservice/VoidCallback;Lcom/accloud/service/ACFileInfo;Lcom/accloud/cloudservice/ProgressCallback;)V

    invoke-direct/range {v0 .. v5}, Lcom/accloud/cloudservice/ACServiceClient;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/accloud/service/ACMsg;Lcom/accloud/cloudservice/ACMsgListener;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v7, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/accloud/cloudservice/ACServiceClient;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 198
    :cond_3
    const-string v0, "accessType"

    const-string v1, "private"

    invoke-virtual {v4, v0, v1}, Lcom/accloud/service/ACMsg;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    goto :goto_1
.end method

.method public uploadFileToAws(Ljava/lang/String;Lcom/accloud/service/ACFileInfo;Lcom/accloud/cloudservice/ProgressCallback;Lcom/accloud/cloudservice/VoidCallback;)V
    .locals 5
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "fileInfo"    # Lcom/accloud/service/ACFileInfo;
    .param p3, "progressCallback"    # Lcom/accloud/cloudservice/ProgressCallback;
    .param p4, "callback"    # Lcom/accloud/cloudservice/VoidCallback;

    .prologue
    .line 277
    iget-object v2, p0, Lcom/accloud/cloudservice/ACFileManager;->client:Lcom/loopj/android/http/AsyncHttpClient;

    if-nez v2, :cond_0

    .line 278
    new-instance v2, Lcom/loopj/android/http/AsyncHttpClient;

    invoke-direct {v2}, Lcom/loopj/android/http/AsyncHttpClient;-><init>()V

    iput-object v2, p0, Lcom/accloud/cloudservice/ACFileManager;->client:Lcom/loopj/android/http/AsyncHttpClient;

    .line 279
    :cond_0
    new-instance v1, Lcom/loopj/android/http/RequestParams;

    invoke-direct {v1}, Lcom/loopj/android/http/RequestParams;-><init>()V

    .line 281
    .local v1, "params":Lcom/loopj/android/http/RequestParams;
    invoke-virtual {p2}, Lcom/accloud/service/ACFileInfo;->getData()[B

    move-result-object v2

    if-eqz v2, :cond_3

    .line 282
    const-string v2, "data"

    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p2}, Lcom/accloud/service/ACFileInfo;->getData()[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v1, v2, v3}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/io/InputStream;)V

    .line 291
    :cond_1
    :goto_0
    invoke-virtual {p2}, Lcom/accloud/service/ACFileInfo;->isPublic()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 292
    iget-object v2, p0, Lcom/accloud/cloudservice/ACFileManager;->client:Lcom/loopj/android/http/AsyncHttpClient;

    const-string v3, "x-amz-acl"

    const-string v4, "public-read"

    invoke-virtual {v2, v3, v4}, Lcom/loopj/android/http/AsyncHttpClient;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    :cond_2
    iget-object v2, p0, Lcom/accloud/cloudservice/ACFileManager;->client:Lcom/loopj/android/http/AsyncHttpClient;

    sget-object v3, Lcom/accloud/cloudservice/AC;->context:Landroid/content/Context;

    new-instance v4, Lcom/accloud/cloudservice/ACFileManager$8;

    invoke-direct {v4, p0, p2, p3, p4}, Lcom/accloud/cloudservice/ACFileManager$8;-><init>(Lcom/accloud/cloudservice/ACFileManager;Lcom/accloud/service/ACFileInfo;Lcom/accloud/cloudservice/ProgressCallback;Lcom/accloud/cloudservice/VoidCallback;)V

    invoke-virtual {v2, v3, p1, v1, v4}, Lcom/loopj/android/http/AsyncHttpClient;->put(Landroid/content/Context;Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;

    .line 318
    :goto_1
    return-void

    .line 283
    :cond_3
    invoke-virtual {p2}, Lcom/accloud/service/ACFileInfo;->getFile()Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 285
    :try_start_0
    const-string v2, "file"

    invoke-virtual {p2}, Lcom/accloud/service/ACFileInfo;->getFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 286
    :catch_0
    move-exception v0

    .line 287
    .local v0, "e":Ljava/io/FileNotFoundException;
    new-instance v2, Lcom/accloud/service/ACException;

    sget v3, Lcom/accloud/service/ACException;->INTERNAL_ERROR:I

    invoke-direct {v2, v3, v0}, Lcom/accloud/service/ACException;-><init>(ILjava/lang/Throwable;)V

    invoke-interface {p4, v2}, Lcom/accloud/cloudservice/VoidCallback;->error(Lcom/accloud/service/ACException;)V

    goto :goto_1
.end method

.method public uploadFileToQiniu(Ljava/lang/String;Lcom/accloud/service/ACFileInfo;Lcom/accloud/cloudservice/ProgressCallback;Lcom/accloud/cloudservice/VoidCallback;)V
    .locals 7
    .param p1, "token"    # Ljava/lang/String;
    .param p2, "file"    # Lcom/accloud/service/ACFileInfo;
    .param p3, "progressCallback"    # Lcom/accloud/cloudservice/ProgressCallback;
    .param p4, "callback"    # Lcom/accloud/cloudservice/VoidCallback;

    .prologue
    const/4 v1, 0x0

    .line 226
    iget-object v2, p0, Lcom/accloud/cloudservice/ACFileManager;->uploadManager:Lcom/qiniu/android/storage/UploadManager;

    if-nez v2, :cond_1

    new-instance v2, Lcom/qiniu/android/storage/UploadManager;

    invoke-direct {v2}, Lcom/qiniu/android/storage/UploadManager;-><init>()V

    :goto_0
    iput-object v2, p0, Lcom/accloud/cloudservice/ACFileManager;->uploadManager:Lcom/qiniu/android/storage/UploadManager;

    .line 227
    new-instance v0, Lcom/qiniu/android/storage/UploadOptions;

    const/4 v3, 0x1

    new-instance v4, Lcom/accloud/cloudservice/ACFileManager$5;

    invoke-direct {v4, p0, p3}, Lcom/accloud/cloudservice/ACFileManager$5;-><init>(Lcom/accloud/cloudservice/ACFileManager;Lcom/accloud/cloudservice/ProgressCallback;)V

    new-instance v5, Lcom/accloud/cloudservice/ACFileManager$6;

    invoke-direct {v5, p0, p2}, Lcom/accloud/cloudservice/ACFileManager$6;-><init>(Lcom/accloud/cloudservice/ACFileManager;Lcom/accloud/service/ACFileInfo;)V

    move-object v2, v1

    invoke-direct/range {v0 .. v5}, Lcom/qiniu/android/storage/UploadOptions;-><init>(Ljava/util/Map;Ljava/lang/String;ZLcom/qiniu/android/storage/UpProgressHandler;Lcom/qiniu/android/storage/UpCancellationSignal;)V

    .line 249
    .local v0, "options":Lcom/qiniu/android/storage/UploadOptions;
    new-instance v5, Lcom/accloud/cloudservice/ACFileManager$7;

    invoke-direct {v5, p0, p4}, Lcom/accloud/cloudservice/ACFileManager$7;-><init>(Lcom/accloud/cloudservice/ACFileManager;Lcom/accloud/cloudservice/VoidCallback;)V

    .line 269
    .local v5, "upCompletionHandler":Lcom/qiniu/android/storage/UpCompletionHandler;
    invoke-virtual {p2}, Lcom/accloud/service/ACFileInfo;->getData()[B

    move-result-object v1

    if-eqz v1, :cond_2

    .line 270
    iget-object v1, p0, Lcom/accloud/cloudservice/ACFileManager;->uploadManager:Lcom/qiniu/android/storage/UploadManager;

    invoke-virtual {p2}, Lcom/accloud/service/ACFileInfo;->getData()[B

    move-result-object v2

    invoke-direct {p0, p2}, Lcom/accloud/cloudservice/ACFileManager;->getUploadKey(Lcom/accloud/service/ACFileInfo;)Ljava/lang/String;

    move-result-object v3

    move-object v4, p1

    move-object v6, v0

    invoke-virtual/range {v1 .. v6}, Lcom/qiniu/android/storage/UploadManager;->put([BLjava/lang/String;Ljava/lang/String;Lcom/qiniu/android/storage/UpCompletionHandler;Lcom/qiniu/android/storage/UploadOptions;)V

    .line 274
    :cond_0
    :goto_1
    return-void

    .line 226
    .end local v0    # "options":Lcom/qiniu/android/storage/UploadOptions;
    .end local v5    # "upCompletionHandler":Lcom/qiniu/android/storage/UpCompletionHandler;
    :cond_1
    iget-object v2, p0, Lcom/accloud/cloudservice/ACFileManager;->uploadManager:Lcom/qiniu/android/storage/UploadManager;

    goto :goto_0

    .line 271
    .restart local v0    # "options":Lcom/qiniu/android/storage/UploadOptions;
    .restart local v5    # "upCompletionHandler":Lcom/qiniu/android/storage/UpCompletionHandler;
    :cond_2
    invoke-virtual {p2}, Lcom/accloud/service/ACFileInfo;->getFile()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 272
    iget-object v1, p0, Lcom/accloud/cloudservice/ACFileManager;->uploadManager:Lcom/qiniu/android/storage/UploadManager;

    invoke-virtual {p2}, Lcom/accloud/service/ACFileInfo;->getFile()Ljava/io/File;

    move-result-object v2

    invoke-direct {p0, p2}, Lcom/accloud/cloudservice/ACFileManager;->getUploadKey(Lcom/accloud/service/ACFileInfo;)Ljava/lang/String;

    move-result-object v3

    move-object v4, p1

    move-object v6, v0

    invoke-virtual/range {v1 .. v6}, Lcom/qiniu/android/storage/UploadManager;->put(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Lcom/qiniu/android/storage/UpCompletionHandler;Lcom/qiniu/android/storage/UploadOptions;)V

    goto :goto_1
.end method
