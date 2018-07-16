.class public Lcom/umeng/message/proguard/Q;
.super Ljava/lang/Object;
.source "UTMCLogAssemble.java"


# static fields
.field private static a:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/umeng/message/proguard/Q;->a:J

    return-void
.end method

.method public static a(Ljava/util/Map;)Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v8, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 57
    if-eqz p0, :cond_1a

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_1a

    .line 60
    invoke-static {}, Lcom/umeng/message/proguard/w;->a()Lcom/umeng/message/proguard/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/message/proguard/w;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/message/proguard/at;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 61
    sget-object v0, Lcom/umeng/message/proguard/v;->m:Lcom/umeng/message/proguard/v;

    invoke-virtual {v0}, Lcom/umeng/message/proguard/v;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/umeng/message/proguard/w;->a()Lcom/umeng/message/proguard/w;

    move-result-object v1

    invoke-virtual {v1}, Lcom/umeng/message/proguard/w;->i()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    :cond_0
    invoke-static {}, Lcom/umeng/message/proguard/w;->a()Lcom/umeng/message/proguard/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/message/proguard/w;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/message/proguard/at;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 67
    sget-object v0, Lcom/umeng/message/proguard/v;->l:Lcom/umeng/message/proguard/v;

    invoke-virtual {v0}, Lcom/umeng/message/proguard/v;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/umeng/message/proguard/w;->a()Lcom/umeng/message/proguard/w;

    move-result-object v1

    invoke-virtual {v1}, Lcom/umeng/message/proguard/w;->f()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    :cond_1
    invoke-static {}, Lcom/umeng/message/proguard/w;->a()Lcom/umeng/message/proguard/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/message/proguard/w;->j()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/message/proguard/at;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 72
    sget-object v0, Lcom/umeng/message/proguard/v;->o:Lcom/umeng/message/proguard/v;

    invoke-virtual {v0}, Lcom/umeng/message/proguard/v;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/umeng/message/proguard/w;->a()Lcom/umeng/message/proguard/w;

    move-result-object v1

    invoke-virtual {v1}, Lcom/umeng/message/proguard/w;->j()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    :cond_2
    invoke-static {}, Lcom/umeng/message/proguard/w;->a()Lcom/umeng/message/proguard/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/message/proguard/w;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/message/proguard/at;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 78
    sget-object v0, Lcom/umeng/message/proguard/v;->n:Lcom/umeng/message/proguard/v;

    invoke-virtual {v0}, Lcom/umeng/message/proguard/v;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/umeng/message/proguard/w;->a()Lcom/umeng/message/proguard/w;

    move-result-object v1

    invoke-virtual {v1}, Lcom/umeng/message/proguard/w;->g()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    :cond_3
    sget-object v0, Lcom/umeng/message/proguard/v;->s:Lcom/umeng/message/proguard/v;

    invoke-virtual {v0}, Lcom/umeng/message/proguard/v;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 84
    sget-object v0, Lcom/umeng/message/proguard/v;->s:Lcom/umeng/message/proguard/v;

    invoke-virtual {v0}, Lcom/umeng/message/proguard/v;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/umeng/message/proguard/w;->a()Lcom/umeng/message/proguard/w;

    move-result-object v1

    invoke-virtual {v1}, Lcom/umeng/message/proguard/w;->c()Lcom/umeng/message/proguard/s;

    move-result-object v1

    invoke-interface {v1}, Lcom/umeng/message/proguard/s;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    :cond_4
    sget-object v0, Lcom/umeng/message/proguard/v;->j:Lcom/umeng/message/proguard/v;

    invoke-virtual {v0}, Lcom/umeng/message/proguard/v;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 90
    sget-object v0, Lcom/umeng/message/proguard/v;->j:Lcom/umeng/message/proguard/v;

    invoke-virtual {v0}, Lcom/umeng/message/proguard/v;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/umeng/message/proguard/w;->a()Lcom/umeng/message/proguard/w;

    move-result-object v1

    invoke-virtual {v1}, Lcom/umeng/message/proguard/w;->l()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    :cond_5
    invoke-static {}, Lcom/umeng/message/proguard/w;->a()Lcom/umeng/message/proguard/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/message/proguard/w;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/message/proguard/at;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 96
    sget-object v0, Lcom/umeng/message/proguard/v;->i:Lcom/umeng/message/proguard/v;

    invoke-virtual {v0}, Lcom/umeng/message/proguard/v;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/umeng/message/proguard/w;->a()Lcom/umeng/message/proguard/w;

    move-result-object v1

    invoke-virtual {v1}, Lcom/umeng/message/proguard/w;->h()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    :cond_6
    invoke-static {}, Lcom/umeng/message/proguard/w;->a()Lcom/umeng/message/proguard/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/message/proguard/w;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/message/proguard/at;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 102
    sget-object v0, Lcom/umeng/message/proguard/v;->k:Lcom/umeng/message/proguard/v;

    invoke-virtual {v0}, Lcom/umeng/message/proguard/v;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/umeng/message/proguard/w;->a()Lcom/umeng/message/proguard/w;

    move-result-object v1

    invoke-virtual {v1}, Lcom/umeng/message/proguard/w;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    :cond_7
    sget-object v0, Lcom/umeng/message/proguard/v;->B:Lcom/umeng/message/proguard/v;

    invoke-virtual {v0}, Lcom/umeng/message/proguard/v;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 110
    sget-object v0, Lcom/umeng/message/proguard/v;->B:Lcom/umeng/message/proguard/v;

    invoke-virtual {v0}, Lcom/umeng/message/proguard/v;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    :cond_8
    sget-object v0, Lcom/umeng/message/proguard/v;->t:Lcom/umeng/message/proguard/v;

    invoke-virtual {v0}, Lcom/umeng/message/proguard/v;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 117
    sget-object v0, Lcom/umeng/message/proguard/v;->t:Lcom/umeng/message/proguard/v;

    invoke-virtual {v0}, Lcom/umeng/message/proguard/v;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-wide v6, Lcom/umeng/message/proguard/Q;->a:J

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    :cond_9
    invoke-static {}, Lcom/umeng/message/proguard/w;->a()Lcom/umeng/message/proguard/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/message/proguard/w;->k()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/message/proguard/z;->a(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    .line 123
    if-eqz v0, :cond_1a

    .line 125
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 127
    invoke-interface {v5, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 130
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 131
    :cond_a
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 132
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 133
    sget-object v1, Lcom/umeng/message/proguard/v;->c:Lcom/umeng/message/proguard/v;

    invoke-virtual {v1}, Lcom/umeng/message/proguard/v;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    sget-object v1, Lcom/umeng/message/proguard/v;->d:Lcom/umeng/message/proguard/v;

    invoke-virtual {v1}, Lcom/umeng/message/proguard/v;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    sget-object v1, Lcom/umeng/message/proguard/v;->e:Lcom/umeng/message/proguard/v;

    invoke-virtual {v1}, Lcom/umeng/message/proguard/v;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    sget-object v1, Lcom/umeng/message/proguard/v;->q:Lcom/umeng/message/proguard/v;

    invoke-virtual {v1}, Lcom/umeng/message/proguard/v;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    sget-object v1, Lcom/umeng/message/proguard/v;->r:Lcom/umeng/message/proguard/v;

    invoke-virtual {v1}, Lcom/umeng/message/proguard/v;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    sget-object v1, Lcom/umeng/message/proguard/v;->u:Lcom/umeng/message/proguard/v;

    invoke-virtual {v1}, Lcom/umeng/message/proguard/v;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 141
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 143
    invoke-static {v0}, Lcom/umeng/message/proguard/at;->a(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_a

    if-eqz v1, :cond_a

    .line 144
    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 149
    :cond_b
    sget-object v0, Lcom/umeng/message/proguard/v;->A:Lcom/umeng/message/proguard/v;

    invoke-virtual {v0}, Lcom/umeng/message/proguard/v;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 150
    const-string v1, "_mac"

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 151
    if-eqz v1, :cond_c

    .line 152
    if-eqz v0, :cond_11

    .line 153
    const-string v6, "%s,_mac=%s"

    new-array v7, v8, [Ljava/lang/Object;

    aput-object v0, v7, v3

    aput-object v1, v7, v4

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 157
    :goto_1
    const-string v1, "_mac"

    invoke-interface {v5, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    move-object v1, v0

    .line 161
    sget-object v0, Lcom/umeng/message/proguard/u;->a:Lcom/umeng/message/proguard/u;

    invoke-virtual {v0}, Lcom/umeng/message/proguard/u;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 162
    if-eqz v0, :cond_1e

    .line 163
    if-eqz v1, :cond_12

    .line 164
    const-string v6, "%s,_did=%s"

    new-array v7, v8, [Ljava/lang/Object;

    aput-object v1, v7, v3

    aput-object v0, v7, v4

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 168
    :goto_2
    sget-object v1, Lcom/umeng/message/proguard/u;->a:Lcom/umeng/message/proguard/u;

    invoke-virtual {v1}, Lcom/umeng/message/proguard/u;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v5, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    :goto_3
    invoke-static {}, Lcom/umeng/message/proguard/w;->a()Lcom/umeng/message/proguard/w;

    move-result-object v1

    invoke-virtual {v1}, Lcom/umeng/message/proguard/w;->k()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/umeng/message/proguard/R;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 173
    if-eqz v1, :cond_e

    .line 174
    sget-object v6, Lcom/umeng/message/proguard/v;->u:Lcom/umeng/message/proguard/v;

    invoke-virtual {v6}, Lcom/umeng/message/proguard/v;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 175
    sget-object v6, Lcom/umeng/message/proguard/v;->u:Lcom/umeng/message/proguard/v;

    invoke-virtual {v6}, Lcom/umeng/message/proguard/v;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 176
    const-string v1, "utdid"

    .line 179
    :cond_d
    if-eqz v0, :cond_13

    .line 180
    const-string v6, "%s,_umid=%s"

    new-array v7, v8, [Ljava/lang/Object;

    aput-object v0, v7, v3

    aput-object v1, v7, v4

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 186
    :cond_e
    :goto_4
    if-eqz v0, :cond_f

    .line 187
    sget-object v1, Lcom/umeng/message/proguard/v;->A:Lcom/umeng/message/proguard/v;

    invoke-virtual {v1}, Lcom/umeng/message/proguard/v;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v5, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    :cond_f
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 191
    invoke-static {}, Lcom/umeng/message/proguard/v;->values()[Lcom/umeng/message/proguard/v;

    move-result-object v7

    array-length v8, v7

    move v1, v3

    :goto_5
    if-ge v1, v8, :cond_10

    aget-object v9, v7, v1

    .line 193
    sget-object v0, Lcom/umeng/message/proguard/v;->H:Lcom/umeng/message/proguard/v;

    if-ne v9, v0, :cond_14

    .line 209
    :cond_10
    sget-object v0, Lcom/umeng/message/proguard/v;->H:Lcom/umeng/message/proguard/v;

    invoke-virtual {v0}, Lcom/umeng/message/proguard/v;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 210
    sget-object v0, Lcom/umeng/message/proguard/v;->H:Lcom/umeng/message/proguard/v;

    invoke-virtual {v0}, Lcom/umeng/message/proguard/v;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/message/proguard/at;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 213
    invoke-static {v0}, Lcom/umeng/message/proguard/Q;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 214
    sget-object v0, Lcom/umeng/message/proguard/v;->H:Lcom/umeng/message/proguard/v;

    invoke-virtual {v0}, Lcom/umeng/message/proguard/v;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move v0, v3

    .line 218
    :goto_6
    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v1, v0

    .line 219
    :goto_7
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 220
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 222
    invoke-interface {v5, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 223
    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/umeng/message/proguard/at;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 226
    :goto_8
    if-eqz v1, :cond_16

    .line 228
    const-string v1, "StackTrace"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 229
    const-string v0, "StackTrace=====>"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-static {v4}, Lcom/umeng/message/proguard/Q;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_9
    move v0, v3

    :goto_a
    move v1, v0

    .line 245
    goto :goto_7

    .line 155
    :cond_11
    const-string v0, "_mac=%s"

    new-array v6, v4, [Ljava/lang/Object;

    aput-object v1, v6, v3

    invoke-static {v0, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 166
    :cond_12
    const-string v1, "_did=%s"

    new-array v6, v4, [Ljava/lang/Object;

    aput-object v0, v6, v3

    invoke-static {v1, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 182
    :cond_13
    const-string v0, "_umid=%s"

    new-array v6, v4, [Ljava/lang/Object;

    aput-object v1, v6, v3

    invoke-static {v0, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4

    .line 198
    :cond_14
    invoke-virtual {v9}, Lcom/umeng/message/proguard/v;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 199
    invoke-virtual {v9}, Lcom/umeng/message/proguard/v;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/message/proguard/at;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 201
    invoke-virtual {v9}, Lcom/umeng/message/proguard/v;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v5, v9}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    :goto_b
    invoke-static {v0}, Lcom/umeng/message/proguard/Q;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v9, "||"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 191
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_5

    .line 231
    :cond_15
    invoke-static {v0}, Lcom/umeng/message/proguard/Q;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-static {v4}, Lcom/umeng/message/proguard/Q;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_9

    .line 237
    :cond_16
    const-string v8, "StackTrace"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_17

    .line 238
    const-string v0, ","

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v8, "StackTrace=====>"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-static {v4}, Lcom/umeng/message/proguard/Q;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v0, v1

    goto/16 :goto_a

    .line 240
    :cond_17
    const-string v8, ","

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-static {v0}, Lcom/umeng/message/proguard/Q;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v8, "="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-static {v4}, Lcom/umeng/message/proguard/Q;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v0, v1

    goto/16 :goto_a

    .line 248
    :cond_18
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 249
    invoke-static {v0}, Lcom/umeng/message/proguard/at;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_19

    .line 250
    const-string v1, "||"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 251
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 257
    :cond_19
    :goto_c
    return-object v0

    :cond_1a
    move-object v0, v2

    goto :goto_c

    :cond_1b
    move-object v4, v2

    goto/16 :goto_8

    :cond_1c
    move v0, v4

    goto/16 :goto_6

    :cond_1d
    move-object v0, v2

    goto/16 :goto_b

    :cond_1e
    move-object v0, v1

    goto/16 :goto_3
.end method

.method public static a(Ljava/lang/String;)Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 267
    invoke-static {p0}, Lcom/umeng/message/proguard/at;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 268
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 269
    const-string v2, "\\|\\|"

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 270
    if-eqz v3, :cond_2

    array-length v2, v3

    if-lez v2, :cond_2

    .line 272
    invoke-static {}, Lcom/umeng/message/proguard/v;->values()[Lcom/umeng/message/proguard/v;

    move-result-object v4

    array-length v5, v4

    move v2, v1

    :goto_0
    if-ge v1, v5, :cond_2

    aget-object v6, v4, v1

    .line 273
    array-length v7, v3

    if-ge v2, v7, :cond_0

    aget-object v7, v3, v2

    if-eqz v7, :cond_0

    .line 274
    invoke-virtual {v6}, Lcom/umeng/message/proguard/v;->toString()Ljava/lang/String;

    move-result-object v6

    aget-object v7, v3, v2

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 272
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 281
    :cond_1
    const/4 v0, 0x0

    :cond_2
    return-object v0
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 25
    if-eqz p0, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 26
    const-string v0, "(\\|\\||[\t\r\n])*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 27
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 28
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 31
    :cond_0
    return-object p0
.end method

.method private static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    invoke-static {p0}, Lcom/umeng/message/proguard/at;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    const-string v0, "-"

    .line 40
    :goto_0
    return-object v0

    .line 39
    :cond_0
    invoke-static {p0}, Lcom/umeng/message/proguard/Q;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static d(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    invoke-static {p0}, Lcom/umeng/message/proguard/Q;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 45
    return-object v0
.end method
