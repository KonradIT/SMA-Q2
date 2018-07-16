.class public Lcn/smssdk/contact/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field private a:Landroid/os/Handler;

.field private b:Lcn/smssdk/contact/a;

.field private c:Lcn/smssdk/utils/e;

.field private d:Lcn/smssdk/utils/Protocols;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcn/smssdk/contact/a;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcn/smssdk/contact/d;->a:Landroid/os/Handler;

    iput-object p2, p0, Lcn/smssdk/contact/d;->b:Lcn/smssdk/contact/a;

    const-string v0, "SMSSDK"

    invoke-static {p1, v0}, Lcn/smssdk/utils/e;->a(Landroid/content/Context;Ljava/lang/String;)Lcn/smssdk/utils/e;

    move-result-object v0

    iput-object v0, p0, Lcn/smssdk/contact/d;->c:Lcn/smssdk/utils/e;

    invoke-static {p1}, Lcn/smssdk/utils/Protocols;->a(Landroid/content/Context;)Lcn/smssdk/utils/Protocols;

    move-result-object v0

    iput-object v0, p0, Lcn/smssdk/contact/d;->d:Lcn/smssdk/utils/Protocols;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mob/tools/utils/DeviceHelper;->getSdcardPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/cn.smssdk/9f1c747fe2ad0cd233f89ed1269b59d9"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/smssdk/contact/d;->e:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcn/smssdk/contact/d;)Lcn/smssdk/contact/a;
    .locals 1

    iget-object v0, p0, Lcn/smssdk/contact/d;->b:Lcn/smssdk/contact/a;

    return-object v0
.end method

.method static synthetic a(Lcn/smssdk/contact/d;Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcn/smssdk/contact/d;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/io/ObjectOutputStream;

    invoke-direct {v1, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v1, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->flush()V

    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/utils/Data;->CRC32([B)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic b(Lcn/smssdk/contact/d;)Lcn/smssdk/utils/e;
    .locals 1

    iget-object v0, p0, Lcn/smssdk/contact/d;->c:Lcn/smssdk/utils/e;

    return-object v0
.end method

.method private b()Z
    .locals 8

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcn/smssdk/contact/d;->e:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    const-wide/32 v4, 0x5265c00

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v2, v6, v2

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/mob/tools/utils/Ln;->e(Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static synthetic c(Lcn/smssdk/contact/d;)Lcn/smssdk/utils/Protocols;
    .locals 1

    iget-object v0, p0, Lcn/smssdk/contact/d;->d:Lcn/smssdk/utils/Protocols;

    return-object v0
.end method

.method private c()V
    .locals 4

    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcn/smssdk/contact/d;->e:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    const-wide/16 v2, 0x1388

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/mob/tools/utils/Ln;->e(Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static synthetic d(Lcn/smssdk/contact/d;)V
    .locals 0

    invoke-direct {p0}, Lcn/smssdk/contact/d;->c()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    const/4 v1, 0x1

    invoke-direct {p0}, Lcn/smssdk/contact/d;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcn/smssdk/contact/d;->a:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcn/smssdk/contact/d;->a:Landroid/os/Handler;

    const-wide/32 v2, 0x186a0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 1

    new-instance v0, Lcn/smssdk/contact/e;

    invoke-direct {v0, p0}, Lcn/smssdk/contact/e;-><init>(Lcn/smssdk/contact/d;)V

    invoke-virtual {v0}, Lcn/smssdk/contact/e;->start()V

    const/4 v0, 0x0

    return v0
.end method
