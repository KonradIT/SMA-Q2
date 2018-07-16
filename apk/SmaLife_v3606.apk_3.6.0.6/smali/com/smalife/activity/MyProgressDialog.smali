.class public Lcom/smalife/activity/MyProgressDialog;
.super Ljava/lang/Object;
.source "MyProgressDialog.java"


# instance fields
.field context:Landroid/content/Context;

.field dialog:Landroid/app/Dialog;

.field flags:Z

.field handler:Landroid/os/Handler;

.field i:I

.field imageView:[Landroid/widget/ImageView;

.field imageView1:Landroid/widget/ImageView;

.field imageView2:Landroid/widget/ImageView;

.field imageView3:Landroid/widget/ImageView;

.field imageView4:Landroid/widget/ImageView;

.field imageView5:Landroid/widget/ImageView;

.field onCancelListener:Landroid/content/DialogInterface$OnCancelListener;

.field textviewProgress:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput v1, p0, Lcom/smalife/activity/MyProgressDialog;->i:I

    .line 80
    new-instance v0, Lcom/smalife/activity/MyProgressDialog$1;

    invoke-direct {v0, p0}, Lcom/smalife/activity/MyProgressDialog$1;-><init>(Lcom/smalife/activity/MyProgressDialog;)V

    iput-object v0, p0, Lcom/smalife/activity/MyProgressDialog;->handler:Landroid/os/Handler;

    .line 108
    new-instance v0, Lcom/smalife/activity/MyProgressDialog$2;

    invoke-direct {v0, p0}, Lcom/smalife/activity/MyProgressDialog$2;-><init>(Lcom/smalife/activity/MyProgressDialog;)V

    iput-object v0, p0, Lcom/smalife/activity/MyProgressDialog;->onCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    .line 36
    iput-object p1, p0, Lcom/smalife/activity/MyProgressDialog;->context:Landroid/content/Context;

    .line 37
    iput-boolean v1, p0, Lcom/smalife/activity/MyProgressDialog;->flags:Z

    .line 38
    new-instance v0, Landroid/app/Dialog;

    const v1, 0x7f0a0009

    invoke-direct {v0, p1, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/smalife/activity/MyProgressDialog;->dialog:Landroid/app/Dialog;

    .line 39
    iget-object v0, p0, Lcom/smalife/activity/MyProgressDialog;->dialog:Landroid/app/Dialog;

    iget-object v1, p0, Lcom/smalife/activity/MyProgressDialog;->onCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 41
    return-void
.end method


# virtual methods
.method public colseDialog()V
    .locals 2

    .prologue
    .line 91
    invoke-virtual {p0}, Lcom/smalife/activity/MyProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/smalife/activity/MyProgressDialog;->flags:Z

    .line 93
    iget-object v0, p0, Lcom/smalife/activity/MyProgressDialog;->dialog:Landroid/app/Dialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 94
    iget-object v0, p0, Lcom/smalife/activity/MyProgressDialog;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 96
    :cond_0
    return-void
.end method

.method public initDialog()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 47
    iget-object v2, p0, Lcom/smalife/activity/MyProgressDialog;->context:Landroid/content/Context;

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 48
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f03003a

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 49
    .local v1, "view":Landroid/view/View;
    iget-object v2, p0, Lcom/smalife/activity/MyProgressDialog;->dialog:Landroid/app/Dialog;

    invoke-virtual {v2, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 50
    iget-object v2, p0, Lcom/smalife/activity/MyProgressDialog;->dialog:Landroid/app/Dialog;

    const v3, 0x7f0e013d

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/smalife/activity/MyProgressDialog;->textviewProgress:Landroid/widget/TextView;

    .line 51
    iget-object v2, p0, Lcom/smalife/activity/MyProgressDialog;->dialog:Landroid/app/Dialog;

    const v3, 0x7f0e0138

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/smalife/activity/MyProgressDialog;->imageView1:Landroid/widget/ImageView;

    .line 52
    iget-object v2, p0, Lcom/smalife/activity/MyProgressDialog;->dialog:Landroid/app/Dialog;

    const v3, 0x7f0e0139

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/smalife/activity/MyProgressDialog;->imageView2:Landroid/widget/ImageView;

    .line 53
    iget-object v2, p0, Lcom/smalife/activity/MyProgressDialog;->dialog:Landroid/app/Dialog;

    const v3, 0x7f0e013a

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/smalife/activity/MyProgressDialog;->imageView3:Landroid/widget/ImageView;

    .line 54
    iget-object v2, p0, Lcom/smalife/activity/MyProgressDialog;->dialog:Landroid/app/Dialog;

    const v3, 0x7f0e013b

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/smalife/activity/MyProgressDialog;->imageView4:Landroid/widget/ImageView;

    .line 55
    iget-object v2, p0, Lcom/smalife/activity/MyProgressDialog;->dialog:Landroid/app/Dialog;

    const v3, 0x7f0e013c

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/smalife/activity/MyProgressDialog;->imageView5:Landroid/widget/ImageView;

    .line 56
    const/4 v2, 0x5

    new-array v2, v2, [Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/smalife/activity/MyProgressDialog;->imageView1:Landroid/widget/ImageView;

    aput-object v3, v2, v5

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/smalife/activity/MyProgressDialog;->imageView2:Landroid/widget/ImageView;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/smalife/activity/MyProgressDialog;->imageView3:Landroid/widget/ImageView;

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/smalife/activity/MyProgressDialog;->imageView4:Landroid/widget/ImageView;

    aput-object v4, v2, v3

    const/4 v3, 0x4

    iget-object v4, p0, Lcom/smalife/activity/MyProgressDialog;->imageView5:Landroid/widget/ImageView;

    aput-object v4, v2, v3

    iput-object v2, p0, Lcom/smalife/activity/MyProgressDialog;->imageView:[Landroid/widget/ImageView;

    .line 57
    iget-object v2, p0, Lcom/smalife/activity/MyProgressDialog;->dialog:Landroid/app/Dialog;

    invoke-virtual {v2, v5}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 58
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/smalife/activity/MyProgressDialog$3;

    invoke-direct {v3, p0}, Lcom/smalife/activity/MyProgressDialog$3;-><init>(Lcom/smalife/activity/MyProgressDialog;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 76
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 77
    iget-object v2, p0, Lcom/smalife/activity/MyProgressDialog;->dialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 78
    return-void
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/smalife/activity/MyProgressDialog;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    const/4 v0, 0x1

    .line 102
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setProgress(I)V
    .locals 6
    .param p1, "progress"    # I

    .prologue
    .line 106
    iget-object v0, p0, Lcom/smalife/activity/MyProgressDialog;->textviewProgress:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/smalife/activity/MyProgressDialog;->context:Landroid/content/Context;

    const v2, 0x7f0901a4

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    return-void
.end method
