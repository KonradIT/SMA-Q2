.class public Lcom/umeng/message/proguard/as;
.super Ljava/lang/Object;
.source "UTMCSPHelper.java"


# direct methods
.method public static a(Landroid/content/SharedPreferences$Editor;)V
    .locals 0

    .prologue
    .line 16
    if-eqz p0, :cond_0

    .line 17
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 19
    :cond_0
    return-void
.end method
