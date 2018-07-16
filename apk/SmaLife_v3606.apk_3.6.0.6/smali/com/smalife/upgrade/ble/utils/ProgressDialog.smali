.class public Lcom/smalife/upgrade/ble/utils/ProgressDialog;
.super Ljava/lang/Object;
.source "ProgressDialog.java"


# instance fields
.field context:Landroid/content/Context;

.field dialog:Landroid/app/Dialog;

.field flags:Z

.field onCancelListener:Landroid/content/DialogInterface$OnCancelListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Lcom/smalife/upgrade/ble/utils/ProgressDialog$1;

    invoke-direct {v0, p0}, Lcom/smalife/upgrade/ble/utils/ProgressDialog$1;-><init>(Lcom/smalife/upgrade/ble/utils/ProgressDialog;)V

    iput-object v0, p0, Lcom/smalife/upgrade/ble/utils/ProgressDialog;->onCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    .line 21
    iput-object p1, p0, Lcom/smalife/upgrade/ble/utils/ProgressDialog;->context:Landroid/content/Context;

    .line 22
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/smalife/upgrade/ble/utils/ProgressDialog;->flags:Z

    .line 23
    new-instance v0, Landroid/app/Dialog;

    const v1, 0x7f0a0009

    invoke-direct {v0, p1, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/smalife/upgrade/ble/utils/ProgressDialog;->dialog:Landroid/app/Dialog;

    .line 24
    iget-object v0, p0, Lcom/smalife/upgrade/ble/utils/ProgressDialog;->dialog:Landroid/app/Dialog;

    iget-object v1, p0, Lcom/smalife/upgrade/ble/utils/ProgressDialog;->onCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 26
    return-void
.end method


# virtual methods
.method public colseDialog()V
    .locals 2

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/smalife/upgrade/ble/utils/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/smalife/upgrade/ble/utils/ProgressDialog;->flags:Z

    .line 50
    iget-object v0, p0, Lcom/smalife/upgrade/ble/utils/ProgressDialog;->dialog:Landroid/app/Dialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 51
    iget-object v0, p0, Lcom/smalife/upgrade/ble/utils/ProgressDialog;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 53
    :cond_0
    return-void
.end method

.method public initDialog()V
    .locals 10

    .prologue
    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v3, 0x1

    .line 32
    iget-object v1, p0, Lcom/smalife/upgrade/ble/utils/ProgressDialog;->context:Landroid/content/Context;

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/LayoutInflater;

    .line 33
    .local v7, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x7f03000e

    const/4 v2, 0x0

    invoke-virtual {v7, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    .line 34
    .local v9, "view":Landroid/view/View;
    const v1, 0x7f0e003c

    invoke-virtual {v9, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    .line 36
    .local v8, "loading":Landroid/widget/ImageView;
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x43b40000    # 360.0f

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 37
    .local v0, "animation":Landroid/view/animation/RotateAnimation;
    const-wide/16 v4, 0x5dc

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 38
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setRepeatCount(I)V

    .line 39
    invoke-virtual {v0, v3}, Landroid/view/animation/RotateAnimation;->setRepeatMode(I)V

    .line 40
    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 42
    iget-object v1, p0, Lcom/smalife/upgrade/ble/utils/ProgressDialog;->dialog:Landroid/app/Dialog;

    invoke-virtual {v1, v9}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 43
    iget-object v1, p0, Lcom/smalife/upgrade/ble/utils/ProgressDialog;->dialog:Landroid/app/Dialog;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 44
    iget-object v1, p0, Lcom/smalife/upgrade/ble/utils/ProgressDialog;->dialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 45
    return-void
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/smalife/upgrade/ble/utils/ProgressDialog;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    const/4 v0, 0x1

    .line 58
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
