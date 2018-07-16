.class public Lcn/smssdk/b/a;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcn/smssdk/b/a;


# instance fields
.field private b:Lcom/mob/tools/utils/SharePrefrenceHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcn/smssdk/b/a;->a:Lcn/smssdk/b/a;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/mob/tools/utils/SharePrefrenceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/SharePrefrenceHelper;

    move-result-object v0

    iput-object v0, p0, Lcn/smssdk/b/a;->b:Lcom/mob/tools/utils/SharePrefrenceHelper;

    iget-object v0, p0, Lcn/smssdk/b/a;->b:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v1, "SMSSDK_VCODE"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/mob/tools/utils/SharePrefrenceHelper;->open(Ljava/lang/String;I)V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcn/smssdk/b/a;
    .locals 1

    sget-object v0, Lcn/smssdk/b/a;->a:Lcn/smssdk/b/a;

    if-nez v0, :cond_0

    new-instance v0, Lcn/smssdk/b/a;

    invoke-direct {v0, p0}, Lcn/smssdk/b/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcn/smssdk/b/a;->a:Lcn/smssdk/b/a;

    :cond_0
    sget-object v0, Lcn/smssdk/b/a;->a:Lcn/smssdk/b/a;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcn/smssdk/b/a;
    .locals 2

    iget-object v0, p0, Lcn/smssdk/b/a;->b:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v1, "KEY_VCODE_HASH"

    invoke-virtual {v0, v1, p1}, Lcom/mob/tools/utils/SharePrefrenceHelper;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcn/smssdk/b/a;->a:Lcn/smssdk/b/a;

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcn/smssdk/b/a;->b:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v1, "KEY_VCODE_HASH"

    invoke-virtual {v0, v1}, Lcom/mob/tools/utils/SharePrefrenceHelper;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;)Lcn/smssdk/b/a;
    .locals 2

    iget-object v0, p0, Lcn/smssdk/b/a;->b:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v1, "KEY_SMSID"

    invoke-virtual {v0, v1, p1}, Lcom/mob/tools/utils/SharePrefrenceHelper;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcn/smssdk/b/a;->a:Lcn/smssdk/b/a;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcn/smssdk/b/a;->b:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v1, "KEY_SMSID"

    invoke-virtual {v0, v1}, Lcom/mob/tools/utils/SharePrefrenceHelper;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c(Ljava/lang/String;)Lcn/smssdk/b/a;
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, ""

    :cond_0
    iget-object v0, p0, Lcn/smssdk/b/a;->b:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v1, "KEY_APPKEY"

    invoke-virtual {v0, v1, p1}, Lcom/mob/tools/utils/SharePrefrenceHelper;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcn/smssdk/b/a;->a:Lcn/smssdk/b/a;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcn/smssdk/b/a;->b:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v1, "KEY_APPKEY"

    invoke-virtual {v0, v1}, Lcom/mob/tools/utils/SharePrefrenceHelper;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcn/smssdk/b/a;->b:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v1, "KEY_LOG"

    invoke-virtual {v0, v1}, Lcom/mob/tools/utils/SharePrefrenceHelper;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 3

    const-string v1, "KEY_LOG"

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lcn/smssdk/b/a;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\r\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    iget-object v0, p0, Lcn/smssdk/b/a;->b:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v2, "KEY_LOG"

    invoke-virtual {v0, v2, p1}, Lcom/mob/tools/utils/SharePrefrenceHelper;->putString(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
