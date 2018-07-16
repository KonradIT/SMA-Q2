.class public Lorg/android/agoo/impl/UpdateService;
.super Ljava/lang/Object;
.source "UpdateService.java"

# interfaces
.implements Lorg/android/agoo/IUpdateService;


# static fields
.field static final f:Ljava/lang/String; = "wifi"

.field static final g:Ljava/lang/String; = "2g"

.field static final h:Ljava/lang/String; = "3g"

.field static final i:Ljava/lang/String; = "4g"

.field private static final j:Ljava/lang/String; = "mtop.atlas.getBaseUpdateList"

.field private static final k:Ljava/lang/String; = "1.0"

.field private static final l:Ljava/lang/String; = "hasAvailableUpdate"

.field private static final m:Ljava/lang/String; = "updateInfo"

.field private static final n:Ljava/lang/String; = "info"

.field private static final o:Ljava/lang/String; = "name"

.field private static final p:Ljava/lang/String; = "size"

.field private static final q:Ljava/lang/String; = "url"

.field private static final r:Ljava/lang/String; = "version"

.field private static final s:Ljava/lang/String; = "md5"

.field private static final t:Ljava/lang/String; = "UpdateService"


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const-string v0, "androidVersion"

    iput-object v0, p0, Lorg/android/agoo/impl/UpdateService;->a:Ljava/lang/String;

    .line 35
    const-string v0, "mainVersion"

    iput-object v0, p0, Lorg/android/agoo/impl/UpdateService;->b:Ljava/lang/String;

    .line 36
    const-string v0, "atlasVersion"

    iput-object v0, p0, Lorg/android/agoo/impl/UpdateService;->c:Ljava/lang/String;

    .line 37
    const-string v0, "netStatus"

    iput-object v0, p0, Lorg/android/agoo/impl/UpdateService;->d:Ljava/lang/String;

    .line 38
    const-string v0, "group"

    iput-object v0, p0, Lorg/android/agoo/impl/UpdateService;->e:Ljava/lang/String;

    return-void
.end method

