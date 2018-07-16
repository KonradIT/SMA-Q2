.class Lcom/smalife/camera/AlbumAty$1;
.super Ljava/lang/Object;
.source "AlbumAty.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smalife/camera/AlbumAty;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smalife/camera/AlbumAty;


# direct methods
.method constructor <init>(Lcom/smalife/camera/AlbumAty;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/smalife/camera/AlbumAty$1;->this$0:Lcom/smalife/camera/AlbumAty;

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "arg2"    # I
    .param p4, "arg3"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 84
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/smalife/camera/AlbumAty$1;->this$0:Lcom/smalife/camera/AlbumAty;

    invoke-static {v1}, Lcom/smalife/camera/AlbumAty;->access$0(Lcom/smalife/camera/AlbumAty;)Lcom/linj/album/view/AlbumGridView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/linj/album/view/AlbumGridView;->getEditable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 88
    :goto_0
    return-void

    .line 85
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/smalife/camera/AlbumAty$1;->this$0:Lcom/smalife/camera/AlbumAty;

    const-class v2, Lcom/smalife/camera/AlbumItemAty;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 86
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "path"

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 87
    iget-object v1, p0, Lcom/smalife/camera/AlbumAty$1;->this$0:Lcom/smalife/camera/AlbumAty;

    invoke-virtual {v1, v0}, Lcom/smalife/camera/AlbumAty;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
