.class public Lcom/umeng/message/proguard/r;
.super Ljava/lang/Object;
.source "UTTracker.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/message/proguard/r;->a:Ljava/lang/String;

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/umeng/message/proguard/r;->b:Ljava/util/Map;

    return-void
.end method

.method private static b(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 137
    if-eqz p0, :cond_13

    .line 138
    sget-object v0, Lcom/umeng/message/proguard/v;->a:Lcom/umeng/message/proguard/v;

    invoke-virtual {v0}, Lcom/umeng/message/proguard/v;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    sget-object v0, Lcom/umeng/message/proguard/v;->a:Lcom/umeng/message/proguard/v;

    invoke-virtual {v0}, Lcom/umeng/message/proguard/v;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    :cond_0
    sget-object v0, Lcom/umeng/message/proguard/v;->b:Lcom/umeng/message/proguard/v;

    invoke-virtual {v0}, Lcom/umeng/message/proguard/v;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 143
    sget-object v0, Lcom/umeng/message/proguard/v;->b:Lcom/umeng/message/proguard/v;

    invoke-virtual {v0}, Lcom/umeng/message/proguard/v;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    :cond_1
    sget-object v0, Lcom/umeng/message/proguard/v;->f:Lcom/umeng/message/proguard/v;

    invoke-virtual {v0}, Lcom/umeng/message/proguard/v;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 147
    sget-object v0, Lcom/umeng/message/proguard/v;->f:Lcom/umeng/message/proguard/v;

    invoke-virtual {v0}, Lcom/umeng/message/proguard/v;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    :cond_2
    sget-object v0, Lcom/umeng/message/proguard/v;->g:Lcom/umeng/message/proguard/v;

    invoke-virtual {v0}, Lcom/umeng/message/proguard/v;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 151
    sget-object v0, Lcom/umeng/message/proguard/v;->g:Lcom/umeng/message/proguard/v;

    invoke-virtual {v0}, Lcom/umeng/message/proguard/v;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    :cond_3
    sget-object v0, Lcom/umeng/message/proguard/v;->h:Lcom/umeng/message/proguard/v;

    invoke-virtual {v0}, Lcom/umeng/message/proguard/v;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 156
    sget-object v0, Lcom/umeng/message/proguard/v;->h:Lcom/umeng/message/proguard/v;

    invoke-virtual {v0}, Lcom/umeng/message/proguard/v;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    :cond_4
    sget-object v0, Lcom/umeng/message/proguard/v;->i:Lcom/umeng/message/proguard/v;

    invoke-virtual {v0}, Lcom/umeng/message/proguard/v;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 160
    sget-object v0, Lcom/umeng/message/proguard/v;->i:Lcom/umeng/message/proguard/v;

    invoke-virtual {v0}, Lcom/umeng/message/proguard/v;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    :cond_5
    sget-object v0, Lcom/umeng/message/proguard/v;->l:Lcom/umeng/message/proguard/v;

    invoke-virtual {v0}, Lcom/umeng/message/proguard/v;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 164
    sget-object v0, Lcom/umeng/message/proguard/v;->l:Lcom/umeng/message/proguard/v;

    invoke-virtual {v0}, Lcom/umeng/message/proguard/v;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    :cond_6
    sget-object v0, Lcom/umeng/message/proguard/v;->m:Lcom/umeng/message/proguard/v;

    invoke-virtual {v0}, Lcom/umeng/message/proguard/v;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 168
    sget-object v0, Lcom/umeng/message/proguard/v;->m:Lcom/umeng/message/proguard/v;

    invoke-virtual {v0}, Lcom/umeng/message/proguard/v;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    :cond_7
    sget-object v0, Lcom/umeng/message/proguard/v;->n:Lcom/umeng/message/proguard/v;

    invoke-virtual {v0}, Lcom/umeng/message/proguard/v;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 172
    sget-object v0, Lcom/umeng/message/proguard/v;->n:Lcom/umeng/message/proguard/v;

    invoke-virtual {v0}, Lcom/umeng/message/proguard/v;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    :cond_8
    sget-object v0, Lcom/umeng/message/proguard/v;->o:Lcom/umeng/message/proguard/v;

    invoke-virtual {v0}, Lcom/umeng/message/proguard/v;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 176
    sget-object v0, Lcom/umeng/message/proguard/v;->o:Lcom/umeng/message/proguard/v;

    invoke-virtual {v0}, Lcom/umeng/message/proguard/v;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    :cond_9
    sget-object v0, Lcom/umeng/message/proguard/v;->s:Lcom/umeng/message/proguard/v;

    invoke-virtual {v0}, Lcom/umeng/message/proguard/v;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 180
    sget-object v0, Lcom/umeng/message/proguard/v;->s:Lcom/umeng/message/proguard/v;

    invoke-virtual {v0}, Lcom/umeng/message/proguard/v;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    :cond_a
    sget-object v0, Lcom/umeng/message/proguard/v;->t:Lcom/umeng/message/proguard/v;

    invoke-virtual {v0}, Lcom/umeng/message/proguard/v;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 185
    sget-object v0, Lcom/umeng/message/proguard/v;->t:Lcom/umeng/message/proguard/v;

    invoke-virtual {v0}, Lcom/umeng/message/proguard/v;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    :cond_b
    sget-object v0, Lcom/umeng/message/proguard/v;->u:Lcom/umeng/message/proguard/v;

    invoke-virtual {v0}, Lcom/umeng/message/proguard/v;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 190
    sget-object v0, Lcom/umeng/message/proguard/v;->u:Lcom/umeng/message/proguard/v;

    invoke-virtual {v0}, Lcom/umeng/message/proguard/v;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    :cond_c
    sget-object v0, Lcom/umeng/message/proguard/v;->v:Lcom/umeng/message/proguard/v;

    invoke-virtual {v0}, Lcom/umeng/message/proguard/v;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 194
    sget-object v0, Lcom/umeng/message/proguard/v;->v:Lcom/umeng/message/proguard/v;

    invoke-virtual {v0}, Lcom/umeng/message/proguard/v;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    :cond_d
    sget-object v0, Lcom/umeng/message/proguard/v;->w:Lcom/umeng/message/proguard/v;

    invoke-virtual {v0}, Lcom/umeng/message/proguard/v;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 198
    sget-object v0, Lcom/umeng/message/proguard/v;->w:Lcom/umeng/message/proguard/v;

    invoke-virtual {v0}, Lcom/umeng/message/proguard/v;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    :cond_e
    sget-object v0, Lcom/umeng/message/proguard/v;->x:Lcom/umeng/message/proguard/v;

    invoke-virtual {v0}, Lcom/umeng/message/proguard/v;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 202
    sget-object v0, Lcom/umeng/message/proguard/v;->x:Lcom/umeng/message/proguard/v;

    invoke-virtual {v0}, Lcom/umeng/message/proguard/v;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    :cond_f
    sget-object v0, Lcom/umeng/message/proguard/v;->y:Lcom/umeng/message/proguard/v;

    invoke-virtual {v0}, Lcom/umeng/message/proguard/v;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 206
    sget-object v0, Lcom/umeng/message/proguard/v;->y:Lcom/umeng/message/proguard/v;

    invoke-virtual {v0}, Lcom/umeng/message/proguard/v;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    :cond_10
    sget-object v0, Lcom/umeng/message/proguard/v;->z:Lcom/umeng/message/proguard/v;

    invoke-virtual {v0}, Lcom/umeng/message/proguard/v;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 210
    sget-object v0, Lcom/umeng/message/proguard/v;->z:Lcom/umeng/message/proguard/v;

    invoke-virtual {v0}, Lcom/umeng/message/proguard/v;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    :cond_11
    sget-object v0, Lcom/umeng/message/proguard/v;->A:Lcom/umeng/message/proguard/v;

    invoke-virtual {v0}, Lcom/umeng/message/proguard/v;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 214
    sget-object v0, Lcom/umeng/message/proguard/v;->A:Lcom/umeng/message/proguard/v;

    invoke-virtual {v0}, Lcom/umeng/message/proguard/v;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    :cond_12
    sget-object v0, Lcom/umeng/message/proguard/v;->B:Lcom/umeng/message/proguard/v;

    invoke-virtual {v0}, Lcom/umeng/message/proguard/v;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 219
    sget-object v0, Lcom/umeng/message/proguard/v;->B:Lcom/umeng/message/proguard/v;

    invoke-virtual {v0}, Lcom/umeng/message/proguard/v;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    :cond_13
    return-void
.end method

.method private static c(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 228
    if-eqz p0, :cond_1

    .line 230
    const-string v0, "_field_os"

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 231
    const-string v0, "_field_os"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 232
    const-string v1, "_field_os"

    invoke-interface {p0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    sget-object v1, Lcom/umeng/message/proguard/v;->q:Lcom/umeng/message/proguard/v;

    invoke-virtual {v1}, Lcom/umeng/message/proguard/v;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    :cond_0
    const-string v0, "_field_os_version"

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 238
    const-string v0, "_field_os_version"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 239
    const-string v1, "_field_os_version"

    invoke-interface {p0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    sget-object v1, Lcom/umeng/message/proguard/v;->r:Lcom/umeng/message/proguard/v;

    invoke-virtual {v1}, Lcom/umeng/message/proguard/v;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    :cond_1
    return-void
.end method

.method private static d(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 252
    sget-object v0, Lcom/umeng/message/proguard/v;->v:Lcom/umeng/message/proguard/v;

    invoke-virtual {v0}, Lcom/umeng/message/proguard/v;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mini"

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    return-void
.end method

.method private static e(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 257
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 260
    const-string v0, "_track_id"

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 261
    const-string v0, "_track_id"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 262
    const-string v2, "_track_id"

    invoke-interface {p0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    invoke-static {v0}, Lcom/umeng/message/proguard/at;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 264
    const-string v2, "_tkid"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    :cond_0
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 271
    sget-object v0, Lcom/umeng/message/proguard/v;->A:Lcom/umeng/message/proguard/v;

    invoke-virtual {v0}, Lcom/umeng/message/proguard/v;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Lcom/umeng/message/proguard/at;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    :cond_1
    sget-object v0, Lcom/umeng/message/proguard/v;->C:Lcom/umeng/message/proguard/v;

    invoke-virtual {v0}, Lcom/umeng/message/proguard/v;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 276
    sget-object v0, Lcom/umeng/message/proguard/v;->C:Lcom/umeng/message/proguard/v;

    invoke-virtual {v0}, Lcom/umeng/message/proguard/v;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UT"

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    :cond_2
    return-void
.end method


# virtual methods
.method a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/umeng/message/proguard/r;->a:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public declared-synchronized a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 65
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/umeng/message/proguard/at;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 66
    iget-object v0, p0, Lcom/umeng/message/proguard/r;->b:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    :goto_0
    monitor-exit p0

    return-void

    .line 68
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    const-string v1, "setGlobalProperty"

    const-string v2, "key is null or key is empty or value is null,please check it!"

    invoke-static {v0, v1, v2}, Lcom/umeng/message/proguard/y;->c(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 65
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 102
    if-eqz p1, :cond_1

    .line 103
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 104
    iget-object v1, p0, Lcom/umeng/message/proguard/r;->b:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 105
    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 106
    iget-object v1, p0, Lcom/umeng/message/proguard/r;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/umeng/message/proguard/at;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 107
    const-string v1, "_track_id"

    iget-object v2, p0, Lcom/umeng/message/proguard/r;->a:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    :cond_0
    const-string v1, "_fuamf"

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 113
    invoke-static {v0}, Lcom/umeng/message/proguard/r;->b(Ljava/util/Map;)V

    .line 120
    :goto_0
    invoke-static {v0}, Lcom/umeng/message/proguard/r;->c(Ljava/util/Map;)V

    .line 121
    invoke-static {v0}, Lcom/umeng/message/proguard/r;->d(Ljava/util/Map;)V

    .line 122
    invoke-static {v0}, Lcom/umeng/message/proguard/r;->e(Ljava/util/Map;)V

    .line 127
    invoke-static {}, Lcom/umeng/message/proguard/L;->a()Lcom/umeng/message/proguard/L;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/umeng/message/proguard/L;->a(Ljava/util/Map;)V

    .line 129
    :cond_1
    return-void

    .line 116
    :cond_2
    const-string v1, "_fuamf"

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public declared-synchronized b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 79
    :try_start_0
    iget-object v0, p0, Lcom/umeng/message/proguard/r;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 78
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 89
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 90
    :try_start_0
    iget-object v0, p0, Lcom/umeng/message/proguard/r;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/umeng/message/proguard/r;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    :cond_0
    monitor-exit p0

    return-void

    .line 89
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
