.class public Lcom/igexin/push/core/a/a/h;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/igexin/push/core/a/a/a;


# static fields
.field public static a:Ljava/util/HashMap;

.field private static final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/igexin/push/a/j;->a:Ljava/lang/String;

    sput-object v0, Lcom/igexin/push/core/a/a/h;->b:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/igexin/push/core/a/a/h;->a:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/app/PendingIntent;
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.igexin.sdk.action.doaction"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "taskid"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "messageid"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "appid"

    sget-object v2, Lcom/igexin/push/core/g;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "actionid"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "accesstoken"

    sget-object v2, Lcom/igexin/push/core/g;->ax:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "notifID"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    sget-object v2, Lcom/igexin/push/core/g;->i:Landroid/content/Context;

    const/16 v3, 0x3e8

    invoke-virtual {v1, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    const/high16 v3, 0x8000000

    invoke-static {v2, v1, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Lcom/igexin/push/core/bean/PushTaskBean;Lcom/igexin/push/core/bean/BaseAction;)Lcom/igexin/push/core/b;
    .locals 1

    sget-object v0, Lcom/igexin/push/core/b;->a:Lcom/igexin/push/core/b;

    return-object v0
.end method

.method public a(Lorg/json/JSONObject;)Lcom/igexin/push/core/bean/BaseAction;
    .locals 4

    const/4 v3, -0x1

    :try_start_0
    new-instance v1, Lcom/igexin/push/core/bean/h;

    invoke-direct {v1}, Lcom/igexin/push/core/bean/h;-><init>()V

    const-string v0, "notification"

    invoke-virtual {v1, v0}, Lcom/igexin/push/core/bean/h;->setType(Ljava/lang/String;)V

    const-string v0, "actionid"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/igexin/push/core/bean/h;->setActionId(Ljava/lang/String;)V

    const-string v0, "do"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/igexin/push/core/bean/h;->setDoActionId(Ljava/lang/String;)V

    const-string v0, "title"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "text"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0}, Lcom/igexin/push/core/bean/h;->a(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/igexin/push/core/bean/h;->b(Ljava/lang/String;)V

    const-string v0, "logo"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, ""

    const-string v2, "logo"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "logo"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, ".png"

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v3, :cond_0

    const-string v2, ".jpeg"

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v3, :cond_a

    :cond_0
    const-string v2, ".png"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v3, :cond_1

    const-string v2, ".jpeg"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    :cond_1
    if-eq v2, v3, :cond_2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-virtual {v1, v0}, Lcom/igexin/push/core/bean/h;->c(Ljava/lang/String;)V

    :cond_3
    const-string v0, "is_noclear"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "is_noclear"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/igexin/push/core/bean/h;->a(Z)V

    :cond_4
    const-string v0, "is_novibrate"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "is_novibrate"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/igexin/push/core/bean/h;->b(Z)V

    :cond_5
    const-string v0, "is_noring"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "is_noring"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/igexin/push/core/bean/h;->c(Z)V

    :cond_6
    const-string v0, "is_chklayout"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "is_chklayout"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/igexin/push/core/bean/h;->d(Z)V

    :cond_7
    const-string v0, "logo_url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "logo_url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/igexin/push/core/bean/h;->d(Ljava/lang/String;)V

    :cond_8
    const-string v0, "banner_url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "banner_url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/igexin/push/core/bean/h;->e(Ljava/lang/String;)V

    :cond_9
    move-object v0, v1

    :goto_1
    return-object v0

    :cond_a
    const-string v0, "null"
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/igexin/push/core/bean/h;)V
    .locals 10

    const/4 v9, 0x1

    const v8, 0x1080093

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-int v1, v0

    sget-object v0, Lcom/igexin/push/core/g;->am:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p3}, Lcom/igexin/push/core/bean/h;->getDoActionId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/igexin/push/core/a/a/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/app/PendingIntent;

    move-result-object v2

    sget-object v0, Lcom/igexin/push/core/g;->i:Landroid/content/Context;

    const-string v3, "notification"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    new-instance v3, Landroid/app/Notification;

    invoke-direct {v3}, Landroid/app/Notification;-><init>()V

    invoke-virtual {p3}, Lcom/igexin/push/core/bean/h;->b()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    const/4 v4, 0x4

    iput v4, v3, Landroid/app/Notification;->defaults:I

    const v4, -0xff0100

    iput v4, v3, Landroid/app/Notification;->ledARGB:I

    const/16 v4, 0x3e8

    iput v4, v3, Landroid/app/Notification;->ledOnMS:I

    const/16 v4, 0xbb8

    iput v4, v3, Landroid/app/Notification;->ledOffMS:I

    iput v9, v3, Landroid/app/Notification;->flags:I

    invoke-virtual {p3}, Lcom/igexin/push/core/bean/h;->c()Z

    move-result v4

    if-nez v4, :cond_3

    iget v4, v3, Landroid/app/Notification;->flags:I

    or-int/lit8 v4, v4, 0x10

    iput v4, v3, Landroid/app/Notification;->flags:I

    :goto_0
    invoke-virtual {p3}, Lcom/igexin/push/core/bean/h;->e()Z

    move-result v4

    if-nez v4, :cond_0

    iget v4, v3, Landroid/app/Notification;->defaults:I

    or-int/lit8 v4, v4, 0x1

    iput v4, v3, Landroid/app/Notification;->defaults:I

    :cond_0
    invoke-virtual {p3}, Lcom/igexin/push/core/bean/h;->d()Z

    move-result v4

    if-nez v4, :cond_1

    iget v4, v3, Landroid/app/Notification;->defaults:I

    or-int/lit8 v4, v4, 0x2

    iput v4, v3, Landroid/app/Notification;->defaults:I

    :cond_1
    sget-object v4, Lcom/igexin/push/core/g;->i:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "push"

    const-string v6, "drawable"

    sget-object v7, Lcom/igexin/push/core/g;->g:Ljava/lang/String;

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p3}, Lcom/igexin/push/core/bean/h;->f()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_5

    if-eqz v4, :cond_4

    iput v4, v3, Landroid/app/Notification;->icon:I

    :goto_1
    invoke-virtual {p3}, Lcom/igexin/push/core/bean/h;->h()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    invoke-virtual {p3}, Lcom/igexin/push/core/bean/h;->g()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_a

    :cond_2
    invoke-virtual {p3}, Lcom/igexin/push/core/bean/h;->i()Z

    move-result v4

    if-eqz v4, :cond_a

    :goto_2
    return-void

    :cond_3
    iget v4, v3, Landroid/app/Notification;->flags:I

    or-int/lit8 v4, v4, 0x20

    iput v4, v3, Landroid/app/Notification;->flags:I

    goto :goto_0

    :cond_4
    iput v8, v3, Landroid/app/Notification;->icon:I

    goto :goto_1

    :cond_5
    const-string v4, "null"

    invoke-virtual {p3}, Lcom/igexin/push/core/bean/h;->f()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    iput v8, v3, Landroid/app/Notification;->icon:I

    goto :goto_1

    :cond_6
    invoke-virtual {p3}, Lcom/igexin/push/core/bean/h;->f()Ljava/lang/String;

    move-result-object v4

    const-string v5, "@"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-virtual {p3}, Lcom/igexin/push/core/bean/h;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v9, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const-string v5, "email"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    const v4, 0x108008f

    iput v4, v3, Landroid/app/Notification;->icon:I

    goto :goto_1

    :cond_7
    iput v8, v3, Landroid/app/Notification;->icon:I

    goto :goto_1

    :cond_8
    sget-object v4, Lcom/igexin/push/core/g;->i:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {p3}, Lcom/igexin/push/core/bean/h;->f()Ljava/lang/String;

    move-result-object v5

    const-string v6, "drawable"

    sget-object v7, Lcom/igexin/push/core/g;->g:Ljava/lang/String;

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_9

    iput v4, v3, Landroid/app/Notification;->icon:I

    goto :goto_1

    :cond_9
    iput v8, v3, Landroid/app/Notification;->icon:I

    goto :goto_1

    :cond_a
    sget-object v4, Lcom/igexin/push/core/g;->i:Landroid/content/Context;

    invoke-virtual {p3}, Lcom/igexin/push/core/bean/h;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3}, Lcom/igexin/push/core/bean/h;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6, v2}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v0, v1, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_2
.end method

.method public b(Lcom/igexin/push/core/bean/PushTaskBean;Lcom/igexin/push/core/bean/BaseAction;)Z
    .locals 2

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    instance-of v0, p2, Lcom/igexin/push/core/bean/h;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/igexin/push/core/bean/PushTaskBean;->getTaskId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/igexin/push/core/bean/PushTaskBean;->getMessageId()Ljava/lang/String;

    move-result-object v1

    check-cast p2, Lcom/igexin/push/core/bean/h;

    invoke-virtual {p0, v0, v1, p2}, Lcom/igexin/push/core/a/a/h;->a(Ljava/lang/String;Ljava/lang/String;Lcom/igexin/push/core/bean/h;)V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
