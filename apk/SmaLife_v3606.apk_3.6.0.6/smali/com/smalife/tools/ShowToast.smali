.class public Lcom/smalife/tools/ShowToast;
.super Ljava/lang/Object;
.source "ShowToast.java"


# static fields
.field private static appToast:Landroid/widget/Toast;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static show(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 34
    sget-object v0, Lcom/smalife/tools/ShowToast;->appToast:Landroid/widget/Toast;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 35
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    sput-object v0, Lcom/smalife/tools/ShowToast;->appToast:Landroid/widget/Toast;

    .line 36
    sget-object v0, Lcom/smalife/tools/ShowToast;->appToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 41
    :goto_0
    return-void

    .line 38
    :cond_0
    sget-object v0, Lcom/smalife/tools/ShowToast;->appToast:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 39
    sget-object v0, Lcom/smalife/tools/ShowToast;->appToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public static showMsg(Landroid/content/Context;I)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "msgRes"    # I

    .prologue
    .line 12
    if-eqz p0, :cond_0

    .line 13
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 14
    .local v0, "text":Ljava/lang/String;
    invoke-static {p0, v0}, Lcom/smalife/tools/ShowToast;->showMsg(Landroid/content/Context;Ljava/lang/String;)V

    .line 16
    .end local v0    # "text":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public static showMsg(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 19
    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 20
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "main"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 21
    invoke-static {p0, p1}, Lcom/smalife/tools/ShowToast;->show(Landroid/content/Context;Ljava/lang/String;)V

    .line 31
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v0, p0

    .line 23
    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/smalife/tools/ShowToast$1;

    invoke-direct {v1, p0, p1}, Lcom/smalife/tools/ShowToast$1;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
