.class public Lcom/umeng/message/proguard/H;
.super Ljava/lang/Object;
.source "UTMCEventStreamGroupStrategier.java"


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/umeng/message/proguard/G;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/umeng/message/proguard/G;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/umeng/message/proguard/H;->a:Ljava/util/Map;

    .line 21
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/umeng/message/proguard/H;->b:Ljava/util/List;

    return-void
.end method

.method private b(Ljava/util/Map;)Ljava/util/List;
    .locals 10
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
            "Lcom/umeng/message/proguard/G;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v9, 0x0

    .line 40
    .line 41
    iget-object v0, p0, Lcom/umeng/message/proguard/H;->a:Ljava/util/Map;

    const-string v1, "drop"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/umeng/message/proguard/H;->a:Ljava/util/Map;

    const-string v1, "drop"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/message/proguard/G;

    .line 43
    invoke-virtual {v0, p1}, Lcom/umeng/message/proguard/G;->a(Ljava/util/Map;)Lcom/umeng/message/proguard/J;

    move-result-object v1

    .line 45
    invoke-virtual {v1}, Lcom/umeng/message/proguard/J;->c()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Lcom/umeng/message/proguard/J;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 47
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 48
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v0, v1

    .line 132
    :goto_0
    return-object v0

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/umeng/message/proguard/H;->a:Ljava/util/Map;

    const-string v1, "delay"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 54
    iget-object v0, p0, Lcom/umeng/message/proguard/H;->a:Ljava/util/Map;

    const-string v1, "delay"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/message/proguard/G;

    .line 55
    invoke-virtual {v0, p1}, Lcom/umeng/message/proguard/G;->a(Ljava/util/Map;)Lcom/umeng/message/proguard/J;

    move-result-object v1

    .line 57
    invoke-virtual {v1}, Lcom/umeng/message/proguard/J;->c()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Lcom/umeng/message/proguard/J;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 58
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 59
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v0, v1

    .line 60
    goto :goto_0

    .line 64
    :cond_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 68
    iget-object v0, p0, Lcom/umeng/message/proguard/H;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v1, v2

    move v3, v4

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/message/proguard/G;

    .line 69
    invoke-virtual {v0, p1}, Lcom/umeng/message/proguard/G;->a(Ljava/util/Map;)Lcom/umeng/message/proguard/J;

    move-result-object v7

    .line 71
    invoke-virtual {v7}, Lcom/umeng/message/proguard/J;->c()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v7}, Lcom/umeng/message/proguard/J;->b()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 72
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v1

    move v1, v2

    :goto_2
    move v3, v1

    move v1, v0

    .line 79
    goto :goto_1

    .line 75
    :cond_2
    invoke-virtual {v7}, Lcom/umeng/message/proguard/J;->c()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {v7}, Lcom/umeng/message/proguard/J;->b()Z

    move-result v0

    if-nez v0, :cond_a

    move v0, v4

    move v1, v3

    .line 76
    goto :goto_2

    .line 82
    :cond_3
    iget-object v0, p0, Lcom/umeng/message/proguard/H;->a:Ljava/util/Map;

    const-string v6, "ki_stm_d"

    invoke-interface {v0, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 83
    iget-object v0, p0, Lcom/umeng/message/proguard/H;->a:Ljava/util/Map;

    const-string v6, "ki_stm_d"

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/message/proguard/G;

    .line 84
    invoke-virtual {v0, p1}, Lcom/umeng/message/proguard/G;->a(Ljava/util/Map;)Lcom/umeng/message/proguard/J;

    move-result-object v0

    .line 86
    invoke-virtual {v0}, Lcom/umeng/message/proguard/J;->c()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {v0}, Lcom/umeng/message/proguard/J;->b()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 88
    new-instance v0, Lcom/umeng/message/proguard/G;

    const-string v3, "stm_d"

    invoke-direct {v0, v3, v9}, Lcom/umeng/message/proguard/G;-><init>(Ljava/lang/String;Lorg/json/JSONArray;)V

    .line 90
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v3, v2

    .line 100
    :cond_4
    :goto_3
    if-nez v3, :cond_6

    if-nez v1, :cond_6

    .line 101
    new-instance v0, Lcom/umeng/message/proguard/G;

    const-string v1, "drop"

    invoke-direct {v0, v1, v9}, Lcom/umeng/message/proguard/G;-><init>(Ljava/lang/String;Lorg/json/JSONArray;)V

    .line 103
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v0, v5

    .line 104
    goto/16 :goto_0

    .line 93
    :cond_5
    invoke-virtual {v0}, Lcom/umeng/message/proguard/J;->c()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v0}, Lcom/umeng/message/proguard/J;->b()Z

    move-result v0

    if-nez v0, :cond_4

    move v1, v4

    .line 94
    goto :goto_3

    .line 108
    :cond_6
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_7

    move-object v0, v5

    .line 109
    goto/16 :goto_0

    .line 114
    :cond_7
    iget-object v0, p0, Lcom/umeng/message/proguard/H;->a:Ljava/util/Map;

    const-string v1, "stm_d"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 115
    iget-object v0, p0, Lcom/umeng/message/proguard/H;->a:Ljava/util/Map;

    const-string v1, "stm_d"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/message/proguard/G;

    .line 116
    invoke-virtual {v0, p1}, Lcom/umeng/message/proguard/G;->a(Ljava/util/Map;)Lcom/umeng/message/proguard/J;

    move-result-object v1

    .line 118
    invoke-virtual {v1}, Lcom/umeng/message/proguard/J;->c()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {v1}, Lcom/umeng/message/proguard/J;->b()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 119
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v0, v5

    .line 120
    goto/16 :goto_0

    .line 123
    :cond_8
    new-instance v0, Lcom/umeng/message/proguard/G;

    const-string v1, "drop"

    invoke-direct {v0, v1, v9}, Lcom/umeng/message/proguard/G;-><init>(Ljava/lang/String;Lorg/json/JSONArray;)V

    .line 125
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v0, v5

    .line 126
    goto/16 :goto_0

    .line 129
    :cond_9
    new-instance v0, Lcom/umeng/message/proguard/G;

    const-string v1, "stm_d"

    invoke-direct {v0, v1, v9}, Lcom/umeng/message/proguard/G;-><init>(Ljava/lang/String;Lorg/json/JSONArray;)V

    .line 131
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v0, v5

    .line 132
    goto/16 :goto_0

    :cond_a
    move v0, v1

    move v1, v3

    goto/16 :goto_2
