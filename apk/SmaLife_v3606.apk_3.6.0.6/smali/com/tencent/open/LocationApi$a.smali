.class abstract Lcom/tencent/open/LocationApi$a;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/tencent/tauth/IRequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/open/LocationApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/open/LocationApi;


# direct methods
.method private constructor <init>(Lcom/tencent/open/LocationApi;)V
    .locals 0

    .prologue
    .line 282
    iput-object p1, p0, Lcom/tencent/open/LocationApi$a;->a:Lcom/tencent/open/LocationApi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/open/LocationApi;Lcom/tencent/open/LocationApi$1;)V
    .locals 0

    .prologue
    .line 282
    invoke-direct {p0, p1}, Lcom/tencent/open/LocationApi$a;-><init>(Lcom/tencent/open/LocationApi;)V

    return-void
.end method


# virtual methods
.method protected abstract a(Ljava/lang/Exception;)V
.end method

.method public onConnectTimeoutException(Lorg/apache/http/conn/ConnectTimeoutException;)V
    .locals 0

    .prologue
    .line 302
    invoke-virtual {p0, p1}, Lcom/tencent/open/LocationApi$a;->a(Ljava/lang/Exception;)V

    .line 303
    return-void
.end method

.method public onHttpStatusException(Lcom/tencent/open/utils/HttpUtils$HttpStatusException;)V
    .locals 0

    .prologue
    .line 317
    invoke-virtual {p0, p1}, Lcom/tencent/open/LocationApi$a;->a(Ljava/lang/Exception;)V

    .line 318
    return-void
.end method

.method public onIOException(Ljava/io/IOException;)V
    .locals 0

    .prologue
    .line 287
    invoke-virtual {p0, p1}, Lcom/tencent/open/LocationApi$a;->a(Ljava/lang/Exception;)V

    .line 288
    return-void
.end method

.method public onJSONException(Lorg/json/JSONException;)V
    .locals 0

    .prologue
    .line 297
    invoke-virtual {p0, p1}, Lcom/tencent/open/LocationApi$a;->a(Ljava/lang/Exception;)V

    .line 298
    return-void
.end method

.method public onMalformedURLException(Ljava/net/MalformedURLException;)V
    .locals 0

    .prologue
    .line 292
    invoke-virtual {p0, p1}, Lcom/tencent/open/LocationApi$a;->a(Ljava/lang/Exception;)V

    .line 293
    return-void
.end method

.method public onNetworkUnavailableException(Lcom/tencent/open/utils/HttpUtils$NetworkUnavailableException;)V
    .locals 0

    .prologue
    .line 312
    invoke-virtual {p0, p1}, Lcom/tencent/open/LocationApi$a;->a(Ljava/lang/Exception;)V

    .line 313
    return-void
.end method

.method public onSocketTimeoutException(Ljava/net/SocketTimeoutException;)V
    .locals 0

    .prologue
    .line 307
    invoke-virtual {p0, p1}, Lcom/tencent/open/LocationApi$a;->a(Ljava/lang/Exception;)V

    .line 308
    return-void
.end method

.method public onUnknowException(Ljava/lang/Exception;)V
    .locals 0

    .prologue
    .line 322
    invoke-virtual {p0, p1}, Lcom/tencent/open/LocationApi$a;->a(Ljava/lang/Exception;)V

    .line 323
    return-void
.end method
