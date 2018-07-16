.class public Lcom/igexin/download/DownloadService;
.super Landroid/app/Service;


# static fields
.field static a:Z


# instance fields
.field private b:Lcom/igexin/download/d;

.field private c:Ljava/util/ArrayList;

.field private d:Lcom/igexin/download/f;

.field private e:Z

.field private f:Lcom/igexin/download/e;

.field private g:Z

.field private h:Ljava/lang/Object;

.field private i:Landroid/database/CharArrayBuffer;

.field private j:Landroid/database/CharArrayBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/igexin/download/DownloadService;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method private a(IJ)J
    .locals 6

    const-wide/16 v2, 0x0

    iget-object v0, p0, Lcom/igexin/download/DownloadService;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/igexin/download/DownloadInfo;

    iget v1, v0, Lcom/igexin/download/DownloadInfo;->mStatus:I

    invoke-static {v1}, Lcom/igexin/download/Downloads;->isStatusCompleted(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0

    :cond_0
    iget v1, v0, Lcom/igexin/download/DownloadInfo;->mStatus:I

    const/16 v4, 0xc1

    if-eq v1, v4, :cond_1

    move-wide v0, v2

    goto :goto_0

    :cond_1
    iget v1, v0, Lcom/igexin/download/DownloadInfo;->mNumFailed:I

    if-nez v1, :cond_2

    move-wide v0, v2

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/igexin/download/DownloadInfo;->restartTime()J

    move-result-wide v0

    cmp-long v4, v0, p2

    if-gtz v4, :cond_3

    move-wide v0, v2

    goto :goto_0

    :cond_3
    sub-long/2addr v0, p2

    goto :goto_0
.end method

.method static synthetic a(Lcom/igexin/download/DownloadService;IJ)J
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Lcom/igexin/download/DownloadService;->a(IJ)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic a(Lcom/igexin/download/DownloadService;Landroid/database/CharArrayBuffer;)Landroid/database/CharArrayBuffer;
    .locals 0

    iput-object p1, p0, Lcom/igexin/download/DownloadService;->i:Landroid/database/CharArrayBuffer;

    return-object p1
.end method

.method static synthetic a(Lcom/igexin/download/DownloadService;Lcom/igexin/download/f;)Lcom/igexin/download/f;
    .locals 0

    iput-object p1, p0, Lcom/igexin/download/DownloadService;->d:Lcom/igexin/download/f;

    return-object p1
.end method

.method static synthetic a(Lcom/igexin/download/DownloadService;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/igexin/download/DownloadService;->h:Ljava/lang/Object;

    return-object p1
.end method

.method private a(Ljava/lang/String;Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/4 v6, 0x0

    invoke-interface {p2, p3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    if-nez p1, :cond_1

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    iget-object v1, p0, Lcom/igexin/download/DownloadService;->j:Landroid/database/CharArrayBuffer;

    if-nez v1, :cond_2

    new-instance v1, Landroid/database/CharArrayBuffer;

    const/16 v2, 0x80

    invoke-direct {v1, v2}, Landroid/database/CharArrayBuffer;-><init>(I)V

    iput-object v1, p0, Lcom/igexin/download/DownloadService;->j:Landroid/database/CharArrayBuffer;

    :cond_2
    iget-object v1, p0, Lcom/igexin/download/DownloadService;->j:Landroid/database/CharArrayBuffer;

    invoke-interface {p2, v0, v1}, Landroid/database/Cursor;->copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V

    iget-object v1, p0, Lcom/igexin/download/DownloadService;->j:Landroid/database/CharArrayBuffer;

    iget v1, v1, Landroid/database/CharArrayBuffer;->sizeCopied:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v1, v2, :cond_3

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/igexin/download/DownloadService;->i:Landroid/database/CharArrayBuffer;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/igexin/download/DownloadService;->i:Landroid/database/CharArrayBuffer;

    iget v0, v0, Landroid/database/CharArrayBuffer;->sizeCopied:I

    if-ge v0, v1, :cond_5

    :cond_4
    new-instance v0, Landroid/database/CharArrayBuffer;

    invoke-direct {v0, v1}, Landroid/database/CharArrayBuffer;-><init>(I)V

    iput-object v0, p0, Lcom/igexin/download/DownloadService;->i:Landroid/database/CharArrayBuffer;

    :cond_5
    iget-object v0, p0, Lcom/igexin/download/DownloadService;->i:Landroid/database/CharArrayBuffer;

    iget-object v2, v0, Landroid/database/CharArrayBuffer;->data:[C

    iget-object v0, p0, Lcom/igexin/download/DownloadService;->j:Landroid/database/CharArrayBuffer;

    iget-object v3, v0, Landroid/database/CharArrayBuffer;->data:[C

    invoke-virtual {p1, v6, v1, v2, v6}, Ljava/lang/String;->getChars(II[CI)V

    add-int/lit8 v0, v1, -0x1

    :goto_1
    if-ltz v0, :cond_0

    aget-char v4, v2, v0

    aget-char v5, v3, v0

    if-eq v4, v5, :cond_6

    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v3, v6, v1}, Ljava/lang/String;-><init>([CII)V

    goto :goto_0

    :cond_6
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method private a()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/igexin/download/DownloadService;->e:Z

    iget-object v0, p0, Lcom/igexin/download/DownloadService;->d:Lcom/igexin/download/f;

    if-nez v0, :cond_0

    new-instance v0, Lcom/igexin/download/f;

    invoke-direct {v0, p0}, Lcom/igexin/download/f;-><init>(Lcom/igexin/download/DownloadService;)V

    iput-object v0, p0, Lcom/igexin/download/DownloadService;->d:Lcom/igexin/download/f;

    iget-object v0, p0, Lcom/igexin/download/DownloadService;->d:Lcom/igexin/download/f;

    invoke-virtual {v0}, Lcom/igexin/download/f;->start()V

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private a(Landroid/database/Cursor;IZZJ)V
    .locals 41

    const-string v2, "status"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    const-string v2, "numfailed"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    const-string v2, "method"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    new-instance v2, Lcom/igexin/download/DownloadInfo;

    const-string v3, "_id"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const-string v4, "uri"

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "no_integrity"

    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    const/4 v5, 0x1

    :goto_0
    const-string v6, "hint"

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "_data"

    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "mimetype"

    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "destination"

    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    const-string v10, "visibility"

    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    const-string v11, "control"

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    const v14, 0xfffffff

    and-int/2addr v14, v15

    shr-int/lit8 v15, v15, 0x1c

    const-string v16, "lastmod"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    const-string v18, "createmod"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v18

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    const-string v20, "extras"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v20

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    const-string v21, "cookiedata"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v21

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    const-string v22, "useragent"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v22

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    const-string v23, "referer"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v23

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    const-string v24, "total_bytes"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v24

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v24

    const-string v25, "current_bytes"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v25

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    const-string v26, "etag"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v26

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v26

    const-string v27, "data_1"

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v27

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v27

    const-string v28, "data_2"

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v28

    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v28

    const-string v29, "data_3"

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v29

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v29

    const-string v30, "data_4"

    move-object/from16 v0, p1

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v30

    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v30

    const-string v31, "data_5"

    move-object/from16 v0, p1

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v31

    move-object/from16 v0, p1

    move/from16 v1, v31

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v31

    const-string v32, "data_6"

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v32

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v32

    const-string v33, "data_7"

    move-object/from16 v0, p1

    move-object/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v33

    move-object/from16 v0, p1

    move/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v33

    const-string v34, "data_8"

    move-object/from16 v0, p1

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v34

    move-object/from16 v0, p1

    move/from16 v1, v34

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v34

    const-string v35, "data_9"

    move-object/from16 v0, p1

    move-object/from16 v1, v35

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v35

    move-object/from16 v0, p1

    move/from16 v1, v35

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v35

    const-string v36, "data_10"

    move-object/from16 v0, p1

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v36

    move-object/from16 v0, p1

    move/from16 v1, v36

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v36

    const-string v38, "iswebicon"

    move-object/from16 v0, p1

    move-object/from16 v1, v38

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v38

    move-object/from16 v0, p1

    move/from16 v1, v38

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v38

    const-string v39, "scanned"

    move-object/from16 v0, p1

    move-object/from16 v1, v39

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v39

    move-object/from16 v0, p1

    move/from16 v1, v39

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v39

    const/16 v40, 0x1

    move/from16 v0, v39

    move/from16 v1, v40

    if-ne v0, v1, :cond_2

    const/16 v39, 0x1

    :goto_1
    invoke-direct/range {v2 .. v39}, Lcom/igexin/download/DownloadInfo;-><init>(ILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIIIIJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIZ)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/igexin/download/DownloadService;->c:Ljava/util/ArrayList;

    move/from16 v0, p2

    invoke-virtual {v3, v0, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    move/from16 v0, p3

    move/from16 v1, p4

    invoke-virtual {v2, v0, v1}, Lcom/igexin/download/DownloadInfo;->canUseNetwork(ZZ)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "wifi"

    iget-object v4, v2, Lcom/igexin/download/DownloadInfo;->mData9:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static/range {p0 .. p0}, Lcom/igexin/download/h;->b(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_3

    :cond_0
    :goto_2
    return-void

    :cond_1
    const/4 v5, 0x0

    goto/16 :goto_0

    :cond_2
    const/16 v39, 0x0

    goto :goto_1

    :cond_3
    move-wide/from16 v0, p5

    invoke-virtual {v2, v0, v1}, Lcom/igexin/download/DownloadInfo;->isReadyToStart(J)Z

    move-result v3

    if-eqz v3, :cond_0

    sget v3, Lcom/igexin/download/SdkDownLoader;->a:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/igexin/download/DownloadService;->a(I)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-boolean v3, v2, Lcom/igexin/download/DownloadInfo;->mHasActiveThread:Z

    if-nez v3, :cond_0

    iget v3, v2, Lcom/igexin/download/DownloadInfo;->mStatus:I

    const/16 v4, 0xc0

    if-eq v3, v4, :cond_4

    const/16 v3, 0xc0

    iput v3, v2, Lcom/igexin/download/DownloadInfo;->mStatus:I

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "status"

    iget v5, v2, Lcom/igexin/download/DownloadInfo;->mStatus:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual/range {p0 .. p0}, Lcom/igexin/download/DownloadService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/igexin/download/Downloads;->a:Landroid/net/Uri;

    iget v6, v2, Lcom/igexin/download/DownloadInfo;->mId:I

    int-to-long v6, v6

    invoke-static {v5, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v3, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_4
    new-instance v3, Lcom/igexin/download/g;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v2}, Lcom/igexin/download/g;-><init>(Landroid/content/Context;Lcom/igexin/download/DownloadInfo;)V

    const/4 v4, 0x1

    iput-boolean v4, v2, Lcom/igexin/download/DownloadInfo;->mHasActiveThread:Z

    invoke-virtual {v3}, Lcom/igexin/download/g;->start()V

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/igexin/download/DownloadInfo;->mNotice:Z

    goto :goto_2

    :cond_5
    iget v3, v2, Lcom/igexin/download/DownloadInfo;->mStatus:I

    const/16 v4, 0xbe

    if-eq v3, v4, :cond_0

    const/16 v3, 0xbe

    iput v3, v2, Lcom/igexin/download/DownloadInfo;->mStatus:I

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "status"

    iget v5, v2, Lcom/igexin/download/DownloadInfo;->mStatus:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual/range {p0 .. p0}, Lcom/igexin/download/DownloadService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/igexin/download/Downloads;->a:Landroid/net/Uri;

    iget v2, v2, Lcom/igexin/download/DownloadInfo;->mId:I

    int-to-long v6, v2

    invoke-static {v5, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4, v2, v3, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_2
.end method

.method static synthetic a(Lcom/igexin/download/DownloadService;)V
    .locals 0

    invoke-direct {p0}, Lcom/igexin/download/DownloadService;->a()V

    return-void
.end method

.method static synthetic a(Lcom/igexin/download/DownloadService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/igexin/download/DownloadService;->b(I)V

    return-void
.end method

.method static synthetic a(Lcom/igexin/download/DownloadService;Landroid/database/Cursor;IZZJ)V
    .locals 1

    invoke-direct/range {p0 .. p6}, Lcom/igexin/download/DownloadService;->a(Landroid/database/Cursor;IZZJ)V

    return-void
.end method

.method private a(I)Z
    .locals 8

    const/4 v4, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/igexin/download/DownloadService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/igexin/download/Downloads;->a:Landroid/net/Uri;

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v7

    const-string v3, "status == \'192\'"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ge v0, p1, :cond_0

    move v0, v6

    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :goto_1
    return v0

    :cond_0
    move v0, v7

    goto :goto_0

    :cond_1
    move v0, v7

    goto :goto_1
.end method

.method private a(Landroid/database/Cursor;I)Z
    .locals 8

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/igexin/download/DownloadService;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/igexin/download/DownloadInfo;

    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/igexin/download/DownloadService;->h:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_1

    :try_start_1
    iget-object v3, p0, Lcom/igexin/download/DownloadService;->h:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "scanFile"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    iget-object v4, p0, Lcom/igexin/download/DownloadService;->h:Ljava/lang/Object;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, v0, Lcom/igexin/download/DownloadInfo;->mFileName:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget-object v7, v0, Lcom/igexin/download/DownloadInfo;->mMimeType:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/igexin/download/DownloadInfo;->mMediaScanned:Z

    if-eqz p1, :cond_0

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "scanned"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p0}, Lcom/igexin/download/DownloadService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/igexin/download/Downloads;->a:Landroid/net/Uri;

    const-string v5, "_id"

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v4, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v0, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :try_start_2
    monitor-exit p0

    move v0, v1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    :cond_1
    :goto_1
    monitor-exit p0

    move v0, v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v0

    goto :goto_1

    :catch_4
    move-exception v0

    goto :goto_1

    :catch_5
    move-exception v0

    goto :goto_1
.end method

.method static synthetic a(Lcom/igexin/download/DownloadService;Landroid/database/Cursor;I)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/igexin/download/DownloadService;->a(Landroid/database/Cursor;I)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/igexin/download/DownloadService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/igexin/download/DownloadService;->g:Z

    return p1
.end method

.method private a(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method static synthetic b(Lcom/igexin/download/DownloadService;Landroid/database/CharArrayBuffer;)Landroid/database/CharArrayBuffer;
    .locals 0

    iput-object p1, p0, Lcom/igexin/download/DownloadService;->j:Landroid/database/CharArrayBuffer;

    return-object p1
.end method

.method static synthetic b(Lcom/igexin/download/DownloadService;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/igexin/download/DownloadService;->h:Ljava/lang/Object;

    return-object v0
.end method

.method private b(I)V
    .locals 3

    iget-object v0, p0, Lcom/igexin/download/DownloadService;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/igexin/download/DownloadInfo;

    iget v1, v0, Lcom/igexin/download/DownloadInfo;->mStatus:I

    const/16 v2, 0xc0

    if-ne v1, v2, :cond_1

    const/16 v1, 0x1ea

    iput v1, v0, Lcom/igexin/download/DownloadInfo;->mStatus:I

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/igexin/download/DownloadService;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return-void

    :cond_1
    iget v1, v0, Lcom/igexin/download/DownloadInfo;->mDestination:I

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/igexin/download/DownloadInfo;->mFileName:Ljava/lang/String;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/io/File;

    iget-object v0, v0, Lcom/igexin/download/DownloadInfo;->mFileName:Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_0
.end method

.method private b(Landroid/database/Cursor;IZZJ)V
    .locals 9

    const/16 v7, 0xbe

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/igexin/download/DownloadService;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/igexin/download/DownloadInfo;

    const-string v1, "status"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    const-string v1, "numfailed"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    const-string v1, "_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/igexin/download/DownloadInfo;->mId:I

    iget-object v1, v0, Lcom/igexin/download/DownloadInfo;->mUri:Ljava/lang/String;

    const-string v6, "uri"

    invoke-direct {p0, v1, p1, v6}, Lcom/igexin/download/DownloadService;->a(Ljava/lang/String;Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/igexin/download/DownloadInfo;->mUri:Ljava/lang/String;

    const-string v1, "no_integrity"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v2, :cond_1

    move v1, v2

    :goto_0
    iput-boolean v1, v0, Lcom/igexin/download/DownloadInfo;->mNoIntegrity:Z

    iget-object v1, v0, Lcom/igexin/download/DownloadInfo;->mHint:Ljava/lang/String;

    const-string v6, "hint"

    invoke-direct {p0, v1, p1, v6}, Lcom/igexin/download/DownloadService;->a(Ljava/lang/String;Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/igexin/download/DownloadInfo;->mHint:Ljava/lang/String;

    iget-object v1, v0, Lcom/igexin/download/DownloadInfo;->mFileName:Ljava/lang/String;

    const-string v6, "_data"

    invoke-direct {p0, v1, p1, v6}, Lcom/igexin/download/DownloadService;->a(Ljava/lang/String;Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/igexin/download/DownloadInfo;->mFileName:Ljava/lang/String;

    iget-object v1, v0, Lcom/igexin/download/DownloadInfo;->mMimeType:Ljava/lang/String;

    const-string v6, "mimetype"

    invoke-direct {p0, v1, p1, v6}, Lcom/igexin/download/DownloadService;->a(Ljava/lang/String;Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/igexin/download/DownloadInfo;->mMimeType:Ljava/lang/String;

    const-string v1, "destination"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/igexin/download/DownloadInfo;->mDestination:I

    const-string v1, "visibility"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/igexin/download/DownloadInfo;->mVisibility:I

    monitor-enter v0

    :try_start_0
    const-string v1, "control"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/igexin/download/DownloadInfo;->mControl:I

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/igexin/download/DownloadInfo;->mStatus:I

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/igexin/download/DownloadInfo;->mNumFailed:I

    const-string v1, "method"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const v4, 0xfffffff

    and-int/2addr v4, v1

    iput v4, v0, Lcom/igexin/download/DownloadInfo;->mRetryAfter:I

    shr-int/lit8 v1, v1, 0x1c

    iput v1, v0, Lcom/igexin/download/DownloadInfo;->mRedirectCount:I

    const-string v1, "lastmod"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v0, Lcom/igexin/download/DownloadInfo;->mLastMod:J

    const-string v1, "createmod"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v0, Lcom/igexin/download/DownloadInfo;->mCreateMod:J

    iget-object v1, v0, Lcom/igexin/download/DownloadInfo;->mCookies:Ljava/lang/String;

    const-string v4, "cookiedata"

    invoke-direct {p0, v1, p1, v4}, Lcom/igexin/download/DownloadService;->a(Ljava/lang/String;Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/igexin/download/DownloadInfo;->mCookies:Ljava/lang/String;

    iget-object v1, v0, Lcom/igexin/download/DownloadInfo;->mExtras:Ljava/lang/String;

    const-string v4, "extras"

    invoke-direct {p0, v1, p1, v4}, Lcom/igexin/download/DownloadService;->a(Ljava/lang/String;Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/igexin/download/DownloadInfo;->mExtras:Ljava/lang/String;

    iget-object v1, v0, Lcom/igexin/download/DownloadInfo;->mUserAgent:Ljava/lang/String;

    const-string v4, "useragent"

    invoke-direct {p0, v1, p1, v4}, Lcom/igexin/download/DownloadService;->a(Ljava/lang/String;Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/igexin/download/DownloadInfo;->mUserAgent:Ljava/lang/String;

    iget-object v1, v0, Lcom/igexin/download/DownloadInfo;->mReferer:Ljava/lang/String;

    const-string v4, "referer"

    invoke-direct {p0, v1, p1, v4}, Lcom/igexin/download/DownloadService;->a(Ljava/lang/String;Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/igexin/download/DownloadInfo;->mReferer:Ljava/lang/String;

    const-string v1, "total_bytes"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/igexin/download/DownloadInfo;->mTotalBytes:I

    const-string v1, "current_bytes"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/igexin/download/DownloadInfo;->mCurrentBytes:I

    iget-object v1, v0, Lcom/igexin/download/DownloadInfo;->mETag:Ljava/lang/String;

    const-string v4, "etag"

    invoke-direct {p0, v1, p1, v4}, Lcom/igexin/download/DownloadService;->a(Ljava/lang/String;Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/igexin/download/DownloadInfo;->mETag:Ljava/lang/String;

    invoke-virtual {v0, p3, p4}, Lcom/igexin/download/DownloadInfo;->canUseNetwork(ZZ)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "wifi"

    iget-object v4, v0, Lcom/igexin/download/DownloadInfo;->mData9:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p0}, Lcom/igexin/download/h;->b(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    :goto_1
    return-void

    :cond_1
    move v1, v3

    goto/16 :goto_0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_2
    invoke-virtual {v0, p5, p6}, Lcom/igexin/download/DownloadInfo;->isReadyToRestart(J)Z

    move-result v1

    if-eqz v1, :cond_0

    sget v1, Lcom/igexin/download/SdkDownLoader;->a:I

    invoke-direct {p0, v1}, Lcom/igexin/download/DownloadService;->a(I)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-boolean v1, v0, Lcom/igexin/download/DownloadInfo;->mHasActiveThread:Z

    if-nez v1, :cond_0

    const/16 v1, 0xc0

    iput v1, v0, Lcom/igexin/download/DownloadInfo;->mStatus:I

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "status"

    iget v5, v0, Lcom/igexin/download/DownloadInfo;->mStatus:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p0}, Lcom/igexin/download/DownloadService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/igexin/download/Downloads;->a:Landroid/net/Uri;

    iget v6, v0, Lcom/igexin/download/DownloadInfo;->mId:I

    int-to-long v6, v6

    invoke-static {v5, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5, v1, v8, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    new-instance v1, Lcom/igexin/download/g;

    invoke-direct {v1, p0, v0}, Lcom/igexin/download/g;-><init>(Landroid/content/Context;Lcom/igexin/download/DownloadInfo;)V

    iput-boolean v2, v0, Lcom/igexin/download/DownloadInfo;->mHasActiveThread:Z

    invoke-virtual {v1}, Lcom/igexin/download/g;->start()V

    iput-boolean v3, v0, Lcom/igexin/download/DownloadInfo;->mNotice:Z

    goto :goto_1

    :cond_3
    iget v1, v0, Lcom/igexin/download/DownloadInfo;->mStatus:I

    if-eq v1, v7, :cond_0

    iput v7, v0, Lcom/igexin/download/DownloadInfo;->mStatus:I

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "status"

    iget v3, v0, Lcom/igexin/download/DownloadInfo;->mStatus:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p0}, Lcom/igexin/download/DownloadService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/igexin/download/Downloads;->a:Landroid/net/Uri;

    iget v0, v0, Lcom/igexin/download/DownloadInfo;->mId:I

    int-to-long v4, v0

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v2, v0, v1, v8, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_1
.end method

.method static synthetic b(Lcom/igexin/download/DownloadService;Landroid/database/Cursor;IZZJ)V
    .locals 1

    invoke-direct/range {p0 .. p6}, Lcom/igexin/download/DownloadService;->b(Landroid/database/Cursor;IZZJ)V

    return-void
.end method

.method private b()Z
    .locals 1

    iget-object v0, p0, Lcom/igexin/download/DownloadService;->h:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/igexin/download/DownloadService;I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/igexin/download/DownloadService;->d(I)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/igexin/download/DownloadService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/igexin/download/DownloadService;->e:Z

    return p1
.end method

.method static synthetic c(Lcom/igexin/download/DownloadService;)Lcom/igexin/download/f;
    .locals 1

    iget-object v0, p0, Lcom/igexin/download/DownloadService;->d:Lcom/igexin/download/f;

    return-object v0
.end method

.method private c(I)Z
    .locals 1

    iget-object v0, p0, Lcom/igexin/download/DownloadService;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/igexin/download/DownloadInfo;

    invoke-virtual {v0}, Lcom/igexin/download/DownloadInfo;->hasCompletionNotification()Z

    move-result v0

    return v0
.end method

.method static synthetic c(Lcom/igexin/download/DownloadService;I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/igexin/download/DownloadService;->c(I)Z

    move-result v0

    return v0
.end method

.method private d(I)Z
    .locals 2

    iget-object v0, p0, Lcom/igexin/download/DownloadService;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/igexin/download/DownloadInfo;

    iget-boolean v1, v0, Lcom/igexin/download/DownloadInfo;->mMediaScanned:Z

    if-nez v1, :cond_0

    iget v1, v0, Lcom/igexin/download/DownloadInfo;->mDestination:I

    if-nez v1, :cond_0

    iget v1, v0, Lcom/igexin/download/DownloadInfo;->mStatus:I

    invoke-static {v1}, Lcom/igexin/download/Downloads;->isStatusSuccess(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/igexin/download/DownloadInfo;->mMimeType:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/igexin/download/DownloadService;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic d(Lcom/igexin/download/DownloadService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/igexin/download/DownloadService;->e:Z

    return v0
.end method

.method static synthetic e(Lcom/igexin/download/DownloadService;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/igexin/download/DownloadService;->c:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic f(Lcom/igexin/download/DownloadService;)Z
    .locals 1

    invoke-direct {p0}, Lcom/igexin/download/DownloadService;->b()Z

    move-result v0

    return v0
.end method

.method static synthetic g(Lcom/igexin/download/DownloadService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/igexin/download/DownloadService;->g:Z

    return v0
.end method

.method static synthetic h(Lcom/igexin/download/DownloadService;)Lcom/igexin/download/e;
    .locals 1

    iget-object v0, p0, Lcom/igexin/download/DownloadService;->f:Lcom/igexin/download/e;

    return-object v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Cannot bind to Download Manager Service"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreate()V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x0

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    const-string v0, "com.google.android.collect.Lists"

    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "newArrayList"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/igexin/download/DownloadService;->c:Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v0, Lcom/igexin/download/d;

    invoke-direct {v0, p0}, Lcom/igexin/download/d;-><init>(Lcom/igexin/download/DownloadService;)V

    iput-object v0, p0, Lcom/igexin/download/DownloadService;->b:Lcom/igexin/download/d;

    invoke-virtual {p0}, Lcom/igexin/download/DownloadService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/igexin/download/Downloads;->a:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/igexin/download/DownloadService;->b:Lcom/igexin/download/d;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iput-object v4, p0, Lcom/igexin/download/DownloadService;->h:Ljava/lang/Object;

    iput-boolean v5, p0, Lcom/igexin/download/DownloadService;->g:Z

    new-instance v0, Lcom/igexin/download/e;

    invoke-direct {v0, p0}, Lcom/igexin/download/e;-><init>(Lcom/igexin/download/DownloadService;)V

    iput-object v0, p0, Lcom/igexin/download/DownloadService;->f:Lcom/igexin/download/e;

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_0

    :catch_3
    move-exception v0

    goto :goto_0

    :catch_4
    move-exception v0

    goto :goto_0

    :catch_5
    move-exception v0

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    invoke-virtual {p0}, Lcom/igexin/download/DownloadService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/igexin/download/DownloadService;->b:Lcom/igexin/download/d;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    invoke-direct {p0}, Lcom/igexin/download/DownloadService;->a()V

    return-void
.end method
