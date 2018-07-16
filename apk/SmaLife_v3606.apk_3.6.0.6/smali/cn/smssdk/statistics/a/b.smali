.class public Lcn/smssdk/statistics/a/b;
.super Ljava/lang/Object;


# static fields
.field private static c:Lcn/smssdk/statistics/a/b;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/content/SharedPreferences;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcn/smssdk/statistics/a/b;->a:Landroid/content/Context;

    const-string v0, "sms_sdk_0"

    iget-object v1, p0, Lcn/smssdk/statistics/a/b;->a:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcn/smssdk/statistics/a/b;->b:Landroid/content/SharedPreferences;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcn/smssdk/statistics/a/b;
    .locals 2

    sget-object v0, Lcn/smssdk/statistics/a/b;->c:Lcn/smssdk/statistics/a/b;

    if-nez v0, :cond_0

    new-instance v0, Lcn/smssdk/statistics/a/b;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/smssdk/statistics/a/b;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcn/smssdk/statistics/a/b;->c:Lcn/smssdk/statistics/a/b;

    :cond_0
    sget-object v0, Lcn/smssdk/statistics/a/b;->c:Lcn/smssdk/statistics/a/b;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)J
    .locals 4

    iget-object v0, p0, Lcn/smssdk/statistics/a/b;->b:Landroid/content/SharedPreferences;

    const-wide/16 v2, 0x0

    invoke-interface {v0, p1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public a()Ljava/lang/Long;
    .locals 2

    const-string v0, "device_time"

    invoke-virtual {p0, v0}, Lcn/smssdk/statistics/a/b;->a(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lcn/smssdk/statistics/a/b;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Long;)V
    .locals 4

    iget-object v0, p0, Lcn/smssdk/statistics/a/b;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {v0, p1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public b(Ljava/lang/String;)I
    .locals 2

    iget-object v0, p0, Lcn/smssdk/statistics/a/b;->b:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method
