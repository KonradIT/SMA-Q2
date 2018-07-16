.class Lcom/umeng/message/proguard/X$a;
.super Ljava/lang/Thread;
.source "UTMCOnlineConfMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/message/proguard/X;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/umeng/message/proguard/X;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/umeng/message/proguard/X;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 318
    iput-object p1, p0, Lcom/umeng/message/proguard/X$a;->a:Lcom/umeng/message/proguard/X;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 316
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/message/proguard/X$a;->b:Ljava/lang/String;

    .line 319
    iput-object p2, p0, Lcom/umeng/message/proguard/X$a;->b:Ljava/lang/String;

    .line 320
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v3, 0x2

    const/4 v4, 0x1

    .line 324
    invoke-static {}, Lcom/umeng/message/proguard/w;->a()Lcom/umeng/message/proguard/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/message/proguard/w;->k()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/message/proguard/ap;->a(Landroid/content/Context;)Z

    move-result v0

    .line 327
    if-nez v0, :cond_1

    .line 328
    const-string v0, "sync configuration"

    const-string v1, "skip[No ActiveNetworkInfo]"

    invoke-static {v3, v0, v1}, Lcom/umeng/message/proguard/y;->b(ILjava/lang/String;Ljava/lang/Object;)V

    .line 331
    iget-object v0, p0, Lcom/umeng/message/proguard/X$a;->a:Lcom/umeng/message/proguard/X;

    invoke-static {v0}, Lcom/umeng/message/proguard/X;->a(Lcom/umeng/message/proguard/X;)Lorg/json/JSONObject;

    move-result-object v0

    .line 332
    if-eqz v0, :cond_0

    .line 333
    const-string v1, "sync configuration"

    const-string v2, "dispatch local config"

    invoke-static {v3, v1, v2}, Lcom/umeng/message/proguard/y;->b(ILjava/lang/String;Ljava/lang/Object;)V

    .line 335
    iget-object v1, p0, Lcom/umeng/message/proguard/X$a;->a:Lcom/umeng/message/proguard/X;

    invoke-static {v1, v0}, Lcom/umeng/message/proguard/X;->a(Lcom/umeng/message/proguard/X;Lorg/json/JSONObject;)V

    .line 383
    :cond_0
    :goto_0
    return-void

    .line 341
    :cond_1
    iget-object v0, p0, Lcom/umeng/message/proguard/X$a;->a:Lcom/umeng/message/proguard/X;

    invoke-static {v0}, Lcom/umeng/message/proguard/X;->a(Lcom/umeng/message/proguard/X;)Lorg/json/JSONObject;

    move-result-object v0

    .line 342
    if-eqz v0, :cond_2

    .line 343
    iget-object v1, p0, Lcom/umeng/message/proguard/X$a;->a:Lcom/umeng/message/proguard/X;

    invoke-static {v1, v0}, Lcom/umeng/message/proguard/X;->a(Lcom/umeng/message/proguard/X;Lorg/json/JSONObject;)V

    .line 346
    :cond_2
    iget-object v0, p0, Lcom/umeng/message/proguard/X$a;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/umeng/message/proguard/at;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 347
    const-string v0, "url"

    iget-object v1, p0, Lcom/umeng/message/proguard/X$a;->b:Ljava/lang/String;

    invoke-static {v4, v0, v1}, Lcom/umeng/message/proguard/y;->b(ILjava/lang/String;Ljava/lang/Object;)V

    .line 349
    iget-object v0, p0, Lcom/umeng/message/proguard/X$a;->a:Lcom/umeng/message/proguard/X;

    invoke-static {v0}, Lcom/umeng/message/proguard/X;->a(Lcom/umeng/message/proguard/X;)Lorg/json/JSONObject;

    move-result-object v0

    .line 350
    iget-object v1, p0, Lcom/umeng/message/proguard/X$a;->a:Lcom/umeng/message/proguard/X;

    invoke-static {v1, v0}, Lcom/umeng/message/proguard/X;->b(Lcom/umeng/message/proguard/X;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    .line 352
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 353
    const-string v3, "cf"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    const/4 v1, 0x3

    iget-object v3, p0, Lcom/umeng/message/proguard/X$a;->b:Ljava/lang/String;

    invoke-static {v1, v3, v2, v4}, Lcom/umeng/message/proguard/aj;->a(ILjava/lang/String;Ljava/util/Map;Z)[B

    move-result-object v1

    .line 360
    const-string v2, ""

    .line 361
    if-eqz v1, :cond_3

    array-length v2, v1

    if-lez v2, :cond_3

    .line 363
    :try_start_0
    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x0

    array-length v4, v1

    const-string v5, "UTF-8"

    invoke-direct {v2, v1, v3, v4, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 364
    const/4 v1, 0x1

    const-string v3, "result"

    invoke-static {v1, v3, v2}, Lcom/umeng/message/proguard/y;->b(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    .line 370
    :try_start_1
    invoke-static {v2}, Lcom/umeng/message/proguard/ah;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 371
    iget-object v1, p0, Lcom/umeng/message/proguard/X$a;->a:Lcom/umeng/message/proguard/X;

    invoke-static {v1, v2, v0}, Lcom/umeng/message/proguard/X;->a(Lcom/umeng/message/proguard/X;Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 374
    :catch_0
    move-exception v0

    .line 378
    :cond_3
    iget-object v0, p0, Lcom/umeng/message/proguard/X$a;->a:Lcom/umeng/message/proguard/X;

    invoke-static {v0}, Lcom/umeng/message/proguard/X;->b(Lcom/umeng/message/proguard/X;)V

    .line 382
    :cond_4
    iget-object v0, p0, Lcom/umeng/message/proguard/X$a;->a:Lcom/umeng/message/proguard/X;

    invoke-static {v0}, Lcom/umeng/message/proguard/X;->b(Lcom/umeng/message/proguard/X;)V

    goto :goto_0

    .line 365
    :catch_1
    move-exception v0

    .line 366
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method
