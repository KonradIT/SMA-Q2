.class Lcom/smalife/activity/MyProgressDialog$1;
.super Landroid/os/Handler;
.source "MyProgressDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smalife/activity/MyProgressDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smalife/activity/MyProgressDialog;


# direct methods
.method constructor <init>(Lcom/smalife/activity/MyProgressDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/smalife/activity/MyProgressDialog$1;->this$0:Lcom/smalife/activity/MyProgressDialog;

    .line 80
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/smalife/activity/MyProgressDialog$1;->this$0:Lcom/smalife/activity/MyProgressDialog;

    iget-object v0, v0, Lcom/smalife/activity/MyProgressDialog;->imageView:[Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/smalife/activity/MyProgressDialog$1;->this$0:Lcom/smalife/activity/MyProgressDialog;

    iget v1, v1, Lcom/smalife/activity/MyProgressDialog;->i:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/smalife/activity/MyProgressDialog$1;->this$0:Lcom/smalife/activity/MyProgressDialog;

    iget-object v1, v1, Lcom/smalife/activity/MyProgressDialog;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02016d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 84
    iget-object v0, p0, Lcom/smalife/activity/MyProgressDialog$1;->this$0:Lcom/smalife/activity/MyProgressDialog;

    iget-object v0, v0, Lcom/smalife/activity/MyProgressDialog;->imageView:[Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/smalife/activity/MyProgressDialog$1;->this$0:Lcom/smalife/activity/MyProgressDialog;

    iget v1, v1, Lcom/smalife/activity/MyProgressDialog;->i:I

    add-int/lit8 v1, v1, 0x5

    add-int/lit8 v1, v1, -0x1

    rem-int/lit8 v1, v1, 0x5

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/smalife/activity/MyProgressDialog$1;->this$0:Lcom/smalife/activity/MyProgressDialog;

    iget-object v1, v1, Lcom/smalife/activity/MyProgressDialog;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02016c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 85
    iget-object v0, p0, Lcom/smalife/activity/MyProgressDialog$1;->this$0:Lcom/smalife/activity/MyProgressDialog;

    iget v1, v0, Lcom/smalife/activity/MyProgressDialog;->i:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/smalife/activity/MyProgressDialog;->i:I

    .line 86
    iget-object v0, p0, Lcom/smalife/activity/MyProgressDialog$1;->this$0:Lcom/smalife/activity/MyProgressDialog;

    iget-object v1, p0, Lcom/smalife/activity/MyProgressDialog$1;->this$0:Lcom/smalife/activity/MyProgressDialog;

    iget v1, v1, Lcom/smalife/activity/MyProgressDialog;->i:I

    add-int/lit8 v1, v1, 0x5

    rem-int/lit8 v1, v1, 0x5

    iput v1, v0, Lcom/smalife/activity/MyProgressDialog;->i:I

    .line 87
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 88
    return-void
.end method
