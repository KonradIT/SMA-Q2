.class Lcom/umeng/message/proguard/P$a;
.super Ljava/lang/Thread;
.source "UTMCABTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/message/proguard/P;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/umeng/message/proguard/P;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/umeng/message/proguard/P;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 66
    iput-object p1, p0, Lcom/umeng/message/proguard/P$a;->a:Lcom/umeng/message/proguard/P;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/message/proguard/P$a;->b:Ljava/lang/String;

    .line 67
    iput-object p2, p0, Lcom/umeng/message/proguard/P$a;->b:Ljava/lang/String;

    .line 68
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 72
    iget-object v0, p0, Lcom/umeng/message/proguard/P$a;->a:Lcom/umeng/message/proguard/P;

    invoke-static {v0}, Lcom/umeng/message/proguard/P;->a(Lcom/umeng/message/proguard/P;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 73
    :try_start_0
    iget-object v0, p0, Lcom/umeng/message/proguard/P$a;->a:Lcom/umeng/message/proguard/P;

    invoke-static {v0}, Lcom/umeng/message/proguard/P;->b(Lcom/umeng/message/proguard/P;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    monitor-exit v1

    .line 135
    :goto_0
    return-void

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/umeng/message/proguard/P$a;->a:Lcom/umeng/message/proguard/P;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/umeng/message/proguard/P;->a(Lcom/umeng/message/proguard/P;Z)Z

    .line 77
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    :try_start_1
    const-string v0, "http://adash.m.taobao.com/rest/abtest"

    invoke-static {v0}, Lcom/umeng/message/proguard/Z;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 83
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-static {v1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 85
    const-string v2, "%s&logid=%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 87
    const/4 v2, 0x2

    const-string v3, "request[abtest]"

    invoke-static {v2, v3, v0}, Lcom/umeng/message/proguard/y;->b(ILjava/lang/String;Ljava/lang/Object;)V

    .line 89
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v2, v0, v3, v4}, Lcom/umeng/message/proguard/aj;->a(ILjava/lang/String;Ljava/util/Map;Z)[B

    move-result-object v0

    .line 92
    if-eqz v0, :cond_2

    array-length v2, v0

    if-lez v2, :cond_2

    .line 93
    new-instance v2, Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-direct {v2, v0, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 94
    const/4 v0, 0x2

    const-string v3, "result[abtest]"

    invoke-static {v0, v3, v2}, Lcom/umeng/message/proguard/y;->b(ILjava/lang/String;Ljava/lang/Object;)V

    .line 96
    invoke-static {v2}, Lcom/umeng/message/proguard/ah;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 98
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 99
    const-string v2, "t"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 101
    iget-object v0, p0, Lcom/umeng/message/proguard/P$a;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/umeng/message/proguard/Q;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 103
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 104
    sget-object v4, Lcom/umeng/message/proguard/v;->H:Lcom/umeng/message/proguard/v;

    invoke-virtual {v4}, Lcom/umeng/message/proguard/v;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 106
    sget-object v4, Lcom/umeng/message/proguard/v;->H:Lcom/umeng/message/proguard/v;

    invoke-virtual {v4}, Lcom/umeng/message/proguard/v;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    :cond_1
    sget-object v4, Lcom/umeng/message/proguard/v;->B:Lcom/umeng/message/proguard/v;

    invoke-virtual {v4}, Lcom/umeng/message/proguard/v;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    sget-object v2, Lcom/umeng/message/proguard/v;->C:Lcom/umeng/message/proguard/v;

    invoke-virtual {v2}, Lcom/umeng/message/proguard/v;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ABTest"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    sget-object v2, Lcom/umeng/message/proguard/v;->D:Lcom/umeng/message/proguard/v;

    invoke-virtual {v2}, Lcom/umeng/message/proguard/v;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "6677"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    sget-object v2, Lcom/umeng/message/proguard/v;->E:Lcom/umeng/message/proguard/v;

    invoke-virtual {v2}, Lcom/umeng/message/proguard/v;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    sget-object v1, Lcom/umeng/message/proguard/v;->F:Lcom/umeng/message/proguard/v;

    invoke-virtual {v1}, Lcom/umeng/message/proguard/v;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "-"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    sget-object v1, Lcom/umeng/message/proguard/v;->G:Lcom/umeng/message/proguard/v;

    invoke-virtual {v1}, Lcom/umeng/message/proguard/v;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "-"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    sget-object v1, Lcom/umeng/message/proguard/v;->H:Lcom/umeng/message/proguard/v;

    invoke-virtual {v1}, Lcom/umeng/message/proguard/v;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "-"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    invoke-static {}, Lcom/umeng/message/proguard/L;->a()Lcom/umeng/message/proguard/L;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/umeng/message/proguard/L;->a(Ljava/util/Map;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 133
    :cond_2
    iget-object v0, p0, Lcom/umeng/message/proguard/P$a;->a:Lcom/umeng/message/proguard/P;

    invoke-static {v0, v7}, Lcom/umeng/message/proguard/P;->a(Lcom/umeng/message/proguard/P;Z)Z

    goto/16 :goto_0

    .line 77
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 130
    :catch_0
    move-exception v0

    .line 131
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 133
    iget-object v0, p0, Lcom/umeng/message/proguard/P$a;->a:Lcom/umeng/message/proguard/P;

    invoke-static {v0, v7}, Lcom/umeng/message/proguard/P;->a(Lcom/umeng/message/proguard/P;Z)Z

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    iget-object v1, p0, Lcom/umeng/message/proguard/P$a;->a:Lcom/umeng/message/proguard/P;

    invoke-static {v1, v7}, Lcom/umeng/message/proguard/P;->a(Lcom/umeng/message/proguard/P;Z)Z

    throw v0
.end method
