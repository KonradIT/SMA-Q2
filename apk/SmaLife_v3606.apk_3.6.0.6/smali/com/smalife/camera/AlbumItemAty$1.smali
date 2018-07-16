.class Lcom/smalife/camera/AlbumItemAty$1;
.super Ljava/lang/Object;
.source "AlbumItemAty.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smalife/camera/AlbumItemAty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smalife/camera/AlbumItemAty;


# direct methods
.method constructor <init>(Lcom/smalife/camera/AlbumItemAty;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/smalife/camera/AlbumItemAty$1;->this$0:Lcom/smalife/camera/AlbumItemAty;

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "arg0"    # I

    .prologue
    .line 151
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "arg0"    # I
    .param p2, "arg1"    # F
    .param p3, "arg2"    # I

    .prologue
    .line 145
    return-void
.end method

.method public onPageSelected(I)V
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 133
    iget-object v1, p0, Lcom/smalife/camera/AlbumItemAty$1;->this$0:Lcom/smalife/camera/AlbumItemAty;

    invoke-static {v1}, Lcom/smalife/camera/AlbumItemAty;->access$0(Lcom/smalife/camera/AlbumItemAty;)Lcom/linj/album/view/AlbumViewPager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/linj/album/view/AlbumViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 134
    new-instance v1, Ljava/lang/StringBuilder;

    add-int/lit8 v2, p1, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/smalife/camera/AlbumItemAty$1;->this$0:Lcom/smalife/camera/AlbumItemAty;

    invoke-static {v2}, Lcom/smalife/camera/AlbumItemAty;->access$0(Lcom/smalife/camera/AlbumItemAty;)Lcom/linj/album/view/AlbumViewPager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/linj/album/view/AlbumViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 135
    .local v0, "text":Ljava/lang/String;
    iget-object v1, p0, Lcom/smalife/camera/AlbumItemAty$1;->this$0:Lcom/smalife/camera/AlbumItemAty;

    invoke-static {v1}, Lcom/smalife/camera/AlbumItemAty;->access$1(Lcom/smalife/camera/AlbumItemAty;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    .end local v0    # "text":Ljava/lang/String;
    :goto_0
    return-void

    .line 137
    :cond_0
    iget-object v1, p0, Lcom/smalife/camera/AlbumItemAty$1;->this$0:Lcom/smalife/camera/AlbumItemAty;

    invoke-static {v1}, Lcom/smalife/camera/AlbumItemAty;->access$1(Lcom/smalife/camera/AlbumItemAty;)Landroid/widget/TextView;

    move-result-object v1

    const-string v2, "0/0"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
