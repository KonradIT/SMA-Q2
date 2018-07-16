.class public Lcn/sharesdk/framework/ShareSDK;
.super Ljava/lang/Object;


# static fields
.field public static final SDK_TAG:Ljava/lang/String; = "SHARESDK"

.field public static final SDK_VERSION_INT:I = 0x41

.field private static a:Lcn/sharesdk/framework/n;

.field private static b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcn/sharesdk/framework/ShareSDK;->b:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcn/sharesdk/framework/ShareSDK;->b()V

    sget-object v0, Lcn/sharesdk/framework/ShareSDK;->a:Lcn/sharesdk/framework/n;

    invoke-virtual {v0, p0, p1}, Lcn/sharesdk/framework/n;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static a(Landroid/graphics/Bitmap;)Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcn/sharesdk/framework/ShareSDK;->b()V

    sget-object v0, Lcn/sharesdk/framework/ShareSDK;->a:Lcn/sharesdk/framework/n;

    invoke-virtual {v0, p0}, Lcn/sharesdk/framework/n;->a(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcn/sharesdk/framework/ShareSDK;->b()V

    sget-object v0, Lcn/sharesdk/framework/ShareSDK;->a:Lcn/sharesdk/framework/n;

    invoke-virtual {v0, p0}, Lcn/sharesdk/framework/n;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static a(Ljava/lang/String;ZILjava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcn/sharesdk/framework/ShareSDK;->b()V

    sget-object v0, Lcn/sharesdk/framework/ShareSDK;->a:Lcn/sharesdk/framework/n;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcn/sharesdk/framework/n;->a(Ljava/lang/String;ZILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static a(II)V
    .locals 1

    invoke-static {}, Lcn/sharesdk/framework/ShareSDK;->b()V

    sget-object v0, Lcn/sharesdk/framework/ShareSDK;->a:Lcn/sharesdk/framework/n;

    invoke-virtual {v0, p0, p1}, Lcn/sharesdk/framework/n;->a(II)V

    return-void
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcn/sharesdk/framework/ShareSDK;->b()V

    sget-object v0, Lcn/sharesdk/framework/ShareSDK;->a:Lcn/sharesdk/framework/n;

    invoke-virtual {v0, p0, p1}, Lcn/sharesdk/framework/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static a()Z
    .locals 1

    invoke-static {}, Lcn/sharesdk/framework/ShareSDK;->b()V

    sget-object v0, Lcn/sharesdk/framework/ShareSDK;->a:Lcn/sharesdk/framework/n;

    invoke-virtual {v0}, Lcn/sharesdk/framework/n;->d()Z

    move-result v0

    return v0
.end method

.method static a(Ljava/util/HashMap;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    invoke-static {}, Lcn/sharesdk/framework/ShareSDK;->b()V

    sget-object v0, Lcn/sharesdk/framework/ShareSDK;->a:Lcn/sharesdk/framework/n;

    invoke-virtual {v0, p0}, Lcn/sharesdk/framework/n;->a(Ljava/util/HashMap;)Z

    move-result v0

    return v0
.end method

.method static b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcn/sharesdk/framework/ShareSDK;->b()V

    sget-object v0, Lcn/sharesdk/framework/ShareSDK;->a:Lcn/sharesdk/framework/n;

    invoke-virtual {v0, p0, p1}, Lcn/sharesdk/framework/n;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static b()V
    .locals 2

    sget-object v0, Lcn/sharesdk/framework/ShareSDK;->a:Lcn/sharesdk/framework/n;

    if-nez v0, :cond_0

    const-string v0, "Please call ShareSDK.initSDK(Context) in the main process before any action."

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    return-void
.end method

.method static b(Ljava/util/HashMap;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    invoke-static {}, Lcn/sharesdk/framework/ShareSDK;->b()V

    sget-object v0, Lcn/sharesdk/framework/ShareSDK;->a:Lcn/sharesdk/framework/n;

    invoke-virtual {v0, p0}, Lcn/sharesdk/framework/n;->b(Ljava/util/HashMap;)Z

    move-result v0

    return v0
.end method

.method public static closeDebug()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcn/sharesdk/framework/ShareSDK;->b:Z

    return-void
.end method

.method public static deleteCache()V
    .locals 1

    invoke-static {}, Lcn/sharesdk/framework/ShareSDK;->b()V

    sget-object v0, Lcn/sharesdk/framework/ShareSDK;->a:Lcn/sharesdk/framework/n;

    invoke-virtual {v0}, Lcn/sharesdk/framework/n;->e()V

    return-void
.end method

.method public static getPlatform(Landroid/content/Context;Ljava/lang/String;)Lcn/sharesdk/framework/Platform;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    invoke-static {}, Lcn/sharesdk/framework/ShareSDK;->b()V

    sget-object v0, Lcn/sharesdk/framework/ShareSDK;->a:Lcn/sharesdk/framework/n;

    invoke-virtual {v0, p1}, Lcn/sharesdk/framework/n;->a(Ljava/lang/String;)Lcn/sharesdk/framework/Platform;

    move-result-object v0

    return-object v0
.end method

.method public static getPlatform(Ljava/lang/String;)Lcn/sharesdk/framework/Platform;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    invoke-static {}, Lcn/sharesdk/framework/ShareSDK;->b()V

    sget-object v0, Lcn/sharesdk/framework/ShareSDK;->a:Lcn/sharesdk/framework/n;

    invoke-virtual {v0, p0}, Lcn/sharesdk/framework/n;->a(Ljava/lang/String;)Lcn/sharesdk/framework/Platform;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized getPlatformList()[Lcn/sharesdk/framework/Platform;
    .locals 2

    const-class v1, Lcn/sharesdk/framework/ShareSDK;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcn/sharesdk/framework/ShareSDK;->b()V

    sget-object v0, Lcn/sharesdk/framework/ShareSDK;->a:Lcn/sharesdk/framework/n;

    invoke-virtual {v0}, Lcn/sharesdk/framework/n;->a()[Lcn/sharesdk/framework/Platform;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getPlatformList(Landroid/content/Context;)[Lcn/sharesdk/framework/Platform;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const-class v0, Lcn/sharesdk/framework/ShareSDK;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcn/sharesdk/framework/ShareSDK;->getPlatformList()[Lcn/sharesdk/framework/Platform;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getSDKVersionCode()I
    .locals 1

    const/16 v0, 0x41

    return v0
.end method

.method public static getSDKVersionName()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcn/sharesdk/framework/ShareSDK;->b()V

    sget-object v0, Lcn/sharesdk/framework/ShareSDK;->a:Lcn/sharesdk/framework/n;

    invoke-virtual {v0}, Lcn/sharesdk/framework/n;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getService(Ljava/lang/Class;)Lcn/sharesdk/framework/Service;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcn/sharesdk/framework/Service;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .local p0, "name":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {}, Lcn/sharesdk/framework/ShareSDK;->b()V

    sget-object v0, Lcn/sharesdk/framework/ShareSDK;->a:Lcn/sharesdk/framework/n;

    invoke-virtual {v0, p0}, Lcn/sharesdk/framework/n;->c(Ljava/lang/Class;)Lcn/sharesdk/framework/Service;

    move-result-object v0

    return-object v0
.end method

.method public static initSDK(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcn/sharesdk/framework/ShareSDK;->initSDK(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public static initSDK(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "SDKAppKey"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcn/sharesdk/framework/ShareSDK;->initSDK(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public static initSDK(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "SDKAppKey"    # Ljava/lang/String;
    .param p2, "enableStatistics"    # Z

    .prologue
    invoke-static {p0}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "The param of context is null which in ShareSDK.initSDK(context)!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, Lcn/sharesdk/framework/ShareSDK;->a:Lcn/sharesdk/framework/n;

    if-nez v0, :cond_1

    new-instance v0, Lcn/sharesdk/framework/n;

    invoke-direct {v0, p0, p1}, Lcn/sharesdk/framework/n;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcn/sharesdk/framework/n;->a(Z)V

    invoke-virtual {v0}, Lcn/sharesdk/framework/n;->startThread()V

    sput-object v0, Lcn/sharesdk/framework/ShareSDK;->a:Lcn/sharesdk/framework/n;

    :cond_1
    return-void
.end method

.method public static initSDK(Landroid/content/Context;Z)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enableStatistics"    # Z

    .prologue
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcn/sharesdk/framework/ShareSDK;->initSDK(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public static isDebug()Z
    .locals 1

    sget-boolean v0, Lcn/sharesdk/framework/ShareSDK;->b:Z

    return v0
.end method

.method public static isRemoveCookieOnAuthorize()Z
    .locals 1

    invoke-static {}, Lcn/sharesdk/framework/ShareSDK;->b()V

    sget-object v0, Lcn/sharesdk/framework/ShareSDK;->a:Lcn/sharesdk/framework/n;

    invoke-virtual {v0}, Lcn/sharesdk/framework/n;->c()Z

    move-result v0

    return v0
.end method

.method public static logApiEvent(Ljava/lang/String;I)V
    .locals 1
    .param p0, "api"    # Ljava/lang/String;
    .param p1, "platformId"    # I

    .prologue
    invoke-static {}, Lcn/sharesdk/framework/ShareSDK;->b()V

    sget-object v0, Lcn/sharesdk/framework/ShareSDK;->a:Lcn/sharesdk/framework/n;

    invoke-virtual {v0, p0, p1}, Lcn/sharesdk/framework/n;->a(Ljava/lang/String;I)V

    return-void
.end method

.method public static logDemoEvent(ILcn/sharesdk/framework/Platform;)V
    .locals 1
    .param p0, "id"    # I
    .param p1, "platform"    # Lcn/sharesdk/framework/Platform;

    .prologue
    invoke-static {}, Lcn/sharesdk/framework/ShareSDK;->b()V

    sget-object v0, Lcn/sharesdk/framework/ShareSDK;->a:Lcn/sharesdk/framework/n;

    invoke-virtual {v0, p0, p1}, Lcn/sharesdk/framework/n;->a(ILcn/sharesdk/framework/Platform;)V

    return-void
.end method

.method public static platformIdToName(I)Ljava/lang/String;
    .locals 1
    .param p0, "platformId"    # I

    .prologue
    invoke-static {}, Lcn/sharesdk/framework/ShareSDK;->b()V

    sget-object v0, Lcn/sharesdk/framework/ShareSDK;->a:Lcn/sharesdk/framework/n;

    invoke-virtual {v0, p0}, Lcn/sharesdk/framework/n;->c(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static platformNameToId(Ljava/lang/String;)I
    .locals 1
    .param p0, "platformName"    # Ljava/lang/String;

    .prologue
    invoke-static {}, Lcn/sharesdk/framework/ShareSDK;->b()V

    sget-object v0, Lcn/sharesdk/framework/ShareSDK;->a:Lcn/sharesdk/framework/n;

    invoke-virtual {v0, p0}, Lcn/sharesdk/framework/n;->b(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static registerPlatform(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcn/sharesdk/framework/CustomPlatform;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p0, "platform":Ljava/lang/Class;, "Ljava/lang/Class<+Lcn/sharesdk/framework/CustomPlatform;>;"
    invoke-static {}, Lcn/sharesdk/framework/ShareSDK;->b()V

    sget-object v0, Lcn/sharesdk/framework/ShareSDK;->a:Lcn/sharesdk/framework/n;

    invoke-virtual {v0, p0}, Lcn/sharesdk/framework/n;->d(Ljava/lang/Class;)V

    return-void
.end method

.method public static registerService(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcn/sharesdk/framework/Service;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p0, "service":Ljava/lang/Class;, "Ljava/lang/Class<+Lcn/sharesdk/framework/Service;>;"
    invoke-static {}, Lcn/sharesdk/framework/ShareSDK;->b()V

    sget-object v0, Lcn/sharesdk/framework/ShareSDK;->a:Lcn/sharesdk/framework/n;

    invoke-virtual {v0, p0}, Lcn/sharesdk/framework/n;->a(Ljava/lang/Class;)V

    return-void
.end method

.method public static removeCookieOnAuthorize(Z)V
    .locals 1
    .param p0, "remove"    # Z

    .prologue
    invoke-static {}, Lcn/sharesdk/framework/ShareSDK;->b()V

    sget-object v0, Lcn/sharesdk/framework/ShareSDK;->a:Lcn/sharesdk/framework/n;

    invoke-virtual {v0, p0}, Lcn/sharesdk/framework/n;->b(Z)V

    return-void
.end method

.method public static setConnTimeout(I)V
    .locals 1
    .param p0, "timeout"    # I

    .prologue
    invoke-static {}, Lcn/sharesdk/framework/ShareSDK;->b()V

    sget-object v0, Lcn/sharesdk/framework/ShareSDK;->a:Lcn/sharesdk/framework/n;

    invoke-virtual {v0, p0}, Lcn/sharesdk/framework/n;->a(I)V

    return-void
.end method

.method public static setPlatformDevInfo(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 1
    .param p0, "platform"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "devInfo":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {}, Lcn/sharesdk/framework/ShareSDK;->b()V

    sget-object v0, Lcn/sharesdk/framework/ShareSDK;->a:Lcn/sharesdk/framework/n;

    invoke-virtual {v0, p0, p1}, Lcn/sharesdk/framework/n;->a(Ljava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method

.method public static setReadTimeout(I)V
    .locals 1
    .param p0, "timeout"    # I

    .prologue
    invoke-static {}, Lcn/sharesdk/framework/ShareSDK;->b()V

    sget-object v0, Lcn/sharesdk/framework/ShareSDK;->a:Lcn/sharesdk/framework/n;

    invoke-virtual {v0, p0}, Lcn/sharesdk/framework/n;->b(I)V

    return-void
.end method

.method public static stopSDK()V
    .locals 0

    return-void
.end method

.method public static stopSDK(Landroid/content/Context;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    invoke-static {}, Lcn/sharesdk/framework/ShareSDK;->stopSDK()V

    return-void
.end method

.method public static unregisterPlatform(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcn/sharesdk/framework/CustomPlatform;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p0, "platform":Ljava/lang/Class;, "Ljava/lang/Class<+Lcn/sharesdk/framework/CustomPlatform;>;"
    invoke-static {}, Lcn/sharesdk/framework/ShareSDK;->b()V

    sget-object v0, Lcn/sharesdk/framework/ShareSDK;->a:Lcn/sharesdk/framework/n;

    invoke-virtual {v0, p0}, Lcn/sharesdk/framework/n;->e(Ljava/lang/Class;)V

    return-void
.end method

.method public static unregisterService(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcn/sharesdk/framework/Service;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p0, "service":Ljava/lang/Class;, "Ljava/lang/Class<+Lcn/sharesdk/framework/Service;>;"
    invoke-static {}, Lcn/sharesdk/framework/ShareSDK;->b()V

    sget-object v0, Lcn/sharesdk/framework/ShareSDK;->a:Lcn/sharesdk/framework/n;

    invoke-virtual {v0, p0}, Lcn/sharesdk/framework/n;->b(Ljava/lang/Class;)V

    return-void
.end method
