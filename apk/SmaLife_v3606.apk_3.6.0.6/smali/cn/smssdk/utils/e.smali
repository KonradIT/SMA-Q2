.class public Lcn/smssdk/utils/e;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcn/smssdk/utils/e;


# instance fields
.field private b:Lcom/mob/tools/utils/SharePrefrenceHelper;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/mob/tools/utils/SharePrefrenceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/SharePrefrenceHelper;

    move-result-object v0

    iput-object v0, p0, Lcn/smssdk/utils/e;->b:Lcom/mob/tools/utils/SharePrefrenceHelper;

    iget-object v0, p0, Lcn/smssdk/utils/e;->b:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, p2, v1}, Lcom/mob/tools/utils/SharePrefrenceHelper;->open(Ljava/lang/String;I)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Lcn/smssdk/utils/e;
    .locals 1

    sget-object v0, Lcn/smssdk/utils/e;->a:Lcn/smssdk/utils/e;

    if-nez v0, :cond_0

    new-instance v0, Lcn/smssdk/utils/e;

    invoke-direct {v0, p0, p1}, Lcn/smssdk/utils/e;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lcn/smssdk/utils/e;->a:Lcn/smssdk/utils/e;

    :cond_0
    sget-object v0, Lcn/smssdk/utils/e;->a:Lcn/smssdk/utils/e;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcn/smssdk/utils/e;->b:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v1, "duid"

    invoke-virtual {v0, v1}, Lcom/mob/tools/utils/SharePrefrenceHelper;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcn/smssdk/utils/e;->b:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v1, "duid"

    invoke-virtual {v0, v1, p1}, Lcom/mob/tools/utils/SharePrefrenceHelper;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcn/smssdk/utils/e;->b:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v1, "bufferedContacts"

    invoke-virtual {v0, v1, p1}, Lcom/mob/tools/utils/SharePrefrenceHelper;->put(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public a([Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcn/smssdk/utils/e;->b:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v1, "bufferedContactPhones"

    invoke-virtual {v0, v1, p1}, Lcom/mob/tools/utils/SharePrefrenceHelper;->put(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcn/smssdk/utils/e;->b:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v1, "token"

    invoke-virtual {v0, v1}, Lcom/mob/tools/utils/SharePrefrenceHelper;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcn/smssdk/utils/e;->b:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v1, "token"

    invoke-virtual {v0, v1, p1}, Lcom/mob/tools/utils/SharePrefrenceHelper;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    const-string v1, "bufferedFriends"

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcn/smssdk/utils/e;->b:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v2, "bufferedFriends"

    invoke-virtual {v0, v2, p1}, Lcom/mob/tools/utils/SharePrefrenceHelper;->put(Ljava/lang/String;Ljava/lang/Object;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Lcn/smssdk/utils/e;->b:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v1, "bufferedNewFriends"

    invoke-virtual {v0, v1}, Lcom/mob/tools/utils/SharePrefrenceHelper;->remove(Ljava/lang/String;)V

    iget-object v0, p0, Lcn/smssdk/utils/e;->b:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v1, "bufferedFriends"

    invoke-virtual {v0, v1}, Lcom/mob/tools/utils/SharePrefrenceHelper;->remove(Ljava/lang/String;)V

    iget-object v0, p0, Lcn/smssdk/utils/e;->b:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v1, "lastRequestNewFriendsTime"

    invoke-virtual {v0, v1}, Lcom/mob/tools/utils/SharePrefrenceHelper;->remove(Ljava/lang/String;)V

    iget-object v0, p0, Lcn/smssdk/utils/e;->b:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v1, "bufferedContactPhones"

    invoke-virtual {v0, v1}, Lcom/mob/tools/utils/SharePrefrenceHelper;->remove(Ljava/lang/String;)V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcn/smssdk/utils/e;->b:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v1, "bufferedContactsSignature"

    invoke-virtual {v0, v1, p1}, Lcom/mob/tools/utils/SharePrefrenceHelper;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public c(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcn/smssdk/utils/e;->b:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v1, "bufferedNewFriends"

    invoke-virtual {v0, v1, p1}, Lcom/mob/tools/utils/SharePrefrenceHelper;->put(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcn/smssdk/utils/e;->b:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v1, "bufferedContactsSignature"

    invoke-virtual {v0, v1}, Lcom/mob/tools/utils/SharePrefrenceHelper;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    const-string v1, "bufferedFriends"

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcn/smssdk/utils/e;->b:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v2, "bufferedFriends"

    invoke-virtual {v0, v2}, Lcom/mob/tools/utils/SharePrefrenceHelper;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Ljava/util/ArrayList;

    monitor-exit v1

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public f()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcn/smssdk/utils/e;->b:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v1, "bufferedNewFriends"

    invoke-virtual {v0, v1}, Lcom/mob/tools/utils/SharePrefrenceHelper;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Ljava/util/ArrayList;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method

.method public g()J
    .locals 2

    iget-object v0, p0, Lcn/smssdk/utils/e;->b:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v1, "lastRequestNewFriendsTime"

    invoke-virtual {v0, v1}, Lcom/mob/tools/utils/SharePrefrenceHelper;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public h()V
    .locals 4

    iget-object v0, p0, Lcn/smssdk/utils/e;->b:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v1, "lastRequestNewFriendsTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mob/tools/utils/SharePrefrenceHelper;->putLong(Ljava/lang/String;Ljava/lang/Long;)V

    return-void
.end method

.method public i()[Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcn/smssdk/utils/e;->b:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v1, "bufferedContactPhones"

    invoke-virtual {v0, v1}, Lcom/mob/tools/utils/SharePrefrenceHelper;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    goto :goto_0
.end method
