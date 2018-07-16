.class public Lcom/smalife/activity/HeartDetailsActivity$HeartDetailsAdapter;
.super Landroid/widget/BaseAdapter;
.source "HeartDetailsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smalife/activity/HeartDetailsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HeartDetailsAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smalife/activity/HeartDetailsActivity;


# direct methods
.method public constructor <init>(Lcom/smalife/activity/HeartDetailsActivity;)V
    .locals 0

    .prologue
    .line 235
    iput-object p1, p0, Lcom/smalife/activity/HeartDetailsActivity$HeartDetailsAdapter;->this$0:Lcom/smalife/activity/HeartDetailsActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/smalife/activity/HeartDetailsActivity$HeartDetailsAdapter;->this$0:Lcom/smalife/activity/HeartDetailsActivity;

    invoke-static {v0}, Lcom/smalife/activity/HeartDetailsActivity;->access$0(Lcom/smalife/activity/HeartDetailsActivity;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/smalife/activity/HeartDetailsActivity$HeartDetailsAdapter;->this$0:Lcom/smalife/activity/HeartDetailsActivity;

    invoke-static {v0}, Lcom/smalife/activity/HeartDetailsActivity;->access$0(Lcom/smalife/activity/HeartDetailsActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 244
    iget-object v0, p0, Lcom/smalife/activity/HeartDetailsActivity$HeartDetailsAdapter;->this$0:Lcom/smalife/activity/HeartDetailsActivity;

    invoke-static {v0}, Lcom/smalife/activity/HeartDetailsActivity;->access$0(Lcom/smalife/activity/HeartDetailsActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 249
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v3, 0x0

    .line 254
    const/4 v0, 0x0

    .line 255
    .local v0, "holder":Lcom/smalife/activity/HeartDetailsActivity$ViewHolder;
    if-nez p2, :cond_0

    .line 256
    new-instance v0, Lcom/smalife/activity/HeartDetailsActivity$ViewHolder;

    .end local v0    # "holder":Lcom/smalife/activity/HeartDetailsActivity$ViewHolder;
    iget-object v1, p0, Lcom/smalife/activity/HeartDetailsActivity$HeartDetailsAdapter;->this$0:Lcom/smalife/activity/HeartDetailsActivity;

    invoke-direct {v0, v1, v3}, Lcom/smalife/activity/HeartDetailsActivity$ViewHolder;-><init>(Lcom/smalife/activity/HeartDetailsActivity;Lcom/smalife/activity/HeartDetailsActivity$ViewHolder;)V

    .line 257
    .restart local v0    # "holder":Lcom/smalife/activity/HeartDetailsActivity$ViewHolder;
    iget-object v1, p0, Lcom/smalife/activity/HeartDetailsActivity$HeartDetailsAdapter;->this$0:Lcom/smalife/activity/HeartDetailsActivity;

    const v2, 0x7f030026

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 258
    const v1, 0x7f0e009e

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/smalife/activity/HeartDetailsActivity$ViewHolder;->access$1(Lcom/smalife/activity/HeartDetailsActivity$ViewHolder;Landroid/widget/TextView;)V

    .line 259
    const v1, 0x7f0e0082

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/smalife/activity/HeartDetailsActivity$ViewHolder;->access$2(Lcom/smalife/activity/HeartDetailsActivity$ViewHolder;Landroid/widget/TextView;)V

    .line 260
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 265
    :goto_0
    invoke-static {v0}, Lcom/smalife/activity/HeartDetailsActivity$ViewHolder;->access$3(Lcom/smalife/activity/HeartDetailsActivity$ViewHolder;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v1, p0, Lcom/smalife/activity/HeartDetailsActivity$HeartDetailsAdapter;->this$0:Lcom/smalife/activity/HeartDetailsActivity;

    invoke-static {v1}, Lcom/smalife/activity/HeartDetailsActivity;->access$0(Lcom/smalife/activity/HeartDetailsActivity;)Ljava/util/List;

    move-result-object v1

    iget-object v3, p0, Lcom/smalife/activity/HeartDetailsActivity$HeartDetailsAdapter;->this$0:Lcom/smalife/activity/HeartDetailsActivity;

    invoke-static {v3}, Lcom/smalife/activity/HeartDetailsActivity;->access$0(Lcom/smalife/activity/HeartDetailsActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v4, p1, 0x1

    sub-int/2addr v3, v4

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smalife/activity/HeartDetailsActivity$ListEntity;

    invoke-virtual {v1}, Lcom/smalife/activity/HeartDetailsActivity$ListEntity;->getDate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 266
    invoke-static {v0}, Lcom/smalife/activity/HeartDetailsActivity$ViewHolder;->access$4(Lcom/smalife/activity/HeartDetailsActivity$ViewHolder;)Landroid/widget/TextView;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smalife/activity/HeartDetailsActivity$HeartDetailsAdapter;->this$0:Lcom/smalife/activity/HeartDetailsActivity;

    invoke-static {v1}, Lcom/smalife/activity/HeartDetailsActivity;->access$0(Lcom/smalife/activity/HeartDetailsActivity;)Ljava/util/List;

    move-result-object v1

    iget-object v4, p0, Lcom/smalife/activity/HeartDetailsActivity$HeartDetailsAdapter;->this$0:Lcom/smalife/activity/HeartDetailsActivity;

    invoke-static {v4}, Lcom/smalife/activity/HeartDetailsActivity;->access$0(Lcom/smalife/activity/HeartDetailsActivity;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v5, p1, 0x1

    sub-int/2addr v4, v5

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smalife/activity/HeartDetailsActivity$ListEntity;

    invoke-virtual {v1}, Lcom/smalife/activity/HeartDetailsActivity$ListEntity;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "bpm"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 267
    return-object p2

    .line 262
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "holder":Lcom/smalife/activity/HeartDetailsActivity$ViewHolder;
    check-cast v0, Lcom/smalife/activity/HeartDetailsActivity$ViewHolder;

    .restart local v0    # "holder":Lcom/smalife/activity/HeartDetailsActivity$ViewHolder;
    goto :goto_0
.end method
