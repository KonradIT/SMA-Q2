.class public Lcom/umeng/message/proguard/F;
.super Ljava/lang/Object;
.source "UTMCEventStreamGroupRule.java"


# instance fields
.field private a:Lcom/umeng/message/proguard/I;

.field private b:[Ljava/lang/String;

.field private c:[Ljava/lang/String;

.field private d:[Ljava/lang/String;

.field private e:[Ljava/lang/String;

.field private f:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 7

    .prologue
    const/16 v6, 0x64

    const/4 v0, 0x0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    iput-object v0, p0, Lcom/umeng/message/proguard/F;->a:Lcom/umeng/message/proguard/I;

    .line 144
    iput-object v0, p0, Lcom/umeng/message/proguard/F;->b:[Ljava/lang/String;

    .line 145
    iput-object v0, p0, Lcom/umeng/message/proguard/F;->c:[Ljava/lang/String;

    .line 146
    iput-object v0, p0, Lcom/umeng/message/proguard/F;->d:[Ljava/lang/String;

    .line 147
    iput-object v0, p0, Lcom/umeng/message/proguard/F;->e:[Ljava/lang/String;

    .line 148
    iput-object v0, p0, Lcom/umeng/message/proguard/F;->f:[Ljava/lang/String;

    .line 37
    new-instance v0, Lcom/umeng/message/proguard/I;

    invoke-direct {v0}, Lcom/umeng/message/proguard/I;-><init>()V

    iput-object v0, p0, Lcom/umeng/message/proguard/F;->a:Lcom/umeng/message/proguard/I;

    .line 39
    :try_start_0
    const-string v0, "ers"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 40
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 41
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 42
    const-string v3, "e"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    .line 44
    const-string v4, "cp"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    .line 45
    if-eqz v3, :cond_0

    if-ltz v4, :cond_0

    if-gt v4, v6, :cond_0

    .line 47
    iget-object v5, p0, Lcom/umeng/message/proguard/F;->a:Lcom/umeng/message/proguard/I;

    invoke-virtual {v5, v3, v4}, Lcom/umeng/message/proguard/I;->a(II)V

    .line 50
    :cond_0
    const-string v4, "cp"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 51
    iget-object v2, p0, Lcom/umeng/message/proguard/F;->a:Lcom/umeng/message/proguard/I;

    const/16 v4, 0x64

    invoke-virtual {v2, v3, v4}, Lcom/umeng/message/proguard/I;->a(II)V

    .line 40
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 55
    :cond_2
    const-string v0, "p"

    invoke-direct {p0, v0, p1}, Lcom/umeng/message/proguard/F;->a(Ljava/lang/String;Lorg/json/JSONObject;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/message/proguard/F;->b:[Ljava/lang/String;

    .line 56
    const-string v0, "a1"

    invoke-direct {p0, v0, p1}, Lcom/umeng/message/proguard/F;->a(Ljava/lang/String;Lorg/json/JSONObject;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/message/proguard/F;->c:[Ljava/lang/String;

    .line 57
    const-string v0, "a2"

    invoke-direct {p0, v0, p1}, Lcom/umeng/message/proguard/F;->a(Ljava/lang/String;Lorg/json/JSONObject;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/message/proguard/F;->d:[Ljava/lang/String;

    .line 58
    const-string v0, "a3"

    invoke-direct {p0, v0, p1}, Lcom/umeng/message/proguard/F;->a(Ljava/lang/String;Lorg/json/JSONObject;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/message/proguard/F;->e:[Ljava/lang/String;

    .line 59
    const-string v0, "as"

    invoke-direct {p0, v0, p1}, Lcom/umeng/message/proguard/F;->a(Ljava/lang/String;Lorg/json/JSONObject;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/message/proguard/F;->f:[Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    :goto_1
    return-void

    .line 61
    :catch_0
    move-exception v0

    .line 62
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method private a(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 70
    if-eqz p2, :cond_0

    array-length v2, p2

    if-nez v2, :cond_1

    .line 93
    :cond_0
    :goto_0
    return v0

    .line 74
    :cond_1
    :try_start_0
    invoke-static {p1}, Lcom/umeng/message/proguard/at;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    if-eqz p2, :cond_4

    array-length v2, p2

    if-lez v2, :cond_4

    .line 76
    array-length v3, p2

    move v2, v1

    :goto_1
    if-ge v2, v3, :cond_4

    aget-object v4, p2, v2

    .line 77
    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 79
    const/4 v5, 0x1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x2

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 80
    invoke-virtual {p1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 76
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 84
    :cond_3
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    .line 90
    :catch_0
    move-exception v0

    .line 91
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    move v0, v1

    .line 93
    goto :goto_0
.end method

.method private a(Ljava/lang/String;Lorg/json/JSONObject;)[Ljava/lang/String;
    .locals 4

    .prologue
    .line 22
    :try_start_0
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 23
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 24
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 25
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 26
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 30
    :catch_0
    move-exception v0

    .line 33
    :cond_0
    const/4 v0, 0x0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public a(Ljava/util/Map;)Lcom/umeng/message/proguard/J;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/umeng/message/proguard/J;"
        }
    .end annotation

    .prologue
    .line 97
    .line 99
    if-eqz p1, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/umeng/message/proguard/F;->a:Lcom/umeng/message/proguard/I;

    if-eqz v0, :cond_1

    .line 100
    sget-object v0, Lcom/umeng/message/proguard/v;->D:Lcom/umeng/message/proguard/v;

    invoke-virtual {v0}, Lcom/umeng/message/proguard/v;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 102
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 103
    iget-object v1, p0, Lcom/umeng/message/proguard/F;->a:Lcom/umeng/message/proguard/I;

    if-eqz v1, :cond_1

    .line 105
    iget-object v1, p0, Lcom/umeng/message/proguard/F;->a:Lcom/umeng/message/proguard/I;

    invoke-virtual {v1, v0}, Lcom/umeng/message/proguard/I;->a(I)Lcom/umeng/message/proguard/I$b;

    move-result-object v5

    .line 106
    invoke-virtual {v5}, Lcom/umeng/message/proguard/I$b;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 107
    sget-object v0, Lcom/umeng/message/proguard/v;->C:Lcom/umeng/message/proguard/v;

    invoke-virtual {v0}, Lcom/umeng/message/proguard/v;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 109
    sget-object v1, Lcom/umeng/message/proguard/v;->E:Lcom/umeng/message/proguard/v;

    invoke-virtual {v1}, Lcom/umeng/message/proguard/v;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 111
    sget-object v2, Lcom/umeng/message/proguard/v;->F:Lcom/umeng/message/proguard/v;

    invoke-virtual {v2}, Lcom/umeng/message/proguard/v;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 113
    sget-object v3, Lcom/umeng/message/proguard/v;->G:Lcom/umeng/message/proguard/v;

    invoke-virtual {v3}, Lcom/umeng/message/proguard/v;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 115
    sget-object v4, Lcom/umeng/message/proguard/v;->H:Lcom/umeng/message/proguard/v;

    invoke-virtual {v4}, Lcom/umeng/message/proguard/v;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 117
    iget-object v6, p0, Lcom/umeng/message/proguard/F;->b:[Ljava/lang/String;

    invoke-direct {p0, v0, v6}, Lcom/umeng/message/proguard/F;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/umeng/message/proguard/F;->c:[Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcom/umeng/message/proguard/F;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/umeng/message/proguard/F;->d:[Ljava/lang/String;

    invoke-direct {p0, v2, v0}, Lcom/umeng/message/proguard/F;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/umeng/message/proguard/F;->e:[Ljava/lang/String;

    invoke-direct {p0, v3, v0}, Lcom/umeng/message/proguard/F;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/umeng/message/proguard/F;->f:[Ljava/lang/String;

    invoke-direct {p0, v4, v0}, Lcom/umeng/message/proguard/F;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 122
    new-instance v0, Lcom/umeng/message/proguard/J;

    invoke-direct {v0}, Lcom/umeng/message/proguard/J;-><init>()V

    .line 124
    invoke-virtual {v5}, Lcom/umeng/message/proguard/I$b;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 125
    invoke-virtual {v0}, Lcom/umeng/message/proguard/J;->a()V

    .line 127
    :cond_0
    invoke-virtual {v5}, Lcom/umeng/message/proguard/I$b;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/umeng/message/proguard/J;->a(I)V

    .line 128
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/umeng/message/proguard/J;->a(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    :goto_0
    return-object v0

    .line 134
    :catch_0
    move-exception v0

    .line 135
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 137
    :cond_1
    new-instance v0, Lcom/umeng/message/proguard/J;

    invoke-direct {v0}, Lcom/umeng/message/proguard/J;-><init>()V

    .line 139
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/umeng/message/proguard/J;->a(Z)V

    goto :goto_0
.end method
