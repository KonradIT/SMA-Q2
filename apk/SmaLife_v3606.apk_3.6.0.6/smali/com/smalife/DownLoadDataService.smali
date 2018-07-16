.class public Lcom/smalife/DownLoadDataService;
.super Landroid/app/Service;
.source "DownLoadDataService.java"


# instance fields
.field private application:Lcom/smalife/MyApplication;

.field private mDownloadManager:Lcom/smalife/ablecloud/DownloadDataManager;

.field private mRequestQueue:Lcom/android/volley/RequestQueue;

.field private mSendMsgManager:Lcom/smalife/ablecloud/SendMsgManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/smalife/DownLoadDataService;)Lcom/smalife/MyApplication;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/smalife/DownLoadDataService;->application:Lcom/smalife/MyApplication;

    return-object v0
.end method

.method static synthetic access$1(Lcom/smalife/DownLoadDataService;)Lcom/android/volley/RequestQueue;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/smalife/DownLoadDataService;->mRequestQueue:Lcom/android/volley/RequestQueue;

    return-object v0
.end method

.method static synthetic access$2(Lcom/smalife/DownLoadDataService;Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 158
    invoke-direct {p0, p1, p2}, Lcom/smalife/DownLoadDataService;->saveMyBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    return-void
.end method

.method private getFriends(Ljava/lang/String;)V
    .locals 3
    .param p1, "account"    # Ljava/lang/String;

    .prologue
    .line 69
    new-instance v0, Lcom/accloud/service/ACMsg;

    invoke-direct {v0}, Lcom/accloud/service/ACMsg;-><init>()V

    .line 70
    .local v0, "fmsg":Lcom/accloud/service/ACMsg;
    const-string v1, "scanFriendInfo"

    invoke-virtual {v0, v1}, Lcom/accloud/service/ACMsg;->setName(Ljava/lang/String;)V

    .line 71
    const-string v1, "uAccount"

    invoke-virtual {v0, v1, p1}, Lcom/accloud/service/ACMsg;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 72
    iget-object v1, p0, Lcom/smalife/DownLoadDataService;->mSendMsgManager:Lcom/smalife/ablecloud/SendMsgManager;

    new-instance v2, Lcom/smalife/DownLoadDataService$1;

    invoke-direct {v2, p0}, Lcom/smalife/DownLoadDataService$1;-><init>(Lcom/smalife/DownLoadDataService;)V

    invoke-virtual {v1, v0, v2}, Lcom/smalife/ablecloud/SendMsgManager;->sendMsg(Lcom/accloud/service/ACMsg;Lcom/accloud/cloudservice/PayloadCallback;)V

    .line 86
    return-void
.end method

.method private getHeaderIcon(Ljava/lang/String;)V
    .locals 5
    .param p1, "userAccount"    # Ljava/lang/String;

    .prologue
    .line 91
    invoke-static {}, Lcom/accloud/cloudservice/AC;->fileMgr()Lcom/accloud/service/ACFileMgr;

    move-result-object v0

    new-instance v1, Lcom/accloud/service/ACFileInfo;

    sget-object v2, Lcom/smalife/ablecloud/Config;->header_dir:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ".jpg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/accloud/service/ACFileInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    .line 92
    new-instance v4, Lcom/smalife/DownLoadDataService$2;

    invoke-direct {v4, p0, p1}, Lcom/smalife/DownLoadDataService$2;-><init>(Lcom/smalife/DownLoadDataService;Ljava/lang/String;)V

    .line 91
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/accloud/service/ACFileMgr;->getDownloadUrl(Lcom/accloud/service/ACFileInfo;JLcom/accloud/cloudservice/PayloadCallback;)V

    .line 156
    return-void
.end method

.method private saveMyBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 8
    .param p1, "mBitmap"    # Landroid/graphics/Bitmap;
    .param p2, "userAccount"    # Ljava/lang/String;

    .prologue
    .line 159
    sget-object v5, Lcom/smalife/utils/FileHelper$FileType;->Image:Lcom/smalife/utils/FileHelper$FileType;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, ".jpg"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v5, v6}, Lcom/smalife/utils/FileHelper;->createFile(Landroid/content/Context;Lcom/smalife/utils/FileHelper$FileType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 160
    .local v4, "path":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 161
    .local v2, "f":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 162
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 165
    :cond_0
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 166
    .local v3, "out":Ljava/io/FileOutputStream;
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x64

    invoke-virtual {p1, v5, v6, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 167
    new-instance v0, Lcom/smalife/db/SmaDao;

    invoke-direct {v0, p0}, Lcom/smalife/db/SmaDao;-><init>(Landroid/content/Context;)V

    .line 168
    .local v0, "dao":Lcom/smalife/db/SmaDao;
    invoke-virtual {v0, v4, p2}, Lcom/smalife/db/SmaDao;->updateHeaderIcon(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    iget-object v5, p0, Lcom/smalife/DownLoadDataService;->application:Lcom/smalife/MyApplication;

    invoke-virtual {v5, v4}, Lcom/smalife/MyApplication;->editHeaderIcon_url(Ljava/lang/String;)V

    .line 170
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    .line 171
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 177
    .end local v0    # "dao":Lcom/smalife/db/SmaDao;
    .end local v3    # "out":Ljava/io/FileOutputStream;
    :goto_0
    return-void

    .line 172
    :catch_0
    move-exception v1

    .line 173
    .local v1, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 174
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v1

    .line 175
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 41
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 46
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 47
    invoke-virtual {p0}, Lcom/smalife/DownLoadDataService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;)Lcom/android/volley/RequestQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/smalife/DownLoadDataService;->mRequestQueue:Lcom/android/volley/RequestQueue;

    .line 48
    invoke-virtual {p0}, Lcom/smalife/DownLoadDataService;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/smalife/MyApplication;

    iput-object v0, p0, Lcom/smalife/DownLoadDataService;->application:Lcom/smalife/MyApplication;

    .line 49
    invoke-static {}, Lcom/smalife/ablecloud/SendMsgManager;->getSendSerivceIntance()Lcom/smalife/ablecloud/SendMsgManager;

    move-result-object v0

    iput-object v0, p0, Lcom/smalife/DownLoadDataService;->mSendMsgManager:Lcom/smalife/ablecloud/SendMsgManager;

    .line 50
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 54
    iget-object v1, p0, Lcom/smalife/DownLoadDataService;->application:Lcom/smalife/MyApplication;

    invoke-virtual {v1}, Lcom/smalife/MyApplication;->getAccount()Ljava/lang/String;

    move-result-object v0

    .line 55
    .local v0, "account":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 56
    invoke-direct {p0, v0}, Lcom/smalife/DownLoadDataService;->getFriends(Ljava/lang/String;)V

    .line 57
    invoke-direct {p0, v0}, Lcom/smalife/DownLoadDataService;->getHeaderIcon(Ljava/lang/String;)V

    .line 58
    new-instance v1, Lcom/smalife/ablecloud/DownloadDataManager;

    invoke-direct {v1, v0, p0}, Lcom/smalife/ablecloud/DownloadDataManager;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/smalife/DownLoadDataService;->mDownloadManager:Lcom/smalife/ablecloud/DownloadDataManager;

    .line 59
    iget-object v1, p0, Lcom/smalife/DownLoadDataService;->mDownloadManager:Lcom/smalife/ablecloud/DownloadDataManager;

    invoke-virtual {v1}, Lcom/smalife/ablecloud/DownloadDataManager;->downloadSport()V

    .line 60
    iget-object v1, p0, Lcom/smalife/DownLoadDataService;->mDownloadManager:Lcom/smalife/ablecloud/DownloadDataManager;

    invoke-virtual {v1}, Lcom/smalife/ablecloud/DownloadDataManager;->downloadSleep()V

    .line 61
    iget-object v1, p0, Lcom/smalife/DownLoadDataService;->mDownloadManager:Lcom/smalife/ablecloud/DownloadDataManager;

    invoke-virtual {v1}, Lcom/smalife/ablecloud/DownloadDataManager;->downloadClock()V

    .line 62
    iget-object v1, p0, Lcom/smalife/DownLoadDataService;->mDownloadManager:Lcom/smalife/ablecloud/DownloadDataManager;

    invoke-virtual {v1}, Lcom/smalife/ablecloud/DownloadDataManager;->downloadRate()V

    .line 63
    iget-object v1, p0, Lcom/smalife/DownLoadDataService;->mDownloadManager:Lcom/smalife/ablecloud/DownloadDataManager;

    invoke-virtual {v1}, Lcom/smalife/ablecloud/DownloadDataManager;->downloadSma()V

    .line 65
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v1

    return v1
.end method
