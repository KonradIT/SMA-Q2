.class Lcom/tencent/open/LocationApi$3;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/open/LocationApi;->a(Ljava/lang/String;[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:[Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/tencent/open/LocationApi;


# direct methods
.method constructor <init>(Lcom/tencent/open/LocationApi;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 241
    iput-object p1, p0, Lcom/tencent/open/LocationApi$3;->c:Lcom/tencent/open/LocationApi;

    iput-object p2, p0, Lcom/tencent/open/LocationApi$3;->a:[Ljava/lang/String;

    iput-object p3, p0, Lcom/tencent/open/LocationApi$3;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 245
    iget-object v0, p0, Lcom/tencent/open/LocationApi$3;->a:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/open/LocationApi$3;->a:[Ljava/lang/String;

    array-length v0, v0

    if-nez v0, :cond_1

    .line 249
    :cond_0
    :goto_0
    return-void

    .line 247
    :cond_1
    const-string v0, "search_nearby"

    iget-object v1, p0, Lcom/tencent/open/LocationApi$3;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "id_search_nearby"

    .line 248
    :goto_1
    invoke-static {}, Lcom/tencent/open/utils/Global;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/open/LocationApi$3;->c:Lcom/tencent/open/LocationApi;

    invoke-static {v2}, Lcom/tencent/open/LocationApi;->c(Lcom/tencent/open/LocationApi;)Lcom/tencent/connect/auth/QQToken;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/open/LocationApi$3;->a:[Ljava/lang/String;

    invoke-static {v1, v2, v0, v3}, Lcom/tencent/connect/a/a;->a(Landroid/content/Context;Lcom/tencent/connect/auth/QQToken;Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    .line 247
    :cond_2
    const-string v0, "id_delete_location"

    goto :goto_1
.end method
