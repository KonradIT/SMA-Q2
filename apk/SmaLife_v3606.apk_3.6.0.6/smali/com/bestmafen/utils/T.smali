.class public final Lcom/bestmafen/utils/T;
.super Ljava/lang/Object;
.source "T.java"


# static fields
.field private static mToast:Landroid/widget/Toast;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static final show(Landroid/content/Context;I)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "msgRes"    # I

    .prologue
    const/4 v2, 0x0

    .line 26
    sget-object v0, Lcom/bestmafen/utils/T;->mToast:Landroid/widget/Toast;

    if-nez v0, :cond_0

    .line 27
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    sput-object v0, Lcom/bestmafen/utils/T;->mToast:Landroid/widget/Toast;

    .line 32
    :goto_0
    sget-object v0, Lcom/bestmafen/utils/T;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 33
    return-void

    .line 29
    :cond_0
    sget-object v0, Lcom/bestmafen/utils/T;->mToast:Landroid/widget/Toast;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 30
    sget-object v0, Lcom/bestmafen/utils/T;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0, v2}, Landroid/widget/Toast;->setDuration(I)V

    goto :goto_0
.end method

.method public static final show(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 16
    sget-object v0, Lcom/bestmafen/utils/T;->mToast:Landroid/widget/Toast;

    if-nez v0, :cond_0

    .line 17
    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    sput-object v0, Lcom/bestmafen/utils/T;->mToast:Landroid/widget/Toast;

    .line 22
    :goto_0
    sget-object v0, Lcom/bestmafen/utils/T;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 23
    return-void

    .line 19
    :cond_0
    sget-object v0, Lcom/bestmafen/utils/T;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 20
    sget-object v0, Lcom/bestmafen/utils/T;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setDuration(I)V

    goto :goto_0
.end method
