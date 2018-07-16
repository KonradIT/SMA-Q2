.class public Lcom/umeng/message/proguard/C;
.super Ljava/lang/Object;
.source "UTMCAppStatusRegHelper.java"


# direct methods
.method public static a(Landroid/app/Application;)V
    .locals 1

    .prologue
    .line 21
    if-eqz p0, :cond_0

    .line 22
    invoke-static {}, Lcom/umeng/message/proguard/B;->a()Lcom/umeng/message/proguard/B;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 26
    :cond_0
    return-void
.end method

.method public static a(Lcom/umeng/message/proguard/A;)V
    .locals 1

    .prologue
    .line 12
    if-eqz p0, :cond_0

    .line 13
    invoke-static {}, Lcom/umeng/message/proguard/B;->a()Lcom/umeng/message/proguard/B;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/umeng/message/proguard/B;->a(Lcom/umeng/message/proguard/A;)V

    .line 16
    :cond_0
    return-void
.end method
