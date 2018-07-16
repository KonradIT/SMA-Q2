.class Lcom/igexin/download/f;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/igexin/download/DownloadService;


# direct methods
.method public constructor <init>(Lcom/igexin/download/DownloadService;)V
    .locals 1

    iput-object p1, p0, Lcom/igexin/download/f;->a:Lcom/igexin/download/DownloadService;

    const-string v0, "Download Service"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 22

    const/16 v2, 0xa

    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    const/4 v4, 0x0

    const-wide v2, 0x7fffffffffffffffL

    move-wide v10, v2

    move v12, v4

    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/igexin/download/f;->a:Lcom/igexin/download/DownloadService;

    monitor-enter v3

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igexin/download/f;->a:Lcom/igexin/download/DownloadService;

    invoke-static {v2}, Lcom/igexin/download/DownloadService;->c(Lcom/igexin/download/DownloadService;)Lcom/igexin/download/f;

    move-result-object v2

    move-object/from16 v0, p0

    if-eq v2, v0, :cond_0

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v4, "multiple UpdateThreads in DownloadService"

    invoke-direct {v2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igexin/download/f;->a:Lcom/igexin/download/DownloadService;

    invoke-static {v2}, Lcom/igexin/download/DownloadService;->d(Lcom/igexin/download/DownloadService;)Z

    move-result v2

    if-nez v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igexin/download/f;->a:Lcom/igexin/download/DownloadService;

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcom/igexin/download/DownloadService;->a(Lcom/igexin/download/DownloadService;Lcom/igexin/download/f;)Lcom/igexin/download/f;

    if-nez v12, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igexin/download/f;->a:Lcom/igexin/download/DownloadService;

    invoke-virtual {v2}, Lcom/igexin/download/DownloadService;->stopSelf()V

    :cond_1
    const-wide v4, 0x7fffffffffffffffL

    cmp-long v2, v10, v4

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igexin/download/f;->a:Lcom/igexin/download/DownloadService;

    const-string v4, "alarm"

    invoke-virtual {v2, v4}, Lcom/igexin/download/DownloadService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    if-nez v2, :cond_4

    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igexin/download/f;->a:Lcom/igexin/download/DownloadService;

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcom/igexin/download/DownloadService;->a(Lcom/igexin/download/DownloadService;Landroid/database/CharArrayBuffer;)Landroid/database/CharArrayBuffer;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igexin/download/f;->a:Lcom/igexin/download/DownloadService;

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcom/igexin/download/DownloadService;->b(Lcom/igexin/download/DownloadService;Landroid/database/CharArrayBuffer;)Landroid/database/CharArrayBuffer;

    monitor-exit v3

    :cond_3
    :goto_2
    return-void

    :cond_4
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.GTDOWNLOAD_WAKEUP"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/igexin/download/f;->a:Lcom/igexin/download/DownloadService;

    invoke-virtual {v5}, Lcom/igexin/download/DownloadService;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-class v6, Lcom/igexin/download/DownloadReceiver;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v5, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    add-long/2addr v6, v10

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/igexin/download/f;->a:Lcom/igexin/download/DownloadService;

    const/4 v9, 0x0

    const/high16 v10, 0x40000000    # 2.0f

    invoke-static {v8, v9, v4, v10}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v2, v5, v6, v7, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_1

    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igexin/download/f;->a:Lcom/igexin/download/DownloadService;

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcom/igexin/download/DownloadService;->b(Lcom/igexin/download/DownloadService;Z)Z

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igexin/download/f;->a:Lcom/igexin/download/DownloadService;

    invoke-static {v2}, Lcom/igexin/download/h;->a(Landroid/content/Context;)Z

    move-result v14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igexin/download/f;->a:Lcom/igexin/download/DownloadService;

    invoke-static {v2}, Lcom/igexin/download/h;->c(Landroid/content/Context;)Z

    move-result v15

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const/4 v13, 0x0

    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igexin/download/f;->a:Lcom/igexin/download/DownloadService;

    invoke-virtual {v2}, Lcom/igexin/download/DownloadService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/igexin/download/Downloads;->a:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "_id"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v4

    if-nez v4, :cond_6

    if-eqz v4, :cond_3

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :cond_6
    :try_start_3
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const/4 v5, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-wide v12, 0x7fffffffffffffffL

    :try_start_4
    invoke-interface {v4}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    const-string v2, "_id"

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    :goto_3
    if-eqz v3, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igexin/download/f;->a:Lcom/igexin/download/DownloadService;

    invoke-static {v2}, Lcom/igexin/download/DownloadService;->e(Lcom/igexin/download/DownloadService;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v5, v2, :cond_16

    :cond_7
    if-eqz v3, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igexin/download/f;->a:Lcom/igexin/download/DownloadService;

    invoke-static {v2, v5}, Lcom/igexin/download/DownloadService;->a(Lcom/igexin/download/DownloadService;I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_3

    :catch_0
    move-exception v2

    :goto_4
    if-eqz v4, :cond_1b

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    move-wide v2, v12

    move v4, v11

    :goto_5
    move-wide v10, v2

    move v12, v4

    goto/16 :goto_0

    :cond_8
    :try_start_5
    move/from16 v0, v16

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igexin/download/f;->a:Lcom/igexin/download/DownloadService;

    invoke-static {v2}, Lcom/igexin/download/DownloadService;->e(Lcom/igexin/download/DownloadService;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v5, v2, :cond_c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/igexin/download/f;->a:Lcom/igexin/download/DownloadService;

    move v6, v14

    move v7, v15

    invoke-static/range {v3 .. v9}, Lcom/igexin/download/DownloadService;->a(Lcom/igexin/download/DownloadService;Landroid/database/Cursor;IZZJ)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igexin/download/f;->a:Lcom/igexin/download/DownloadService;

    invoke-static {v2, v5}, Lcom/igexin/download/DownloadService;->b(Lcom/igexin/download/DownloadService;I)Z

    move-result v2

    if-eqz v2, :cond_21

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igexin/download/f;->a:Lcom/igexin/download/DownloadService;

    invoke-static {v2}, Lcom/igexin/download/DownloadService;->f(Lcom/igexin/download/DownloadService;)Z

    move-result v2

    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igexin/download/f;->a:Lcom/igexin/download/DownloadService;

    invoke-static {v2, v4, v5}, Lcom/igexin/download/DownloadService;->a(Lcom/igexin/download/DownloadService;Landroid/database/Cursor;I)Z

    move-result v2

    if-nez v2, :cond_21

    :cond_9
    const/4 v10, 0x1

    const/4 v11, 0x1

    move v3, v10

    :goto_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igexin/download/f;->a:Lcom/igexin/download/DownloadService;

    invoke-static {v2, v5}, Lcom/igexin/download/DownloadService;->c(Lcom/igexin/download/DownloadService;I)Z

    move-result v2

    if-eqz v2, :cond_a

    const/4 v11, 0x1

    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igexin/download/f;->a:Lcom/igexin/download/DownloadService;

    invoke-static {v2, v5, v8, v9}, Lcom/igexin/download/DownloadService;->a(Lcom/igexin/download/DownloadService;IJ)J
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result-wide v6

    const-wide/16 v18, 0x0

    cmp-long v2, v6, v18

    if-nez v2, :cond_b

    const/4 v11, 0x1

    move-wide v6, v12

    move v10, v11

    :goto_7
    add-int/lit8 v5, v5, 0x1

    :try_start_6
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    invoke-interface {v4}, Landroid/database/Cursor;->isAfterLast()Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-result v2

    :goto_8
    move-wide v12, v6

    move v11, v10

    move v10, v3

    move v3, v2

    goto/16 :goto_3

    :cond_b
    const-wide/16 v18, 0x0

    cmp-long v2, v6, v18

    if-lez v2, :cond_20

    cmp-long v2, v6, v12

    if-gez v2, :cond_20

    move v10, v11

    goto :goto_7

    :cond_c
    :try_start_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igexin/download/f;->a:Lcom/igexin/download/DownloadService;

    invoke-static {v2}, Lcom/igexin/download/DownloadService;->e(Lcom/igexin/download/DownloadService;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/igexin/download/DownloadInfo;

    iget v2, v2, Lcom/igexin/download/DownloadInfo;->mId:I

    if-ge v2, v6, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igexin/download/f;->a:Lcom/igexin/download/DownloadService;

    invoke-static {v2, v5}, Lcom/igexin/download/DownloadService;->b(Lcom/igexin/download/DownloadService;I)Z

    move-result v2

    if-eqz v2, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igexin/download/f;->a:Lcom/igexin/download/DownloadService;

    invoke-static {v2}, Lcom/igexin/download/DownloadService;->f(Lcom/igexin/download/DownloadService;)Z

    move-result v2

    if-eqz v2, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igexin/download/f;->a:Lcom/igexin/download/DownloadService;

    const/4 v6, 0x0

    invoke-static {v2, v6, v5}, Lcom/igexin/download/DownloadService;->a(Lcom/igexin/download/DownloadService;Landroid/database/Cursor;I)Z

    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igexin/download/f;->a:Lcom/igexin/download/DownloadService;

    invoke-static {v2, v5}, Lcom/igexin/download/DownloadService;->a(Lcom/igexin/download/DownloadService;I)V

    move v2, v3

    move-wide v6, v12

    move v3, v10

    move v10, v11

    goto :goto_8

    :cond_e
    if-ne v2, v6, :cond_12

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/igexin/download/f;->a:Lcom/igexin/download/DownloadService;

    move v6, v14

    move v7, v15

    invoke-static/range {v3 .. v9}, Lcom/igexin/download/DownloadService;->b(Lcom/igexin/download/DownloadService;Landroid/database/Cursor;IZZJ)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igexin/download/f;->a:Lcom/igexin/download/DownloadService;

    invoke-static {v2, v5}, Lcom/igexin/download/DownloadService;->b(Lcom/igexin/download/DownloadService;I)Z

    move-result v2

    if-eqz v2, :cond_1f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igexin/download/f;->a:Lcom/igexin/download/DownloadService;

    invoke-static {v2}, Lcom/igexin/download/DownloadService;->f(Lcom/igexin/download/DownloadService;)Z

    move-result v2

    if-eqz v2, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igexin/download/f;->a:Lcom/igexin/download/DownloadService;

    invoke-static {v2, v4, v5}, Lcom/igexin/download/DownloadService;->a(Lcom/igexin/download/DownloadService;Landroid/database/Cursor;I)Z

    move-result v2

    if-nez v2, :cond_1f

    :cond_f
    const/4 v10, 0x1

    const/4 v11, 0x1

    move v3, v10

    :goto_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igexin/download/f;->a:Lcom/igexin/download/DownloadService;

    invoke-static {v2, v5}, Lcom/igexin/download/DownloadService;->c(Lcom/igexin/download/DownloadService;I)Z

    move-result v2

    if-eqz v2, :cond_10

    const/4 v11, 0x1

    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igexin/download/f;->a:Lcom/igexin/download/DownloadService;

    invoke-static {v2, v5, v8, v9}, Lcom/igexin/download/DownloadService;->a(Lcom/igexin/download/DownloadService;IJ)J
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-result-wide v6

    const-wide/16 v18, 0x0

    cmp-long v2, v6, v18

    if-nez v2, :cond_11

    const/4 v11, 0x1

    move-wide v6, v12

    move v10, v11

    :goto_a
    add-int/lit8 v5, v5, 0x1

    :try_start_8
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    invoke-interface {v4}, Landroid/database/Cursor;->isAfterLast()Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move-result v2

    goto/16 :goto_8

    :cond_11
    const-wide/16 v18, 0x0

    cmp-long v2, v6, v18

    if-lez v2, :cond_1e

    cmp-long v2, v6, v12

    if-gez v2, :cond_1e

    move v10, v11

    goto :goto_a

    :cond_12
    :try_start_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/igexin/download/f;->a:Lcom/igexin/download/DownloadService;

    move v6, v14

    move v7, v15

    invoke-static/range {v3 .. v9}, Lcom/igexin/download/DownloadService;->a(Lcom/igexin/download/DownloadService;Landroid/database/Cursor;IZZJ)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igexin/download/f;->a:Lcom/igexin/download/DownloadService;

    invoke-static {v2, v5}, Lcom/igexin/download/DownloadService;->b(Lcom/igexin/download/DownloadService;I)Z

    move-result v2

    if-eqz v2, :cond_1d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igexin/download/f;->a:Lcom/igexin/download/DownloadService;

    invoke-static {v2}, Lcom/igexin/download/DownloadService;->f(Lcom/igexin/download/DownloadService;)Z

    move-result v2

    if-eqz v2, :cond_13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igexin/download/f;->a:Lcom/igexin/download/DownloadService;

    invoke-static {v2, v4, v5}, Lcom/igexin/download/DownloadService;->a(Lcom/igexin/download/DownloadService;Landroid/database/Cursor;I)Z

    move-result v2

    if-nez v2, :cond_1d

    :cond_13
    const/4 v10, 0x1

    const/4 v11, 0x1

    move v3, v10

    :goto_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igexin/download/f;->a:Lcom/igexin/download/DownloadService;

    invoke-static {v2, v5}, Lcom/igexin/download/DownloadService;->c(Lcom/igexin/download/DownloadService;I)Z

    move-result v2

    if-eqz v2, :cond_14

    const/4 v11, 0x1

    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igexin/download/f;->a:Lcom/igexin/download/DownloadService;

    invoke-static {v2, v5, v8, v9}, Lcom/igexin/download/DownloadService;->a(Lcom/igexin/download/DownloadService;IJ)J
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    move-result-wide v6

    const-wide/16 v18, 0x0

    cmp-long v2, v6, v18

    if-nez v2, :cond_15

    const/4 v11, 0x1

    move-wide v6, v12

    move v10, v11

    :goto_c
    add-int/lit8 v5, v5, 0x1

    :try_start_a
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    invoke-interface {v4}, Landroid/database/Cursor;->isAfterLast()Z
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    move-result v2

    goto/16 :goto_8

    :cond_15
    const-wide/16 v18, 0x0

    cmp-long v2, v6, v18

    if-lez v2, :cond_1c

    cmp-long v2, v6, v12

    if-gez v2, :cond_1c

    move v10, v11

    goto :goto_c

    :cond_16
    :try_start_b
    sget-object v2, Lcom/igexin/download/SdkDownLoader;->c:Lcom/igexin/download/SdkDownLoader;

    if-eqz v2, :cond_17

    sget-object v2, Lcom/igexin/download/SdkDownLoader;->c:Lcom/igexin/download/SdkDownLoader;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/igexin/download/f;->a:Lcom/igexin/download/DownloadService;

    invoke-static {v3}, Lcom/igexin/download/DownloadService;->e(Lcom/igexin/download/DownloadService;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/igexin/download/SdkDownLoader;->a(Ljava/util/Collection;)V

    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    const/4 v3, 0x2

    iput v3, v2, Landroid/os/Message;->what:I

    sget-object v3, Lcom/igexin/download/SdkDownLoader;->c:Lcom/igexin/download/SdkDownLoader;

    iget-object v3, v3, Lcom/igexin/download/SdkDownLoader;->d:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_17
    if-eqz v10, :cond_19

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igexin/download/f;->a:Lcom/igexin/download/DownloadService;

    invoke-static {v2}, Lcom/igexin/download/DownloadService;->g(Lcom/igexin/download/DownloadService;)Z

    move-result v2

    if-nez v2, :cond_18

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.android.providers.media"

    const-string v5, "com.android.providers.media.MediaScannerService"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/igexin/download/f;->a:Lcom/igexin/download/DownloadService;

    const/4 v5, 0x1

    invoke-static {v3, v5}, Lcom/igexin/download/DownloadService;->a(Lcom/igexin/download/DownloadService;Z)Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/igexin/download/f;->a:Lcom/igexin/download/DownloadService;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/igexin/download/f;->a:Lcom/igexin/download/DownloadService;

    invoke-static {v5}, Lcom/igexin/download/DownloadService;->h(Lcom/igexin/download/DownloadService;)Lcom/igexin/download/e;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v3, v2, v5, v6}, Lcom/igexin/download/DownloadService;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :cond_18
    :goto_d
    if-eqz v4, :cond_1b

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    move-wide v2, v12

    move v4, v11

    goto/16 :goto_5

    :cond_19
    :try_start_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igexin/download/f;->a:Lcom/igexin/download/DownloadService;

    invoke-static {v2}, Lcom/igexin/download/DownloadService;->h(Lcom/igexin/download/DownloadService;)Lcom/igexin/download/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/igexin/download/e;->a()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    goto :goto_d

    :catchall_1
    move-exception v2

    :goto_e
    if-eqz v4, :cond_1a

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_1a
    throw v2

    :catchall_2
    move-exception v2

    move-object v4, v13

    goto :goto_e

    :catch_1
    move-exception v2

    move-object v4, v13

    move-wide/from16 v20, v10

    move v11, v12

    move-wide/from16 v12, v20

    goto/16 :goto_4

    :catch_2
    move-exception v2

    move-wide/from16 v20, v10

    move v11, v12

    move-wide/from16 v12, v20

    goto/16 :goto_4

    :catch_3
    move-exception v2

    move-wide v12, v6

    move v11, v10

    goto/16 :goto_4

    :cond_1b
    move-wide v2, v12

    move v4, v11

    goto/16 :goto_5

    :cond_1c
    move-wide v6, v12

    move v10, v11

    goto/16 :goto_c

    :cond_1d
    move v3, v10

    goto/16 :goto_b

    :cond_1e
    move-wide v6, v12

    move v10, v11

    goto/16 :goto_a

    :cond_1f
    move v3, v10

    goto/16 :goto_9

    :cond_20
    move-wide v6, v12

    move v10, v11

    goto/16 :goto_7

    :cond_21
    move v3, v10

    goto/16 :goto_6
.end method
