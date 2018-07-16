.class public Lcom/igexin/push/core/a/h;
.super Lcom/igexin/push/core/a/a;


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/igexin/push/a/j;->a:Ljava/lang/String;

    sput-object v0, Lcom/igexin/push/core/a/h;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/igexin/push/core/a/a;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/igexin/push/core/a/h;->b:Ljava/util/Map;

    sget-object v0, Lcom/igexin/push/core/a/h;->b:Ljava/util/Map;

    const-string v1, "redirect_server"

    new-instance v2, Lcom/igexin/push/core/a/o;

    invoke-direct {v2}, Lcom/igexin/push/core/a/o;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/igexin/push/core/a/h;->b:Ljava/util/Map;

    const-string v1, "response_deviceid"

    new-instance v2, Lcom/igexin/push/core/a/r;

    invoke-direct {v2}, Lcom/igexin/push/core/a/r;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/igexin/push/core/a/h;->b:Ljava/util/Map;

    const-string v1, "pushmessage"

    new-instance v2, Lcom/igexin/push/core/a/m;

    invoke-direct {v2}, Lcom/igexin/push/core/a/m;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/igexin/push/core/a/h;->b:Ljava/util/Map;

    const-string v1, "response_ca_list"

    new-instance v2, Lcom/igexin/push/core/a/q;

    invoke-direct {v2}, Lcom/igexin/push/core/a/q;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/igexin/push/core/a/h;->b:Ljava/util/Map;

    const-string v1, "bindappid_result"

    new-instance v2, Lcom/igexin/push/core/a/c;

    invoke-direct {v2}, Lcom/igexin/push/core/a/c;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/igexin/push/core/a/h;->b:Ljava/util/Map;

    const-string v1, "received"

    new-instance v2, Lcom/igexin/push/core/a/n;

    invoke-direct {v2}, Lcom/igexin/push/core/a/n;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/igexin/push/core/a/h;->b:Ljava/util/Map;

    const-string v1, "sendmessage_feedback"

    new-instance v2, Lcom/igexin/push/core/a/s;

    invoke-direct {v2}, Lcom/igexin/push/core/a/s;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/igexin/push/core/a/h;->b:Ljava/util/Map;

    const-string v1, "block_client"

    new-instance v2, Lcom/igexin/push/core/a/d;

    invoke-direct {v2}, Lcom/igexin/push/core/a/d;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(Lcom/igexin/a/a/d/d;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public a(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lcom/igexin/push/d/c/n;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/igexin/push/d/c/n;

    invoke-virtual {v0}, Lcom/igexin/push/d/c/n;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/igexin/push/d/c/n;->e:Ljava/lang/Object;

    if-eqz v1, :cond_1

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    iget-object v0, v0, Lcom/igexin/push/d/c/n;->e:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "id"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "id"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/igexin/push/core/a/f;->a()Lcom/igexin/push/core/a/f;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/igexin/push/core/a/f;->a(Ljava/lang/String;)V

    :cond_0
    if-eqz v1, :cond_1

    const-string v0, "action"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "action"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/igexin/push/core/a/h;->b:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/igexin/push/core/a/b;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, v1}, Lcom/igexin/push/core/a/b;->a(Ljava/lang/Object;Lorg/json/JSONObject;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