.method private static a(Ljava/lang/String;Lcom/umeng/message/proguard/aS;)I
    .locals 2

    .prologue
    .line 175
    const-string v0, "2g"

    invoke-virtual {p1}, Lcom/umeng/message/proguard/aS;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    const/4 v0, 0x1

    .line 184
    :goto_0
    return v0

    .line 177
    :cond_0
    const-string v0, "3g"

    invoke-virtual {p1}, Lcom/umeng/message/proguard/aS;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 178
    const/4 v0, 0x2

    goto :goto_0

    .line 179
    :cond_1
    const-string v0, "4g"

    invoke-virtual {p1}, Lcom/umeng/message/proguard/aS;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 180
    const/4 v0, 0x4

    goto :goto_0

    .line 181
    :cond_2
    const-string v0, "wifi"

    invoke-virtual {p1}, Lcom/umeng/message/proguard/aS;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 182
    const/16 v0, 0xa

    goto :goto_0

    .line 184
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;)Lcom/umeng/message/proguard/aF;
    .locals 11

    .prologue
    const/4 v0, 0x0

    .line 188
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 234
    :goto_0
    return-object v0

    .line 191
    :cond_0
    new-instance v1, Lcom/umeng/message/proguard/aF;

    invoke-direct {v1}, Lcom/umeng/message/proguard/aF;-><init>()V

    .line 193
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 194
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 195
    const-string v3, "hasAvailableUpdate"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 196
    const-string v3, "hasAvailableUpdate"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 198
    const-string v4, "hasAvailableUpdate"

    invoke-virtual {v7, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    :cond_1
    const-string v3, "updateInfo"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 201
    new-instance v8, Lcom/umeng/message/proguard/aG;

    invoke-direct {v8}, Lcom/umeng/message/proguard/aG;-><init>()V

    .line 202
    const-string v3, "updateInfo"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    .line 204
    const-string v2, "info"

    invoke-virtual {v9, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 205
    const-string v2, "info"

    invoke-virtual {v9, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v6, v2

    .line 207
    :goto_1
    const-string v2, "name"

    invoke-virtual {v9, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 208
    const-string v2, "name"

    invoke-virtual {v9, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v5, v2

    .line 210
    :goto_2
    const-string v2, "size"

    invoke-virtual {v9, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 211
    const-string v2, "size"

    invoke-virtual {v9, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v4, v2

    .line 213
    :goto_3
    const-string v2, "url"

    invoke-virtual {v9, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 214
    const-string v2, "url"

    invoke-virtual {v9, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    .line 216
    :goto_4
    const-string v2, "version"

    invoke-virtual {v9, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 217
    const-string v2, "version"

    invoke-virtual {v9, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 219
    :goto_5
    const-string v10, "md5"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 220
    const-string v0, "md5"

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 222
    :cond_2
    invoke-virtual {v8, v6}, Lcom/umeng/message/proguard/aG;->c(Ljava/lang/String;)V

    .line 223
    invoke-virtual {v8, v5}, Lcom/umeng/message/proguard/aG;->a(Ljava/lang/String;)V

    .line 224
    invoke-virtual {v8, v4}, Lcom/umeng/message/proguard/aG;->d(Ljava/lang/String;)V

    .line 225
    invoke-virtual {v8, v3}, Lcom/umeng/message/proguard/aG;->f(Ljava/lang/String;)V

    .line 226
    invoke-virtual {v8, v2}, Lcom/umeng/message/proguard/aG;->g(Ljava/lang/String;)V

    .line 227
    invoke-virtual {v8, v0}, Lcom/umeng/message/proguard/aG;->h(Ljava/lang/String;)V

    .line 228
    const-string v0, "updateInfo"

    invoke-virtual {v7, v0, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    :cond_3
    invoke-virtual {v1, v7}, Lcom/umeng/message/proguard/aF;->a(Ljava/util/HashMap;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_6
    move-object v0, v1

    .line 234
    goto/16 :goto_0

    .line 231
    :catch_0
    move-exception v0

    .line 232
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_6

    :cond_4
    move-object v2, v0

    goto :goto_5

    :cond_5
    move-object v3, v0

    goto :goto_4

    :cond_6
    move-object v4, v0

    goto :goto_3

    :cond_7
    move-object v5, v0

    goto :goto_2

    :cond_8
    move-object v6, v0

    goto :goto_1
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/android/agoo/net/mtop/MtopRequest;)Lorg/android/agoo/net/mtop/MtopRequest;
    .locals 3

    .prologue
    .line 156
    const-string v0, "tw_dymic_sdk_2"

    .line 157
    const-string v1, "com.taobao.taobao"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tw_dymic_sdk_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 160
    :cond_0
    const-string v1, "group"

    invoke-virtual {p3, v1, v0}, Lorg/android/agoo/net/mtop/MtopRequest;->putParams(Ljava/lang/String;Ljava/lang/Object;)V

    .line 161
    const-string v0, "androidVersion"

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Lorg/android/agoo/net/mtop/MtopRequest;->putParams(Ljava/lang/String;Ljava/lang/Object;)V

    .line 162
    new-instance v0, Lcom/umeng/message/proguard/aS;

    invoke-direct {v0, p0}, Lcom/umeng/message/proguard/aS;-><init>(Landroid/content/Context;)V

    .line 163
    const-string v1, "netStatus"

    invoke-virtual {v0}, Lcom/umeng/message/proguard/aS;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lorg/android/agoo/impl/UpdateService;->a(Ljava/lang/String;Lcom/umeng/message/proguard/aS;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p3, v1, v2}, Lorg/android/agoo/net/mtop/MtopRequest;->putParams(Ljava/lang/String;Ljava/lang/Object;)V

    .line 164
    invoke-virtual {v0}, Lcom/umeng/message/proguard/aS;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "push"

    invoke-static {p0, v0, v1}, Lcom/umeng/message/proguard/bt;->f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 166
    const-string v0, "version"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/umeng/message/proguard/bt;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Lorg/android/agoo/net/mtop/MtopRequest;->putParams(Ljava/lang/String;Ljava/lang/Object;)V

    .line 170
    :goto_0
    const-string v0, "name"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Lorg/android/agoo/net/mtop/MtopRequest;->putParams(Ljava/lang/String;Ljava/lang/Object;)V

    .line 171
    return-object p3

    .line 168
    :cond_1
    const-string v0, "version"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/umeng/message/proguard/bt;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Lorg/android/agoo/net/mtop/MtopRequest;->putParams(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 70
    new-instance v0, Lorg/android/agoo/net/mtop/MtopRequest;

    invoke-direct {v0}, Lorg/android/agoo/net/mtop/MtopRequest;-><init>()V

    .line 71
    invoke-static {p0, p1, p2, v0}, Lorg/android/agoo/impl/UpdateService;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/android/agoo/net/mtop/MtopRequest;)Lorg/android/agoo/net/mtop/MtopRequest;

    move-result-object v0

    .line 73
    if-eqz p0, :cond_0

    if-eqz v0, :cond_0

    .line 74
    :try_start_0
    const-string v1, "mtop.atlas.getBaseUpdateList"

    invoke-virtual {v0, v1}, Lorg/android/agoo/net/mtop/MtopRequest;->setApi(Ljava/lang/String;)V

    .line 75
    const-string v1, "1.0"

    invoke-virtual {v0, v1}, Lorg/android/agoo/net/mtop/MtopRequest;->setV(Ljava/lang/String;)V

    .line 76
    invoke-static {p0}, Lorg/android/agoo/a;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/android/agoo/net/mtop/MtopRequest;->setAppKey(Ljava/lang/String;)V

    .line 77
    invoke-static {p0}, Lorg/android/agoo/a;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/android/agoo/net/mtop/MtopRequest;->setAppSecret(Ljava/lang/String;)V

    .line 78
    invoke-static {p0}, Lorg/android/agoo/a;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/android/agoo/net/mtop/MtopRequest;->setDeviceId(Ljava/lang/String;)V

    .line 80
    new-instance v1, Lorg/android/agoo/net/mtop/MtopSyncClientV3;

    invoke-direct {v1}, Lorg/android/agoo/net/mtop/MtopSyncClientV3;-><init>()V

    .line 81
    invoke-static {p0}, Lorg/android/agoo/a;->C(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/android/agoo/net/mtop/IMtopSynClient;->setBaseUrl(Ljava/lang/String;)V

    .line 82
    invoke-interface {v1, p0, v0}, Lorg/android/agoo/net/mtop/IMtopSynClient;->getV3(Landroid/content/Context;Lorg/android/agoo/net/mtop/MtopRequest;)Lorg/android/agoo/net/mtop/Result;

    move-result-object v0

    .line 83
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/android/agoo/net/mtop/Result;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 84
    invoke-virtual {v0}, Lorg/android/agoo/net/mtop/Result;->getData()Ljava/lang/String;

    move-result-object v1

    .line 85
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 86
    const-string v2, "hasAvailableUpdate"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 87
    const-string v2, "false"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 89
    const-string v0, "has no update apk"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/umeng/message/proguard/aK;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 151
    :cond_0
    :goto_0
    return-void

    .line 93
    :cond_1
    :try_start_1
    const-string v0, "UpdateService"

    invoke-static {v0, v1}, Lcom/umeng/message/proguard/aK;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    invoke-static {v1}, Lorg/android/agoo/impl/UpdateService;->a(Ljava/lang/String;)Lcom/umeng/message/proguard/aF;

    move-result-object v0

    .line 95
    if-eqz v0, :cond_0

    .line 96
    invoke-virtual {v0}, Lcom/umeng/message/proguard/aF;->b()Lcom/umeng/message/proguard/aG;

    move-result-object v1

    .line 98
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 99
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    .line 100
    const/4 v0, 0x0

    .line 102
    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v0

    .line 107
    :goto_1
    if-eqz v0, :cond_0

    .line 110
    if-eqz v1, :cond_0

    .line 111
    :try_start_3
    const-string v2, "UpdateService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "now interface return:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/umeng/message/proguard/aG;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/umeng/message/proguard/aK;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    invoke-static {}, Lcom/umeng/message/proguard/bv;->a()Lorg/android/du/CpuType;

    move-result-object v2

    invoke-static {p0, v1, v0, v2}, Lcom/umeng/message/proguard/aE;->a(Landroid/content/Context;Lcom/umeng/message/proguard/aG;Ljava/lang/String;Lorg/android/du/CpuType;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    invoke-virtual {v1}, Lcom/umeng/message/proguard/aG;->g()Ljava/lang/String;

    move-result-object v0

    .line 115
    invoke-static {p0, p1, v0}, Lcom/umeng/message/proguard/bt;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    if-eqz p0, :cond_0

    .line 118
    invoke-static {p0, p1}, Lcom/umeng/message/proguard/bt;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 120
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 121
    const-string v2, "\\."

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 122
    if-eqz v2, :cond_2

    array-length v3, v2

    if-lez v3, :cond_2

    .line 123
    array-length v0, v2

    add-int/lit8 v0, v0, -0x1

    aget-object v0, v2, v0

    .line 124
    const-string v2, "UpdateService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "currVersion :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/umeng/message/proguard/aK;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    :cond_2
    invoke-static {p0, p1, v0}, Lcom/umeng/message/proguard/bt;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    invoke-static {p0, p1, v1}, Lcom/umeng/message/proguard/bt;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    invoke-static {p1}, Lorg/android/du/DuSdk;->unInit(Ljava/lang/String;)V

    .line 133
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/android/Config;->setNeedNotAutoUpdate(Landroid/content/Context;Z)V

    .line 134
    invoke-static {p0}, Lorg/android/Config;->getAppVersion(Landroid/content/Context;)I

    move-result v0

    invoke-static {p0, v0}, Lorg/android/Config;->setLastAppVersion(Landroid/content/Context;I)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 142
    :catch_0
    move-exception v0

    .line 143
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "push"

    invoke-static {p0, v0, v1}, Lcom/umeng/message/proguard/bt;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    .line 147
    :catch_1
    move-exception v0

    .line 148
    const-string v1, "UpdateService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "builderUrl is error,e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/umeng/message/proguard/aK;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "push"

    invoke-static {p0, v0, v1}, Lcom/umeng/message/proguard/bt;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 104
    :catch_2
    move-exception v2

    .line 105
    :try_start_5
    const-string v2, "UpdateService"

    const-string v3, "can not get path, update failed"

    invoke-static {v2, v3}, Lcom/umeng/message/proguard/aK;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_1
.end method


# virtual methods
.method public checkUpdateJar(ILjava/lang/String;)Z
    .locals 6

    .prologue
    const v5, 0x248fe6a1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 240
    .line 241
    const-string v3, "UpdateService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkUpdateJar version="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ",cert chceck="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-ne v5, p1, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_2

    .line 252
    :cond_0
    :goto_1
    return v2

    :cond_1
    move v0, v2

    .line 241
    goto :goto_0

    .line 245
    :cond_2
    const-string v0, "\\."

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 246
    if-eqz v0, :cond_3

    array-length v3, v0

    if-lez v3, :cond_3

    .line 247
    aget-object p2, v0, v2

    .line 249
    :cond_3
    if-ne v5, p1, :cond_0

    invoke-static {}, Lcom/umeng/message/proguard/bt;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v2, v1

    .line 250
    goto :goto_1
.end method

.method public downloadUpdate(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 60
    :try_start_0
    invoke-static {p1, p2, p3}, Lorg/android/agoo/impl/UpdateService;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    :goto_0
    return-void

    .line 61
    :catch_0
    move-exception v0

    .line 62
    const-string v1, "UpdateService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "update fialed,e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/umeng/message/proguard/aK;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
