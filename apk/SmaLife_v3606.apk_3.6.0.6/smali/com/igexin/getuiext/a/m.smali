.class Lcom/igexin/getuiext/a/m;
.super Landroid/os/AsyncTask;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Z

.field final synthetic e:Lcom/igexin/getuiext/a/l;

.field private f:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/igexin/getuiext/a/l;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    iput-object p1, p0, Lcom/igexin/getuiext/a/m;->e:Lcom/igexin/getuiext/a/l;

    iput-object p2, p0, Lcom/igexin/getuiext/a/m;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/igexin/getuiext/a/m;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/igexin/getuiext/a/m;->c:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/igexin/getuiext/a/m;->d:Z

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iget-object v0, p0, Lcom/igexin/getuiext/a/m;->a:Landroid/content/Context;

    iput-object v0, p0, Lcom/igexin/getuiext/a/m;->f:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected varargs a([Lorg/json/JSONObject;)Ljava/lang/Void;
    .locals 7

    const/4 v0, 0x0

    aget-object v0, p1, v0

    :try_start_0
    const-string v1, "packageName"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v1, "versionCode"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "checksum"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "action"

    const-string v5, "queryUpdate"

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "cid"

    sget-object v5, Lcom/igexin/getuiext/data/Consts;->CID:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "app_id"

    sget-object v5, Lcom/igexin/getuiext/data/Consts;->APPID:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "selfpkg"

    iget-object v5, p0, Lcom/igexin/getuiext/a/m;->f:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "pkgname"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "versionCode"

    invoke-virtual {v2, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "checksum"

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "sendId"

    iget-object v1, p0, Lcom/igexin/getuiext/a/m;->b:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "context"

    iget-object v1, p0, Lcom/igexin/getuiext/a/m;->f:Landroid/content/Context;

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "selfCode"

    sget-object v1, Lcom/igexin/getuiext/data/Consts;->VERSION:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "http://sdk.open.inc2.igexin.com/api.php"

    sget v1, Lcom/igexin/getuiext/data/Consts;->DEFAULT_RETRY_TIMES:I

    invoke-static {v0, v2, v1}, Lcom/igexin/getuiext/util/c;->a(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/igexin/getuiext/a/m;->e:Lcom/igexin/getuiext/a/l;

    iget-object v1, p0, Lcom/igexin/getuiext/a/m;->f:Landroid/content/Context;

    iget-object v4, p0, Lcom/igexin/getuiext/a/m;->c:Ljava/lang/String;

    iget-object v5, p0, Lcom/igexin/getuiext/a/m;->b:Ljava/lang/String;

    iget-boolean v6, p0, Lcom/igexin/getuiext/a/m;->d:Z

    invoke-static/range {v0 .. v6}, Lcom/igexin/getuiext/a/l;->a(Lcom/igexin/getuiext/a/l;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    const/4 v0, 0x0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/igexin/getuiext/a/m;->a([Lorg/json/JSONObject;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
