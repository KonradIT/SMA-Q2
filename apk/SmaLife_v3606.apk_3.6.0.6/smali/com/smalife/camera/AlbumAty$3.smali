.class Lcom/smalife/camera/AlbumAty$3;
.super Ljava/lang/Object;
.source "AlbumAty.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smalife/camera/AlbumAty;->showDeleteDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smalife/camera/AlbumAty;


# direct methods
.method constructor <init>(Lcom/smalife/camera/AlbumAty;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/smalife/camera/AlbumAty$3;->this$0:Lcom/smalife/camera/AlbumAty;

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 193
    iget-object v3, p0, Lcom/smalife/camera/AlbumAty$3;->this$0:Lcom/smalife/camera/AlbumAty;

    invoke-static {v3}, Lcom/smalife/camera/AlbumAty;->access$0(Lcom/smalife/camera/AlbumAty;)Lcom/linj/album/view/AlbumGridView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/linj/album/view/AlbumGridView;->getSelectedItems()Ljava/util/Set;

    move-result-object v1

    .line 194
    .local v1, "items":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 198
    iget-object v3, p0, Lcom/smalife/camera/AlbumAty$3;->this$0:Lcom/smalife/camera/AlbumAty;

    iget-object v4, p0, Lcom/smalife/camera/AlbumAty$3;->this$0:Lcom/smalife/camera/AlbumAty;

    invoke-static {v4}, Lcom/smalife/camera/AlbumAty;->access$2(Lcom/smalife/camera/AlbumAty;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ".jpg"

    invoke-virtual {v3, v4, v5}, Lcom/smalife/camera/AlbumAty;->loadAlbum(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    iget-object v3, p0, Lcom/smalife/camera/AlbumAty$3;->this$0:Lcom/smalife/camera/AlbumAty;

    invoke-static {v3}, Lcom/smalife/camera/AlbumAty;->access$3(Lcom/smalife/camera/AlbumAty;)V

    .line 200
    return-void

    .line 194
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 195
    .local v2, "path":Ljava/lang/String;
    iget-object v4, p0, Lcom/smalife/camera/AlbumAty$3;->this$0:Lcom/smalife/camera/AlbumAty;

    invoke-static {v2, v4}, Lcom/linj/FileOperateUtil;->deleteThumbFile(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    .line 196
    .local v0, "flag":Z
    if-nez v0, :cond_0

    const-string v4, "AlbumAty"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
