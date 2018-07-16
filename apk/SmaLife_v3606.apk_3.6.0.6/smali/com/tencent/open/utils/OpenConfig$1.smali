.class Lcom/tencent/open/utils/OpenConfig$1;
.super Ljava/lang/Thread;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/open/utils/OpenConfig;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/os/Bundle;

.field final synthetic b:Lcom/tencent/open/utils/OpenConfig;


# direct methods
.method constructor <init>(Lcom/tencent/open/utils/OpenConfig;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 190
    iput-object p1, p0, Lcom/tencent/open/utils/OpenConfig$1;->b:Lcom/tencent/open/utils/OpenConfig;

    iput-object p2, p0, Lcom/tencent/open/utils/OpenConfig$1;->a:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 194
    :try_start_0
    iget-object v0, p0, Lcom/tencent/open/utils/OpenConfig$1;->b:Lcom/tencent/open/utils/OpenConfig;

    invoke-static {v0}, Lcom/tencent/open/utils/OpenConfig;->a(Lcom/tencent/open/utils/OpenConfig;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "http://cgi.connect.qq.com/qqconnectopen/openapi/policy_conf"

    const-string v2, "GET"

    iget-object v3, p0, Lcom/tencent/open/utils/OpenConfig$1;->a:Landroid/os/Bundle;

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/open/utils/HttpUtils;->openUrl2(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/tencent/open/utils/Util$Statistic;

    move-result-object v0

    .line 196
    iget-object v0, v0, Lcom/tencent/open/utils/Util$Statistic;->response:Ljava/lang/String;

    .line 204
    invoke-static {v0}, Lcom/tencent/open/utils/Util;->parseJson(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 205
    iget-object v1, p0, Lcom/tencent/open/utils/OpenConfig$1;->b:Lcom/tencent/open/utils/OpenConfig;

    invoke-static {v1, v0}, Lcom/tencent/open/utils/OpenConfig;->a(Lcom/tencent/open/utils/OpenConfig;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    :goto_0
    iget-object v0, p0, Lcom/tencent/open/utils/OpenConfig$1;->b:Lcom/tencent/open/utils/OpenConfig;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tencent/open/utils/OpenConfig;->a(Lcom/tencent/open/utils/OpenConfig;I)I

    .line 210
    return-void

    .line 206
    :catch_0
    move-exception v0

    .line 207
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
