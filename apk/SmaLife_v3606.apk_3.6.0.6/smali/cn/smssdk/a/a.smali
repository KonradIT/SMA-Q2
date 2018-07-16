.class public final Lcn/smssdk/a/a;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcn/smssdk/a/a;


# instance fields
.field private b:Lcn/smssdk/utils/Protocols;

.field private c:Lcn/smssdk/utils/e;

.field private d:Lcn/smssdk/a/b;

.field private e:Lcn/smssdk/contact/a;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcn/smssdk/utils/Protocols;->a(Landroid/content/Context;)Lcn/smssdk/utils/Protocols;

    move-result-object v0

    iput-object v0, p0, Lcn/smssdk/a/a;->b:Lcn/smssdk/utils/Protocols;

    const-string v0, "SMSSDK"

    invoke-static {p1, v0}, Lcn/smssdk/utils/e;->a(Landroid/content/Context;Ljava/lang/String;)Lcn/smssdk/utils/e;

    move-result-object v0

    iput-object v0, p0, Lcn/smssdk/a/a;->c:Lcn/smssdk/utils/e;

    new-instance v0, Lcn/smssdk/a/b;

    invoke-direct {v0, p1, p0}, Lcn/smssdk/a/b;-><init>(Landroid/content/Context;Lcn/smssdk/a/a;)V

    iput-object v0, p0, Lcn/smssdk/a/a;->d:Lcn/smssdk/a/b;

    invoke-static {p1}, Lcn/smssdk/contact/a;->a(Landroid/content/Context;)Lcn/smssdk/contact/a;

    move-result-object v0

    iput-object v0, p0, Lcn/smssdk/a/a;->e:Lcn/smssdk/contact/a;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcn/smssdk/a/a;
    .locals 1

    sget-object v0, Lcn/smssdk/a/a;->a:Lcn/smssdk/a/a;

    if-nez v0, :cond_0

    new-instance v0, Lcn/smssdk/a/a;

    invoke-direct {v0, p0}, Lcn/smssdk/a/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcn/smssdk/a/a;->a:Lcn/smssdk/a/a;

    :cond_0
    sget-object v0, Lcn/smssdk/a/a;->a:Lcn/smssdk/a/a;

    return-object v0
.end method

.method private c()Z
    .locals 10

    const/4 v9, 0x5

    const/4 v8, 0x2

    const/4 v0, 0x1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-virtual {v1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v8}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v1, v9}, Ljava/util/Calendar;->get(I)I

    move-result v4

    iget-object v5, p0, Lcn/smssdk/a/a;->c:Lcn/smssdk/utils/e;

    invoke-virtual {v5}, Lcn/smssdk/utils/e;->g()J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-virtual {v1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-virtual {v1, v8}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v1, v9}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v2, v5, :cond_0

    if-ne v3, v6, :cond_0

    if-eq v4, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private d()[Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcn/smssdk/a/a;->c:Lcn/smssdk/utils/e;

    invoke-virtual {v0}, Lcn/smssdk/utils/e;->i()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v1, v0

    if-gtz v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcn/smssdk/a/a;->e:Lcn/smssdk/contact/a;

    invoke-virtual {v0}, Lcn/smssdk/contact/a;->b()V

    iget-object v0, p0, Lcn/smssdk/a/a;->e:Lcn/smssdk/contact/a;

    invoke-virtual {v0}, Lcn/smssdk/contact/a;->c()[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcn/smssdk/a/a;->c:Lcn/smssdk/utils/e;

    invoke-virtual {v1, v0}, Lcn/smssdk/utils/e;->a([Ljava/lang/String;)V

    :cond_1
    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 2

    invoke-direct {p0}, Lcn/smssdk/a/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/smssdk/a/a;->b:Lcn/smssdk/utils/Protocols;

    invoke-direct {p0}, Lcn/smssdk/a/a;->d()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/smssdk/utils/Protocols;->a([Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/smssdk/a/a;->a(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcn/smssdk/a/a;->c:Lcn/smssdk/utils/e;

    invoke-virtual {v1, v0}, Lcn/smssdk/utils/e;->c(Ljava/util/ArrayList;)V

    iget-object v1, p0, Lcn/smssdk/a/a;->c:Lcn/smssdk/utils/e;

    invoke-virtual {v1}, Lcn/smssdk/utils/e;->h()V

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lcn/smssdk/a/a;->c:Lcn/smssdk/utils/e;

    invoke-virtual {v0}, Lcn/smssdk/utils/e;->f()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method protected a(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcn/smssdk/a/a;->c:Lcn/smssdk/utils/e;

    invoke-virtual {v0}, Lcn/smssdk/utils/e;->e()Ljava/util/ArrayList;

    move-result-object v3

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_0

    const/4 v2, 0x1

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v8, "phone"

    invoke-virtual {v1, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_0

    invoke-virtual {v4, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcn/smssdk/a/a;->c:Lcn/smssdk/utils/e;

    invoke-virtual {v0}, Lcn/smssdk/utils/e;->f()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v2, "phone"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v4, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    return-object v1

    :cond_6
    move v1, v2

    goto :goto_1
.end method

.method public a(ILandroid/os/Handler$Callback;)V
    .locals 1

    iget-object v0, p0, Lcn/smssdk/a/a;->d:Lcn/smssdk/a/b;

    invoke-virtual {v0, p1, p2}, Lcn/smssdk/a/b;->a(ILandroid/os/Handler$Callback;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lcn/smssdk/a/a;->b:Lcn/smssdk/utils/Protocols;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcn/smssdk/utils/Protocols;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b()Ljava/util/ArrayList;
    .locals 6
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

    iget-object v0, p0, Lcn/smssdk/a/a;->b:Lcn/smssdk/utils/Protocols;

    invoke-direct {p0}, Lcn/smssdk/a/a;->d()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/smssdk/utils/Protocols;->a([Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcn/smssdk/a/a;->a(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v2, p0, Lcn/smssdk/a/a;->c:Lcn/smssdk/utils/e;

    invoke-virtual {v2, v1}, Lcn/smssdk/utils/e;->b(Ljava/util/ArrayList;)V

    iget-object v2, p0, Lcn/smssdk/a/a;->c:Lcn/smssdk/utils/e;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v3}, Lcn/smssdk/utils/e;->c(Ljava/util/ArrayList;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v3, "phone"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v5, "phone"

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v3, "isnew"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    return-object v1
.end method
