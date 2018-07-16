.class public Lorg/android/agoo/net/mtop/MtopResponseHelper;
.super Ljava/lang/Object;
.source "MtopResponseHelper.java"


# static fields
.field public static final a:Ljava/lang/String; = "SUCCESS"

.field public static final b:Ljava/lang/String; = "FAIL"

.field private static final c:Ljava/lang/String; = "MtopResponseHelper"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Ljava/lang/String;)Lorg/android/agoo/net/mtop/Result;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 25
    new-instance v2, Lorg/android/agoo/net/mtop/Result;

    invoke-direct {v2}, Lorg/android/agoo/net/mtop/Result;-><init>()V

    .line 27
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 28
    const-string v0, "ret"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 31
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    move v0, v1

    :goto_0
    if-ge v0, v5, :cond_2

    .line 32
    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 33
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 31
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 36
    :cond_1
    const-string v7, "::"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 37
    if-eqz v6, :cond_0

    const/4 v7, 0x2

    array-length v8, v6

    if-ne v7, v8, :cond_0

    .line 38
    const/4 v7, 0x0

    aget-object v7, v6, v7

    invoke-virtual {v2, v7}, Lorg/android/agoo/net/mtop/Result;->setRetCode(Ljava/lang/String;)V

    .line 39
    const/4 v7, 0x1

    aget-object v7, v6, v7

    invoke-virtual {v2, v7}, Lorg/android/agoo/net/mtop/Result;->setRetDesc(Ljava/lang/String;)V

    .line 40
    const-string v7, "SUCCESS"

    const/4 v8, 0x0

    aget-object v6, v6, v8

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 41
    const-string v0, "data"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/android/agoo/net/mtop/Result;->setData(Ljava/lang/String;)V

    .line 42
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Lorg/android/agoo/net/mtop/Result;->setSuccess(Z)V

    .line 49
    :cond_2
    const/16 v0, 0xc8

    invoke-virtual {v2, v0}, Lorg/android/agoo/net/mtop/Result;->setHttpCode(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    :goto_2
    const-string v0, "MtopResponseHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MtopResponseHelper:["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Lorg/android/agoo/net/mtop/Result;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/umeng/message/proguard/aK;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    return-object v2

    .line 45
    :cond_3
    const/4 v6, 0x0

    :try_start_1
    invoke-virtual {v2, v6}, Lorg/android/agoo/net/mtop/Result;->setSuccess(Z)V

    .line 46
    const-string v6, "data"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lorg/android/agoo/net/mtop/Result;->setData(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 50
    :catch_0
    move-exception v0

    .line 51
    invoke-virtual {v2, v1}, Lorg/android/agoo/net/mtop/Result;->setSuccess(Z)V

    .line 52
    invoke-virtual {v2, p0}, Lorg/android/agoo/net/mtop/Result;->setData(Ljava/lang/String;)V

    .line 53
    const/16 v0, 0x12e

    invoke-virtual {v2, v0}, Lorg/android/agoo/net/mtop/Result;->setHttpCode(I)V

    goto :goto_2
.end method
