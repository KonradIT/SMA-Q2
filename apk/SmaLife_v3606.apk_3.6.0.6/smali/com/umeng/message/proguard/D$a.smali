.class Lcom/umeng/message/proguard/D$a;
.super Ljava/lang/Thread;
.source "UTMCLogTransfer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/message/proguard/D;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/umeng/message/proguard/D;


# direct methods
.method private constructor <init>(Lcom/umeng/message/proguard/D;)V
    .locals 0

    .prologue
    .line 164
    iput-object p1, p0, Lcom/umeng/message/proguard/D$a;->a:Lcom/umeng/message/proguard/D;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/umeng/message/proguard/D;Lcom/umeng/message/proguard/D$1;)V
    .locals 0

    .prologue
    .line 164
    invoke-direct {p0, p1}, Lcom/umeng/message/proguard/D$a;-><init>(Lcom/umeng/message/proguard/D;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/util/Map;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v0, 0x0

    .line 167
    if-eqz p1, :cond_0

    .line 168
    const/4 v1, 0x2

    invoke-static {v1, p1, p2, v0}, Lcom/umeng/message/proguard/aj;->a(ILjava/lang/String;Ljava/util/Map;Z)[B

    move-result-object v3

    .line 171
    const-string v1, "request"

    invoke-static {v5, v1, p1}, Lcom/umeng/message/proguard/y;->b(ILjava/lang/String;Ljava/lang/Object;)V

    .line 172
    if-eqz p1, :cond_0

    if-eqz v3, :cond_0

    .line 173
    const/4 v2, 0x0

    .line 175
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-direct {v1, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    :goto_0
    if-eqz v1, :cond_0

    .line 180
    const-string v0, "result"

    invoke-static {v5, v0, v1}, Lcom/umeng/message/proguard/y;->b(ILjava/lang/String;Ljava/lang/Object;)V

    .line 182
    invoke-static {v1}, Lcom/umeng/message/proguard/ah;->a(Ljava/lang/String;)Z

    move-result v0

    .line 187
    :cond_0
    return v0

    .line 176
    :catch_0
    move-exception v1

    .line 177
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    move-object v1, v2

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v3, 0x0

    .line 192
    invoke-static {}, Lcom/umeng/message/proguard/D;->c()Lcom/umeng/message/proguard/D;

    move-result-object v1

    monitor-enter v1

    .line 193
    :try_start_0
    iget-object v0, p0, Lcom/umeng/message/proguard/D$a;->a:Lcom/umeng/message/proguard/D;

    invoke-static {v0}, Lcom/umeng/message/proguard/D;->a(Lcom/umeng/message/proguard/D;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    monitor-exit v1

    .line 276
    :goto_0
    return-void

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/umeng/message/proguard/D$a;->a:Lcom/umeng/message/proguard/D;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/umeng/message/proguard/D;->a(Lcom/umeng/message/proguard/D;Z)Z

    .line 198
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 201
    :goto_1
    const/4 v0, 0x3

    if-ge v2, v0, :cond_2

    .line 203
    :try_start_1
    invoke-static {}, Lcom/umeng/message/proguard/E;->a()Lcom/umeng/message/proguard/E;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/message/proguard/E;->c()Z

    move-result v0

    .line 209
    invoke-static {}, Lcom/umeng/message/proguard/S;->a()Lcom/umeng/message/proguard/S;

    move-result-object v1

    invoke-virtual {v1}, Lcom/umeng/message/proguard/S;->b()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 210
    iget-object v1, p0, Lcom/umeng/message/proguard/D$a;->a:Lcom/umeng/message/proguard/D;

    invoke-static {v1}, Lcom/umeng/message/proguard/D;->c(Lcom/umeng/message/proguard/D;)Lcom/umeng/message/proguard/M;

    move-result-object v1

    iget-object v4, p0, Lcom/umeng/message/proguard/D$a;->a:Lcom/umeng/message/proguard/D;

    invoke-static {v4}, Lcom/umeng/message/proguard/D;->b(Lcom/umeng/message/proguard/D;)I

    move-result v4

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v0, v5}, Lcom/umeng/message/proguard/M;->a(IZZ)Lcom/umeng/message/proguard/M$a;

    move-result-object v0

    move-object v1, v0

    .line 217
    :goto_2
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/umeng/message/proguard/M$a;->a()I

    move-result v0

    if-nez v0, :cond_4

    .line 218
    :cond_1
    const/4 v0, 0x2

    const-string v1, "request[transfer_data]"

    const-string v2, "skip[no logs]"

    invoke-static {v0, v1, v2}, Lcom/umeng/message/proguard/y;->b(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 274
    :cond_2
    iget-object v0, p0, Lcom/umeng/message/proguard/D$a;->a:Lcom/umeng/message/proguard/D;

    invoke-static {v0, v3}, Lcom/umeng/message/proguard/D;->a(Lcom/umeng/message/proguard/D;Z)Z

    goto :goto_0

    .line 198
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 213
    :cond_3
    :try_start_3
    iget-object v1, p0, Lcom/umeng/message/proguard/D$a;->a:Lcom/umeng/message/proguard/D;

    invoke-static {v1}, Lcom/umeng/message/proguard/D;->c(Lcom/umeng/message/proguard/D;)Lcom/umeng/message/proguard/M;

    move-result-object v1

    iget-object v4, p0, Lcom/umeng/message/proguard/D$a;->a:Lcom/umeng/message/proguard/D;

    invoke-static {v4}, Lcom/umeng/message/proguard/D;->b(Lcom/umeng/message/proguard/D;)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v0, v5}, Lcom/umeng/message/proguard/M;->a(IZZ)Lcom/umeng/message/proguard/M$a;

    move-result-object v0

    move-object v1, v0

    goto :goto_2

    .line 223
    :cond_4
    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lcom/umeng/message/proguard/M$a;->a()I

    move-result v0

    if-lez v0, :cond_8

    .line 226
    iget-object v0, p0, Lcom/umeng/message/proguard/D$a;->a:Lcom/umeng/message/proguard/D;

    invoke-static {v0}, Lcom/umeng/message/proguard/D;->d(Lcom/umeng/message/proguard/D;)Lcom/umeng/message/proguard/N;

    move-result-object v0

    invoke-virtual {v1}, Lcom/umeng/message/proguard/M$a;->d()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/umeng/message/proguard/N;->a(Ljava/util/List;)V

    .line 228
    const/4 v0, 0x2

    const-string v4, "reqeust[transfer_data]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mCurPackRecordCount="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/umeng/message/proguard/D$a;->a:Lcom/umeng/message/proguard/D;

    invoke-static {v6}, Lcom/umeng/message/proguard/D;->b(Lcom/umeng/message/proguard/D;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v4, v5}, Lcom/umeng/message/proguard/y;->b(ILjava/lang/String;Ljava/lang/Object;)V

    .line 232
    invoke-static {}, Lcom/umeng/message/proguard/E;->a()Lcom/umeng/message/proguard/E;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/message/proguard/E;->b()Z

    move-result v4

    .line 235
    invoke-static {v1}, Lcom/umeng/message/proguard/Y;->a(Lcom/umeng/message/proguard/M$a;)Ljava/util/Map;

    move-result-object v5

    .line 239
    if-eqz v5, :cond_8

    invoke-interface {v5}, Ljava/util/Map;->size()I
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v0

    if-lez v0, :cond_8

    .line 241
    :try_start_4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 242
    invoke-static {}, Lcom/umeng/message/proguard/t;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/message/proguard/Z;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 245
    if-nez v4, :cond_6

    .line 246
    const-string v4, "%s&nsgs=1"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    if-nez v0, :cond_5

    const-string v0, ""

    :cond_5
    aput-object v0, v8, v9

    invoke-static {v4, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 252
    :cond_6
    invoke-direct {p0, v0, v5}, Lcom/umeng/message/proguard/D$a;->a(Ljava/lang/String;Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 253
    iget-object v0, p0, Lcom/umeng/message/proguard/D$a;->a:Lcom/umeng/message/proguard/D;

    invoke-static {v0}, Lcom/umeng/message/proguard/D;->d(Lcom/umeng/message/proguard/D;)Lcom/umeng/message/proguard/N;

    move-result-object v0

    invoke-virtual {v1}, Lcom/umeng/message/proguard/M$a;->b()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/umeng/message/proguard/N;->a(Ljava/util/List;)V

    .line 256
    :cond_7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long/2addr v0, v6

    .line 258
    const/4 v4, 0x2

    const-string v5, "request[transfer-data]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "delay\uff1d"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "ms"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/umeng/message/proguard/y;->b(ILjava/lang/String;Ljava/lang/Object;)V

    .line 262
    iget-object v4, p0, Lcom/umeng/message/proguard/D$a;->a:Lcom/umeng/message/proguard/D;

    iget-object v5, p0, Lcom/umeng/message/proguard/D$a;->a:Lcom/umeng/message/proguard/D;

    invoke-static {v5}, Lcom/umeng/message/proguard/D;->b(Lcom/umeng/message/proguard/D;)I

    move-result v5

    invoke-static {v5, v0, v1}, Lcom/umeng/message/proguard/D;->a(IJ)I

    move-result v0

    invoke-static {v4, v0}, Lcom/umeng/message/proguard/D;->a(Lcom/umeng/message/proguard/D;I)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 201
    :cond_8
    :goto_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_1

    .line 264
    :catch_0
    move-exception v0

    .line 265
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_3

    .line 271
    :catch_1
    move-exception v0

    .line 272
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 274
    iget-object v0, p0, Lcom/umeng/message/proguard/D$a;->a:Lcom/umeng/message/proguard/D;

    invoke-static {v0, v3}, Lcom/umeng/message/proguard/D;->a(Lcom/umeng/message/proguard/D;Z)Z

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    iget-object v1, p0, Lcom/umeng/message/proguard/D$a;->a:Lcom/umeng/message/proguard/D;

    invoke-static {v1, v3}, Lcom/umeng/message/proguard/D;->a(Lcom/umeng/message/proguard/D;Z)Z

    throw v0
.end method
