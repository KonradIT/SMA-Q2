.class public Lcn/smssdk/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/smssdk/contact/OnContactChangeListener;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcn/smssdk/EventHandler;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcn/smssdk/utils/Protocols;

.field private d:Lcn/smssdk/contact/a;

.field private e:Lcn/smssdk/a/a;

.field private f:Lcn/smssdk/b/b;

.field private g:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Character;",
            "Ljava/util/ArrayList",
            "<[",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/smssdk/a;->a:Landroid/content/Context;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcn/smssdk/a;->b:Ljava/util/HashSet;

    invoke-static {p1}, Lcn/smssdk/utils/Protocols;->a(Landroid/content/Context;)Lcn/smssdk/utils/Protocols;

    move-result-object v0

    iput-object v0, p0, Lcn/smssdk/a;->c:Lcn/smssdk/utils/Protocols;

    invoke-static {p1}, Lcn/smssdk/a/a;->a(Landroid/content/Context;)Lcn/smssdk/a/a;

    move-result-object v0

    iput-object v0, p0, Lcn/smssdk/a;->e:Lcn/smssdk/a/a;

    invoke-static {p1}, Lcn/smssdk/contact/a;->a(Landroid/content/Context;)Lcn/smssdk/contact/a;

    move-result-object v0

    iput-object v0, p0, Lcn/smssdk/a;->d:Lcn/smssdk/contact/a;

    invoke-static {p1}, Lcn/smssdk/b/b;->a(Landroid/content/Context;)Lcn/smssdk/b/b;

    move-result-object v0

    iput-object v0, p0, Lcn/smssdk/a;->f:Lcn/smssdk/b/b;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/smssdk/statistics/NewAppReceiver;->a(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcn/smssdk/a;)Ljava/util/HashSet;
    .locals 1

    iget-object v0, p0, Lcn/smssdk/a;->b:Ljava/util/HashSet;

    return-object v0
.end method

