.class Lcn/smssdk/gui/ContactsListView$InnerAdapter;
.super Landroid/widget/BaseAdapter;
.source "ContactsListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/smssdk/gui/ContactsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InnerAdapter"
.end annotation


# instance fields
.field private adapter:Lcn/smssdk/gui/ContactsListView$GroupAdapter;

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
.method public constructor <init>(Lcn/smssdk/gui/ContactsListView$GroupAdapter;)V
    .locals 1
    .param p1, "adapter"    # Lcn/smssdk/gui/ContactsListView$GroupAdapter;

    .prologue
    .line 171
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 172
    iput-object p1, p0, Lcn/smssdk/gui/ContactsListView$InnerAdapter;->adapter:Lcn/smssdk/gui/ContactsListView$GroupAdapter;

    .line 173
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/smssdk/gui/ContactsListView$InnerAdapter;->listData:Ljava/util/ArrayList;

    .line 174
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/smssdk/gui/ContactsListView$InnerAdapter;->titleIndex:Ljava/util/ArrayList;

    .line 175
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/smssdk/gui/ContactsListView$InnerAdapter;->lastItemIndex:Ljava/util/ArrayList;

    .line 176
    invoke-direct {p0}, Lcn/smssdk/gui/ContactsListView$InnerAdapter;->init()V

    .line 177
    return-void
.end method

