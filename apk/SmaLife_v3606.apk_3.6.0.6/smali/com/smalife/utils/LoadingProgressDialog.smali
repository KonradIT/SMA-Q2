.class public Lcom/smalife/utils/LoadingProgressDialog;
.super Landroid/app/Dialog;
.source "LoadingProgressDialog.java"


# static fields
.field private static customProgressDialog:Lcom/smalife/utils/LoadingProgressDialog;


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x0

    sput-object v0, Lcom/smalife/utils/LoadingProgressDialog;->customProgressDialog:Lcom/smalife/utils/LoadingProgressDialog;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 13
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/smalife/utils/LoadingProgressDialog;->context:Landroid/content/Context;

    .line 18
    iput-object p1, p0, Lcom/smalife/utils/LoadingProgressDialog;->context:Landroid/content/Context;

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 13
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/smalife/utils/LoadingProgressDialog;->context:Landroid/content/Context;

    .line 23
    return-void
.end method

.method public static createDialog(Landroid/content/Context;)Lcom/smalife/utils/LoadingProgressDialog;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    new-instance v0, Lcom/smalife/utils/LoadingProgressDialog;

    .line 27
    const v1, 0x7f0a0012

    .line 26
    invoke-direct {v0, p0, v1}, Lcom/smalife/utils/LoadingProgressDialog;-><init>(Landroid/content/Context;I)V

    sput-object v0, Lcom/smalife/utils/LoadingProgressDialog;->customProgressDialog:Lcom/smalife/utils/LoadingProgressDialog;

    .line 28
    sget-object v0, Lcom/smalife/utils/LoadingProgressDialog;->customProgressDialog:Lcom/smalife/utils/LoadingProgressDialog;

    const v1, 0x7f030041

    invoke-virtual {v0, v1}, Lcom/smalife/utils/LoadingProgressDialog;->setContentView(I)V

    .line 29
    sget-object v0, Lcom/smalife/utils/LoadingProgressDialog;->customProgressDialog:Lcom/smalife/utils/LoadingProgressDialog;

    invoke-virtual {v0}, Lcom/smalife/utils/LoadingProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/16 v1, 0x11

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 31
    sget-object v0, Lcom/smalife/utils/LoadingProgressDialog;->customProgressDialog:Lcom/smalife/utils/LoadingProgressDialog;

    return-object v0
.end method


# virtual methods
.method public onWindowFocusChanged(Z)V
    .locals 4
    .param p1, "hasFocus"    # Z

    .prologue
    .line 36
    sget-object v2, Lcom/smalife/utils/LoadingProgressDialog;->customProgressDialog:Lcom/smalife/utils/LoadingProgressDialog;

    if-nez v2, :cond_0

    .line 45
    :goto_0
    return-void

    .line 40
    :cond_0
    sget-object v2, Lcom/smalife/utils/LoadingProgressDialog;->customProgressDialog:Lcom/smalife/utils/LoadingProgressDialog;

    .line 41
    const v3, 0x7f0e016f

    invoke-virtual {v2, v3}, Lcom/smalife/utils/LoadingProgressDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 40
    check-cast v1, Landroid/widget/ImageView;

    .line 43
    .local v1, "imageView":Landroid/widget/ImageView;
    invoke-virtual {v1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 42
    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 44
    .local v0, "animationDrawable":Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto :goto_0
.end method

.method public setMessage(Ljava/lang/String;)Lcom/smalife/utils/LoadingProgressDialog;
    .locals 3
    .param p1, "strMessage"    # Ljava/lang/String;

    .prologue
    .line 68
    sget-object v1, Lcom/smalife/utils/LoadingProgressDialog;->customProgressDialog:Lcom/smalife/utils/LoadingProgressDialog;

    .line 69
    const v2, 0x7f0e0170

    invoke-virtual {v1, v2}, Lcom/smalife/utils/LoadingProgressDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 68
    check-cast v0, Landroid/widget/TextView;

    .line 71
    .local v0, "tvMsg":Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 72
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    :cond_0
    sget-object v1, Lcom/smalife/utils/LoadingProgressDialog;->customProgressDialog:Lcom/smalife/utils/LoadingProgressDialog;

    return-object v1
.end method

.method public setTitile(Ljava/lang/String;)Lcom/smalife/utils/LoadingProgressDialog;
    .locals 1
    .param p1, "strTitle"    # Ljava/lang/String;

    .prologue
    .line 56
    sget-object v0, Lcom/smalife/utils/LoadingProgressDialog;->customProgressDialog:Lcom/smalife/utils/LoadingProgressDialog;

    return-object v0
.end method
