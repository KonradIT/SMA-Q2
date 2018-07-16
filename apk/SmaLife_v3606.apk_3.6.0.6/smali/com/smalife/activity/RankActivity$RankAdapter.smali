.class Lcom/smalife/activity/RankActivity$RankAdapter;
.super Landroid/widget/BaseAdapter;
.source "RankActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smalife/activity/RankActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RankAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smalife/activity/RankActivity$RankAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/accloud/service/ACRankingValue;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/smalife/activity/RankActivity;


# direct methods
.method public constructor <init>(Lcom/smalife/activity/RankActivity;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/accloud/service/ACRankingValue;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 135
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/accloud/service/ACRankingValue;>;"
    iput-object p1, p0, Lcom/smalife/activity/RankActivity$RankAdapter;->this$0:Lcom/smalife/activity/RankActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 136
    iput-object p2, p0, Lcom/smalife/activity/RankActivity$RankAdapter;->mList:Ljava/util/List;

    .line 137
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/smalife/activity/RankActivity$RankAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 146
    iget-object v0, p0, Lcom/smalife/activity/RankActivity$RankAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 151
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "position"    # I
    .param p2, "v"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 157
    if-nez p2, :cond_1

    .line 158
    iget-object v3, p0, Lcom/smalife/activity/RankActivity$RankAdapter;->mInflater:Landroid/view/LayoutInflater;

    if-nez v3, :cond_0

    .line 159
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    iput-object v3, p0, Lcom/smalife/activity/RankActivity$RankAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 161
    :cond_0
    iget-object v3, p0, Lcom/smalife/activity/RankActivity$RankAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f03002f

    const/4 v5, 0x0

    invoke-virtual {v3, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 162
    new-instance v2, Lcom/smalife/activity/RankActivity$RankAdapter$ViewHolder;

    invoke-direct {v2, p0, p2}, Lcom/smalife/activity/RankActivity$RankAdapter$ViewHolder;-><init>(Lcom/smalife/activity/RankActivity$RankAdapter;Landroid/view/View;)V

    .line 166
    .local v2, "vh":Lcom/smalife/activity/RankActivity$RankAdapter$ViewHolder;
    :goto_0
    invoke-static {v2}, Lcom/smalife/activity/RankActivity$RankAdapter$ViewHolder;->access$0(Lcom/smalife/activity/RankActivity$RankAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/smalife/activity/RankActivity$RankAdapter;->mList:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/accloud/service/ACRankingValue;

    invoke-virtual {v3}, Lcom/accloud/service/ACRankingValue;->getPlace()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    invoke-static {v2}, Lcom/smalife/activity/RankActivity$RankAdapter$ViewHolder;->access$1(Lcom/smalife/activity/RankActivity$RankAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v4

    iget-object v3, p0, Lcom/smalife/activity/RankActivity$RankAdapter;->mList:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/accloud/service/ACRankingValue;

    invoke-virtual {v3}, Lcom/accloud/service/ACRankingValue;->getProfile()Lcom/accloud/service/ACObject;

    move-result-object v3

    .line 168
    const-string v5, "nick_name"

    invoke-virtual {v3, v5}, Lcom/accloud/service/ACObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 167
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    invoke-static {v2}, Lcom/smalife/activity/RankActivity$RankAdapter$ViewHolder;->access$2(Lcom/smalife/activity/RankActivity$RankAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/smalife/activity/RankActivity$RankAdapter;->mList:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/accloud/service/ACRankingValue;

    invoke-virtual {v3}, Lcom/accloud/service/ACRankingValue;->getScore()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 170
    iget-object v3, p0, Lcom/smalife/activity/RankActivity$RankAdapter;->mList:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/accloud/service/ACRankingValue;

    invoke-virtual {v3}, Lcom/accloud/service/ACRankingValue;->getProfile()Lcom/accloud/service/ACObject;

    move-result-object v3

    .line 171
    const-string v4, "header_icon_url"

    invoke-virtual {v3, v4}, Lcom/accloud/service/ACObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 172
    .local v1, "url":Ljava/lang/String;
    iget-object v3, p0, Lcom/smalife/activity/RankActivity$RankAdapter;->this$0:Lcom/smalife/activity/RankActivity;

    invoke-static {v3}, Lcom/smalife/activity/RankActivity;->access$0(Lcom/smalife/activity/RankActivity;)Ljava/util/WeakHashMap;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 175
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-nez v0, :cond_2

    .line 176
    invoke-static {v2}, Lcom/smalife/activity/RankActivity$RankAdapter$ViewHolder;->access$3(Lcom/smalife/activity/RankActivity$RankAdapter$ViewHolder;)Lcom/android/volley/toolbox/NetworkImageView;

    move-result-object v4

    iget-object v3, p0, Lcom/smalife/activity/RankActivity$RankAdapter;->mList:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/accloud/service/ACRankingValue;

    invoke-virtual {v3}, Lcom/accloud/service/ACRankingValue;->getProfile()Lcom/accloud/service/ACObject;

    move-result-object v3

    .line 177
    const-string v5, "header_icon_url"

    invoke-virtual {v3, v5}, Lcom/accloud/service/ACObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/smalife/activity/RankActivity$RankAdapter;->this$0:Lcom/smalife/activity/RankActivity;

    invoke-static {v5}, Lcom/smalife/activity/RankActivity;->access$1(Lcom/smalife/activity/RankActivity;)Lcom/android/volley/toolbox/ImageLoader;

    move-result-object v5

    .line 176
    invoke-virtual {v4, v3, v5}, Lcom/android/volley/toolbox/NetworkImageView;->setImageUrl(Ljava/lang/String;Lcom/android/volley/toolbox/ImageLoader;)V

    .line 181
    :goto_1
    return-object p2

    .line 164
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "url":Ljava/lang/String;
    .end local v2    # "vh":Lcom/smalife/activity/RankActivity$RankAdapter$ViewHolder;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smalife/activity/RankActivity$RankAdapter$ViewHolder;

    .restart local v2    # "vh":Lcom/smalife/activity/RankActivity$RankAdapter$ViewHolder;
    goto/16 :goto_0

    .line 179
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v1    # "url":Ljava/lang/String;
    :cond_2
    invoke-static {v2}, Lcom/smalife/activity/RankActivity$RankAdapter$ViewHolder;->access$3(Lcom/smalife/activity/RankActivity$RankAdapter$ViewHolder;)Lcom/android/volley/toolbox/NetworkImageView;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/volley/toolbox/NetworkImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1
.end method

.method public setData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/accloud/service/ACRankingValue;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 185
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/accloud/service/ACRankingValue;>;"
    iput-object p1, p0, Lcom/smalife/activity/RankActivity$RankAdapter;->mList:Ljava/util/List;

    .line 186
    invoke-virtual {p0}, Lcom/smalife/activity/RankActivity$RankAdapter;->notifyDataSetChanged()V

    .line 187
    return-void
.end method
