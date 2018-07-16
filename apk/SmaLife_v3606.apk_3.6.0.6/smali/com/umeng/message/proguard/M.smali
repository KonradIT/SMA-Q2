.class public Lcom/umeng/message/proguard/M;
.super Ljava/lang/Object;
.source "UTMCGetCacheLogHelper.java"

# interfaces
.implements Lcom/umeng/message/proguard/K;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/message/proguard/M$a;
    }
.end annotation


# instance fields
.field private a:Lcom/umeng/message/proguard/N;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/umeng/message/proguard/N;)V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/message/proguard/M;->a:Lcom/umeng/message/proguard/N;

    .line 22
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/umeng/message/proguard/M;->b:Ljava/util/List;

    .line 23
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/umeng/message/proguard/M;->c:Ljava/lang/Object;

    .line 27
    iput-object p1, p0, Lcom/umeng/message/proguard/M;->a:Lcom/umeng/message/proguard/N;

    .line 28
    return-void
.end method

.method private a(Ljava/util/Map;)Ljava/lang/String;
    .locals 4
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
    const/4 v1, 0x0

    .line 115
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 116
    invoke-interface {v2, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 118
    sget-object v0, Lcom/umeng/message/proguard/v;->D:Lcom/umeng/message/proguard/v;

    invoke-virtual {v0}, Lcom/umeng/message/proguard/v;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 119
    sget-object v0, Lcom/umeng/message/proguard/v;->D:Lcom/umeng/message/proguard/v;

    invoke-virtual {v0}, Lcom/umeng/message/proguard/v;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 121
    :goto_0
    if-eqz v0, :cond_0

    const-string v3, "19999"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    sget-object v0, Lcom/umeng/message/proguard/v;->E:Lcom/umeng/message/proguard/v;

    invoke-virtual {v0}, Lcom/umeng/message/proguard/v;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 124
    sget-object v0, Lcom/umeng/message/proguard/v;->E:Lcom/umeng/message/proguard/v;

    invoke-virtual {v0}, Lcom/umeng/message/proguard/v;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 126
    :goto_1
    invoke-static {v0}, Lcom/umeng/message/proguard/at;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 127
    sget-object v3, Lcom/umeng/message/proguard/v;->D:Lcom/umeng/message/proguard/v;

    invoke-virtual {v3}, Lcom/umeng/message/proguard/v;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    invoke-static {v2}, Lcom/umeng/message/proguard/Q;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 130
    invoke-static {v0}, Lcom/umeng/message/proguard/at;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object v1, v0

    .line 135
    :cond_0
    return-object v1

    :cond_1
    move-object v0, v1

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public a(IZZ)Lcom/umeng/message/proguard/M$a;
    .locals 12

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 139
    iget-object v2, p0, Lcom/umeng/message/proguard/M;->a:Lcom/umeng/message/proguard/N;

    invoke-virtual {v2}, Lcom/umeng/message/proguard/N;->a()Ljava/util/Map;

    move-result-object v6

    .line 140
    if-eqz v6, :cond_4

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_4

    .line 144
    new-instance v4, Lcom/umeng/message/proguard/M$a;

    invoke-direct {v4}, Lcom/umeng/message/proguard/M$a;-><init>()V

    .line 146
    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    .line 147
    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 148
    invoke-static {}, Lcom/umeng/message/proguard/al;->a()Lcom/umeng/message/proguard/al;

    move-result-object v3

    invoke-virtual {v3, v2, p3}, Lcom/umeng/message/proguard/al;->a([Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v7

    .line 151
    array-length v8, v7

    move v5, v0

    move v3, v0

    :goto_0
    if-ge v5, v8, :cond_0

    aget-object v9, v7, v5

    .line 153
    if-lt v3, p1, :cond_5

    .line 227
    :cond_0
    iget-object v1, p0, Lcom/umeng/message/proguard/M;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 228
    :try_start_0
    invoke-virtual {v4}, Lcom/umeng/message/proguard/M$a;->e()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 229
    iget-object v0, p0, Lcom/umeng/message/proguard/M;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v2, 0x2710

    if-le v0, v2, :cond_2

    .line 230
    invoke-static {}, Lcom/umeng/message/proguard/y;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 231
    const/4 v0, 0x2

    const-string v2, "delay log"

    const-string v3, "clear[size overflow:10000]"

    invoke-static {v0, v2, v3}, Lcom/umeng/message/proguard/y;->b(ILjava/lang/String;Ljava/lang/Object;)V

    .line 233
    :cond_1
    iget-object v0, p0, Lcom/umeng/message/proguard/M;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 235
    :cond_2
    iget-object v0, p0, Lcom/umeng/message/proguard/M;->b:Ljava/util/List;

    invoke-virtual {v4}, Lcom/umeng/message/proguard/M$a;->e()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 236
    invoke-static {}, Lcom/umeng/message/proguard/y;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 237
    const/4 v0, 0x2

    const-string v2, "delay log"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "add:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v4}, Lcom/umeng/message/proguard/M$a;->e()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/umeng/message/proguard/y;->b(ILjava/lang/String;Ljava/lang/Object;)V

    .line 240
    :cond_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v1, v4

    .line 244
    :cond_4
    return-object v1

    .line 158
    :cond_5
    iget-object v2, p0, Lcom/umeng/message/proguard/M;->c:Ljava/lang/Object;

    monitor-enter v2

    .line 159
    :try_start_1
    iget-object v0, p0, Lcom/umeng/message/proguard/M;->b:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 160
    monitor-exit v2

    move v0, v3

    .line 151
    :goto_1
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    move v3, v0

    goto :goto_0

    .line 162
    :cond_6
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 164
    invoke-static {v9}, Lcom/umeng/message/proguard/at;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 165
    invoke-interface {v6, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/message/proguard/at;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 167
    invoke-static {v0}, Lcom/umeng/message/proguard/at;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 172
    :try_start_2
    const-string v2, "UTF-8"

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    const/4 v2, 0x2

    invoke-static {v0, v2}, Lcom/umeng/message/proguard/ai;->a([BI)[B

    move-result-object v0

    .line 175
    if-eqz v0, :cond_b

    .line 176
    invoke-static {}, Lcom/umeng/message/proguard/t;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/umeng/message/proguard/x;->a([BLjava/lang/String;)[B

    move-result-object v2

    .line 178
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    move-object v2, v0

    .line 184
    :goto_3
    if-eqz v2, :cond_a

    .line 185
    invoke-static {v2}, Lcom/umeng/message/proguard/Q;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 187
    if-eqz v0, :cond_a

    .line 189
    invoke-static {}, Lcom/umeng/message/proguard/E;->a()Lcom/umeng/message/proguard/E;

    move-result-object v10

    invoke-virtual {v10, v0}, Lcom/umeng/message/proguard/E;->a(Ljava/util/Map;)Ljava/util/List;

    move-result-object v10

    .line 192
    const-string v11, "drop"

    invoke-interface {v10, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 193
    invoke-virtual {v4, v9}, Lcom/umeng/message/proguard/M$a;->b(Ljava/lang/String;)V

    move v0, v3

    .line 194
    goto :goto_1

    .line 162
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 180
    :catch_0
    move-exception v0

    .line 181
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v2, v1

    goto :goto_3

    .line 197
    :cond_7
    const-string v11, "delay"

    invoke-interface {v10, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 198
    invoke-virtual {v4, v9}, Lcom/umeng/message/proguard/M$a;->c(Ljava/lang/String;)V

    move v0, v3

    .line 199
    goto :goto_1

    .line 203
    :cond_8
    if-eqz p2, :cond_9

    .line 204
    invoke-direct {p0, v0}, Lcom/umeng/message/proguard/M;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 205
    if-eqz v0, :cond_9

    .line 210
    :goto_4
    invoke-virtual {v4, v9}, Lcom/umeng/message/proguard/M$a;->a(Ljava/lang/String;)V

    .line 212
    new-instance v2, Lcom/umeng/message/proguard/M$a$a;

    invoke-direct {v2}, Lcom/umeng/message/proguard/M$a$a;-><init>()V

    .line 213
    invoke-virtual {v2, v10}, Lcom/umeng/message/proguard/M$a$a;->a(Ljava/util/List;)V

    .line 214
    invoke-virtual {v2, v9}, Lcom/umeng/message/proguard/M$a$a;->a(Ljava/lang/String;)V

    .line 215
    invoke-virtual {v2, v0}, Lcom/umeng/message/proguard/M$a$a;->b(Ljava/lang/String;)V

    .line 217
    invoke-virtual {v4, v2}, Lcom/umeng/message/proguard/M$a;->a(Lcom/umeng/message/proguard/M$a$a;)V

    .line 219
    add-int/lit8 v0, v3, 0x1

    goto/16 :goto_1

    .line 240
    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    :cond_9
    move-object v0, v2

    goto :goto_4

    :cond_a
    move v0, v3

    goto/16 :goto_1

    :cond_b
    move-object v0, v1

    goto :goto_2
.end method

.method public a()V
    .locals 4

    .prologue
    .line 249
    iget-object v1, p0, Lcom/umeng/message/proguard/M;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 250
    :try_start_0
    iget-object v0, p0, Lcom/umeng/message/proguard/M;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 251
    invoke-static {}, Lcom/umeng/message/proguard/y;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 252
    const/4 v0, 0x2

    const-string v2, "delay log"

    const-string v3, "clear[EventStreamGroupStrategyArrived]"

    invoke-static {v0, v2, v3}, Lcom/umeng/message/proguard/y;->b(ILjava/lang/String;Ljava/lang/Object;)V

    .line 254
    :cond_0
    monitor-exit v1

    .line 255
    return-void

    .line 254
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
