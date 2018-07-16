.class public Lcom/linj/album/view/AlbumGridView$AlbumViewAdapter;
.super Landroid/widget/BaseAdapter;
.source "AlbumGridView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/linj/album/view/AlbumGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AlbumViewAdapter"
.end annotation


# instance fields
.field itemSelectedSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field listener:Lcom/linj/album/view/AlbumGridView$OnCheckedChangeListener;

.field mPaths:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/linj/album/view/AlbumGridView;


# direct methods
.method public constructor <init>(Lcom/linj/album/view/AlbumGridView;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 147
    .local p2, "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/linj/album/view/AlbumGridView$AlbumViewAdapter;->this$0:Lcom/linj/album/view/AlbumGridView;

    .line 148
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 140
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/linj/album/view/AlbumGridView$AlbumViewAdapter;->itemSelectedSet:Ljava/util/Set;

    .line 143
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/linj/album/view/AlbumGridView$AlbumViewAdapter;->listener:Lcom/linj/album/view/AlbumGridView$OnCheckedChangeListener;

    .line 149
    iput-object p2, p0, Lcom/linj/album/view/AlbumGridView$AlbumViewAdapter;->mPaths:Ljava/util/List;

    .line 150
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/linj/album/view/AlbumGridView$AlbumViewAdapter;->mPaths:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/linj/album/view/AlbumGridView$AlbumViewAdapter;->getItem(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Ljava/lang/String;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 203
    iget-object v0, p0, Lcom/linj/album/view/AlbumGridView$AlbumViewAdapter;->mPaths:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 210
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getSelectedItems()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 190
    iget-object v0, p0, Lcom/linj/album/view/AlbumGridView$AlbumViewAdapter;->itemSelectedSet:Ljava/util/Set;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 216
    move-object v0, p2

    check-cast v0, Lcom/linj/album/view/ThumbnaiImageView;

    .line 217
    .local v0, "albumItemView":Lcom/linj/album/view/ThumbnaiImageView;
    if-nez v0, :cond_0

    new-instance v0, Lcom/linj/album/view/ThumbnaiImageView;

    .end local v0    # "albumItemView":Lcom/linj/album/view/ThumbnaiImageView;
    iget-object v2, p0, Lcom/linj/album/view/AlbumGridView$AlbumViewAdapter;->this$0:Lcom/linj/album/view/AlbumGridView;

    invoke-virtual {v2}, Lcom/linj/album/view/AlbumGridView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/linj/album/view/AlbumGridView$AlbumViewAdapter;->this$0:Lcom/linj/album/view/AlbumGridView;

    invoke-static {v3}, Lcom/linj/album/view/AlbumGridView;->access$0(Lcom/linj/album/view/AlbumGridView;)Lcom/linj/imageloader/ImageLoader;

    move-result-object v3

    iget-object v4, p0, Lcom/linj/album/view/AlbumGridView$AlbumViewAdapter;->this$0:Lcom/linj/album/view/AlbumGridView;

    invoke-static {v4}, Lcom/linj/album/view/AlbumGridView;->access$1(Lcom/linj/album/view/AlbumGridView;)Lcom/linj/imageloader/DisplayImageOptions;

    move-result-object v4

    invoke-direct {v0, v2, v3, v4}, Lcom/linj/album/view/ThumbnaiImageView;-><init>(Landroid/content/Context;Lcom/linj/imageloader/ImageLoader;Lcom/linj/imageloader/DisplayImageOptions;)V

    .line 218
    .restart local v0    # "albumItemView":Lcom/linj/album/view/ThumbnaiImageView;
    :cond_0
    invoke-virtual {v0, p0}, Lcom/linj/album/view/ThumbnaiImageView;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 220
    invoke-virtual {v0, p0}, Lcom/linj/album/view/ThumbnaiImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 221
    invoke-virtual {p0, p1}, Lcom/linj/album/view/AlbumGridView$AlbumViewAdapter;->getItem(I)Ljava/lang/String;

    move-result-object v1

    .line 222
    .local v1, "path":Ljava/lang/String;
    iget-object v2, p0, Lcom/linj/album/view/AlbumGridView$AlbumViewAdapter;->this$0:Lcom/linj/album/view/AlbumGridView;

    invoke-static {v2}, Lcom/linj/album/view/AlbumGridView;->access$2(Lcom/linj/album/view/AlbumGridView;)Z

    move-result v2

    iget-object v3, p0, Lcom/linj/album/view/AlbumGridView$AlbumViewAdapter;->itemSelectedSet:Ljava/util/Set;

    invoke-interface {v3, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/linj/album/view/ThumbnaiImageView;->setTags(Ljava/lang/String;IZZ)V

    .line 223
    return-object v0
.end method

.method public notifyDataSetChanged(Lcom/linj/album/view/AlbumGridView$OnCheckedChangeListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/linj/album/view/AlbumGridView$OnCheckedChangeListener;

    .prologue
    .line 160
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/linj/album/view/AlbumGridView$AlbumViewAdapter;->itemSelectedSet:Ljava/util/Set;

    .line 161
    iput-object p1, p0, Lcom/linj/album/view/AlbumGridView$AlbumViewAdapter;->listener:Lcom/linj/album/view/AlbumGridView$OnCheckedChangeListener;

    .line 162
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 163
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 238
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 242
    :cond_0
    :goto_0
    return-void

    .line 239
    :cond_1
    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/linj/album/view/AlbumGridView$AlbumViewAdapter;->itemSelectedSet:Ljava/util/Set;

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 241
    :goto_1
    iget-object v0, p0, Lcom/linj/album/view/AlbumGridView$AlbumViewAdapter;->listener:Lcom/linj/album/view/AlbumGridView$OnCheckedChangeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/linj/album/view/AlbumGridView$AlbumViewAdapter;->listener:Lcom/linj/album/view/AlbumGridView$OnCheckedChangeListener;

    iget-object v1, p0, Lcom/linj/album/view/AlbumGridView$AlbumViewAdapter;->itemSelectedSet:Ljava/util/Set;

    invoke-interface {v0, v1}, Lcom/linj/album/view/AlbumGridView$OnCheckedChangeListener;->onCheckedChanged(Ljava/util/Set;)V

    goto :goto_0

    .line 240
    :cond_2
    iget-object v0, p0, Lcom/linj/album/view/AlbumGridView$AlbumViewAdapter;->itemSelectedSet:Ljava/util/Set;

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 228
    iget-object v0, p0, Lcom/linj/album/view/AlbumGridView$AlbumViewAdapter;->this$0:Lcom/linj/album/view/AlbumGridView;

    invoke-virtual {v0}, Lcom/linj/album/view/AlbumGridView;->getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 230
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Lcom/linj/album/view/ThumbnaiImageView;

    .line 231
    .local v2, "view":Lcom/linj/album/view/ThumbnaiImageView;
    iget-object v0, p0, Lcom/linj/album/view/AlbumGridView$AlbumViewAdapter;->this$0:Lcom/linj/album/view/AlbumGridView;

    invoke-virtual {v0}, Lcom/linj/album/view/AlbumGridView;->getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/linj/album/view/AlbumGridView$AlbumViewAdapter;->this$0:Lcom/linj/album/view/AlbumGridView;

    invoke-virtual {v2}, Lcom/linj/album/view/ThumbnaiImageView;->getPosition()I

    move-result v3

    const-wide/16 v4, 0x0

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 233
    .end local v2    # "view":Lcom/linj/album/view/ThumbnaiImageView;
    :cond_0
    return-void
.end method

.method public selectAll(Lcom/linj/album/view/AlbumGridView$OnCheckedChangeListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/linj/album/view/AlbumGridView$OnCheckedChangeListener;

    .prologue
    .line 169
    iget-object v1, p0, Lcom/linj/album/view/AlbumGridView$AlbumViewAdapter;->mPaths:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 172
    iput-object p1, p0, Lcom/linj/album/view/AlbumGridView$AlbumViewAdapter;->listener:Lcom/linj/album/view/AlbumGridView$OnCheckedChangeListener;

    .line 173
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 174
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/linj/album/view/AlbumGridView$AlbumViewAdapter;->itemSelectedSet:Ljava/util/Set;

    invoke-interface {p1, v1}, Lcom/linj/album/view/AlbumGridView$OnCheckedChangeListener;->onCheckedChanged(Ljava/util/Set;)V

    .line 175
    :cond_0
    return-void

    .line 169
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 170
    .local v0, "path":Ljava/lang/String;
    iget-object v2, p0, Lcom/linj/album/view/AlbumGridView$AlbumViewAdapter;->itemSelectedSet:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public unSelectAll(Lcom/linj/album/view/AlbumGridView$OnCheckedChangeListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/linj/album/view/AlbumGridView$OnCheckedChangeListener;

    .prologue
    .line 182
    invoke-virtual {p0, p1}, Lcom/linj/album/view/AlbumGridView$AlbumViewAdapter;->notifyDataSetChanged(Lcom/linj/album/view/AlbumGridView$OnCheckedChangeListener;)V

    .line 183
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/linj/album/view/AlbumGridView$AlbumViewAdapter;->itemSelectedSet:Ljava/util/Set;

    invoke-interface {p1, v0}, Lcom/linj/album/view/AlbumGridView$OnCheckedChangeListener;->onCheckedChanged(Ljava/util/Set;)V

    .line 184
    :cond_0
    return-void
.end method
