.class public Lcom/umeng/message/proguard/N;
.super Ljava/lang/Object;
.source "UTMCLogCacheHelper.java"


# static fields
.field private static b:Ljava/util/Random;


# instance fields
.field private a:Landroid/content/Context;

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private d:Landroid/content/SharedPreferences;

.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/umeng/message/proguard/N;->b:Ljava/util/Random;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object v1, p0, Lcom/umeng/message/proguard/N;->a:Landroid/content/Context;

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/umeng/message/proguard/N;->c:Ljava/util/Map;

    .line 31
    iput-object v1, p0, Lcom/umeng/message/proguard/N;->d:Landroid/content/SharedPreferences;

    .line 32
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/umeng/message/proguard/N;->e:Z

    .line 36
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/umeng/message/proguard/N;
    .locals 1

    .prologue
    .line 61
    if-eqz p0, :cond_0

    .line 62
    new-instance v0, Lcom/umeng/message/proguard/N;

    invoke-direct {v0}, Lcom/umeng/message/proguard/N;-><init>()V

    .line 63
    invoke-direct {v0, p0}, Lcom/umeng/message/proguard/N;->b(Landroid/content/Context;)V

    .line 64
    invoke-direct {v0}, Lcom/umeng/message/proguard/N;->c()V

    .line 67
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 78
    .line 79
    invoke-static {p0}, Lcom/umeng/message/proguard/at;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    const-string p0, "3"

    .line 82
    :cond_0
    sget-object v0, Lcom/umeng/message/proguard/N;->b:Ljava/util/Random;

    const v1, 0x1869f

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    .line 83
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x186a0

    add-int/2addr v0, v2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 84
    const-string v1, "%s%s%s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized a(Landroid/content/SharedPreferences$Editor;[Ljava/lang/String;IZ)V
    .locals 7

    .prologue
    const/16 v6, 0x9

    .line 167
    monitor-enter p0

    if-eqz p2, :cond_4

    :try_start_0
    array-length v0, p2

    if-lez v0, :cond_4

    if-lez p3, :cond_4

    .line 168
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_2

    .line 169
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 170
    aget-object v1, p2, v0

    .line 171
    invoke-static {v1}, Lcom/umeng/message/proguard/at;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 173
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v6, :cond_1

    .line 174
    if-eqz p1, :cond_0

    .line 175
    invoke-interface {p1, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 176
    invoke-static {}, Lcom/umeng/message/proguard/y;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 177
    const/4 v2, 0x2

    const-string v3, "_clearlog"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "key="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3, v1}, Lcom/umeng/message/proguard/y;->b(ILjava/lang/String;Ljava/lang/Object;)V

    .line 168
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 182
    :cond_1
    iget-object v2, p0, Lcom/umeng/message/proguard/N;->c:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 183
    iget-object v2, p0, Lcom/umeng/message/proguard/N;->c:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    invoke-static {}, Lcom/umeng/message/proguard/y;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 185
    const/4 v2, 0x2

    const-string v3, "_clearlog"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "key="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3, v1}, Lcom/umeng/message/proguard/y;->b(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 167
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 193
    :cond_2
    :try_start_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v6, :cond_3

    .line 194
    if-eqz p1, :cond_3

    .line 195
    invoke-static {p1}, Lcom/umeng/message/proguard/as;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 198
    :cond_3
    if-eqz p4, :cond_4

    .line 199
    invoke-virtual {p0}, Lcom/umeng/message/proguard/N;->b()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 202
    :cond_4
    monitor-exit p0

    return-void
.end method

.method private b(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/umeng/message/proguard/N;->a:Landroid/content/Context;

    .line 40
    return-void
.end method

.method private c()V
    .locals 3

    .prologue
    .line 46
    iget-object v0, p0, Lcom/umeng/message/proguard/N;->a:Landroid/content/Context;

    const-string v1, "UTMCLog"

    invoke-static {v0, v1}, Lcom/umeng/message/proguard/ao;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 50
    iget-object v1, p0, Lcom/umeng/message/proguard/N;->a:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 52
    if-eqz v0, :cond_0

    .line 53
    iput-object v0, p0, Lcom/umeng/message/proguard/N;->d:Landroid/content/SharedPreferences;

    .line 54
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-ge v0, v1, :cond_0

    .line 55
    iget-object v0, p0, Lcom/umeng/message/proguard/N;->d:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/message/proguard/N;->c:Ljava/util/Map;

    .line 58
    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 98
    monitor-enter p0

    :try_start_0
    invoke-static {p2}, Lcom/umeng/message/proguard/N;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 102
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_1

    .line 103
    iget-object v0, p0, Lcom/umeng/message/proguard/N;->d:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_2

    .line 104
    iget-object v0, p0, Lcom/umeng/message/proguard/N;->d:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 106
    :try_start_1
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-static {}, Lcom/umeng/message/proguard/t;->b()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/umeng/message/proguard/x;->a([BLjava/lang/String;)[B

    move-result-object v4

    const/4 v5, 0x2

    invoke-static {v4, v5}, Lcom/umeng/message/proguard/ai;->c([BI)[B

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-direct {v0, v4, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-interface {v1, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 112
    invoke-static {v1}, Lcom/umeng/message/proguard/as;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 113
    const/4 v0, 0x1

    const-string v4, "cache_log"

    invoke-static {v0, v4, p1}, Lcom/umeng/message/proguard/y;->b(ILjava/lang/String;Ljava/lang/Object;)V

    .line 115
    iget-object v0, p0, Lcom/umeng/message/proguard/N;->d:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    move-object v7, v1

    move-object v1, v2

    move-object v2, v7

    .line 139
    :goto_0
    if-eqz v1, :cond_0

    :try_start_2
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v0

    const/16 v4, 0x3e8

    if-le v0, v4, :cond_0

    .line 142
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v0

    add-int/lit16 v0, v0, -0x3e8

    .line 144
    if-lez v0, :cond_0

    .line 145
    const/4 v4, 0x2

    const-string v5, "cacheLog[cache-full]"

    const-string v6, "start clear log."

    invoke-static {v4, v5, v6}, Lcom/umeng/message/proguard/y;->b(ILjava/lang/String;Ljava/lang/Object;)V

    .line 147
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    .line 148
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, v4}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 150
    invoke-static {}, Lcom/umeng/message/proguard/al;->a()Lcom/umeng/message/proguard/al;

    move-result-object v1

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Lcom/umeng/message/proguard/al;->a([Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v1

    .line 152
    const/4 v4, 0x0

    invoke-direct {p0, v2, v1, v0, v4}, Lcom/umeng/message/proguard/N;->a(Landroid/content/SharedPreferences$Editor;[Ljava/lang/String;IZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 155
    :cond_0
    monitor-exit p0

    return-object v3

    .line 116
    :catch_0
    move-exception v0

    .line 117
    :try_start_3
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v7, v1

    move-object v1, v2

    move-object v2, v7

    .line 118
    goto :goto_0

    .line 123
    :cond_1
    :try_start_4
    iget-object v0, p0, Lcom/umeng/message/proguard/N;->c:Ljava/util/Map;

    new-instance v1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-static {}, Lcom/umeng/message/proguard/t;->b()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/umeng/message/proguard/x;->a([BLjava/lang/String;)[B

    move-result-object v4

    const/4 v5, 0x2

    invoke-static {v4, v5}, Lcom/umeng/message/proguard/ai;->c([BI)[B

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-direct {v1, v4, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    const/4 v0, 0x1

    const-string v1, "cache_log"

    invoke-static {v0, v1, p1}, Lcom/umeng/message/proguard/y;->b(ILjava/lang/String;Ljava/lang/Object;)V

    .line 131
    iget-object v1, p0, Lcom/umeng/message/proguard/N;->c:Ljava/util/Map;
    :try_end_4
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 132
    const/4 v0, 0x1

    :try_start_5
    iput-boolean v0, p0, Lcom/umeng/message/proguard/N;->e:Z
    :try_end_5
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 133
    :catch_1
    move-exception v0

    .line 134
    :goto_1
    :try_start_6
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    .line 98
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 133
    :catch_2
    move-exception v0

    move-object v1, v2

    goto :goto_1

    :cond_2
    move-object v1, v2

    goto :goto_0
.end method

.method public declared-synchronized a()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 205
    monitor-enter p0

    .line 206
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-lt v1, v2, :cond_1

    .line 207
    iget-object v1, p0, Lcom/umeng/message/proguard/N;->d:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_2

    .line 208
    iget-object v1, p0, Lcom/umeng/message/proguard/N;->d:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v1

    .line 213
    :goto_0
    if-eqz v1, :cond_0

    .line 214
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 215
    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 218
    :cond_0
    monitor-exit p0

    return-object v0

    .line 211
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/umeng/message/proguard/N;->c:Ljava/util/Map;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 205
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    move-object v1, v0

    goto :goto_0
.end method

.method public declared-synchronized a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 301
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 302
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 303
    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 304
    invoke-virtual {p0, v0}, Lcom/umeng/message/proguard/N;->a([Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 306
    :cond_0
    monitor-exit p0

    return-void

    .line 301
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a([Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 294
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    array-length v0, p1

    if-lez v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/umeng/message/proguard/N;->d:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 296
    array-length v1, p1

    const/4 v2, 0x1

    invoke-direct {p0, v0, p1, v1, v2}, Lcom/umeng/message/proguard/N;->a(Landroid/content/SharedPreferences$Editor;[Ljava/lang/String;IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 298
    :cond_0
    monitor-exit p0

    return-void

    .line 294
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b()V
    .locals 5

    .prologue
    .line 227
    monitor-enter p0

    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_2

    .line 228
    iget-object v0, p0, Lcom/umeng/message/proguard/N;->d:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/umeng/message/proguard/N;->d:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 230
    invoke-static {v0}, Lcom/umeng/message/proguard/as;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 268
    :cond_0
    :goto_0
    invoke-static {}, Lcom/umeng/message/proguard/y;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 269
    const/4 v0, 0x2

    const-string v1, "saveToStorage"

    const-string v2, "commit to storage"

    invoke-static {v0, v1, v2}, Lcom/umeng/message/proguard/y;->b(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 272
    :cond_1
    :goto_1
    monitor-exit p0

    return-void

    .line 235
    :cond_2
    :try_start_1
    iget-boolean v0, p0, Lcom/umeng/message/proguard/N;->e:Z

    if-nez v0, :cond_3

    .line 236
    const/4 v0, 0x2

    const-string v1, "saveToStorage"

    const-string v2, "return [beacuse no new logs was cached.];"

    invoke-static {v0, v1, v2}, Lcom/umeng/message/proguard/y;->b(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 227
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 240
    :cond_3
    :try_start_2
    iget-object v0, p0, Lcom/umeng/message/proguard/N;->d:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/umeng/message/proguard/N;->c:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/umeng/message/proguard/N;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/umeng/message/proguard/N;->d:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 244
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 246
    iget-object v0, p0, Lcom/umeng/message/proguard/N;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 247
    if-eqz v2, :cond_5

    .line 248
    :cond_4
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 249
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 250
    invoke-static {v0}, Lcom/umeng/message/proguard/at;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 252
    iget-object v3, p0, Lcom/umeng/message/proguard/N;->c:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 253
    iget-object v3, p0, Lcom/umeng/message/proguard/N;->c:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/umeng/message/proguard/at;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 256
    invoke-static {v3}, Lcom/umeng/message/proguard/at;->a(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 257
    invoke-interface {v1, v0, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_2

    .line 263
    :cond_5
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 264
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/umeng/message/proguard/N;->e:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method
