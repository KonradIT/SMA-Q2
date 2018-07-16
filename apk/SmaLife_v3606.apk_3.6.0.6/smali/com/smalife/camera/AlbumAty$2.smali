.class Lcom/smalife/camera/AlbumAty$2;
.super Ljava/lang/Object;
.source "AlbumAty.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


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
        "Landroid/widget/AdapterView$OnItemLongClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smalife/camera/AlbumAty;


# direct methods
.method constructor <init>(Lcom/smalife/camera/AlbumAty;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/smalife/camera/AlbumAty$2;->this$0:Lcom/smalife/camera/AlbumAty;

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v1, 0x1

    .line 96
    iget-object v0, p0, Lcom/smalife/camera/AlbumAty$2;->this$0:Lcom/smalife/camera/AlbumAty;

    invoke-static {v0}, Lcom/smalife/camera/AlbumAty;->access$0(Lcom/smalife/camera/AlbumAty;)Lcom/linj/album/view/AlbumGridView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/linj/album/view/AlbumGridView;->getEditable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    :goto_0
    return v1

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/smalife/camera/AlbumAty$2;->this$0:Lcom/smalife/camera/AlbumAty;

    invoke-static {v0}, Lcom/smalife/camera/AlbumAty;->access$1(Lcom/smalife/camera/AlbumAty;)V

    goto :goto_0
.end method
