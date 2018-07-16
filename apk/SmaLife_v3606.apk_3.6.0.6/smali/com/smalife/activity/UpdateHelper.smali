.class public Lcom/smalife/activity/UpdateHelper;
.super Landroid/app/Activity;
.source "UpdateHelper.java"


# instance fields
.field private back_btn:Landroid/widget/ImageButton;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 16
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 17
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/smalife/activity/UpdateHelper;->requestWindowFeature(I)Z

    .line 18
    const v0, 0x7f030075

    invoke-virtual {p0, v0}, Lcom/smalife/activity/UpdateHelper;->setContentView(I)V

    .line 19
    const v0, 0x7f0e0006

    invoke-virtual {p0, v0}, Lcom/smalife/activity/UpdateHelper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/smalife/activity/UpdateHelper;->back_btn:Landroid/widget/ImageButton;

    .line 20
    iget-object v0, p0, Lcom/smalife/activity/UpdateHelper;->back_btn:Landroid/widget/ImageButton;

    new-instance v1, Lcom/smalife/activity/UpdateHelper$1;

    invoke-direct {v1, p0}, Lcom/smalife/activity/UpdateHelper$1;-><init>(Lcom/smalife/activity/UpdateHelper;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 27
    return-void
.end method
