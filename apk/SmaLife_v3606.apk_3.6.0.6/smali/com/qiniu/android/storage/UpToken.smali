.class public final Lcom/qiniu/android/storage/UpToken;
.super Ljava/lang/Object;
.source "UpToken.java"


# instance fields
.field private returnUrl:Ljava/lang/String;

.field public final token:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 1
    .param p1, "obj"    # Lorg/json/JSONObject;
    .param p2, "token"    # Ljava/lang/String;

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qiniu/android/storage/UpToken;->returnUrl:Ljava/lang/String;

    .line 16
    const-string v0, "returnUrl"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qiniu/android/storage/UpToken;->returnUrl:Ljava/lang/String;

    .line 17
    iput-object p2, p0, Lcom/qiniu/android/storage/UpToken;->token:Ljava/lang/String;

    .line 18
    return-void
.end method

.method public static parse(Ljava/lang/String;)Lcom/qiniu/android/storage/UpToken;
    .locals 9
    .param p0, "token"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 23
    :try_start_0
    const-string v7, ":"

    invoke-virtual {p0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 27
    .local v5, "t":[Ljava/lang/String;
    array-length v7, v5

    const/4 v8, 0x3

    if-eq v7, v8, :cond_1

    .line 46
    .end local v5    # "t":[Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v6

    .line 24
    :catch_0
    move-exception v2

    .line 25
    .local v2, "e":Ljava/lang/Exception;
    goto :goto_0

    .line 30
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v5    # "t":[Ljava/lang/String;
    :cond_1
    const/4 v7, 0x2

    aget-object v7, v5, v7

    invoke-static {v7}, Lcom/qiniu/android/utils/UrlSafeBase64;->decode(Ljava/lang/String;)[B

    move-result-object v1

    .line 33
    .local v1, "dtoken":[B
    :try_start_1
    new-instance v3, Lorg/json/JSONObject;

    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v1}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v3, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 37
    .local v3, "obj":Lorg/json/JSONObject;
    const-string v7, "scope"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 38
    .local v4, "scope":Ljava/lang/String;
    const-string v7, ""

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 42
    const-string v7, "deadline"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 43
    .local v0, "deadline":I
    if-eqz v0, :cond_0

    .line 46
    new-instance v6, Lcom/qiniu/android/storage/UpToken;

    invoke-direct {v6, v3, p0}, Lcom/qiniu/android/storage/UpToken;-><init>(Lorg/json/JSONObject;Ljava/lang/String;)V

    goto :goto_0

    .line 34
    .end local v0    # "deadline":I
    .end local v3    # "obj":Lorg/json/JSONObject;
    .end local v4    # "scope":Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 35
    .local v2, "e":Lorg/json/JSONException;
    goto :goto_0
.end method


# virtual methods
.method public hasReturnUrl()Z
    .locals 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/qiniu/android/storage/UpToken;->returnUrl:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/qiniu/android/storage/UpToken;->token:Ljava/lang/String;

    return-object v0
.end method
