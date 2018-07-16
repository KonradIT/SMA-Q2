.class Lcn/smssdk/gui/GroupListView$InnerAdapter;
.super Landroid/widget/BaseAdapter;
.source "GroupListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/smssdk/gui/GroupListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InnerAdapter"
.end annotation


# instance fields
.field private adapter:Lcn/smssdk/gui/GroupListView$GroupAdapter;

.field private lastItemIndex:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private listData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private titleIndex:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcn/smssdk/gui/GroupListView$GroupAdapter;)V
    .locals 1
    .param p1, "adapter"    # Lcn/smssdk/gui/GroupListView$GroupAdapter;

    .prologue
    .line 183
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 184
    iput-object p1, p0, Lcn/smssdk/gui/GroupListView$InnerAdapter;->adapter:Lcn/smssdk/gui/GroupListView$GroupAdapter;

    .line 185
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/smssdk/gui/GroupListView$InnerAdapter;->listData:Ljava/util/ArrayList;

    .line 186
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/smssdk/gui/GroupListView$InnerAdapter;->titleIndex:Ljava/util/ArrayList;

    .line 187
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/smssdk/gui/GroupListView$InnerAdapter;->lastItemIndex:Ljava/util/ArrayList;

    .line 188
    invoke-direct {p0}, Lcn/smssdk/gui/GroupListView$InnerAdapter;->init()V

    .line 189
    return-void
.end method

