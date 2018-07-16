.class public Lcn/smssdk/statistics/a;
.super Lcom/mob/tools/SSDKHandlerThread;


# static fields
.field private static b:Lcn/smssdk/statistics/a;


# instance fields
.field private a:Ljava/lang/String;

.field private c:Landroid/content/Context;

.field private d:Lcom/mob/tools/utils/DeviceHelper;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Z

.field private h:J

.field private i:Z

.field private j:Lcn/smssdk/utils/b;

.field private k:Lcn/smssdk/utils/Protocols;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Thread-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x1c09

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mob/tools/SSDKHandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcn/smssdk/statistics/a;->j:Lcn/smssdk/utils/b;

    iput-object v2, p0, Lcn/smssdk/statistics/a;->k:Lcn/smssdk/utils/Protocols;

    iput-object p1, p0, Lcn/smssdk/statistics/a;->c:Landroid/content/Context;

    invoke-static {p1}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object v0

    iput-object v0, p0, Lcn/smssdk/statistics/a;->d:Lcom/mob/tools/utils/DeviceHelper;

    invoke-static {p1}, Lcn/smssdk/utils/b;->a(Landroid/content/Context;)Lcn/smssdk/utils/b;

    move-result-object v0

    iput-object v0, p0, Lcn/smssdk/statistics/a;->j:Lcn/smssdk/utils/b;

    invoke-static {p1}, Lcn/smssdk/utils/Protocols;->a(Landroid/content/Context;)Lcn/smssdk/utils/Protocols;

    move-result-object v0

    iput-object v0, p0, Lcn/smssdk/statistics/a;->k:Lcn/smssdk/utils/Protocols;

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcn/smssdk/statistics/a;
    .locals 3

    const-class v1, Lcn/smssdk/statistics/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcn/smssdk/statistics/a;->b:Lcn/smssdk/statistics/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit v1

    return-object v0

    :cond_0
    :try_start_1
    new-instance v0, Lcn/smssdk/statistics/a;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcn/smssdk/statistics/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcn/smssdk/statistics/a;->b:Lcn/smssdk/statistics/a;

    :cond_1
    sget-object v0, Lcn/smssdk/statistics/a;->b:Lcn/smssdk/statistics/a;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a()V
    .locals 4

    invoke-direct {p0}, Lcn/smssdk/statistics/a;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcn/smssdk/statistics/a;->i:Z

    if-nez v1, :cond_0

    iput-boolean v0, p0, Lcn/smssdk/statistics/a;->i:Z

    const-string v0, "RUN"

    iput-object v0, p0, Lcn/smssdk/statistics/a;->a:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/smssdk/statistics/a;->h:J

    new-instance v0, Lcn/smssdk/statistics/a/d;

    invoke-direct {v0}, Lcn/smssdk/statistics/a/d;-><init>()V

    invoke-virtual {p0, v0}, Lcn/smssdk/statistics/a;->a(Lcn/smssdk/statistics/a/a;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v1, p0, Lcn/smssdk/statistics/a;->i:Z

    if-eqz v1, :cond_0

    iput-boolean v0, p0, Lcn/smssdk/statistics/a;->i:Z

    const-string v0, "EXIT"

    iput-object v0, p0, Lcn/smssdk/statistics/a;->a:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcn/smssdk/statistics/a;->h:J

    sub-long/2addr v0, v2

    new-instance v2, Lcn/smssdk/statistics/a/c;

    invoke-direct {v2}, Lcn/smssdk/statistics/a/c;-><init>()V

    iput-wide v0, v2, Lcn/smssdk/statistics/a/c;->k:J

    invoke-virtual {p0, v2}, Lcn/smssdk/statistics/a;->a(Lcn/smssdk/statistics/a/a;)V

    goto :goto_0
.end method

.method private b(Lcn/smssdk/statistics/a/a;)V
    .locals 2

    iget-object v0, p0, Lcn/smssdk/statistics/a;->e:Ljava/lang/String;

    iput-object v0, p1, Lcn/smssdk/statistics/a/a;->c:Ljava/lang/String;

    iget-object v0, p0, Lcn/smssdk/statistics/a;->d:Lcom/mob/tools/utils/DeviceHelper;

    invoke-virtual {v0}, Lcom/mob/tools/utils/DeviceHelper;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcn/smssdk/statistics/a/a;->d:Ljava/lang/String;

    iget-object v0, p0, Lcn/smssdk/statistics/a;->d:Lcom/mob/tools/utils/DeviceHelper;

    invoke-virtual {v0}, Lcom/mob/tools/utils/DeviceHelper;->getAppVersionName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcn/smssdk/statistics/a/a;->j:Ljava/lang/String;

    iget-object v0, p0, Lcn/smssdk/statistics/a;->f:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcn/smssdk/statistics/a/a;->f:Ljava/lang/String;

    iget-object v0, p0, Lcn/smssdk/statistics/a;->d:Lcom/mob/tools/utils/DeviceHelper;

    invoke-virtual {v0}, Lcom/mob/tools/utils/DeviceHelper;->getPlatformCode()I

    move-result v0

    iput v0, p1, Lcn/smssdk/statistics/a/a;->g:I

    iget-object v0, p0, Lcn/smssdk/statistics/a;->d:Lcom/mob/tools/utils/DeviceHelper;

    invoke-virtual {v0}, Lcom/mob/tools/utils/DeviceHelper;->getNetworkTypeForStatic()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcn/smssdk/statistics/a/a;->h:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcn/smssdk/statistics/a/a;->a:J

    return-void
.end method

.method private b()Z
    .locals 2

    iget-object v0, p0, Lcn/smssdk/statistics/a;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/utils/DeviceHelper;->getTopTaskPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/mob/tools/utils/DeviceHelper;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c()V
    .locals 12

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    iget-object v0, p0, Lcn/smssdk/statistics/a;->j:Lcn/smssdk/utils/b;

    const-string v1, "event_db"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcn/smssdk/utils/b;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_3

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const-string v0, "type"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v0, "time_stamp"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const-string v0, "data"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const-string v5, "RUN"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v8, Ljava/io/ObjectInputStream;

    invoke-direct {v8, v5}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v8}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/smssdk/statistics/a/a;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcn/smssdk/statistics/a;->a(Ljava/lang/String;JLjava/util/HashMap;Lcn/smssdk/statistics/a/a;)V

    const-string v0, "runtime"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v8}, Ljava/io/ObjectInputStream;->close()V

    :cond_1
    :goto_0
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "flag"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v1, p0, Lcn/smssdk/statistics/a;->j:Lcn/smssdk/utils/b;

    const-string v4, "event_db"

    const-string v5, "time_stamp= ?"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v8, v9

    invoke-virtual {v1, v4, v0, v5, v8}, Lcn/smssdk/utils/b;->a(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_1
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4

    :try_start_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p0, Lcn/smssdk/statistics/a;->k:Lcn/smssdk/utils/Protocols;

    invoke-virtual {v0, v6}, Lcn/smssdk/utils/Protocols;->a(Ljava/util/ArrayList;)Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "resultCode"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcn/smssdk/statistics/a;->j:Lcn/smssdk/utils/b;

    const-string v1, "event_db"

    const-string v2, "flag= ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcn/smssdk/utils/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :cond_4
    :goto_2
    return-void

    :cond_5
    :try_start_2
    const-string v5, "EXIT"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v8, Ljava/io/ObjectInputStream;

    invoke-direct {v8, v5}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v8}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/smssdk/statistics/a/c;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcn/smssdk/statistics/a;->a(Ljava/lang/String;JLjava/util/HashMap;Lcn/smssdk/statistics/a/a;)V

    const-string v0, "runtime"

    iget-wide v10, v5, Lcn/smssdk/statistics/a/c;->k:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v8}, Ljava/io/ObjectInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/mob/tools/utils/Ln;->e(Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_6
    :try_start_3
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "flag"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v1, p0, Lcn/smssdk/statistics/a;->j:Lcn/smssdk/utils/b;

    const-string v2, "event_db"

    const-string v3, "flag = ? "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v0, v3, v4}, Lcn/smssdk/utils/b;->a(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/mob/tools/utils/Ln;->e(Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method private c(Lcn/smssdk/statistics/a/a;)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcn/smssdk/statistics/a;->c:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcn/smssdk/statistics/a/a;->b(Landroid/content/Context;)V

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/io/ObjectOutputStream;

    invoke-direct {v1, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v1, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->flush()V

    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iget-object v1, p0, Lcn/smssdk/statistics/a;->a:Ljava/lang/String;

    iget-wide v2, p1, Lcn/smssdk/statistics/a/a;->a:J

    invoke-virtual {p0, v1, v2, v3, v0}, Lcn/smssdk/statistics/a;->a(Ljava/lang/String;J[B)Landroid/content/ContentValues;

    move-result-object v0

    iget-object v1, p0, Lcn/smssdk/statistics/a;->j:Lcn/smssdk/utils/b;

    const-string v2, "event_db"

    invoke-virtual {v1, v2, v0}, Lcn/smssdk/utils/b;->a(Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/mob/tools/utils/Ln;->e(Ljava/lang/Throwable;)I

    invoke-virtual {p1}, Lcn/smssdk/statistics/a/a;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/mob/tools/utils/Ln;->e(Ljava/lang/Object;[Ljava/lang/Object;)I

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;J[B)Landroid/content/ContentValues;
    .locals 4

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "type"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "time_stamp"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "data"

    invoke-virtual {v0, v1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    return-object v0
.end method

.method public a(Lcn/smssdk/statistics/a/a;)V
    .locals 2

    iget-boolean v0, p0, Lcn/smssdk/statistics/a;->g:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcn/smssdk/statistics/a;->b(Lcn/smssdk/statistics/a/a;)V

    iget-object v0, p0, Lcn/smssdk/statistics/a;->c:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcn/smssdk/statistics/a/a;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    :try_start_0
    iget-object v1, p0, Lcn/smssdk/statistics/a;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/mob/tools/utils/Ln;->e(Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Drop event: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcn/smssdk/statistics/a/a;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/mob/tools/utils/Ln;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/smssdk/statistics/a;->e:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/lang/String;JLjava/util/HashMap;Lcn/smssdk/statistics/a/a;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcn/smssdk/statistics/a/a;",
            ")V"
        }
    .end annotation

    iget-object v0, p5, Lcn/smssdk/statistics/a/a;->c:Ljava/lang/String;

    iget-object v1, p5, Lcn/smssdk/statistics/a/a;->d:Ljava/lang/String;

    iget-object v2, p5, Lcn/smssdk/statistics/a/a;->j:Ljava/lang/String;

    iget-object v3, p5, Lcn/smssdk/statistics/a/a;->f:Ljava/lang/String;

    iget v4, p5, Lcn/smssdk/statistics/a/a;->g:I

    iget-object v5, p5, Lcn/smssdk/statistics/a/a;->h:Ljava/lang/String;

    const-string v6, "type"

    invoke-virtual {p4, v6, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "datetime"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {p4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "appkey"

    invoke-virtual {p4, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "apppkg"

    invoke-virtual {p4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "appver"

    invoke-virtual {p4, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "sdkver"

    invoke-virtual {p4, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "plat"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "network"

    invoke-virtual {p4, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/smssdk/statistics/a;->f:Ljava/lang/String;

    return-void
.end method

.method protected onMessage(Landroid/os/Message;)V
    .locals 9

    const/4 v8, 0x5

    const/4 v7, 0x2

    const/4 v6, 0x1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcn/smssdk/statistics/a/a;

    invoke-direct {p0, v0}, Lcn/smssdk/statistics/a;->c(Lcn/smssdk/statistics/a/a;)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcn/smssdk/statistics/a;->a()V

    :try_start_0
    iget-object v0, p0, Lcn/smssdk/statistics/a;->handler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/mob/tools/utils/Ln;->e(Ljava/lang/Throwable;)I

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcn/smssdk/statistics/a;->c()V

    :try_start_1
    iget-object v0, p0, Lcn/smssdk/statistics/a;->handler:Landroid/os/Handler;

    const/4 v1, 0x2

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/mob/tools/utils/Ln;->e(Ljava/lang/Throwable;)I

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcn/smssdk/statistics/a;->c:Landroid/content/Context;

    invoke-static {v0}, Lcn/smssdk/statistics/a/b;->a(Landroid/content/Context;)Lcn/smssdk/statistics/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/smssdk/statistics/a/b;->a()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-virtual {v2, v6}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {v2, v7}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v2, v8}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-virtual {v2, v6}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v2, v7}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-virtual {v2, v8}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v0, v4, :cond_1

    if-ne v1, v5, :cond_1

    if-eq v3, v2, :cond_1

    :cond_1
    iget-object v0, p0, Lcn/smssdk/statistics/a;->handler:Landroid/os/Handler;

    const/4 v1, 0x4

    const-wide/32 v2, 0x36ee80

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public onStart(Landroid/os/Message;)V
    .locals 5

    const/4 v4, 0x1

    iget-boolean v0, p0, Lcn/smssdk/statistics/a;->g:Z

    if-nez v0, :cond_0

    iput-boolean v4, p0, Lcn/smssdk/statistics/a;->g:Z

    iget-object v0, p0, Lcn/smssdk/statistics/a;->handler:Landroid/os/Handler;

    const/4 v1, 0x4

    const-wide/32 v2, 0x36ee80

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iget-object v0, p0, Lcn/smssdk/statistics/a;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lcn/smssdk/statistics/a;->handler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public onStop(Landroid/os/Message;)V
    .locals 4

    iget-boolean v0, p0, Lcn/smssdk/statistics/a;->g:Z

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcn/smssdk/statistics/a;->h:J

    sub-long/2addr v0, v2

    new-instance v2, Lcn/smssdk/statistics/a/c;

    invoke-direct {v2}, Lcn/smssdk/statistics/a/c;-><init>()V

    iput-wide v0, v2, Lcn/smssdk/statistics/a/c;->k:J

    invoke-virtual {p0, v2}, Lcn/smssdk/statistics/a;->a(Lcn/smssdk/statistics/a/a;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/smssdk/statistics/a;->g:Z

    const/4 v0, 0x0

    sput-object v0, Lcn/smssdk/statistics/a;->b:Lcn/smssdk/statistics/a;

    iget-object v0, p0, Lcn/smssdk/statistics/a;->handler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    :cond_0
    return-void
.end method