.method private a(IILjava/lang/Object;)V
    .locals 3

    iget-object v1, p0, Lcn/smssdk/a;->b:Ljava/util/HashSet;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcn/smssdk/a;->b:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/smssdk/EventHandler;

    invoke-virtual {v0, p1, p2, p3}, Lcn/smssdk/EventHandler;->afterEvent(IILjava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method static synthetic a(Lcn/smssdk/a;IILjava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcn/smssdk/a;->a(IILjava/lang/Object;)V

    return-void
.end method

.method static synthetic a(Lcn/smssdk/a;ILjava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcn/smssdk/a;->b(ILjava/lang/Object;)V

    return-void
.end method

.method private a(Ljava/lang/Object;)V
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-object v2, p0, Lcn/smssdk/a;->d:Lcn/smssdk/contact/a;

    invoke-virtual {v2, v1}, Lcn/smssdk/contact/a;->a(Z)Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    const/4 v0, -0x1

    :goto_0
    const/4 v2, 0x4

    invoke-direct {p0, v2, v0, v1}, Lcn/smssdk/a;->a(IILjava/lang/Object;)V

    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private b(ILjava/lang/Object;)V
    .locals 0

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0, p2}, Lcn/smssdk/a;->a(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, p2}, Lcn/smssdk/a;->b(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, p2}, Lcn/smssdk/a;->c(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0}, Lcn/smssdk/a;->d()V

    goto :goto_0

    :pswitch_4
    invoke-direct {p0, p2}, Lcn/smssdk/a;->d(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_5
    invoke-direct {p0}, Lcn/smssdk/a;->e()V

    goto :goto_0

    :pswitch_6
    invoke-direct {p0}, Lcn/smssdk/a;->f()V

    goto :goto_0

    :pswitch_7
    invoke-direct {p0, p2}, Lcn/smssdk/a;->e(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_4
        :pswitch_6
        :pswitch_5
        :pswitch_7
    .end packed-switch
.end method

.method private b(Ljava/lang/Object;)V
    .locals 6

    const/4 v5, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_0
    check-cast p1, [Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v1, p1, v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x2

    aget-object v2, p1, v2

    check-cast v2, Lcn/smssdk/OnSendMessageHandler;

    if-eqz v2, :cond_0

    invoke-interface {v2, v0, v1}, Lcn/smssdk/OnSendMessageHandler;->onSendMessage(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v0, Lcn/smssdk/UserInterruptException;

    invoke-direct {v0}, Lcn/smssdk/UserInterruptException;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    move-object v1, v0

    move v0, v3

    :goto_0
    invoke-direct {p0, v5, v0, v1}, Lcn/smssdk/a;->a(IILjava/lang/Object;)V

    return-void

    :cond_0
    :try_start_1
    iget-object v2, p0, Lcn/smssdk/a;->c:Lcn/smssdk/utils/Protocols;

    invoke-virtual {v2, v0, v1}, Lcn/smssdk/utils/Protocols;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v0, -0x1

    move-object v1, v4

    goto :goto_0
.end method

.method private c(Ljava/lang/Object;)V
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    check-cast p1, [Ljava/lang/String;

    check-cast p1, [Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    const/4 v2, 0x1

    aget-object v2, p1, v2

    const/4 v3, 0x2

    aget-object v3, p1, v3

    iget-object v4, p0, Lcn/smssdk/a;->c:Lcn/smssdk/utils/Protocols;

    invoke-virtual {v4, v3, v1, v2}, Lcn/smssdk/utils/Protocols;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    const/4 v0, -0x1

    :goto_0
    const/4 v2, 0x3

    invoke-direct {p0, v2, v0, v1}, Lcn/smssdk/a;->a(IILjava/lang/Object;)V

    return-void

    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/mob/tools/utils/Ln;->w(Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private d()V
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcn/smssdk/a;->c:Lcn/smssdk/utils/Protocols;

    invoke-virtual {v1}, Lcn/smssdk/utils/Protocols;->b()Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    const/4 v0, -0x1

    :goto_0
    const/4 v2, 0x1

    invoke-direct {p0, v2, v0, v1}, Lcn/smssdk/a;->a(IILjava/lang/Object;)V

    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private d(Ljava/lang/Object;)V
    .locals 8

    const/4 v6, 0x0

    const/4 v7, 0x0

    :try_start_0
    check-cast p1, [Ljava/lang/String;

    check-cast p1, [Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, p1, v0

    const/4 v0, 0x1

    aget-object v2, p1, v0

    const/4 v0, 0x2

    aget-object v3, p1, v0

    const/4 v0, 0x3

    aget-object v4, p1, v0

    const/4 v0, 0x4

    aget-object v5, p1, v0

    iget-object v0, p0, Lcn/smssdk/a;->e:Lcn/smssdk/a/a;

    invoke-virtual/range {v0 .. v5}, Lcn/smssdk/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, -0x1

    move-object v1, v7

    :goto_0
    const/4 v2, 0x5

    invoke-direct {p0, v2, v0, v1}, Lcn/smssdk/a;->a(IILjava/lang/Object;)V

    return-void

    :catch_0
    move-exception v0

    move-object v1, v0

    move v0, v6

    goto :goto_0
.end method

.method private e()V
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcn/smssdk/a;->e:Lcn/smssdk/a/a;

    invoke-virtual {v1}, Lcn/smssdk/a/a;->a()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    const/4 v0, -0x1

    :goto_0
    const/4 v2, 0x7

    invoke-direct {p0, v2, v0, v1}, Lcn/smssdk/a;->a(IILjava/lang/Object;)V

    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private e(Ljava/lang/Object;)V
    .locals 5

    const/4 v2, 0x0

    const/4 v3, 0x0

    check-cast p1, [Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    aget-object v0, p1, v2

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v1, p1, v1

    check-cast v1, Ljava/lang/String;

    :try_start_0
    iget-object v4, p0, Lcn/smssdk/a;->c:Lcn/smssdk/utils/Protocols;

    invoke-virtual {v4, v0, v1}, Lcn/smssdk/utils/Protocols;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, -0x1

    move-object v1, v3

    :goto_0
    const/16 v2, 0x8

    invoke-direct {p0, v2, v0, v1}, Lcn/smssdk/a;->a(IILjava/lang/Object;)V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v1, v0

    move v0, v2

    goto :goto_0
.end method

.method private f()V
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcn/smssdk/a;->e:Lcn/smssdk/a/a;

    invoke-virtual {v1}, Lcn/smssdk/a/a;->b()Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    const/4 v0, -0x1

    :goto_0
    const/4 v2, 0x6

    invoke-direct {p0, v2, v0, v1}, Lcn/smssdk/a;->a(IILjava/lang/Object;)V

    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Lcn/smssdk/a;->d:Lcn/smssdk/contact/a;

    invoke-virtual {v0, p0}, Lcn/smssdk/contact/a;->a(Lcn/smssdk/contact/OnContactChangeListener;)V

    iget-object v0, p0, Lcn/smssdk/a;->d:Lcn/smssdk/contact/a;

    invoke-virtual {v0}, Lcn/smssdk/contact/a;->a()V

    iget-object v0, p0, Lcn/smssdk/a;->a:Landroid/content/Context;

    iget-object v1, p0, Lcn/smssdk/a;->h:Ljava/lang/String;

    iget-object v2, p0, Lcn/smssdk/a;->c:Lcn/smssdk/utils/Protocols;

    invoke-virtual {v2}, Lcn/smssdk/utils/Protocols;->getVersionCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcn/smssdk/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(ILjava/lang/Object;)V
    .locals 1

    new-instance v0, Lcn/smssdk/b;

    invoke-direct {v0, p0, p1, p2}, Lcn/smssdk/b;-><init>(Lcn/smssdk/a;ILjava/lang/Object;)V

    invoke-virtual {v0}, Lcn/smssdk/b;->start()V

    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Lcn/smssdk/statistics/a;->a(Landroid/content/Context;)Lcn/smssdk/statistics/a;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcn/smssdk/statistics/a;->a(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lcn/smssdk/statistics/a;->b(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcn/smssdk/statistics/a;->startThread()V

    return-void
.end method

.method public a(Landroid/telephony/SmsMessage;Lcn/smssdk/SMSSDK$VerifyCodeReadListener;)V
    .locals 1

    iget-object v0, p0, Lcn/smssdk/a;->f:Lcn/smssdk/b/b;

    invoke-virtual {v0, p2}, Lcn/smssdk/b/b;->a(Lcn/smssdk/SMSSDK$VerifyCodeReadListener;)V

    iget-object v0, p0, Lcn/smssdk/a;->f:Lcn/smssdk/b/b;

    invoke-virtual {v0, p1}, Lcn/smssdk/b/b;->a(Landroid/telephony/SmsMessage;)Z

    return-void
.end method

.method public a(Lcn/smssdk/EventHandler;)V
    .locals 2

    iget-object v1, p0, Lcn/smssdk/a;->b:Ljava/util/HashSet;

    monitor-enter v1

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcn/smssdk/a;->b:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/smssdk/a;->b:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lcn/smssdk/EventHandler;->onRegister()V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcn/smssdk/a;->c:Lcn/smssdk/utils/Protocols;

    invoke-virtual {v0, p1, p2}, Lcn/smssdk/utils/Protocols;->a(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcn/smssdk/a;->h:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/lang/String;)[Ljava/lang/String;
    .locals 9

    const/4 v4, 0x0

    const/4 v8, 0x2

    const/4 v3, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v1, v4

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    invoke-virtual {p0}, Lcn/smssdk/a;->c()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_4

    move v2, v3

    :goto_1
    move v5, v3

    :goto_2
    if-ge v5, v2, :cond_2

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    if-eqz v1, :cond_3

    array-length v7, v1

    if-le v7, v8, :cond_3

    aget-object v7, v1, v8

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    :cond_3
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto :goto_2

    :cond_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v2, v1

    goto :goto_1

    :cond_5
    move-object v1, v4

    goto :goto_0
.end method

.method public b()V
    .locals 3

    iget-object v1, p0, Lcn/smssdk/a;->b:Ljava/util/HashSet;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcn/smssdk/a;->b:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/smssdk/EventHandler;

    invoke-virtual {v0}, Lcn/smssdk/EventHandler;->onUnregister()V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcn/smssdk/a;->b:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public b(Lcn/smssdk/EventHandler;)V
    .locals 2

    iget-object v1, p0, Lcn/smssdk/a;->b:Ljava/util/HashSet;

    monitor-enter v1

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcn/smssdk/a;->b:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    monitor-exit v1

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcn/smssdk/EventHandler;->onUnregister()V

    iget-object v0, p0, Lcn/smssdk/a;->b:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b(Ljava/lang/String;)[Ljava/lang/String;
    .locals 11

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v1, v4

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    invoke-virtual {p0}, Lcn/smssdk/a;->c()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_4

    move v2, v3

    :goto_1
    move v6, v3

    :goto_2
    if-ge v6, v2, :cond_2

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    array-length v5, v1

    const/4 v8, 0x4

    if-ge v5, v8, :cond_5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "MCC not found in the country: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v1, v1, v3

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v1, v5}, Lcom/mob/tools/utils/Ln;->w(Ljava/lang/Object;[Ljava/lang/Object;)I

    :cond_3
    add-int/lit8 v1, v6, 0x1

    move v6, v1

    goto :goto_2

    :cond_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v2, v1

    goto :goto_1

    :cond_5
    const/4 v5, 0x3

    aget-object v5, v1, v5

    const-string v8, "|"

    invoke-virtual {v5, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    if-gez v8, :cond_6

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_0

    :cond_6
    const-string v8, "\\|"

    invoke-virtual {v5, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    array-length v9, v8

    move v5, v3

    :goto_3
    if-ge v5, v9, :cond_3

    aget-object v10, v8, v5

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_7
    move-object v1, v4

    goto :goto_0
.end method

.method public c()Ljava/util/HashMap;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Character;",
            "Ljava/util/ArrayList",
            "<[",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    const/4 v2, 0x0

    iget-object v0, p0, Lcn/smssdk/a;->g:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/smssdk/a;->g:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcn/smssdk/a;->g:Ljava/util/HashMap;

    :goto_0
    return-object v0

    :cond_0
    const/16 v0, 0x41

    move v4, v0

    move-object v0, v2

    :goto_1
    const/16 v1, 0x5a

    if-gt v4, v1, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "smssdk_country_group_"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcn/smssdk/a;->a:Landroid/content/Context;

    invoke-static {v3, v1}, Lcom/mob/tools/utils/R;->getStringArrayRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_5

    iget-object v3, p0, Lcn/smssdk/a;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    array-length v6, v5

    const/4 v1, 0x0

    move v3, v1

    move-object v1, v2

    :goto_2
    if-ge v3, v6, :cond_3

    aget-object v7, v5, v3

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    if-nez v1, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :cond_1
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    move-object v1, v2

    :cond_3
    if-eqz v1, :cond_5

    if-nez v0, :cond_4

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    :cond_4
    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-virtual {v0, v3, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    add-int/lit8 v1, v4, 0x1

    int-to-char v1, v1

    move v4, v1

    goto :goto_1

    :cond_6
    iput-object v0, p0, Lcn/smssdk/a;->g:Ljava/util/HashMap;

    iget-object v0, p0, Lcn/smssdk/a;->g:Ljava/util/HashMap;

    goto :goto_0
.end method

.method public onContactChange(Z)V
    .locals 3

    iget-object v0, p0, Lcn/smssdk/a;->e:Lcn/smssdk/a/a;

    const/4 v1, 0x0

    new-instance v2, Lcn/smssdk/c;

    invoke-direct {v2, p0}, Lcn/smssdk/c;-><init>(Lcn/smssdk/a;)V

    invoke-virtual {v0, v1, v2}, Lcn/smssdk/a/a;->a(ILandroid/os/Handler$Callback;)V

    return-void
.end method
