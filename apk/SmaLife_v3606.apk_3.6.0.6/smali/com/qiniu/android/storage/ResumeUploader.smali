.class final Lcom/qiniu/android/storage/ResumeUploader;
.super Ljava/lang/Object;
.source "ResumeUploader.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final chunkBuffer:[B

.field private final completionHandler:Lcom/qiniu/android/storage/UpCompletionHandler;

.field private final config:Lcom/qiniu/android/storage/Configuration;

.field private final contexts:[Ljava/lang/String;

.field private crc32:J

.field private f:Ljava/io/File;

.field private file:Ljava/io/RandomAccessFile;

.field private forceIp:Z

.field private final headers:[Lorg/apache/http/Header;

.field private final httpManager:Lcom/qiniu/android/http/HttpManager;

.field private final key:Ljava/lang/String;

.field private final modifyTime:J

.field private final options:Lcom/qiniu/android/storage/UploadOptions;

.field private final recorderKey:Ljava/lang/String;

.field private final size:I

.field private token:Lcom/qiniu/android/storage/UpToken;


# direct methods
.method constructor <init>(Lcom/qiniu/android/http/HttpManager;Lcom/qiniu/android/storage/Configuration;Ljava/io/File;Ljava/lang/String;Lcom/qiniu/android/storage/UpToken;Lcom/qiniu/android/storage/UpCompletionHandler;Lcom/qiniu/android/storage/UploadOptions;Ljava/lang/String;)V
    .locals 10
    .param p1, "httpManager"    # Lcom/qiniu/android/http/HttpManager;
    .param p2, "config"    # Lcom/qiniu/android/storage/Configuration;
    .param p3, "file"    # Ljava/io/File;
    .param p4, "key"    # Ljava/lang/String;
    .param p5, "token"    # Lcom/qiniu/android/storage/UpToken;
    .param p6, "completionHandler"    # Lcom/qiniu/android/storage/UpCompletionHandler;
    .param p7, "options"    # Lcom/qiniu/android/storage/UploadOptions;
    .param p8, "recorderKey"    # Ljava/lang/String;

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/qiniu/android/storage/ResumeUploader;->forceIp:Z

    .line 58
    iput-object p1, p0, Lcom/qiniu/android/storage/ResumeUploader;->httpManager:Lcom/qiniu/android/http/HttpManager;

    .line 59
    iput-object p2, p0, Lcom/qiniu/android/storage/ResumeUploader;->config:Lcom/qiniu/android/storage/Configuration;

    .line 60
    iput-object p3, p0, Lcom/qiniu/android/storage/ResumeUploader;->f:Ljava/io/File;

    .line 61
    move-object/from16 v0, p8

    iput-object v0, p0, Lcom/qiniu/android/storage/ResumeUploader;->recorderKey:Ljava/lang/String;

    .line 62
    invoke-virtual {p3}, Ljava/io/File;->length()J

    move-result-wide v4

    long-to-int v4, v4

    iput v4, p0, Lcom/qiniu/android/storage/ResumeUploader;->size:I

    .line 63
    iput-object p4, p0, Lcom/qiniu/android/storage/ResumeUploader;->key:Ljava/lang/String;

    .line 64
    const/4 v4, 0x1

    new-array v4, v4, [Lorg/apache/http/Header;

    iput-object v4, p0, Lcom/qiniu/android/storage/ResumeUploader;->headers:[Lorg/apache/http/Header;

    .line 65
    iget-object v4, p0, Lcom/qiniu/android/storage/ResumeUploader;->headers:[Lorg/apache/http/Header;

    const/4 v5, 0x0

    new-instance v6, Lorg/apache/http/message/BasicHeader;

    const-string v7, "Authorization"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "UpToken "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p5, Lcom/qiniu/android/storage/UpToken;->token:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v4, v5

    .line 66
    move-object/from16 v0, p6

    iput-object v0, p0, Lcom/qiniu/android/storage/ResumeUploader;->completionHandler:Lcom/qiniu/android/storage/UpCompletionHandler;

    .line 67
    if-eqz p7, :cond_0

    .end local p7    # "options":Lcom/qiniu/android/storage/UploadOptions;
    :goto_0
    move-object/from16 v0, p7

    iput-object v0, p0, Lcom/qiniu/android/storage/ResumeUploader;->options:Lcom/qiniu/android/storage/UploadOptions;

    .line 68
    iget v4, p2, Lcom/qiniu/android/storage/Configuration;->chunkSize:I

    new-array v4, v4, [B

    iput-object v4, p0, Lcom/qiniu/android/storage/ResumeUploader;->chunkBuffer:[B

    .line 69
    iget v4, p0, Lcom/qiniu/android/storage/ResumeUploader;->size:I

    const/high16 v5, 0x400000

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, -0x1

    const/high16 v5, 0x400000

    div-int/2addr v4, v5

    int-to-long v2, v4

    .line 70
    .local v2, "count":J
    long-to-int v4, v2

    new-array v4, v4, [Ljava/lang/String;

    iput-object v4, p0, Lcom/qiniu/android/storage/ResumeUploader;->contexts:[Ljava/lang/String;

    .line 71
    iget-object v4, p0, Lcom/qiniu/android/storage/ResumeUploader;->f:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/qiniu/android/storage/ResumeUploader;->modifyTime:J

    .line 72
    iput-object p5, p0, Lcom/qiniu/android/storage/ResumeUploader;->token:Lcom/qiniu/android/storage/UpToken;

    .line 73
    return-void

    .line 67
    .end local v2    # "count":J
    .restart local p7    # "options":Lcom/qiniu/android/storage/UploadOptions;
    :cond_0
    invoke-static {}, Lcom/qiniu/android/storage/UploadOptions;->defaultOptions()Lcom/qiniu/android/storage/UploadOptions;

    move-result-object p7

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/qiniu/android/storage/ResumeUploader;)V
    .locals 0
    .param p0, "x0"    # Lcom/qiniu/android/storage/ResumeUploader;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/qiniu/android/storage/ResumeUploader;->removeRecord()V

    return-void
.end method

.method static synthetic access$100(Lcom/qiniu/android/storage/ResumeUploader;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/qiniu/android/storage/ResumeUploader;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/qiniu/android/storage/ResumeUploader;->key:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/qiniu/android/storage/ResumeUploader;)J
    .locals 2
    .param p0, "x0"    # Lcom/qiniu/android/storage/ResumeUploader;

    .prologue
    .line 37
    iget-wide v0, p0, Lcom/qiniu/android/storage/ResumeUploader;->crc32:J

    return-wide v0
.end method

.method static synthetic access$1100(Lcom/qiniu/android/storage/ResumeUploader;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/qiniu/android/storage/ResumeUploader;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/qiniu/android/storage/ResumeUploader;->contexts:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/qiniu/android/storage/ResumeUploader;I)V
    .locals 0
    .param p0, "x0"    # Lcom/qiniu/android/storage/ResumeUploader;
    .param p1, "x1"    # I

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/qiniu/android/storage/ResumeUploader;->record(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/qiniu/android/storage/ResumeUploader;)Lcom/qiniu/android/storage/UploadOptions;
    .locals 1
    .param p0, "x0"    # Lcom/qiniu/android/storage/ResumeUploader;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/qiniu/android/storage/ResumeUploader;->options:Lcom/qiniu/android/storage/UploadOptions;

    return-object v0
.end method

.method static synthetic access$300(Lcom/qiniu/android/storage/ResumeUploader;)Lcom/qiniu/android/storage/UpCompletionHandler;
    .locals 1
    .param p0, "x0"    # Lcom/qiniu/android/storage/ResumeUploader;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/qiniu/android/storage/ResumeUploader;->completionHandler:Lcom/qiniu/android/storage/UpCompletionHandler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/qiniu/android/storage/ResumeUploader;)Z
    .locals 1
    .param p0, "x0"    # Lcom/qiniu/android/storage/ResumeUploader;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/qiniu/android/storage/ResumeUploader;->isCancelled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/qiniu/android/storage/ResumeUploader;Lcom/qiniu/android/http/ResponseInfo;)Z
    .locals 1
    .param p0, "x0"    # Lcom/qiniu/android/storage/ResumeUploader;
    .param p1, "x1"    # Lcom/qiniu/android/http/ResponseInfo;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/qiniu/android/storage/ResumeUploader;->isNotQiniu(Lcom/qiniu/android/http/ResponseInfo;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$602(Lcom/qiniu/android/storage/ResumeUploader;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/qiniu/android/storage/ResumeUploader;
    .param p1, "x1"    # Z

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/qiniu/android/storage/ResumeUploader;->forceIp:Z

    return p1
.end method

.method static synthetic access$700(Lcom/qiniu/android/storage/ResumeUploader;)Lcom/qiniu/android/storage/Configuration;
    .locals 1
    .param p0, "x0"    # Lcom/qiniu/android/storage/ResumeUploader;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/qiniu/android/storage/ResumeUploader;->config:Lcom/qiniu/android/storage/Configuration;

    return-object v0
.end method

.method static synthetic access$800(Lcom/qiniu/android/storage/ResumeUploader;IILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/qiniu/android/storage/ResumeUploader;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3}, Lcom/qiniu/android/storage/ResumeUploader;->nextTask(IILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/qiniu/android/storage/ResumeUploader;)I
    .locals 1
    .param p0, "x0"    # Lcom/qiniu/android/storage/ResumeUploader;

    .prologue
    .line 37
    iget v0, p0, Lcom/qiniu/android/storage/ResumeUploader;->size:I

    return v0
.end method

.method private calcBlockSize(I)I
    .locals 3
    .param p1, "offset"    # I

    .prologue
    const/high16 v1, 0x400000

    .line 162
    iget v2, p0, Lcom/qiniu/android/storage/ResumeUploader;->size:I

    sub-int v0, v2, p1

    .line 163
    .local v0, "left":I
    if-ge v0, v1, :cond_0

    .end local v0    # "left":I
    :goto_0
    return v0

    .restart local v0    # "left":I
    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private calcPutSize(I)I
    .locals 2
    .param p1, "offset"    # I

    .prologue
    .line 157
    iget v1, p0, Lcom/qiniu/android/storage/ResumeUploader;->size:I

    sub-int v0, v1, p1

    .line 158
    .local v0, "left":I
    iget-object v1, p0, Lcom/qiniu/android/storage/ResumeUploader;->config:Lcom/qiniu/android/storage/Configuration;

    iget v1, v1, Lcom/qiniu/android/storage/Configuration;->chunkSize:I

    if-ge v0, v1, :cond_0

    .end local v0    # "left":I
    :goto_0
    return v0

    .restart local v0    # "left":I
    :cond_0
    iget-object v1, p0, Lcom/qiniu/android/storage/ResumeUploader;->config:Lcom/qiniu/android/storage/Configuration;

    iget v0, v1, Lcom/qiniu/android/storage/Configuration;->chunkSize:I

    goto :goto_0
.end method

.method private isCancelled()Z
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/qiniu/android/storage/ResumeUploader;->options:Lcom/qiniu/android/storage/UploadOptions;

    iget-object v0, v0, Lcom/qiniu/android/storage/UploadOptions;->cancellationSignal:Lcom/qiniu/android/storage/UpCancellationSignal;

    invoke-interface {v0}, Lcom/qiniu/android/storage/UpCancellationSignal;->isCancelled()Z

    move-result v0

    return v0
.end method

.method private isNotQiniu(Lcom/qiniu/android/http/ResponseInfo;)Z
    .locals 1
    .param p1, "info"    # Lcom/qiniu/android/http/ResponseInfo;

    .prologue
    .line 326
    invoke-virtual {p1}, Lcom/qiniu/android/http/ResponseInfo;->isNotQiniu()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qiniu/android/storage/ResumeUploader;->token:Lcom/qiniu/android/storage/UpToken;

    invoke-virtual {v0}, Lcom/qiniu/android/storage/UpToken;->hasReturnUrl()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private makeBlock(Ljava/lang/String;IIILcom/qiniu/android/http/ProgressHandler;Lcom/qiniu/android/http/CompletionHandler;Lcom/qiniu/android/storage/UpCancellationSignal;)V
    .locals 9
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "offset"    # I
    .param p3, "blockSize"    # I
    .param p4, "chunkSize"    # I
    .param p5, "progress"    # Lcom/qiniu/android/http/ProgressHandler;
    .param p6, "_completionHandler"    # Lcom/qiniu/android/http/CompletionHandler;
    .param p7, "c"    # Lcom/qiniu/android/storage/UpCancellationSignal;

    .prologue
    .line 99
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v2, "http://%s/mkblk/%d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 101
    .local v1, "url":Ljava/lang/String;
    :try_start_0
    iget-object v0, p0, Lcom/qiniu/android/storage/ResumeUploader;->file:Ljava/io/RandomAccessFile;

    int-to-long v2, p2

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 102
    iget-object v0, p0, Lcom/qiniu/android/storage/ResumeUploader;->file:Ljava/io/RandomAccessFile;

    iget-object v2, p0, Lcom/qiniu/android/storage/ResumeUploader;->chunkBuffer:[B

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, p4}, Ljava/io/RandomAccessFile;->read([BII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    iget-object v0, p0, Lcom/qiniu/android/storage/ResumeUploader;->chunkBuffer:[B

    const/4 v2, 0x0

    invoke-static {v0, v2, p4}, Lcom/qiniu/android/utils/Crc32;->bytes([BII)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/qiniu/android/storage/ResumeUploader;->crc32:J

    .line 109
    iget-object v2, p0, Lcom/qiniu/android/storage/ResumeUploader;->chunkBuffer:[B

    const/4 v3, 0x0

    move-object v0, p0

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/qiniu/android/storage/ResumeUploader;->post(Ljava/lang/String;[BIILcom/qiniu/android/http/ProgressHandler;Lcom/qiniu/android/http/CompletionHandler;Lcom/qiniu/android/storage/UpCancellationSignal;)V

    .line 110
    :goto_0
    return-void

    .line 103
    :catch_0
    move-exception v8

    .line 104
    .local v8, "e":Ljava/io/IOException;
    iget-object v0, p0, Lcom/qiniu/android/storage/ResumeUploader;->completionHandler:Lcom/qiniu/android/storage/UpCompletionHandler;

    iget-object v2, p0, Lcom/qiniu/android/storage/ResumeUploader;->key:Ljava/lang/String;

    invoke-static {v8}, Lcom/qiniu/android/http/ResponseInfo;->fileError(Ljava/lang/Exception;)Lcom/qiniu/android/http/ResponseInfo;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v0, v2, v3, v4}, Lcom/qiniu/android/storage/UpCompletionHandler;->complete(Ljava/lang/String;Lcom/qiniu/android/http/ResponseInfo;Lorg/json/JSONObject;)V

    goto :goto_0
.end method

.method private makeFile(Ljava/lang/String;Lcom/qiniu/android/http/CompletionHandler;Lcom/qiniu/android/storage/UpCancellationSignal;)V
    .locals 18
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "_completionHandler"    # Lcom/qiniu/android/http/CompletionHandler;
    .param p3, "c"    # Lcom/qiniu/android/storage/UpCancellationSignal;

    .prologue
    .line 128
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v4, "/mimeType/%s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/qiniu/android/storage/ResumeUploader;->options:Lcom/qiniu/android/storage/UploadOptions;

    iget-object v7, v7, Lcom/qiniu/android/storage/UploadOptions;->mimeType:Ljava/lang/String;

    invoke-static {v7}, Lcom/qiniu/android/utils/UrlSafeBase64;->encodeToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v1, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    .line 130
    .local v15, "mime":Ljava/lang/String;
    const-string v14, ""

    .line 131
    .local v14, "keyStr":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qiniu/android/storage/ResumeUploader;->key:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 132
    const-string v1, "/key/%s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/qiniu/android/storage/ResumeUploader;->key:Ljava/lang/String;

    invoke-static {v6}, Lcom/qiniu/android/utils/UrlSafeBase64;->encodeToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 135
    :cond_0
    const-string v16, ""

    .line 136
    .local v16, "paramStr":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qiniu/android/storage/ResumeUploader;->options:Lcom/qiniu/android/storage/UploadOptions;

    iget-object v1, v1, Lcom/qiniu/android/storage/UploadOptions;->params:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-eqz v1, :cond_2

    .line 137
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qiniu/android/storage/ResumeUploader;->options:Lcom/qiniu/android/storage/UploadOptions;

    iget-object v1, v1, Lcom/qiniu/android/storage/UploadOptions;->params:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    new-array v0, v1, [Ljava/lang/String;

    move-object/from16 v17, v0

    .line 138
    .local v17, "str":[Ljava/lang/String;
    const/4 v12, 0x0

    .line 139
    .local v12, "j":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qiniu/android/storage/ResumeUploader;->options:Lcom/qiniu/android/storage/UploadOptions;

    iget-object v1, v1, Lcom/qiniu/android/storage/UploadOptions;->params:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    .line 140
    .local v10, "i":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    add-int/lit8 v13, v12, 0x1

    .end local v12    # "j":I
    .local v13, "j":I
    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v5, "%s/%s"

    const/4 v1, 0x2

    new-array v6, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v6, v1

    const/4 v7, 0x1

    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/qiniu/android/utils/UrlSafeBase64;->encodeToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v7

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v17, v12

    move v12, v13

    .line 141
    .end local v13    # "j":I
    .restart local v12    # "j":I
    goto :goto_0

    .line 142
    .end local v10    # "i":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "/"

    move-object/from16 v0, v17

    invoke-static {v0, v4}, Lcom/qiniu/android/utils/StringUtils;->join([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 144
    .end local v11    # "i$":Ljava/util/Iterator;
    .end local v12    # "j":I
    .end local v17    # "str":[Ljava/lang/String;
    :cond_2
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v4, "http://%s/mkfile/%d%s%s%s"

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget v7, v0, Lcom/qiniu/android/storage/ResumeUploader;->size:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    aput-object v15, v5, v6

    const/4 v6, 0x3

    aput-object v14, v5, v6

    const/4 v6, 0x4

    aput-object v16, v5, v6

    invoke-static {v1, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 145
    .local v2, "url":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qiniu/android/storage/ResumeUploader;->contexts:[Ljava/lang/String;

    const-string v4, ","

    invoke-static {v1, v4}, Lcom/qiniu/android/utils/StringUtils;->join([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 146
    .local v9, "bodyStr":Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 148
    .local v3, "data":[B
    const/4 v4, 0x0

    array-length v5, v3

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    invoke-direct/range {v1 .. v8}, Lcom/qiniu/android/storage/ResumeUploader;->post(Ljava/lang/String;[BIILcom/qiniu/android/http/ProgressHandler;Lcom/qiniu/android/http/CompletionHandler;Lcom/qiniu/android/storage/UpCancellationSignal;)V

    .line 149
    return-void
.end method

.method private nextTask(IILjava/lang/String;)V
    .locals 19
    .param p1, "offset"    # I
    .param p2, "retried"    # I
    .param p3, "host"    # Ljava/lang/String;

    .prologue
    .line 171
    move-object/from16 v0, p0

    iget v5, v0, Lcom/qiniu/android/storage/ResumeUploader;->size:I

    move/from16 v0, p1

    if-ne v0, v5, :cond_0

    .line 172
    new-instance v4, Lcom/qiniu/android/storage/ResumeUploader$1;

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p1

    move-object/from16 v3, p3

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/qiniu/android/storage/ResumeUploader$1;-><init>(Lcom/qiniu/android/storage/ResumeUploader;IILjava/lang/String;)V

    .line 199
    .local v4, "complete":Lcom/qiniu/android/http/CompletionHandler;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/qiniu/android/storage/ResumeUploader;->options:Lcom/qiniu/android/storage/UploadOptions;

    iget-object v5, v5, Lcom/qiniu/android/storage/UploadOptions;->cancellationSignal:Lcom/qiniu/android/storage/UpCancellationSignal;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1, v4, v5}, Lcom/qiniu/android/storage/ResumeUploader;->makeFile(Ljava/lang/String;Lcom/qiniu/android/http/CompletionHandler;Lcom/qiniu/android/storage/UpCancellationSignal;)V

    .line 271
    :goto_0
    return-void

    .line 203
    .end local v4    # "complete":Lcom/qiniu/android/http/CompletionHandler;
    :cond_0
    invoke-direct/range {p0 .. p1}, Lcom/qiniu/android/storage/ResumeUploader;->calcPutSize(I)I

    move-result v9

    .line 204
    .local v9, "chunkSize":I
    new-instance v10, Lcom/qiniu/android/storage/ResumeUploader$2;

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v10, v0, v1}, Lcom/qiniu/android/storage/ResumeUploader$2;-><init>(Lcom/qiniu/android/storage/ResumeUploader;I)V

    .line 215
    .local v10, "progress":Lcom/qiniu/android/http/ProgressHandler;
    new-instance v4, Lcom/qiniu/android/storage/ResumeUploader$3;

    move-object/from16 v5, p0

    move/from16 v6, p1

    move/from16 v7, p2

    move-object/from16 v8, p3

    invoke-direct/range {v4 .. v9}, Lcom/qiniu/android/storage/ResumeUploader$3;-><init>(Lcom/qiniu/android/storage/ResumeUploader;IILjava/lang/String;I)V

    .line 264
    .restart local v4    # "complete":Lcom/qiniu/android/http/CompletionHandler;
    const/high16 v5, 0x400000

    rem-int v5, p1, v5

    if-nez v5, :cond_1

    .line 265
    invoke-direct/range {p0 .. p1}, Lcom/qiniu/android/storage/ResumeUploader;->calcBlockSize(I)I

    move-result v8

    .line 266
    .local v8, "blockSize":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/qiniu/android/storage/ResumeUploader;->options:Lcom/qiniu/android/storage/UploadOptions;

    iget-object v12, v5, Lcom/qiniu/android/storage/UploadOptions;->cancellationSignal:Lcom/qiniu/android/storage/UpCancellationSignal;

    move-object/from16 v5, p0

    move-object/from16 v6, p3

    move/from16 v7, p1

    move-object v11, v4

    invoke-direct/range {v5 .. v12}, Lcom/qiniu/android/storage/ResumeUploader;->makeBlock(Ljava/lang/String;IIILcom/qiniu/android/http/ProgressHandler;Lcom/qiniu/android/http/CompletionHandler;Lcom/qiniu/android/storage/UpCancellationSignal;)V

    goto :goto_0

    .line 269
    .end local v8    # "blockSize":I
    :cond_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/qiniu/android/storage/ResumeUploader;->contexts:[Ljava/lang/String;

    const/high16 v6, 0x400000

    div-int v6, p1, v6

    aget-object v15, v5, v6

    .line 270
    .local v15, "context":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/qiniu/android/storage/ResumeUploader;->options:Lcom/qiniu/android/storage/UploadOptions;

    iget-object v0, v5, Lcom/qiniu/android/storage/UploadOptions;->cancellationSignal:Lcom/qiniu/android/storage/UpCancellationSignal;

    move-object/from16 v18, v0

    move-object/from16 v11, p0

    move-object/from16 v12, p3

    move/from16 v13, p1

    move v14, v9

    move-object/from16 v16, v10

    move-object/from16 v17, v4

    invoke-direct/range {v11 .. v18}, Lcom/qiniu/android/storage/ResumeUploader;->putChunk(Ljava/lang/String;IILjava/lang/String;Lcom/qiniu/android/http/ProgressHandler;Lcom/qiniu/android/http/CompletionHandler;Lcom/qiniu/android/storage/UpCancellationSignal;)V

    goto :goto_0
.end method

.method private post(Ljava/lang/String;[BIILcom/qiniu/android/http/ProgressHandler;Lcom/qiniu/android/http/CompletionHandler;Lcom/qiniu/android/storage/UpCancellationSignal;)V
    .locals 10
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "data"    # [B
    .param p3, "offset"    # I
    .param p4, "size"    # I
    .param p5, "progress"    # Lcom/qiniu/android/http/ProgressHandler;
    .param p6, "completion"    # Lcom/qiniu/android/http/CompletionHandler;
    .param p7, "c"    # Lcom/qiniu/android/storage/UpCancellationSignal;

    .prologue
    .line 153
    iget-object v0, p0, Lcom/qiniu/android/storage/ResumeUploader;->httpManager:Lcom/qiniu/android/http/HttpManager;

    iget-object v5, p0, Lcom/qiniu/android/storage/ResumeUploader;->headers:[Lorg/apache/http/Header;

    iget-boolean v9, p0, Lcom/qiniu/android/storage/ResumeUploader;->forceIp:Z

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v0 .. v9}, Lcom/qiniu/android/http/HttpManager;->postData(Ljava/lang/String;[BII[Lorg/apache/http/Header;Lcom/qiniu/android/http/ProgressHandler;Lcom/qiniu/android/http/CompletionHandler;Lcom/qiniu/android/http/CancellationHandler;Z)V

    .line 154
    return-void
.end method

.method private putChunk(Ljava/lang/String;IILjava/lang/String;Lcom/qiniu/android/http/ProgressHandler;Lcom/qiniu/android/http/CompletionHandler;Lcom/qiniu/android/storage/UpCancellationSignal;)V
    .locals 10
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "offset"    # I
    .param p3, "chunkSize"    # I
    .param p4, "context"    # Ljava/lang/String;
    .param p5, "progress"    # Lcom/qiniu/android/http/ProgressHandler;
    .param p6, "_completionHandler"    # Lcom/qiniu/android/http/CompletionHandler;
    .param p7, "c"    # Lcom/qiniu/android/storage/UpCancellationSignal;

    .prologue
    .line 114
    const/high16 v0, 0x400000

    rem-int v8, p2, v0

    .line 115
    .local v8, "chunkOffset":I
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v2, "http://%s:%d/bput/%s/%d"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/qiniu/android/storage/ResumeUploader;->config:Lcom/qiniu/android/storage/Configuration;

    iget v5, v5, Lcom/qiniu/android/storage/Configuration;->upPort:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object p4, v3, v4

    const/4 v4, 0x3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 117
    .local v1, "url":Ljava/lang/String;
    :try_start_0
    iget-object v0, p0, Lcom/qiniu/android/storage/ResumeUploader;->file:Ljava/io/RandomAccessFile;

    int-to-long v2, p2

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 118
    iget-object v0, p0, Lcom/qiniu/android/storage/ResumeUploader;->file:Ljava/io/RandomAccessFile;

    iget-object v2, p0, Lcom/qiniu/android/storage/ResumeUploader;->chunkBuffer:[B

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, p3}, Ljava/io/RandomAccessFile;->read([BII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    iget-object v0, p0, Lcom/qiniu/android/storage/ResumeUploader;->chunkBuffer:[B

    const/4 v2, 0x0

    invoke-static {v0, v2, p3}, Lcom/qiniu/android/utils/Crc32;->bytes([BII)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/qiniu/android/storage/ResumeUploader;->crc32:J

    .line 124
    iget-object v2, p0, Lcom/qiniu/android/storage/ResumeUploader;->chunkBuffer:[B

    const/4 v3, 0x0

    move-object v0, p0

    move v4, p3

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/qiniu/android/storage/ResumeUploader;->post(Ljava/lang/String;[BIILcom/qiniu/android/http/ProgressHandler;Lcom/qiniu/android/http/CompletionHandler;Lcom/qiniu/android/storage/UpCancellationSignal;)V

    .line 125
    :goto_0
    return-void

    .line 119
    :catch_0
    move-exception v9

    .line 120
    .local v9, "e":Ljava/io/IOException;
    iget-object v0, p0, Lcom/qiniu/android/storage/ResumeUploader;->completionHandler:Lcom/qiniu/android/storage/UpCompletionHandler;

    iget-object v2, p0, Lcom/qiniu/android/storage/ResumeUploader;->key:Ljava/lang/String;

    invoke-static {v9}, Lcom/qiniu/android/http/ResponseInfo;->fileError(Ljava/lang/Exception;)Lcom/qiniu/android/http/ResponseInfo;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v0, v2, v3, v4}, Lcom/qiniu/android/storage/UpCompletionHandler;->complete(Ljava/lang/String;Lcom/qiniu/android/http/ResponseInfo;Lorg/json/JSONObject;)V

    goto :goto_0
.end method

.method private record(I)V
    .locals 8
    .param p1, "offset"    # I

    .prologue
    .line 317
    iget-object v1, p0, Lcom/qiniu/android/storage/ResumeUploader;->config:Lcom/qiniu/android/storage/Configuration;

    iget-object v1, v1, Lcom/qiniu/android/storage/Configuration;->recorder:Lcom/qiniu/android/storage/Recorder;

    if-eqz v1, :cond_0

    if-nez p1, :cond_1

    .line 323
    :cond_0
    :goto_0
    return-void

    .line 320
    :cond_1
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v2, "{\"size\":%d,\"offset\":%d, \"modify_time\":%d, \"contexts\":[%s]}"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lcom/qiniu/android/storage/ResumeUploader;->size:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget-wide v6, p0, Lcom/qiniu/android/storage/ResumeUploader;->modifyTime:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget-object v5, p0, Lcom/qiniu/android/storage/ResumeUploader;->contexts:[Ljava/lang/String;

    invoke-static {v5}, Lcom/qiniu/android/utils/StringUtils;->jsonJoin([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 322
    .local v0, "data":Ljava/lang/String;
    iget-object v1, p0, Lcom/qiniu/android/storage/ResumeUploader;->config:Lcom/qiniu/android/storage/Configuration;

    iget-object v1, v1, Lcom/qiniu/android/storage/Configuration;->recorder:Lcom/qiniu/android/storage/Recorder;

    iget-object v2, p0, Lcom/qiniu/android/storage/ResumeUploader;->recorderKey:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/qiniu/android/storage/Recorder;->set(Ljava/lang/String;[B)V

    goto :goto_0
.end method

.method private recoveryFromRecord()I
    .locals 14

    .prologue
    const/4 v10, 0x0

    .line 274
    iget-object v11, p0, Lcom/qiniu/android/storage/ResumeUploader;->config:Lcom/qiniu/android/storage/Configuration;

    iget-object v11, v11, Lcom/qiniu/android/storage/Configuration;->recorder:Lcom/qiniu/android/storage/Recorder;

    if-nez v11, :cond_1

    move v9, v10

    .line 300
    :cond_0
    :goto_0
    return v9

    .line 277
    :cond_1
    iget-object v11, p0, Lcom/qiniu/android/storage/ResumeUploader;->config:Lcom/qiniu/android/storage/Configuration;

    iget-object v11, v11, Lcom/qiniu/android/storage/Configuration;->recorder:Lcom/qiniu/android/storage/Recorder;

    iget-object v12, p0, Lcom/qiniu/android/storage/ResumeUploader;->recorderKey:Ljava/lang/String;

    invoke-interface {v11, v12}, Lcom/qiniu/android/storage/Recorder;->get(Ljava/lang/String;)[B

    move-result-object v1

    .line 278
    .local v1, "data":[B
    if-nez v1, :cond_2

    move v9, v10

    .line 279
    goto :goto_0

    .line 281
    :cond_2
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v1}, Ljava/lang/String;-><init>([B)V

    .line 284
    .local v5, "jsonStr":Ljava/lang/String;
    :try_start_0
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 289
    .local v8, "obj":Lorg/json/JSONObject;
    const-string v11, "offset"

    invoke-virtual {v8, v11, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v9

    .line 290
    .local v9, "offset":I
    const-string v11, "modify_time"

    const-wide/16 v12, 0x0

    invoke-virtual {v8, v11, v12, v13}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v6

    .line 291
    .local v6, "modify":J
    const-string v11, "size"

    invoke-virtual {v8, v11, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    .line 292
    .local v3, "fSize":I
    const-string v11, "contexts"

    invoke-virtual {v8, v11}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 293
    .local v0, "array":Lorg/json/JSONArray;
    if-eqz v9, :cond_3

    iget-wide v12, p0, Lcom/qiniu/android/storage/ResumeUploader;->modifyTime:J

    cmp-long v11, v6, v12

    if-nez v11, :cond_3

    iget v11, p0, Lcom/qiniu/android/storage/ResumeUploader;->size:I

    if-ne v3, v11, :cond_3

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-nez v11, :cond_4

    :cond_3
    move v9, v10

    .line 294
    goto :goto_0

    .line 285
    .end local v0    # "array":Lorg/json/JSONArray;
    .end local v3    # "fSize":I
    .end local v6    # "modify":J
    .end local v8    # "obj":Lorg/json/JSONObject;
    .end local v9    # "offset":I
    :catch_0
    move-exception v2

    .line 286
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    move v9, v10

    .line 287
    goto :goto_0

    .line 296
    .end local v2    # "e":Lorg/json/JSONException;
    .restart local v0    # "array":Lorg/json/JSONArray;
    .restart local v3    # "fSize":I
    .restart local v6    # "modify":J
    .restart local v8    # "obj":Lorg/json/JSONObject;
    .restart local v9    # "offset":I
    :cond_4
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v4, v10, :cond_0

    .line 297
    iget-object v10, p0, Lcom/qiniu/android/storage/ResumeUploader;->contexts:[Ljava/lang/String;

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v4

    .line 296
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method private removeRecord()V
    .locals 2

    .prologue
    .line 304
    iget-object v0, p0, Lcom/qiniu/android/storage/ResumeUploader;->config:Lcom/qiniu/android/storage/Configuration;

    iget-object v0, v0, Lcom/qiniu/android/storage/Configuration;->recorder:Lcom/qiniu/android/storage/Recorder;

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Lcom/qiniu/android/storage/ResumeUploader;->config:Lcom/qiniu/android/storage/Configuration;

    iget-object v0, v0, Lcom/qiniu/android/storage/Configuration;->recorder:Lcom/qiniu/android/storage/Recorder;

    iget-object v1, p0, Lcom/qiniu/android/storage/ResumeUploader;->recorderKey:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/qiniu/android/storage/Recorder;->del(Ljava/lang/String;)V

    .line 307
    :cond_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/qiniu/android/storage/ResumeUploader;->recoveryFromRecord()I

    move-result v1

    .line 78
    .local v1, "offset":I
    :try_start_0
    new-instance v2, Ljava/io/RandomAccessFile;

    iget-object v3, p0, Lcom/qiniu/android/storage/ResumeUploader;->f:Ljava/io/File;

    const-string v4, "r"

    invoke-direct {v2, v3, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/qiniu/android/storage/ResumeUploader;->file:Ljava/io/RandomAccessFile;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/qiniu/android/storage/ResumeUploader;->config:Lcom/qiniu/android/storage/Configuration;

    iget-object v3, v3, Lcom/qiniu/android/storage/Configuration;->upHost:Ljava/lang/String;

    invoke-direct {p0, v1, v2, v3}, Lcom/qiniu/android/storage/ResumeUploader;->nextTask(IILjava/lang/String;)V

    .line 85
    :goto_0
    return-void

    .line 79
    :catch_0
    move-exception v0

    .line 80
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 81
    iget-object v2, p0, Lcom/qiniu/android/storage/ResumeUploader;->completionHandler:Lcom/qiniu/android/storage/UpCompletionHandler;

    iget-object v3, p0, Lcom/qiniu/android/storage/ResumeUploader;->key:Ljava/lang/String;

    invoke-static {v0}, Lcom/qiniu/android/http/ResponseInfo;->fileError(Ljava/lang/Exception;)Lcom/qiniu/android/http/ResponseInfo;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v2, v3, v4, v5}, Lcom/qiniu/android/storage/UpCompletionHandler;->complete(Ljava/lang/String;Lcom/qiniu/android/http/ResponseInfo;Lorg/json/JSONObject;)V

    goto :goto_0
.end method