.method static synthetic access$0(Lcn/smssdk/gui/ContactsListView$InnerAdapter;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcn/smssdk/gui/ContactsListView$InnerAdapter;->titleIndex:Ljava/util/ArrayList;

    return-object v0
.end method

.method private init()V
    .locals 6

    .prologue
    .line 180
    iget-object v4, p0, Lcn/smssdk/gui/ContactsListView$InnerAdapter;->listData:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 181
    iget-object v4, p0, Lcn/smssdk/gui/ContactsListView$InnerAdapter;->titleIndex:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 182
    iget-object v4, p0, Lcn/smssdk/gui/ContactsListView$InnerAdapter;->lastItemIndex:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 183
    const/4 v1, 0x0

    .local v1, "g":I
    iget-object v4, p0, Lcn/smssdk/gui/ContactsListView$InnerAdapter;->adapter:Lcn/smssdk/gui/ContactsListView$GroupAdapter;

    invoke-virtual {v4}, Lcn/smssdk/gui/ContactsListView$GroupAdapter;->getGroupCount()I

    move-result v2

    .local v2, "gc":I
    :goto_0
    if-lt v1, v2, :cond_0

    .line 194
    return-void

    .line 184
    :cond_0
    iget-object v4, p0, Lcn/smssdk/gui/ContactsListView$InnerAdapter;->adapter:Lcn/smssdk/gui/ContactsListView$GroupAdapter;

    invoke-virtual {v4, v1}, Lcn/smssdk/gui/ContactsListView$GroupAdapter;->getCount(I)I

    move-result v0

    .line 185
    .local v0, "c":I
    if-lez v0, :cond_1

    .line 186
    iget-object v4, p0, Lcn/smssdk/gui/ContactsListView$InnerAdapter;->titleIndex:Ljava/util/ArrayList;

    iget-object v5, p0, Lcn/smssdk/gui/ContactsListView$InnerAdapter;->listData:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 187
    iget-object v4, p0, Lcn/smssdk/gui/ContactsListView$InnerAdapter;->listData:Ljava/util/ArrayList;

    iget-object v5, p0, Lcn/smssdk/gui/ContactsListView$InnerAdapter;->adapter:Lcn/smssdk/gui/ContactsListView$GroupAdapter;

    invoke-virtual {v5, v1}, Lcn/smssdk/gui/ContactsListView$GroupAdapter;->getGroupTitle(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 188
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-lt v3, v0, :cond_2

    .line 191
    iget-object v4, p0, Lcn/smssdk/gui/ContactsListView$InnerAdapter;->lastItemIndex:Ljava/util/ArrayList;

    iget-object v5, p0, Lcn/smssdk/gui/ContactsListView$InnerAdapter;->listData:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 183
    .end local v3    # "i":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 189
    .restart local v3    # "i":I
    :cond_2
    iget-object v4, p0, Lcn/smssdk/gui/ContactsListView$InnerAdapter;->listData:Ljava/util/ArrayList;

    iget-object v5, p0, Lcn/smssdk/gui/ContactsListView$InnerAdapter;->adapter:Lcn/smssdk/gui/ContactsListView$GroupAdapter;

    invoke-virtual {v5, v1, v3}, Lcn/smssdk/gui/ContactsListView$GroupAdapter;->getItem(II)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 188
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcn/smssdk/gui/ContactsListView$InnerAdapter;->listData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 201
    iget-object v0, p0, Lcn/smssdk/gui/ContactsListView$InnerAdapter;->listData:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemGroup(I)I
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 209
    iget-object v3, p0, Lcn/smssdk/gui/ContactsListView$InnerAdapter;->titleIndex:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 210
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 216
    add-int/lit8 v3, v1, -0x1

    :goto_1
    return v3

    .line 211
    :cond_0
    iget-object v3, p0, Lcn/smssdk/gui/ContactsListView$InnerAdapter;->titleIndex:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 212
    .local v2, "titleIndex":I
    if-ge p1, v2, :cond_1

    .line 213
    add-int/lit8 v3, v0, -0x1

    goto :goto_1

    .line 210
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 205
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 233
    invoke-virtual {p0, p1}, Lcn/smssdk/gui/ContactsListView$InnerAdapter;->isTitle(I)Z

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
    .line 237
    invoke-virtual {p0, p1}, Lcn/smssdk/gui/ContactsListView$InnerAdapter;->getItemGroup(I)I

    move-result v0

    .line 238
    .local v0, "group":I
    invoke-virtual {p0, p1}, Lcn/smssdk/gui/ContactsListView$InnerAdapter;->isTitle(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 239
    if-eqz p2, :cond_0

    instance-of v2, p2, Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 240
    iget-object v2, p0, Lcn/smssdk/gui/ContactsListView$InnerAdapter;->adapter:Lcn/smssdk/gui/ContactsListView$GroupAdapter;

    check-cast p2, Landroid/widget/TextView;

    .end local p2    # "convertView":Landroid/view/View;
    invoke-virtual {v2, v0, p2, p3}, Lcn/smssdk/gui/ContactsListView$GroupAdapter;->getTitleView(ILandroid/widget/TextView;Landroid/view/ViewGroup;)Landroid/widget/TextView;

    move-result-object p2

    .line 249
    .restart local p2    # "convertView":Landroid/view/View;
    :goto_0
    return-object p2

    .line 242
    :cond_0
    iget-object v2, p0, Lcn/smssdk/gui/ContactsListView$InnerAdapter;->adapter:Lcn/smssdk/gui/ContactsListView$GroupAdapter;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, p3}, Lcn/smssdk/gui/ContactsListView$GroupAdapter;->getTitleView(ILandroid/widget/TextView;Landroid/view/ViewGroup;)Landroid/widget/TextView;

    move-result-object p2

    .line 245
    goto :goto_0

    .line 246
    :cond_1
    iget-object v2, p0, Lcn/smssdk/gui/ContactsListView$InnerAdapter;->titleIndex:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sub-int v2, p1, v2

    add-int/lit8 v1, v2, -0x1

    .line 247
    .local v1, "item":I
    iget-object v2, p0, Lcn/smssdk/gui/ContactsListView$InnerAdapter;->adapter:Lcn/smssdk/gui/ContactsListView$GroupAdapter;

    invoke-virtual {v2, v0, v1, p2, p3}, Lcn/smssdk/gui/ContactsListView$GroupAdapter;->getView(IILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 229
    const/4 v0, 0x2

    return v0
.end method

.method public isLastItem(I)Z
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 258
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v2, p0, Lcn/smssdk/gui/ContactsListView$InnerAdapter;->lastItemIndex:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "size":I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 263
    const/4 v2, 0x0

    :goto_1
    return v2

    .line 259
    :cond_0
    iget-object v2, p0, Lcn/smssdk/gui/ContactsListView$InnerAdapter;->lastItemIndex:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, p1, :cond_1

    .line 260
    const/4 v2, 0x1

    goto :goto_1

    .line 258
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public isTitle(I)Z
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 220
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v2, p0, Lcn/smssdk/gui/ContactsListView$InnerAdapter;->titleIndex:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "size":I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 225
    const/4 v2, 0x0

    :goto_1
    return v2

    .line 221
    :cond_0
    iget-object v2, p0, Lcn/smssdk/gui/ContactsListView$InnerAdapter;->titleIndex:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, p1, :cond_1

    .line 222
    const/4 v2, 0x1

    goto :goto_1

    .line 220
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public notifyDataSetChanged()V
    .locals 0

    .prologue
    .line 253
    invoke-direct {p0}, Lcn/smssdk/gui/ContactsListView$InnerAdapter;->init()V

    .line 254
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 255
    return-void
.end method
