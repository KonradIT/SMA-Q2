.class public Lcom/umeng/message/proguard/E;
.super Lcom/umeng/message/proguard/W;
.source "UTMCEventStreamGroupBiz.java"


# static fields
.field private static a:Lcom/umeng/message/proguard/E;


# instance fields
.field private b:Lcom/umeng/message/proguard/H;

.field private c:Z

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/umeng/message/proguard/K;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x0

    sput-object v0, Lcom/umeng/message/proguard/E;->a:Lcom/umeng/message/proguard/E;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/umeng/message/proguard/W;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/message/proguard/E;->b:Lcom/umeng/message/proguard/H;

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/umeng/message/proguard/E;->c:Z

    .line 23
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/umeng/message/proguard/E;->d:Ljava/util/List;

    .line 27
    return-void
.end method

.method public static declared-synchronized a()Lcom/umeng/message/proguard/E;
    .locals 2

    .prologue
    .line 36
    const-class v1, Lcom/umeng/message/proguard/E;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/umeng/message/proguard/E;->a:Lcom/umeng/message/proguard/E;

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Lcom/umeng/message/proguard/E;

    invoke-direct {v0}, Lcom/umeng/message/proguard/E;-><init>()V

    sput-object v0, Lcom/umeng/message/proguard/E;->a:Lcom/umeng/message/proguard/E;

    .line 39
    :cond_0
    sget-object v0, Lcom/umeng/message/proguard/E;->a:Lcom/umeng/message/proguard/E;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 36
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private declared-synchronized a(Lcom/umeng/message/proguard/H;)V
    .locals 2

    .prologue
    .line 58
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/umeng/message/proguard/E;->b:Lcom/umeng/message/proguard/H;

    .line 60
    iget-object v0, p0, Lcom/umeng/message/proguard/E;->d:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/umeng/message/proguard/E;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/umeng/message/proguard/E;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/message/proguard/K;

    .line 63
    invoke-interface {v0}, Lcom/umeng/message/proguard/K;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 58
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 66
    :cond_0
    monitor-exit p0

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 85
    if-eqz p1, :cond_0

    .line 86
    invoke-static {p1}, Lcom/umeng/message/proguard/Q;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 88
    invoke-virtual {p0, v0}, Lcom/umeng/message/proguard/E;->a(Ljava/util/Map;)Ljava/util/List;

    move-result-object v0

    .line 90
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized a(Ljava/util/Map;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v4, 0x834

    const/4 v1, 0x0

    .line 96
    monitor-enter p0

    if-nez p1, :cond_1

    move-object v0, v1

    .line 144
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    .line 105
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/umeng/message/proguard/E;->b:Lcom/umeng/message/proguard/H;

    if-eqz v0, :cond_8

    .line 107
    iget-object v0, p0, Lcom/umeng/message/proguard/E;->b:Lcom/umeng/message/proguard/H;

    invoke-virtual {v0, p1}, Lcom/umeng/message/proguard/H;->a(Ljava/util/Map;)Ljava/util/List;

    move-result-object v0

    .line 112
    :goto_1
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 114
    :cond_2
    const/4 v2, 0x0

    .line 115
    sget-object v0, Lcom/umeng/message/proguard/v;->D:Lcom/umeng/message/proguard/v;

    invoke-virtual {v0}, Lcom/umeng/message/proguard/v;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 116
    sget-object v0, Lcom/umeng/message/proguard/v;->D:Lcom/umeng/message/proguard/v;

    invoke-virtual {v0}, Lcom/umeng/message/proguard/v;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    if-eqz v0, :cond_3

    .line 120
    :try_start_1
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    move v2, v0

    .line 125
    :cond_3
    :goto_2
    :try_start_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 127
    const/4 v3, 0x1

    if-eq v2, v3, :cond_4

    const v3, 0xee4e

    if-ne v2, v3, :cond_5

    .line 128
    :cond_4
    const-string v2, "stm_x"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 141
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 144
    goto :goto_0

    .line 129
    :cond_5
    const/16 v3, 0x3e8

    if-le v2, v3, :cond_6

    if-ge v2, v4, :cond_6

    .line 131
    const-string v2, "stm_p"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 96
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 132
    :cond_6
    if-le v2, v4, :cond_7

    const/16 v3, 0x898

    if-ge v2, v3, :cond_7

    .line 134
    :try_start_3
    const-string v2, "stm_c"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 137
    :cond_7
    const-string v2, "stm_nc"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 121
    :catch_1
    move-exception v0

    goto :goto_2

    :cond_8
    move-object v0, v1

    goto :goto_1
.end method

.method public declared-synchronized a(Lcom/umeng/message/proguard/K;)V
    .locals 1

    .prologue
    .line 44
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 45
    :try_start_0
    iget-object v0, p0, Lcom/umeng/message/proguard/E;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    :cond_0
    monitor-exit p0

    return-void

    .line 44
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 149
    invoke-static {p2}, Lcom/umeng/message/proguard/at;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 153
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 154
    const-string v3, "cec"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 155
    const-string v3, "cec"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v0, :cond_1

    .line 162
    :goto_0
    iput-boolean v0, p0, Lcom/umeng/message/proguard/E;->c:Z

    .line 164
    const-string v0, "stms"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    new-instance v0, Lcom/umeng/message/proguard/H;

    invoke-direct {v0}, Lcom/umeng/message/proguard/H;-><init>()V

    .line 166
    invoke-virtual {v0, v2}, Lcom/umeng/message/proguard/H;->a(Lorg/json/JSONObject;)V

    .line 167
    invoke-direct {p0, v0}, Lcom/umeng/message/proguard/E;->a(Lcom/umeng/message/proguard/H;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v1

    .line 158
    goto :goto_0

    .line 169
    :catch_0
    move-exception v0

    .line 170
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 187
    return-void
.end method

.method public declared-synchronized b()Z
    .locals 1

    .prologue
    .line 74
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/umeng/message/proguard/E;->b:Lcom/umeng/message/proguard/H;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 75
    const/4 v0, 0x0

    .line 77
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 74
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/umeng/message/proguard/E;->c:Z

    return v0
.end method

.method public d()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 177
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 178
    const-string v1, "B01N17"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    return-object v0
.end method
