.class public Lcom/umeng/message/proguard/aS;
.super Ljava/lang/Object;
.source "ConnectManager.java"


# static fields
.field static final a:Ljava/lang/String; = "wifi"

.field static final b:Ljava/lang/String; = "wimax"

.field static final c:Ljava/lang/String; = "mobile"

.field static final d:Ljava/lang/String; = "gsm"

.field static final e:Ljava/lang/String; = "gprs"

.field static final f:Ljava/lang/String; = "edge"

.field static final g:Ljava/lang/String; = "cdma"

.field static final h:Ljava/lang/String; = "umts"

.field static final i:Ljava/lang/String; = "hspa"

.field static final j:Ljava/lang/String; = "hsupa"

.field static final k:Ljava/lang/String; = "hsdpa"

.field static final l:Ljava/lang/String; = "ehrpd"

.field static final m:Ljava/lang/String; = "evdo0"

.field static final n:Ljava/lang/String; = "evdoa"

.field static final o:Ljava/lang/String; = "evdob"

.field static final p:Ljava/lang/String; = "lte"

.field static final q:Ljava/lang/String; = "umb"

.field static final r:Ljava/lang/String; = "hspa+"

.field static final s:Ljava/lang/String; = "unknown"

.field static final t:Ljava/lang/String; = "wifi"

.field static final u:Ljava/lang/String; = "2g"

.field static final v:Ljava/lang/String; = "3g"

.field static final w:Ljava/lang/String; = "4g"

.field static final x:Ljava/lang/String; = "none"

.field static final y:Ljava/lang/String; = "1xrtt"

.field private static final z:Ljava/lang/String; = "ConnectManager"


# instance fields
.field private A:Ljava/lang/String;

.field private B:I

.field private C:Ljava/lang/String;

.field private D:Z

.field private E:Ljava/lang/String;

.field private F:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/umeng/message/proguard/aS;->D:Z

    .line 83
    invoke-direct {p0, p1}, Lcom/umeng/message/proguard/aS;->c(Landroid/content/Context;)V

    .line 84
    invoke-static {p1}, Lcom/umeng/message/proguard/bk;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/message/proguard/aS;->F:Ljava/lang/String;

    .line 85
    return-void
.end method

.method private final a(Landroid/content/Context;Landroid/net/NetworkInfo;)V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 94
    :try_start_0
    invoke-virtual {p2}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 95
    invoke-virtual {p2}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 96
    if-eqz v0, :cond_2

    .line 97
    iput-object v0, p0, Lcom/umeng/message/proguard/aS;->C:Ljava/lang/String;

    .line 98
    const-string v1, "CMWAP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v2, :cond_0

    const-string v1, "UNIWAP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v2, :cond_0

    const-string v1, "3GWAP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_1

    .line 101
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/umeng/message/proguard/aS;->D:Z

    .line 102
    const-string v0, "10.0.0.172"

    iput-object v0, p0, Lcom/umeng/message/proguard/aS;->A:Ljava/lang/String;

    .line 103
    const/16 v0, 0x50

    iput v0, p0, Lcom/umeng/message/proguard/aS;->B:I

    .line 121
    :goto_0
    return-void

    .line 108
    :cond_1
    const-string v1, "CTWAP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v2, :cond_2

    .line 109
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/umeng/message/proguard/aS;->D:Z

    .line 110
    const-string v0, "10.0.0.200"

    iput-object v0, p0, Lcom/umeng/message/proguard/aS;->A:Ljava/lang/String;

    .line 111
    const/16 v0, 0x50

    iput v0, p0, Lcom/umeng/message/proguard/aS;->B:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 117
    :catch_0
    move-exception v0

    .line 118
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 116
    :cond_2
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lcom/umeng/message/proguard/aS;->D:Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private final a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 161
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 162
    const-string v0, "none"

    iput-object v0, p0, Lcom/umeng/message/proguard/aS;->E:Ljava/lang/String;

    .line 182
    :cond_0
    :goto_0
    return-void

    .line 165
    :cond_1
    const-string v0, "gsm"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "gprs"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "edge"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 167
    :cond_2
    const-string v0, "2g"

    iput-object v0, p0, Lcom/umeng/message/proguard/aS;->E:Ljava/lang/String;

    goto :goto_0

    .line 170
    :cond_3
    const-string v0, "cdma"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "umts"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "1xrtt"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "ehrpd"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "evdo0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "evdoa"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "evdob"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "hsupa"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "hsdpa"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "hspa"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 175
    :cond_4
    const-string v0, "3g"

    iput-object v0, p0, Lcom/umeng/message/proguard/aS;->E:Ljava/lang/String;

    goto :goto_0

    .line 178
    :cond_5
    const-string v0, "lte"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "umb"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "hspa+"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    :cond_6
    const-string v0, "4g"

    iput-object v0, p0, Lcom/umeng/message/proguard/aS;->E:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method public static final a(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 148
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 151
    if-eqz v0, :cond_0

    .line 152
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 157
    :goto_0
    return v0

    .line 154
    :catch_0
    move-exception v0

    .line 157
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)Lorg/apache/http/HttpHost;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 221
    const-string v1, ""

    .line 222
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "connectivity"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 225
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 227
    if-eqz v0, :cond_4

    .line 228
    const-string v3, "wifi"

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 229
    const-string v0, "wifi"

    .line 232
    :goto_0
    const-string v1, "wifi"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 253
    :cond_0
    :goto_1
    return-object v2

    .line 236
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_2

    .line 237
    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v1

    .line 238
    invoke-static {}, Landroid/net/Proxy;->getDefaultPort()I

    move-result v3

    .line 239
    if-eqz v1, :cond_3

    .line 240
    new-instance v0, Lorg/apache/http/HttpHost;

    invoke-direct {v0, v1, v3}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    :goto_2
    move-object v2, v0

    .line 242
    goto :goto_1

    .line 244
    :cond_2
    :try_start_0
    const-string v0, "http.proxyPort"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 245
    const-string v0, "http.proxyHost"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 247
    invoke-static {v3}, Lcom/umeng/message/proguard/bm;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 248
    new-instance v0, Lorg/apache/http/HttpHost;

    invoke-direct {v0, v3, v1}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v0

    goto :goto_1

    .line 250
    :catch_0
    move-exception v0

    goto :goto_1

    :cond_3
    move-object v0, v2

    goto :goto_2

    :cond_4
    move-object v0, v1

    goto :goto_0
