.class Lcn/smssdk/statistics/NewAppReceiver$b;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/smssdk/statistics/NewAppReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcn/smssdk/statistics/NewAppReceiver$a;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p1, p0, Lcn/smssdk/statistics/NewAppReceiver$b;->a:Landroid/content/Context;

    new-instance v0, Lcn/smssdk/statistics/NewAppReceiver$a;

    invoke-direct {v0, p1}, Lcn/smssdk/statistics/NewAppReceiver$a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/smssdk/statistics/NewAppReceiver$b;->b:Lcn/smssdk/statistics/NewAppReceiver$a;

    return-void
.end method

.method private a(Ljava/util/HashMap;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private a(Ljava/util/ArrayList;)Ljava/util/HashMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v1, "pkg"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method public static a(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lcn/smssdk/statistics/NewAppReceiver$b;

    invoke-direct {v0, p0}, Lcn/smssdk/statistics/NewAppReceiver$b;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcn/smssdk/statistics/NewAppReceiver$b;->start()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    const/4 v1, 0x0

    iget-object v0, p0, Lcn/smssdk/statistics/NewAppReceiver$b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mob/tools/utils/DeviceHelper;->getInstalledApp(Z)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v0, p0, Lcn/smssdk/statistics/NewAppReceiver$b;->b:Lcn/smssdk/statistics/NewAppReceiver$a;

    invoke-virtual {v0}, Lcn/smssdk/statistics/NewAppReceiver$a;->a()Ljava/util/ArrayList;

    move-result-object v4

    iget-object v0, p0, Lcn/smssdk/statistics/NewAppReceiver$b;->b:Lcn/smssdk/statistics/NewAppReceiver$a;

    invoke-virtual {v0, v3}, Lcn/smssdk/statistics/NewAppReceiver$a;->a(Ljava/util/ArrayList;)V

    invoke-direct {p0, v3}, Lcn/smssdk/statistics/NewAppReceiver$b;->a(Ljava/util/ArrayList;)Ljava/util/HashMap;

    move-result-object v5

    invoke-direct {p0, v4}, Lcn/smssdk/statistics/NewAppReceiver$b;->a(Ljava/util/ArrayList;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v8, "pkg"

    invoke-virtual {v0, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v8, "pkg"

    invoke-virtual {v0, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    invoke-direct {p0, v5}, Lcn/smssdk/statistics/NewAppReceiver$b;->a(Ljava/util/HashMap;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-direct {p0, v6}, Lcn/smssdk/statistics/NewAppReceiver$b;->a(Ljava/util/HashMap;)Ljava/util/ArrayList;

    move-result-object v6

    const-wide v8, 0x9a7ec800L

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iget-object v0, p0, Lcn/smssdk/statistics/NewAppReceiver$b;->b:Lcn/smssdk/statistics/NewAppReceiver$a;

    invoke-virtual {v0}, Lcn/smssdk/statistics/NewAppReceiver$a;->b()J

    move-result-wide v12

    sub-long/2addr v10, v12

    cmp-long v0, v10, v8

    if-ltz v0, :cond_7

    const/4 v0, 0x1

    :goto_2
    const-string v7, "pass"

    new-array v8, v1, [Ljava/lang/Object;

    invoke-static {v7, v8}, Lcom/mob/tools/utils/Ln;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    if-nez v0, :cond_4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_8

    :cond_4
    iget-object v0, p0, Lcn/smssdk/statistics/NewAppReceiver$b;->b:Lcn/smssdk/statistics/NewAppReceiver$a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcn/smssdk/statistics/NewAppReceiver$a;->a(J)V

    :try_start_0
    iget-object v0, p0, Lcn/smssdk/statistics/NewAppReceiver$b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcn/smssdk/utils/Protocols;->a(Landroid/content/Context;)Lcn/smssdk/utils/Protocols;

    move-result-object v0

    const-string v4, "APPS_ALL"

    invoke-virtual {v0, v3, v4}, Lcn/smssdk/utils/Protocols;->a(Ljava/util/ArrayList;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    :goto_3
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "================== upload new removes: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Lcom/mob/tools/utils/DeviceHelper;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/mob/tools/utils/Ln;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    :try_start_1
    iget-object v0, p0, Lcn/smssdk/statistics/NewAppReceiver$b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcn/smssdk/utils/Protocols;->a(Landroid/content/Context;)Lcn/smssdk/utils/Protocols;

    move-result-object v0

    const-string v1, "APPS_UNINSTALL"

    invoke-virtual {v0, v3, v1}, Lcn/smssdk/utils/Protocols;->a(Ljava/util/ArrayList;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    :cond_6
    :goto_4
    return-void

    :cond_7
    move v0, v1

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/mob/tools/utils/Ln;->e(Ljava/lang/Throwable;)I

    goto :goto_3

    :cond_8
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "================== upload new apps: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Lcom/mob/tools/utils/DeviceHelper;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v0, v4}, Lcom/mob/tools/utils/Ln;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    :try_start_2
    iget-object v0, p0, Lcn/smssdk/statistics/NewAppReceiver$b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcn/smssdk/utils/Protocols;->a(Landroid/content/Context;)Lcn/smssdk/utils/Protocols;

    move-result-object v0

    const-string v4, "APPS_INCR"

    invoke-virtual {v0, v3, v4}, Lcn/smssdk/utils/Protocols;->a(Ljava/util/ArrayList;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/mob/tools/utils/Ln;->e(Ljava/lang/Throwable;)I

    goto :goto_3

    :catch_2
    move-exception v0

    invoke-static {v0}, Lcom/mob/tools/utils/Ln;->e(Ljava/lang/Throwable;)I

    goto :goto_4
.end method
