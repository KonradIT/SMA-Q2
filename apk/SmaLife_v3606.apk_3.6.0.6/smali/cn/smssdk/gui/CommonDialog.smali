.class public Lcn/smssdk/gui/CommonDialog;
.super Ljava/lang/Object;
.source "CommonDialog.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final ProgressDialog(Landroid/content/Context;)Landroid/app/Dialog;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    const-string v2, "CommonDialog"

    invoke-static {p0, v2}, Lcom/mob/tools/utils/R;->getStyleRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 19
    .local v1, "resId":I
    if-lez v1, :cond_0

    .line 20
    new-instance v0, Landroid/app/Dialog;

    invoke-direct {v0, p0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 21
    .local v0, "dialog":Landroid/app/Dialog;
    const-string v2, "smssdk_progress_dialog"

    invoke-static {p0, v2}, Lcom/mob/tools/utils/R;->getLayoutRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 22
    if-lez v1, :cond_0

    .line 23
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 27
    .end local v0    # "dialog":Landroid/app/Dialog;
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
