.class public Lcom/igexin/getuiext/service/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/igexin/download/IDownloadCallback;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private c:Landroid/app/NotificationManager;

.field private d:Landroid/util/SparseArray;

.field private e:Landroid/util/SparseArray;

.field private f:Landroid/util/SparseArray;

.field private g:Landroid/util/SparseArray;

.field private h:Ljava/util/Timer;

.field private i:Z

.field private j:Lcom/igexin/getuiext/ui/f;

.field private k:Lcom/igexin/getuiext/service/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/igexin/getuiext/service/d;->d:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/igexin/getuiext/service/d;->e:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/igexin/getuiext/service/d;->f:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/igexin/getuiext/service/d;->g:Landroid/util/SparseArray;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/igexin/getuiext/service/d;->h:Ljava/util/Timer;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/igexin/getuiext/service/d;->i:Z

    iput-object p1, p0, Lcom/igexin/getuiext/service/d;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/igexin/getuiext/service/d;->b:Ljava/lang/String;

    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/igexin/getuiext/service/d;->c:Landroid/app/NotificationManager;

    invoke-static {p1}, Lcom/igexin/getuiext/ui/f;->a(Landroid/content/Context;)Lcom/igexin/getuiext/ui/f;

    move-result-object v0

    iput-object v0, p0, Lcom/igexin/getuiext/service/d;->j:Lcom/igexin/getuiext/ui/f;

    invoke-static {}, Lcom/igexin/getuiext/service/c;->a()Lcom/igexin/getuiext/service/c;

    move-result-object v0

    iput-object v0, p0, Lcom/igexin/getuiext/service/d;->k:Lcom/igexin/getuiext/service/c;

    return-void
.end method

.method private a(I)I
    .locals 1

    shl-int/lit8 v0, p1, 0xb

    return v0
.end method

