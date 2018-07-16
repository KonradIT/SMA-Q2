.class Lcom/tencent/open/LocationApi$b;
.super Lcom/tencent/open/LocationApi$a;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/open/LocationApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic b:Lcom/tencent/open/LocationApi;

.field private c:Lcom/tencent/tauth/IUiListener;


# direct methods
.method public constructor <init>(Lcom/tencent/open/LocationApi;Lcom/tencent/tauth/IUiListener;)V
    .locals 1

    .prologue
    .line 262
    iput-object p1, p0, Lcom/tencent/open/LocationApi$b;->b:Lcom/tencent/open/LocationApi;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/tencent/open/LocationApi$a;-><init>(Lcom/tencent/open/LocationApi;Lcom/tencent/open/LocationApi$1;)V

    .line 263
    iput-object p2, p0, Lcom/tencent/open/LocationApi$b;->c:Lcom/tencent/tauth/IUiListener;

    .line 264
    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/Exception;)V
    .locals 5

    .prologue
    .line 275
    iget-object v0, p0, Lcom/tencent/open/LocationApi$b;->c:Lcom/tencent/tauth/IUiListener;

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/tencent/open/LocationApi$b;->c:Lcom/tencent/tauth/IUiListener;

    new-instance v1, Lcom/tencent/tauth/UiError;

    const/16 v2, 0x64

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/tencent/tauth/UiError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/tencent/tauth/IUiListener;->onError(Lcom/tencent/tauth/UiError;)V

    .line 278
    :cond_0
    return-void
.end method

.method public onComplete(Lorg/json/JSONObject;)V
    .locals 4

    .prologue
    .line 268
    iget-object v0, p0, Lcom/tencent/open/LocationApi$b;->c:Lcom/tencent/tauth/IUiListener;

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/tencent/open/LocationApi$b;->c:Lcom/tencent/tauth/IUiListener;

    invoke-interface {v0, p1}, Lcom/tencent/tauth/IUiListener;->onComplete(Ljava/lang/Object;)V

    .line 271
    :cond_0
    const-string v0, "openSDK_LOG.LocationApi"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TaskRequestListener onComplete GetNearbySwitchEnd:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/open/a/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    return-void
.end method
