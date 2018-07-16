.class Lcom/linj/album/view/AlbumViewPager$ViewPagerAdapter$1;
.super Ljava/lang/Object;
.source "AlbumViewPager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/linj/album/view/AlbumViewPager$ViewPagerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/linj/album/view/AlbumViewPager$ViewPagerAdapter;


# direct methods
.method constructor <init>(Lcom/linj/album/view/AlbumViewPager$ViewPagerAdapter;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/linj/album/view/AlbumViewPager$ViewPagerAdapter$1;->this$1:Lcom/linj/album/view/AlbumViewPager$ViewPagerAdapter;

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 154
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 155
    .local v0, "path":Ljava/lang/String;
    iget-object v1, p0, Lcom/linj/album/view/AlbumViewPager$ViewPagerAdapter$1;->this$1:Lcom/linj/album/view/AlbumViewPager$ViewPagerAdapter;

    invoke-static {v1}, Lcom/linj/album/view/AlbumViewPager$ViewPagerAdapter;->access$0(Lcom/linj/album/view/AlbumViewPager$ViewPagerAdapter;)Lcom/linj/album/view/AlbumViewPager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/linj/album/view/AlbumViewPager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/linj/cameralibrary/R$string;->Thumbnail:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 156
    iget-object v2, p0, Lcom/linj/album/view/AlbumViewPager$ViewPagerAdapter$1;->this$1:Lcom/linj/album/view/AlbumViewPager$ViewPagerAdapter;

    invoke-static {v2}, Lcom/linj/album/view/AlbumViewPager$ViewPagerAdapter;->access$0(Lcom/linj/album/view/AlbumViewPager$ViewPagerAdapter;)Lcom/linj/album/view/AlbumViewPager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/linj/album/view/AlbumViewPager;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/linj/cameralibrary/R$string;->Video:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 155
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 157
    const-string v1, ".jpg"

    const-string v2, ".3gp"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 158
    iget-object v1, p0, Lcom/linj/album/view/AlbumViewPager$ViewPagerAdapter$1;->this$1:Lcom/linj/album/view/AlbumViewPager$ViewPagerAdapter;

    invoke-static {v1}, Lcom/linj/album/view/AlbumViewPager$ViewPagerAdapter;->access$0(Lcom/linj/album/view/AlbumViewPager$ViewPagerAdapter;)Lcom/linj/album/view/AlbumViewPager;

    move-result-object v1

    invoke-static {v1}, Lcom/linj/album/view/AlbumViewPager;->access$0(Lcom/linj/album/view/AlbumViewPager;)Lcom/linj/album/view/AlbumViewPager$OnPlayVideoListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 159
    iget-object v1, p0, Lcom/linj/album/view/AlbumViewPager$ViewPagerAdapter$1;->this$1:Lcom/linj/album/view/AlbumViewPager$ViewPagerAdapter;

    invoke-static {v1}, Lcom/linj/album/view/AlbumViewPager$ViewPagerAdapter;->access$0(Lcom/linj/album/view/AlbumViewPager$ViewPagerAdapter;)Lcom/linj/album/view/AlbumViewPager;

    move-result-object v1

    invoke-static {v1}, Lcom/linj/album/view/AlbumViewPager;->access$0(Lcom/linj/album/view/AlbumViewPager;)Lcom/linj/album/view/AlbumViewPager$OnPlayVideoListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/linj/album/view/AlbumViewPager$OnPlayVideoListener;->onPlay(Ljava/lang/String;)V

    .line 164
    :goto_0
    return-void

    .line 161
    :cond_0
    iget-object v1, p0, Lcom/linj/album/view/AlbumViewPager$ViewPagerAdapter$1;->this$1:Lcom/linj/album/view/AlbumViewPager$ViewPagerAdapter;

    invoke-static {v1}, Lcom/linj/album/view/AlbumViewPager$ViewPagerAdapter;->access$0(Lcom/linj/album/view/AlbumViewPager$ViewPagerAdapter;)Lcom/linj/album/view/AlbumViewPager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/linj/album/view/AlbumViewPager;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "onPlayVideoListener"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
