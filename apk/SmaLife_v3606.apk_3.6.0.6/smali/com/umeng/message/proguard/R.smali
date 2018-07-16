.class public Lcom/umeng/message/proguard/R;
.super Ljava/lang/Object;
.source "UTMCLogAssembleHelper.java"


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const/4 v0, 0x0

    sput-object v0, Lcom/umeng/message/proguard/R;->a:Ljava/lang/String;

    .line 10
    const/4 v0, 0x1

    sput-boolean v0, Lcom/umeng/message/proguard/R;->b:Z

    return-void
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 7

    .prologue
    .line 14
    sget-object v1, Lcom/umeng/message/proguard/R;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 15
    sget-object v2, Lcom/umeng/message/proguard/R;->a:Ljava/lang/String;

    .line 39
    :goto_0
    return-object v2

    .line 17
    :cond_0
    if-eqz p0, :cond_3

    sget-boolean v1, Lcom/umeng/message/proguard/R;->b:Z

    if-eqz v1, :cond_3

    .line 19
    :try_start_0
    const-string v1, "com.taobao.dp.DeviceSecuritySDK"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 20
    if-eqz v1, :cond_2

    .line 21
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 22
    const/4 v3, 0x0

    aput-object p0, v2, v3

    .line 23
    const-string v3, "getInstance"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/content/Context;

    aput-object v6, v4, v5

    invoke-static {v1, v3, v2, v4}, Lcom/umeng/message/proguard/ar;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    .line 25
    if-eqz v1, :cond_3

    .line 26
    const-string v2, "getSecurityToken"

    invoke-static {v1, v2}, Lcom/umeng/message/proguard/ar;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 28
    if-eqz v2, :cond_1

    .line 29
    move-object v0, v2

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    sput-object v1, Lcom/umeng/message/proguard/R;->a:Ljava/lang/String;

    .line 31
    :cond_1
    check-cast v2, Ljava/lang/String;

    goto :goto_0

    .line 34
    :cond_2
    const/4 v1, 0x0

    sput-boolean v1, Lcom/umeng/message/proguard/R;->b:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    :cond_3
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 36
    :catch_0
    move-exception v1

    goto :goto_1
.end method