.method static synthetic access$0(Lcn/smssdk/gui/GroupListView$InnerAdapter;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcn/smssdk/gui/GroupListView$InnerAdapter;->titleIndex:Ljava/util/ArrayList;

    return-object v0
.end method

.method private init()V
    .locals 6

    .prologue
    .line 192
    iget-object v4, p0, Lcn/smssdk/gui/GroupListView$InnerAdapter;->listData:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 193
    iget-object v4, p0, Lcn/smssdk/gui/GroupListView$InnerAdapter;->titleIndex:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 194
    iget-object v4, p0, Lcn/smssdk/gui/GroupListView$InnerAdapter;->lastItemIndex:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 195
    const/4 v1, 0x0

    .local v1, "g":I
    iget-object v4, p0, Lcn/smssdk/gui/GroupListView$InnerAdapter;->adapter:Lcn/smssdk/gui/GroupListView$GroupAdapter;

    invoke-virtual {v4}, Lcn/smssdk/gui/GroupListView$GroupAdapter;->getGroupCount()I

    move-result v2

    .local v2, "gc":I
    :goto_0
    if-lt v1, v2, :cond_0

    .line 206
    return-void

    .line 196
    :cond_0
    iget-object v4, p0, Lcn/smssdk/gui/GroupListView$InnerAdapter;->adapter:Lcn/smssdk/gui/GroupListView$GroupAdapter;

    invoke-virtual {v4, v1}, Lcn/smssdk/gui/GroupListView$GroupAdapter;->getCount(I)I

    move-result v0

    .line 197
    .local v0, "c":I
    if-lez v0, :cond_1

    .line 198
    iget-object v4, p0, Lcn/smssdk/gui/GroupListView$InnerAdapter;->titleIndex:Ljava/util/ArrayList;

    iget-object v5, p0, Lcn/smssdk/gui/GroupListView$InnerAdapter;->listData:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 199
    iget-object v4, p0, Lcn/smssdk/gui/GroupListView$InnerAdapter;->listData:Ljava/util/ArrayList;

    iget-object v5, p0, Lcn/smssdk/gui/GroupListView$InnerAdapter;->adapter:Lcn/smssdk/gui/GroupListView$GroupAdapter;

    invoke-virtual {v5, v1}, Lcn/smssdk/gui/GroupListView$GroupAdapter;->getGroupTitle(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 200
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-lt v3, v0, :cond_2

    .line 203
    iget-object v4, p0, Lcn/smssdk/gui/GroupListView$InnerAdapter;->lastItemIndex:Ljava/util/ArrayList;

    iget-object v5, p0, Lcn/smssdk/gui/GroupListView$InnerAdapter;->listData:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 195
    .end local v3    # "i":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 201
    .restart local v3    # "i":I
    :cond_2
    iget-object v4, p0, Lcn/smssdk/gui/GroupListView$InnerAdapter;->listData:Ljava/util/ArrayList;

    iget-object v5, p0, Lcn/smssdk/gui/GroupListView$InnerAdapter;->adapter:Lcn/smssdk/gui/GroupListView$GroupAdapter;

    invoke-virtual {v5, v1, v3}, Lcn/smssdk/gui/GroupListView$GroupAdapter;->getItem(II)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 200
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcn/smssdk/gui/GroupListView$InnerAdapter;->listData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 213
    iget-object v0, p0, Lcn/smssdk/gui/GroupListView$InnerAdapter;->listData:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemGroup(I)I
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 221
    iget-object v3, p0, Lcn/smssdk/gui/GroupListView$InnerAdapter;->titleIndex:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 222
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 228
    add-int/lit8 v3, v1, -0x1

    :goto_1
    return v3

    .line 223
    :cond_0
    iget-object v3, p0, Lcn/smssdk/gui/GroupListView$InnerAdapter;->titleIndex:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 224
    .local v2, "titleIndex":I
    if-ge p1, v2, :cond_1

    .line 225
    add-int/lit8 v3, v0, -0x1

    goto :goto_1

    .line 222
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 217
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 245
    invoke-virtual {p0, p1}, Lcn/smssdk/gui/GroupListView$InnerAdapter;->isTitle(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 249
    invoke-virtual {p0, p1}, Lcn/smssdk/gui/GroupListView$InnerAdapter;->getItemGroup(I)I

    move-result v0

    .line 250
    .local v0, "group":I
    invoke-virtual {p0, p1}, Lcn/smssdk/gui/GroupListView$InnerAdapter;->isTitle(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 251
    if-eqz p2, :cond_0

    .line 252
    iget-object v2, p0, Lcn/smssdk/gui/GroupListView$InnerAdapter;->adapter:Lcn/smssdk/gui/GroupListView$GroupAdapter;

    invoke-virtual {v2, v0, p2, p3}, Lcn/smssdk/gui/GroupListView$GroupAdapter;->getTitleView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 261
    :goto_0
    return-object p2

    .line 254
    :cond_0
    iget-object v2, p0, Lcn/smssdk/gui/GroupListView$InnerAdapter;->adapter:Lcn/smssdk/gui/GroupListView$GroupAdapter;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, p3}, Lcn/smssdk/gui/GroupListView$GroupAdapter;->getTitleView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 257
    goto :goto_0

    .line 258
    :cond_1
    iget-object v2, p0, Lcn/smssdk/gui/GroupListView$InnerAdapter;->titleIndex:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sub-int v2, p1, v2

    add-int/lit8 v1, v2, -0x1

    .line 259
    .local v1, "item":I
    iget-object v2, p0, Lcn/smssdk/gui/GroupListView$InnerAdapter;->adapter:Lcn/smssdk/gui/GroupListView$GroupAdapter;

    invoke-virtual {v2, v0, v1, p2, p3}, Lcn/smssdk/gui/GroupListView$GroupAdapter;->getView(IILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 241
    const/4 v0, 0x2

    return v0
.end method

.method public isLastItem(I)Z
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 270
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v2, p0, Lcn/smssdk/gui/GroupListView$InnerAdapter;->lastItemIndex:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "size":I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 275
    const/4 v2, 0x0

    :goto_1
    return v2

    .line 271
    :cond_0
    iget-object v2, p0, Lcn/smssdk/gui/GroupListView$InnerAdapter;->lastItemIndex:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, p1, :cond_1

    .line 272
    const/4 v2, 0x1

    goto :goto_1

    .line 270
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public isTitle(I)Z
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 232
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v2, p0, Lcn/smssdk/gui/GroupListView$InnerAdapter;->titleIndex:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "size":I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 237
    const/4 v2, 0x0

    :goto_1
    return v2

    .line 233
    :cond_0
    iget-object v2, p0, Lcn/smssdk/gui/GroupListView$InnerAdapter;->titleIndex:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, p1, :cond_1

    .line 234
    const/4 v2, 0x1

    goto :goto_1

    .line 232
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public notifyDataSetChanged()V
    .locals 0

    .prologue
    .line 265
    invoke-direct {p0}, Lcn/smssdk/gui/GroupListView$InnerAdapter;->init()V

    .line 266
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 267
    return-void
.end method