.method private a(Lcom/igexin/download/DownloadInfo;Landroid/app/Notification;Lcom/igexin/getuiext/data/a/d;)Landroid/app/Notification;
    .locals 4

    iget-boolean v0, p1, Lcom/igexin/download/DownloadInfo;->mNotice:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/igexin/download/DownloadInfo;->mNotice:Z

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.igexin.increment"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "action"

    const-string v2, "install"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "filepath"

    iget-object v2, p1, Lcom/igexin/download/DownloadInfo;->mFileName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "pkgname"

    iget-object v2, p3, Lcom/igexin/getuiext/data/a/d;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "verifyCode"

    sget v2, Lcom/igexin/getuiext/data/Consts;->verifyCode:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/Random;->setSeed(J)V

    iget-object v2, p0, Lcom/igexin/getuiext/service/d;->a:Landroid/content/Context;

    const/16 v3, 0x3e8

    invoke-virtual {v1, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v2, v1, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p2, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.igexin.getuiext.ui.upgrade_progress"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "download_id"

    iget v2, p1, Lcom/igexin/download/DownloadInfo;->mId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "file_path"

    iget-object v2, p1, Lcom/igexin/download/DownloadInfo;->mFileName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "progress"

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/igexin/getuiext/service/d;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-object p2
.end method

.method static synthetic a(Lcom/igexin/getuiext/service/d;)Landroid/util/SparseArray;
    .locals 1

    iget-object v0, p0, Lcom/igexin/getuiext/service/d;->e:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic a(Lcom/igexin/getuiext/service/d;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0

    iput-object p1, p0, Lcom/igexin/getuiext/service/d;->h:Ljava/util/Timer;

    return-object p1
.end method

.method private a(Lcom/igexin/download/DownloadInfo;)V
    .locals 21

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/igexin/getuiext/service/d;->d:Landroid/util/SparseArray;

    move-object/from16 v0, p1

    iget v5, v0, Lcom/igexin/download/DownloadInfo;->mId:I

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/Notification;

    if-eqz v4, :cond_0

    iget-object v5, v4, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    if-nez v5, :cond_e

    :cond_0
    new-instance v4, Landroid/app/Notification;

    invoke-direct {v4}, Landroid/app/Notification;-><init>()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/igexin/getuiext/service/d;->j:Lcom/igexin/getuiext/ui/f;

    const-string v6, "notification_inc"

    const-string v7, "layout"

    invoke-virtual {v5, v6, v7}, Lcom/igexin/getuiext/ui/f;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    new-instance v6, Landroid/widget/RemoteViews;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/igexin/getuiext/service/d;->a:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v5}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iput-object v6, v4, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    new-instance v5, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/igexin/getuiext/service/d;->a:Landroid/content/Context;

    const-class v7, Lcom/igexin/getuiext/activity/GetuiExtActivity;

    invoke-direct {v5, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/igexin/getuiext/service/d;->a:Landroid/content/Context;

    const/4 v7, 0x0

    const/high16 v8, 0x8000000

    invoke-static {v6, v7, v5, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    iput-object v5, v4, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/igexin/getuiext/service/d;->d:Landroid/util/SparseArray;

    move-object/from16 v0, p1

    iget v6, v0, Lcom/igexin/download/DownloadInfo;->mId:I

    invoke-virtual {v5, v6, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object v6, v4

    :goto_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/igexin/getuiext/service/d;->g:Landroid/util/SparseArray;

    move-object/from16 v0, p1

    iget v5, v0, Lcom/igexin/download/DownloadInfo;->mId:I

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/igexin/getuiext/data/a/d;

    if-nez v4, :cond_3

    invoke-static {}, Lcom/igexin/getuiext/b/c;->d()Lcom/igexin/getuiext/b/c;

    move-result-object v4

    invoke-virtual {v4}, Lcom/igexin/getuiext/b/c;->c()Lcom/igexin/getuiext/b/a;

    move-result-object v4

    move-object/from16 v0, p1

    iget v5, v0, Lcom/igexin/download/DownloadInfo;->mId:I

    invoke-virtual {v4, v5}, Lcom/igexin/getuiext/b/a;->a(I)Lcom/igexin/getuiext/data/a/a;

    move-result-object v4

    check-cast v4, Lcom/igexin/getuiext/data/a/d;

    if-nez v4, :cond_2

    :cond_1
    :goto_1
    return-void

    :cond_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/igexin/getuiext/service/d;->g:Landroid/util/SparseArray;

    move-object/from16 v0, p1

    iget v7, v0, Lcom/igexin/download/DownloadInfo;->mId:I

    invoke-virtual {v5, v7, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_3
    move-object v5, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/igexin/getuiext/service/d;->j:Lcom/igexin/getuiext/ui/f;

    const-string v7, "notification_right"

    const-string v8, "id"

    invoke-virtual {v4, v7, v8}, Lcom/igexin/getuiext/ui/f;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/igexin/getuiext/service/d;->j:Lcom/igexin/getuiext/ui/f;

    const-string v8, "download_layout"

    const-string v9, "id"

    invoke-virtual {v7, v8, v9}, Lcom/igexin/getuiext/ui/f;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/igexin/getuiext/service/d;->j:Lcom/igexin/getuiext/ui/f;

    const-string v9, "notification_icon"

    const-string v10, "id"

    invoke-virtual {v8, v9, v10}, Lcom/igexin/getuiext/ui/f;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/igexin/getuiext/service/d;->j:Lcom/igexin/getuiext/ui/f;

    const-string v10, "download_app_name"

    const-string v11, "id"

    invoke-virtual {v9, v10, v11}, Lcom/igexin/getuiext/ui/f;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/igexin/getuiext/service/d;->j:Lcom/igexin/getuiext/ui/f;

    const-string v11, "download_app_version"

    const-string v12, "id"

    invoke-virtual {v10, v11, v12}, Lcom/igexin/getuiext/ui/f;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/igexin/getuiext/service/d;->j:Lcom/igexin/getuiext/ui/f;

    const-string v12, "downlaod_progress_horizontal"

    const-string v13, "id"

    invoke-virtual {v11, v12, v13}, Lcom/igexin/getuiext/ui/f;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/igexin/getuiext/service/d;->j:Lcom/igexin/getuiext/ui/f;

    const-string v13, "setup_layout"

    const-string v14, "id"

    invoke-virtual {v12, v13, v14}, Lcom/igexin/getuiext/ui/f;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/igexin/getuiext/service/d;->j:Lcom/igexin/getuiext/ui/f;

    const-string v14, "setup_icon"

    const-string v15, "id"

    invoke-virtual {v13, v14, v15}, Lcom/igexin/getuiext/ui/f;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/igexin/getuiext/service/d;->j:Lcom/igexin/getuiext/ui/f;

    const-string v15, "setup_app_name"

    const-string v16, "id"

    invoke-virtual/range {v14 .. v16}, Lcom/igexin/getuiext/ui/f;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/igexin/getuiext/service/d;->j:Lcom/igexin/getuiext/ui/f;

    const-string v16, "setup_app_version"

    const-string v17, "id"

    invoke-virtual/range {v15 .. v17}, Lcom/igexin/getuiext/ui/f;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/igexin/getuiext/service/d;->j:Lcom/igexin/getuiext/ui/f;

    move-object/from16 v16, v0

    const-string v17, "setup_message"

    const-string v18, "id"

    invoke-virtual/range {v16 .. v18}, Lcom/igexin/getuiext/ui/f;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/igexin/getuiext/service/d;->j:Lcom/igexin/getuiext/ui/f;

    move-object/from16 v17, v0

    const-string v18, "setup_text"

    const-string v19, "id"

    invoke-virtual/range {v17 .. v19}, Lcom/igexin/getuiext/ui/f;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/igexin/getuiext/service/d;->k:Lcom/igexin/getuiext/service/c;

    move-object/from16 v18, v0

    iget-object v0, v5, Lcom/igexin/getuiext/data/a/d;->b:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/igexin/getuiext/service/c;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v18

    if-nez v18, :cond_6

    iget-object v0, v5, Lcom/igexin/getuiext/data/a/d;->f:Ljava/lang/String;

    move-object/from16 v18, v0

    iget-object v0, v5, Lcom/igexin/getuiext/data/a/d;->b:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/igexin/getuiext/service/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v6, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/igexin/getuiext/service/d;->a:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v19

    move-object/from16 v0, v19

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->icon:I

    move/from16 v19, v0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v8, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    :cond_4
    :goto_2
    iget-object v8, v6, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    iget-object v0, v5, Lcom/igexin/getuiext/data/a/d;->a:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v8, v9, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    iget-object v8, v6, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    iget-object v9, v5, Lcom/igexin/getuiext/data/a/d;->c:Ljava/lang/String;

    invoke-virtual {v8, v10, v9}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    move-object/from16 v0, p1

    iget v8, v0, Lcom/igexin/download/DownloadInfo;->mStatus:I

    sparse-switch v8, :sswitch_data_0

    move-object/from16 v0, p1

    iget v4, v0, Lcom/igexin/download/DownloadInfo;->mStatus:I

    const/16 v7, 0x190

    if-lt v4, v7, :cond_1

    move-object/from16 v0, p1

    iget v4, v0, Lcom/igexin/download/DownloadInfo;->mStatus:I

    const/16 v7, 0x258

    if-ge v4, v7, :cond_1

    iget-object v4, v6, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    if-eqz v4, :cond_5

    const/16 v4, 0x10

    iput v4, v6, Landroid/app/Notification;->flags:I

    const v4, 0x108008a

    iput v4, v6, Landroid/app/Notification;->icon:I

    const/4 v4, 0x0

    iput-object v4, v6, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/igexin/getuiext/service/d;->a:Landroid/content/Context;

    iget-object v5, v5, Lcom/igexin/getuiext/data/a/d;->a:Ljava/lang/String;

    const-string v7, "\u4e0b\u8f7d\u5931\u8d25\uff01"

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/igexin/getuiext/service/d;->a:Landroid/content/Context;

    invoke-static {}, Lcom/igexin/getuiext/util/h;->c()I

    move-result v9

    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    const/high16 v11, 0x40000000    # 2.0f

    invoke-static {v8, v9, v10, v11}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    invoke-virtual {v6, v4, v5, v7, v8}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/igexin/getuiext/service/d;->e:Landroid/util/SparseArray;

    move-object/from16 v0, p1

    iget v5, v0, Lcom/igexin/download/DownloadInfo;->mId:I

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->remove(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/igexin/getuiext/service/d;->f:Landroid/util/SparseArray;

    move-object/from16 v0, p1

    iget v5, v0, Lcom/igexin/download/DownloadInfo;->mId:I

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->remove(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/igexin/getuiext/service/d;->g:Landroid/util/SparseArray;

    move-object/from16 v0, p1

    iget v5, v0, Lcom/igexin/download/DownloadInfo;->mId:I

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->remove(I)V

    invoke-static {}, Lcom/igexin/getuiext/b/c;->d()Lcom/igexin/getuiext/b/c;

    move-result-object v4

    invoke-virtual {v4}, Lcom/igexin/getuiext/b/c;->c()Lcom/igexin/getuiext/b/a;

    move-result-object v4

    move-object/from16 v0, p1

    iget v5, v0, Lcom/igexin/download/DownloadInfo;->mId:I

    invoke-virtual {v4, v5}, Lcom/igexin/getuiext/b/a;->b(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/igexin/getuiext/service/d;->a:Landroid/content/Context;

    invoke-static {v4}, Lcom/igexin/download/SdkDownLoader;->getInstantiate(Landroid/content/Context;)Lcom/igexin/download/SdkDownLoader;

    move-result-object v4

    move-object/from16 v0, p1

    iget v5, v0, Lcom/igexin/download/DownloadInfo;->mId:I

    invoke-virtual {v4, v5}, Lcom/igexin/download/SdkDownLoader;->deleteTask(I)Z

    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.igexin.getuiext.ui.upgrade_progress"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v5, "download_id"

    move-object/from16 v0, p1

    iget v7, v0, Lcom/igexin/download/DownloadInfo;->mId:I

    invoke-virtual {v4, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v5, "file_path"

    const-string v7, ""

    invoke-virtual {v4, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "progress"

    const/4 v7, -0x1

    invoke-virtual {v4, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/igexin/getuiext/service/d;->a:Landroid/content/Context;

    invoke-virtual {v5, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/igexin/getuiext/service/d;->d:Landroid/util/SparseArray;

    move-object/from16 v0, p1

    iget v5, v0, Lcom/igexin/download/DownloadInfo;->mId:I

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/igexin/getuiext/service/d;->c:Landroid/app/NotificationManager;

    move-object/from16 v0, p1

    iget v5, v0, Lcom/igexin/download/DownloadInfo;->mId:I

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/igexin/getuiext/service/d;->a(I)I

    move-result v5

    invoke-virtual {v4, v5, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_1

    :cond_6
    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v19

    const/16 v20, 0x64

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_7

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v19

    const/16 v20, 0x64

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_4

    :cond_7
    iget-object v0, v6, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v8, v1}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    goto/16 :goto_2

    :sswitch_0
    iget-object v8, v6, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const/16 v9, 0x8

    invoke-virtual {v8, v4, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    iget-object v4, v6, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    move-object/from16 v0, p1

    iget-boolean v4, v0, Lcom/igexin/download/DownloadInfo;->mNotify:Z

    if-eqz v4, :cond_b

    const/4 v4, 0x0

    move-object/from16 v0, p1

    iput-boolean v4, v0, Lcom/igexin/download/DownloadInfo;->mNotify:Z

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/igexin/getuiext/service/d;->a:Landroid/content/Context;

    const-string v7, "audio"

    invoke-virtual {v4, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/AudioManager;

    invoke-virtual {v4}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v4

    const/4 v7, 0x1

    if-ne v4, v7, :cond_a

    const/4 v4, 0x0

    iput-object v4, v6, Landroid/app/Notification;->sound:Landroid/net/Uri;

    iget v4, v6, Landroid/app/Notification;->defaults:I

    or-int/lit8 v4, v4, 0x2

    iput v4, v6, Landroid/app/Notification;->defaults:I

    :cond_8
    :goto_3
    const v4, 0x1080081

    iput v4, v6, Landroid/app/Notification;->icon:I

    const-string v4, "\u6b63\u5728\u4e0b\u8f7d"

    iput-object v4, v6, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    iget v4, v6, Landroid/app/Notification;->flags:I

    or-int/lit8 v4, v4, 0x20

    iput v4, v6, Landroid/app/Notification;->flags:I

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/igexin/getuiext/service/d;->a:Landroid/content/Context;

    const/4 v8, 0x0

    const/high16 v9, 0x8000000

    invoke-static {v7, v8, v4, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    iput-object v4, v6, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    const/4 v7, 0x0

    instance-of v4, v5, Lcom/igexin/getuiext/data/a/e;

    if-eqz v4, :cond_c

    move-object v4, v5

    check-cast v4, Lcom/igexin/getuiext/data/a/e;

    iget-object v4, v4, Lcom/igexin/getuiext/data/a/e;->n:Lcom/igexin/getuiext/data/a/f;

    sget-object v8, Lcom/igexin/getuiext/service/f;->a:[I

    invoke-virtual {v4}, Lcom/igexin/getuiext/data/a/f;->ordinal()I

    move-result v4

    aget v4, v8, v4

    packed-switch v4, :pswitch_data_0

    :cond_9
    move v4, v7

    :goto_4
    iget-object v5, v6, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const/16 v7, 0x64

    const/4 v8, 0x0

    invoke-virtual {v5, v11, v7, v4, v8}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    new-instance v5, Landroid/content/Intent;

    const-string v7, "com.igexin.getuiext.ui.upgrade_progress"

    invoke-direct {v5, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v7, "download_id"

    move-object/from16 v0, p1

    iget v8, v0, Lcom/igexin/download/DownloadInfo;->mId:I

    invoke-virtual {v5, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v7, "file_path"

    const-string v8, ""

    invoke-virtual {v5, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v7, "progress"

    invoke-virtual {v5, v7, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/igexin/getuiext/service/d;->a:Landroid/content/Context;

    invoke-virtual {v4, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/igexin/getuiext/service/d;->d:Landroid/util/SparseArray;

    move-object/from16 v0, p1

    iget v5, v0, Lcom/igexin/download/DownloadInfo;->mId:I

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/igexin/getuiext/service/d;->c:Landroid/app/NotificationManager;

    move-object/from16 v0, p1

    iget v5, v0, Lcom/igexin/download/DownloadInfo;->mId:I

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/igexin/getuiext/service/d;->a(I)I

    move-result v5

    invoke-virtual {v4, v5, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v4

    goto/16 :goto_1

    :cond_a
    const/4 v7, 0x2

    if-ne v4, v7, :cond_8

    iget v4, v6, Landroid/app/Notification;->defaults:I

    or-int/lit8 v4, v4, 0x2

    iput v4, v6, Landroid/app/Notification;->defaults:I

    iget v4, v6, Landroid/app/Notification;->defaults:I

    or-int/lit8 v4, v4, 0x1

    iput v4, v6, Landroid/app/Notification;->defaults:I

    goto/16 :goto_3

    :cond_b
    const/4 v4, 0x0

    iput v4, v6, Landroid/app/Notification;->defaults:I

    const/4 v4, 0x0

    iput-object v4, v6, Landroid/app/Notification;->sound:Landroid/net/Uri;

    const/4 v4, 0x0

    iput-object v4, v6, Landroid/app/Notification;->vibrate:[J

    goto/16 :goto_3

    :pswitch_0
    iget-wide v8, v5, Lcom/igexin/getuiext/data/a/d;->i:J

    check-cast v5, Lcom/igexin/getuiext/data/a/e;

    iget-wide v4, v5, Lcom/igexin/getuiext/data/a/e;->o:J

    const-wide/16 v12, 0x0

    cmp-long v10, v8, v12

    if-eqz v10, :cond_9

    move-object/from16 v0, p1

    iget v7, v0, Lcom/igexin/download/DownloadInfo;->mCurrentBytes:I

    int-to-long v12, v7

    sub-long v4, v8, v4

    add-long/2addr v4, v12

    const-wide/16 v12, 0x64

    mul-long/2addr v4, v12

    div-long/2addr v4, v8

    long-to-int v4, v4

    goto/16 :goto_4

    :pswitch_1
    move-object/from16 v0, p1

    iget v4, v0, Lcom/igexin/download/DownloadInfo;->mTotalBytes:I

    if-eqz v4, :cond_9

    move-object/from16 v0, p1

    iget v4, v0, Lcom/igexin/download/DownloadInfo;->mCurrentBytes:I

    int-to-long v4, v4

    const-wide/16 v8, 0x64

    mul-long/2addr v4, v8

    move-object/from16 v0, p1

    iget v7, v0, Lcom/igexin/download/DownloadInfo;->mTotalBytes:I

    int-to-long v8, v7

    div-long/2addr v4, v8

    long-to-int v4, v4

    goto/16 :goto_4

    :cond_c
    move-object/from16 v0, p1

    iget v4, v0, Lcom/igexin/download/DownloadInfo;->mTotalBytes:I

    if-eqz v4, :cond_9

    move-object/from16 v0, p1

    iget v4, v0, Lcom/igexin/download/DownloadInfo;->mCurrentBytes:I

    int-to-long v4, v4

    const-wide/16 v8, 0x64

    mul-long/2addr v4, v8

    move-object/from16 v0, p1

    iget v7, v0, Lcom/igexin/download/DownloadInfo;->mTotalBytes:I

    int-to-long v8, v7

    div-long/2addr v4, v8

    long-to-int v4, v4

    goto/16 :goto_4

    :sswitch_1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v6, v5}, Lcom/igexin/getuiext/service/d;->a(Lcom/igexin/download/DownloadInfo;Landroid/app/Notification;Lcom/igexin/getuiext/data/a/d;)Landroid/app/Notification;

    move-result-object v6

    const/16 v4, 0x10

    iput v4, v6, Landroid/app/Notification;->flags:I

    const v4, 0x1080082

    iput v4, v6, Landroid/app/Notification;->icon:I

    const-string v4, "\u4e0b\u8f7d\u6210\u529f"

    iput-object v4, v6, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    iget-object v4, v6, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const/16 v8, 0x8

    invoke-virtual {v4, v7, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    iget-object v4, v6, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const/4 v7, 0x0

    invoke-virtual {v4, v12, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    iget-object v4, v6, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/igexin/getuiext/service/d;->j:Lcom/igexin/getuiext/ui/f;

    const-string v8, "inc_setup.png"

    invoke-virtual {v7, v8}, Lcom/igexin/getuiext/ui/f;->c(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v4, v13, v7}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    iget-object v4, v6, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    iget-object v7, v5, Lcom/igexin/getuiext/data/a/d;->a:Ljava/lang/String;

    invoke-virtual {v4, v14, v7}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    iget-object v4, v6, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    iget-object v5, v5, Lcom/igexin/getuiext/data/a/d;->c:Ljava/lang/String;

    invoke-virtual {v4, v15, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    iget-object v4, v6, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const-string v5, "\u4e0b\u8f7d\u5b8c\u6210"

    move/from16 v0, v16

    invoke-virtual {v4, v0, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    iget-object v4, v6, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const-string v5, "\u5b89\u88c5"

    move/from16 v0, v17

    invoke-virtual {v4, v0, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/igexin/getuiext/service/d;->a:Landroid/content/Context;

    invoke-static {v4}, Lcom/igexin/download/SdkDownLoader;->getInstantiate(Landroid/content/Context;)Lcom/igexin/download/SdkDownLoader;

    move-result-object v4

    move-object/from16 v0, p1

    iget v5, v0, Lcom/igexin/download/DownloadInfo;->mId:I

    invoke-virtual {v4, v5}, Lcom/igexin/download/SdkDownLoader;->deleteTask(I)Z

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/igexin/getuiext/service/d;->f:Landroid/util/SparseArray;

    move-object/from16 v0, p1

    iget v5, v0, Lcom/igexin/download/DownloadInfo;->mId:I

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->remove(I)V

    invoke-static {}, Lcom/igexin/getuiext/b/c;->d()Lcom/igexin/getuiext/b/c;

    move-result-object v4

    invoke-virtual {v4}, Lcom/igexin/getuiext/b/c;->c()Lcom/igexin/getuiext/b/a;

    move-result-object v4

    move-object/from16 v0, p1

    iget v5, v0, Lcom/igexin/download/DownloadInfo;->mId:I

    invoke-virtual {v4, v5}, Lcom/igexin/getuiext/b/a;->b(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/igexin/getuiext/service/d;->g:Landroid/util/SparseArray;

    move-object/from16 v0, p1

    iget v5, v0, Lcom/igexin/download/DownloadInfo;->mId:I

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/igexin/getuiext/data/a/a;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/igexin/getuiext/service/d;->g:Landroid/util/SparseArray;

    move-object/from16 v0, p1

    iget v7, v0, Lcom/igexin/download/DownloadInfo;->mId:I

    invoke-virtual {v5, v7}, Landroid/util/SparseArray;->remove(I)V

    if-eqz v4, :cond_d

    iget-object v5, v4, Lcom/igexin/getuiext/data/a/a;->b:Ljava/lang/String;

    if-eqz v5, :cond_d

    iget-object v5, v4, Lcom/igexin/getuiext/data/a/a;->b:Ljava/lang/String;

    const-string v7, ""

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_d

    iget-object v4, v4, Lcom/igexin/getuiext/data/a/a;->b:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/igexin/getuiext/service/d;->a(Ljava/lang/String;)V

    :cond_d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/igexin/getuiext/service/d;->d:Landroid/util/SparseArray;

    move-object/from16 v0, p1

    iget v5, v0, Lcom/igexin/download/DownloadInfo;->mId:I

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/igexin/getuiext/service/d;->c:Landroid/app/NotificationManager;

    move-object/from16 v0, p1

    iget v5, v0, Lcom/igexin/download/DownloadInfo;->mId:I

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/igexin/getuiext/service/d;->a(I)I

    move-result v5

    invoke-virtual {v4, v5, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_1

    :sswitch_2
    move-object/from16 v0, p1

    iget v4, v0, Lcom/igexin/download/DownloadInfo;->mControl:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/igexin/getuiext/service/d;->c:Landroid/app/NotificationManager;

    move-object/from16 v0, p1

    iget v5, v0, Lcom/igexin/download/DownloadInfo;->mId:I

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/igexin/getuiext/service/d;->a(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/app/NotificationManager;->cancel(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/igexin/getuiext/service/d;->d:Landroid/util/SparseArray;

    move-object/from16 v0, p1

    iget v5, v0, Lcom/igexin/download/DownloadInfo;->mId:I

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->remove(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/igexin/getuiext/service/d;->f:Landroid/util/SparseArray;

    move-object/from16 v0, p1

    iget v5, v0, Lcom/igexin/download/DownloadInfo;->mId:I

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->remove(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/igexin/getuiext/service/d;->e:Landroid/util/SparseArray;

    move-object/from16 v0, p1

    iget v5, v0, Lcom/igexin/download/DownloadInfo;->mId:I

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->remove(I)V

    const/4 v4, 0x1

    move-object/from16 v0, p1

    iput-boolean v4, v0, Lcom/igexin/download/DownloadInfo;->mNotify:Z

    goto/16 :goto_1

    :cond_e
    move-object v6, v4

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0xc0 -> :sswitch_0
        0xc1 -> :sswitch_2
        0xc8 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/igexin/getuiext/service/c;->a()Lcom/igexin/getuiext/service/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/igexin/getuiext/service/c;->b(Ljava/lang/String;)Lcom/igexin/getuiext/data/a/d;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/igexin/getuiext/ui/promotion/f;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/igexin/getuiext/service/d;->a:Landroid/content/Context;

    const/4 v2, 0x3

    invoke-static {v1, v0, v2}, Lcom/igexin/getuiext/service/a;->a(Landroid/content/Context;Lcom/igexin/getuiext/data/a/a;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    instance-of v1, v0, Lcom/igexin/getuiext/data/a/e;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/igexin/getuiext/service/d;->a:Landroid/content/Context;

    const/4 v2, 0x4

    invoke-static {v1, v0, v2}, Lcom/igexin/getuiext/service/a;->a(Landroid/content/Context;Lcom/igexin/getuiext/data/a/a;I)V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/igexin/getuiext/service/e;

    invoke-direct {v0, p0}, Lcom/igexin/getuiext/service/e;-><init>(Lcom/igexin/getuiext/service/d;)V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-virtual {v0, v1}, Lcom/igexin/getuiext/service/e;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method static synthetic b(Lcom/igexin/getuiext/service/d;)Ljava/util/Timer;
    .locals 1

    iget-object v0, p0, Lcom/igexin/getuiext/service/d;->h:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic c(Lcom/igexin/getuiext/service/d;)Landroid/util/SparseArray;
    .locals 1

    iget-object v0, p0, Lcom/igexin/getuiext/service/d;->f:Landroid/util/SparseArray;

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/igexin/getuiext/service/d;->b:Ljava/lang/String;

    return-object v0
.end method

.method public update(Lcom/igexin/download/DownloadInfo;)V
    .locals 6

    const/4 v2, 0x0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v1, p0, Lcom/igexin/getuiext/service/d;->i:Z

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/igexin/getuiext/service/d;->a:Landroid/content/Context;

    const-string v1, "\u5f53\u524dSD\u5361\u4e0d\u53ef\u7528\uff0c\u8bf7\u68c0\u67e5\u8bbe\u7f6e\u3002"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iput-boolean v2, p0, Lcom/igexin/getuiext/service/d;->i:Z

    :goto_1
    invoke-virtual {p1}, Lcom/igexin/download/DownloadInfo;->refreshSpeed()V

    iget-object v0, p0, Lcom/igexin/getuiext/service/d;->f:Landroid/util/SparseArray;

    iget v1, p1, Lcom/igexin/download/DownloadInfo;->mId:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/igexin/getuiext/service/d;->f:Landroid/util/SparseArray;

    iget v1, p1, Lcom/igexin/download/DownloadInfo;->mId:I

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1
    iget v0, p1, Lcom/igexin/download/DownloadInfo;->mStatus:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/igexin/getuiext/service/d;->e:Landroid/util/SparseArray;

    iget v1, p1, Lcom/igexin/download/DownloadInfo;->mId:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/igexin/getuiext/service/d;->h:Ljava/util/Timer;

    if-nez v0, :cond_3

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/igexin/getuiext/service/d;->h:Ljava/util/Timer;

    iget-object v0, p0, Lcom/igexin/getuiext/service/d;->h:Ljava/util/Timer;

    new-instance v1, Lcom/igexin/getuiext/service/g;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/igexin/getuiext/service/g;-><init>(Lcom/igexin/getuiext/service/d;Lcom/igexin/getuiext/service/e;)V

    const-wide/16 v2, 0x64

    const-wide/16 v4, 0x1388

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    :cond_3
    invoke-direct {p0, p1}, Lcom/igexin/getuiext/service/d;->a(Lcom/igexin/download/DownloadInfo;)V

    goto :goto_0

    :cond_4
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/igexin/getuiext/service/d;->i:Z

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/igexin/getuiext/service/d;->e:Landroid/util/SparseArray;

    iget v1, p1, Lcom/igexin/download/DownloadInfo;->mId:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/igexin/getuiext/service/d;->e:Landroid/util/SparseArray;

    iget v1, p1, Lcom/igexin/download/DownloadInfo;->mId:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_6
    iget-wide v0, p1, Lcom/igexin/download/DownloadInfo;->mDownSpeed:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/igexin/getuiext/service/d;->e:Landroid/util/SparseArray;

    iget v1, p1, Lcom/igexin/download/DownloadInfo;->mId:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_2
.end method