.end method

.method private final c(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 125
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 128
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 130
    if-eqz v0, :cond_0

    .line 131
    const-string v1, "wifi"

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 132
    const-string v0, "wifi"

    iput-object v0, p0, Lcom/umeng/message/proguard/aS;->E:Ljava/lang/String;

    .line 133
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/umeng/message/proguard/aS;->D:Z

    .line 144
    :cond_0
    :goto_0
    return-void

    .line 135
    :cond_1
    invoke-direct {p0, p1, v0}, Lcom/umeng/message/proguard/aS;->a(Landroid/content/Context;Landroid/net/NetworkInfo;)V

    .line 136
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 138
    invoke-direct {p0, v0}, Lcom/umeng/message/proguard/aS;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 141
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .prologue
    .line 185
    iget-boolean v0, p0, Lcom/umeng/message/proguard/aS;->D:Z

    return v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/umeng/message/proguard/aS;->C:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/umeng/message/proguard/aS;->E:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/umeng/message/proguard/aS;->A:Ljava/lang/String;

    return-object v0
.end method

.method public final e()I
    .locals 1

    .prologue
    .line 201
    iget v0, p0, Lcom/umeng/message/proguard/aS;->B:I

    return v0
.end method

.method public final f()Ljava/lang/String;
    .locals 2

    .prologue
    .line 205
    iget-object v0, p0, Lcom/umeng/message/proguard/aS;->F:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 207
    iget-object v0, p0, Lcom/umeng/message/proguard/aS;->F:Ljava/lang/String;

    const-string v1, "46000"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/umeng/message/proguard/aS;->F:Ljava/lang/String;

    const-string v1, "46002"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 209
    :cond_0
    const-string v0, "cm"

    .line 217
    :goto_0
    return-object v0

    .line 210
    :cond_1
    iget-object v0, p0, Lcom/umeng/message/proguard/aS;->F:Ljava/lang/String;

    const-string v1, "46001"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 212
    const-string v0, "cu"

    goto :goto_0

    .line 213
    :cond_2
    iget-object v0, p0, Lcom/umeng/message/proguard/aS;->F:Ljava/lang/String;

    const-string v1, "46003"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 214
    const-string v0, "ct"

    goto :goto_0

    .line 217
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method