.end method

.method private b(Lorg/json/JSONObject;)V
    .locals 3

    .prologue
    .line 159
    if-eqz p1, :cond_2

    .line 161
    const/4 v0, 0x0

    .line 162
    :try_start_0
    const-string v1, "stm"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 163
    const-string v0, "stm"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 166
    :cond_0
    invoke-static {v0}, Lcom/umeng/message/proguard/at;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 168
    const-string v1, "rs"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 169
    const-string v1, "rs"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 170
    new-instance v2, Lcom/umeng/message/proguard/G;

    invoke-direct {v2, v0, v1}, Lcom/umeng/message/proguard/G;-><init>(Ljava/lang/String;Lorg/json/JSONArray;)V

    .line 172
    const-string v1, "stm_d"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "ki_stm_d"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "drop"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "delay"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 176
    :cond_1
    iget-object v1, p0, Lcom/umeng/message/proguard/H;->a:Ljava/util/Map;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    :cond_2
    :goto_0
    return-void

    .line 178
    :cond_3
    iget-object v0, p0, Lcom/umeng/message/proguard/H;->b:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 182
    :catch_0
    move-exception v0

    .line 183
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/util/Map;)Ljava/util/List;
    .locals 4
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
    .line 24
    invoke-direct {p0, p1}, Lcom/umeng/message/proguard/H;->b(Ljava/util/Map;)Ljava/util/List;

    move-result-object v0

    .line 25
    if-nez v0, :cond_0

    .line 26
    const/4 v0, 0x0

    .line 35
    :goto_0
    return-object v0

    .line 29
    :cond_0
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 30
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/message/proguard/G;

    .line 31
    invoke-virtual {v0}, Lcom/umeng/message/proguard/G;->a()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 32
    invoke-virtual {v0}, Lcom/umeng/message/proguard/G;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 35
    goto :goto_0
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 3

    .prologue
    .line 137
    if-eqz p1, :cond_1

    const-string v0, "stms"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 140
    :try_start_0
    const-string v0, "stms"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 141
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 142
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 143
    if-eqz v2, :cond_0

    .line 144
    invoke-direct {p0, v2}, Lcom/umeng/message/proguard/H;->b(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 147
    :catch_0
    move-exception v0

    .line 148
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 151
    :cond_1
    return-void
.end method
