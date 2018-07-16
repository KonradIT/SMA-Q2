.class Lcom/smalife/activity/SportTrackListActivity$MyAdapter;
.super Landroid/widget/BaseAdapter;
.source "SportTrackListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smalife/activity/SportTrackListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smalife/activity/SportTrackListActivity;


# direct methods
.method private constructor <init>(Lcom/smalife/activity/SportTrackListActivity;)V
    .locals 0

    .prologue
    .line 157
    iput-object p1, p0, Lcom/smalife/activity/SportTrackListActivity$MyAdapter;->this$0:Lcom/smalife/activity/SportTrackListActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/smalife/activity/SportTrackListActivity;Lcom/smalife/activity/SportTrackListActivity$MyAdapter;)V
    .locals 0

    .prologue
    .line 157
    invoke-direct {p0, p1}, Lcom/smalife/activity/SportTrackListActivity$MyAdapter;-><init>(Lcom/smalife/activity/SportTrackListActivity;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/smalife/activity/SportTrackListActivity$MyAdapter;->this$0:Lcom/smalife/activity/SportTrackListActivity;

    invoke-static {v0}, Lcom/smalife/activity/SportTrackListActivity;->access$0(Lcom/smalife/activity/SportTrackListActivity;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/smalife/activity/SportTrackListActivity$MyAdapter;->this$0:Lcom/smalife/activity/SportTrackListActivity;

    invoke-static {v0}, Lcom/smalife/activity/SportTrackListActivity;->access$0(Lcom/smalife/activity/SportTrackListActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 167
    iget-object v0, p0, Lcom/smalife/activity/SportTrackListActivity$MyAdapter;->this$0:Lcom/smalife/activity/SportTrackListActivity;

    invoke-static {v0}, Lcom/smalife/activity/SportTrackListActivity;->access$0(Lcom/smalife/activity/SportTrackListActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 172
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v3, 0x0

    .line 177
    const/4 v0, 0x0

    .line 178
    .local v0, "hodler":Lcom/smalife/activity/SportTrackListActivity$ViewHodler;
    if-nez p2, :cond_0

    .line 179
    new-instance v0, Lcom/smalife/activity/SportTrackListActivity$ViewHodler;

    .end local v0    # "hodler":Lcom/smalife/activity/SportTrackListActivity$ViewHodler;
    iget-object v1, p0, Lcom/smalife/activity/SportTrackListActivity$MyAdapter;->this$0:Lcom/smalife/activity/SportTrackListActivity;

    invoke-direct {v0, v1, v3}, Lcom/smalife/activity/SportTrackListActivity$ViewHodler;-><init>(Lcom/smalife/activity/SportTrackListActivity;Lcom/smalife/activity/SportTrackListActivity$ViewHodler;)V

    .line 180
    .restart local v0    # "hodler":Lcom/smalife/activity/SportTrackListActivity$ViewHodler;
    iget-object v1, p0, Lcom/smalife/activity/SportTrackListActivity$MyAdapter;->this$0:Lcom/smalife/activity/SportTrackListActivity;

    .line 181
    const v2, 0x7f030064

    .line 180
    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 183
    const v1, 0x7f0e0216

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 182
    iput-object v1, v0, Lcom/smalife/activity/SportTrackListActivity$ViewHodler;->date:Landroid/widget/TextView;

    .line 185
    const v1, 0x7f0e0217

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 184
    iput-object v1, v0, Lcom/smalife/activity/SportTrackListActivity$ViewHodler;->start_time:Landroid/widget/TextView;

    .line 187
    const v1, 0x7f0e0218

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 186
    iput-object v1, v0, Lcom/smalife/activity/SportTrackListActivity$ViewHodler;->end_time:Landroid/widget/TextView;

    .line 189
    const v1, 0x7f0e021a

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 188
    iput-object v1, v0, Lcom/smalife/activity/SportTrackListActivity$ViewHodler;->speed:Landroid/widget/TextView;

    .line 191
    const v1, 0x7f0e0219

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 190
    iput-object v1, v0, Lcom/smalife/activity/SportTrackListActivity$ViewHodler;->distance:Landroid/widget/TextView;

    .line 192
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 196
    :goto_0
    iget-object v2, v0, Lcom/smalife/activity/SportTrackListActivity$ViewHodler;->date:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smalife/activity/SportTrackListActivity$MyAdapter;->this$0:Lcom/smalife/activity/SportTrackListActivity;

    invoke-static {v1}, Lcom/smalife/activity/SportTrackListActivity;->access$0(Lcom/smalife/activity/SportTrackListActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smalife/entity/TrackListBean;

    invoke-virtual {v1}, Lcom/smalife/entity/TrackListBean;->getDate()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    iget-object v2, v0, Lcom/smalife/activity/SportTrackListActivity$ViewHodler;->start_time:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smalife/activity/SportTrackListActivity$MyAdapter;->this$0:Lcom/smalife/activity/SportTrackListActivity;

    invoke-static {v1}, Lcom/smalife/activity/SportTrackListActivity;->access$0(Lcom/smalife/activity/SportTrackListActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smalife/entity/TrackListBean;

    invoke-virtual {v1}, Lcom/smalife/entity/TrackListBean;->getStart_time()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 198
    iget-object v2, v0, Lcom/smalife/activity/SportTrackListActivity$ViewHodler;->end_time:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smalife/activity/SportTrackListActivity$MyAdapter;->this$0:Lcom/smalife/activity/SportTrackListActivity;

    invoke-static {v1}, Lcom/smalife/activity/SportTrackListActivity;->access$0(Lcom/smalife/activity/SportTrackListActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smalife/entity/TrackListBean;

    invoke-virtual {v1}, Lcom/smalife/entity/TrackListBean;->getEnd_time()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 199
    iget-object v2, v0, Lcom/smalife/activity/SportTrackListActivity$ViewHodler;->speed:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smalife/activity/SportTrackListActivity$MyAdapter;->this$0:Lcom/smalife/activity/SportTrackListActivity;

    invoke-static {v1}, Lcom/smalife/activity/SportTrackListActivity;->access$0(Lcom/smalife/activity/SportTrackListActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smalife/entity/TrackListBean;

    invoke-virtual {v1}, Lcom/smalife/entity/TrackListBean;->getSpeed()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 200
    iget-object v2, v0, Lcom/smalife/activity/SportTrackListActivity$ViewHodler;->distance:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smalife/activity/SportTrackListActivity$MyAdapter;->this$0:Lcom/smalife/activity/SportTrackListActivity;

    invoke-static {v1}, Lcom/smalife/activity/SportTrackListActivity;->access$0(Lcom/smalife/activity/SportTrackListActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smalife/entity/TrackListBean;

    invoke-virtual {v1}, Lcom/smalife/entity/TrackListBean;->getDistance()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 201
    return-object p2

    .line 194
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "hodler":Lcom/smalife/activity/SportTrackListActivity$ViewHodler;
    check-cast v0, Lcom/smalife/activity/SportTrackListActivity$ViewHodler;

    .restart local v0    # "hodler":Lcom/smalife/activity/SportTrackListActivity$ViewHodler;
    goto/16 :goto_0
.end method
