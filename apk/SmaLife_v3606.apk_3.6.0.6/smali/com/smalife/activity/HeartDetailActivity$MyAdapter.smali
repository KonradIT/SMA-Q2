.class public Lcom/smalife/activity/HeartDetailActivity$MyAdapter;
.super Landroid/widget/BaseAdapter;
.source "HeartDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smalife/activity/HeartDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smalife/activity/HeartDetailActivity;


# direct methods
.method public constructor <init>(Lcom/smalife/activity/HeartDetailActivity;)V
    .locals 0

    .prologue
    .line 512
    iput-object p1, p0, Lcom/smalife/activity/HeartDetailActivity$MyAdapter;->this$0:Lcom/smalife/activity/HeartDetailActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 516
    iget-object v0, p0, Lcom/smalife/activity/HeartDetailActivity$MyAdapter;->this$0:Lcom/smalife/activity/HeartDetailActivity;

    invoke-static {v0}, Lcom/smalife/activity/HeartDetailActivity;->access$0(Lcom/smalife/activity/HeartDetailActivity;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/smalife/activity/HeartDetailActivity$MyAdapter;->this$0:Lcom/smalife/activity/HeartDetailActivity;

    invoke-static {v0}, Lcom/smalife/activity/HeartDetailActivity;->access$0(Lcom/smalife/activity/HeartDetailActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 521
    iget-object v0, p0, Lcom/smalife/activity/HeartDetailActivity$MyAdapter;->this$0:Lcom/smalife/activity/HeartDetailActivity;

    invoke-static {v0}, Lcom/smalife/activity/HeartDetailActivity;->access$0(Lcom/smalife/activity/HeartDetailActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 526
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v4, 0x0

    .line 531
    const/4 v0, 0x0

    .line 532
    .local v0, "holder":Lcom/smalife/activity/HeartDetailActivity$ViewHolder;
    if-nez p2, :cond_0

    .line 533
    new-instance v0, Lcom/smalife/activity/HeartDetailActivity$ViewHolder;

    .end local v0    # "holder":Lcom/smalife/activity/HeartDetailActivity$ViewHolder;
    iget-object v2, p0, Lcom/smalife/activity/HeartDetailActivity$MyAdapter;->this$0:Lcom/smalife/activity/HeartDetailActivity;

    invoke-direct {v0, v2, v4}, Lcom/smalife/activity/HeartDetailActivity$ViewHolder;-><init>(Lcom/smalife/activity/HeartDetailActivity;Lcom/smalife/activity/HeartDetailActivity$ViewHolder;)V

    .line 534
    .restart local v0    # "holder":Lcom/smalife/activity/HeartDetailActivity$ViewHolder;
    iget-object v2, p0, Lcom/smalife/activity/HeartDetailActivity$MyAdapter;->this$0:Lcom/smalife/activity/HeartDetailActivity;

    .line 535
    const v3, 0x7f030027

    .line 534
    invoke-static {v2, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 537
    const v2, 0x7f0e009f

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 536
    invoke-static {v0, v2}, Lcom/smalife/activity/HeartDetailActivity$ViewHolder;->access$1(Lcom/smalife/activity/HeartDetailActivity$ViewHolder;Landroid/widget/TextView;)V

    .line 539
    const v2, 0x7f0e00a0

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 538
    invoke-static {v0, v2}, Lcom/smalife/activity/HeartDetailActivity$ViewHolder;->access$2(Lcom/smalife/activity/HeartDetailActivity$ViewHolder;Landroid/widget/TextView;)V

    .line 540
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 545
    :goto_0
    invoke-static {v0}, Lcom/smalife/activity/HeartDetailActivity$ViewHolder;->access$3(Lcom/smalife/activity/HeartDetailActivity$ViewHolder;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v2, p0, Lcom/smalife/activity/HeartDetailActivity$MyAdapter;->this$0:Lcom/smalife/activity/HeartDetailActivity;

    invoke-static {v2}, Lcom/smalife/activity/HeartDetailActivity;->access$0(Lcom/smalife/activity/HeartDetailActivity;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v4, p0, Lcom/smalife/activity/HeartDetailActivity$MyAdapter;->this$0:Lcom/smalife/activity/HeartDetailActivity;

    invoke-static {v4}, Lcom/smalife/activity/HeartDetailActivity;->access$0(Lcom/smalife/activity/HeartDetailActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v5, p1, 0x1

    sub-int/2addr v4, v5

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smalife/activity/HeartDetailActivity$ListEntity;

    .line 546
    invoke-virtual {v2}, Lcom/smalife/activity/HeartDetailActivity$ListEntity;->getName()Ljava/lang/String;

    move-result-object v2

    .line 545
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 547
    iget-object v2, p0, Lcom/smalife/activity/HeartDetailActivity$MyAdapter;->this$0:Lcom/smalife/activity/HeartDetailActivity;

    invoke-static {v2}, Lcom/smalife/activity/HeartDetailActivity;->access$0(Lcom/smalife/activity/HeartDetailActivity;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/smalife/activity/HeartDetailActivity$MyAdapter;->this$0:Lcom/smalife/activity/HeartDetailActivity;

    invoke-static {v3}, Lcom/smalife/activity/HeartDetailActivity;->access$0(Lcom/smalife/activity/HeartDetailActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v4, p1, 0x1

    sub-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smalife/activity/HeartDetailActivity$ListEntity;

    .line 548
    invoke-virtual {v2}, Lcom/smalife/activity/HeartDetailActivity$ListEntity;->getValue()I

    move-result v1

    .line 549
    .local v1, "value":I
    if-nez v1, :cond_1

    .line 550
    invoke-static {v0}, Lcom/smalife/activity/HeartDetailActivity$ViewHolder;->access$4(Lcom/smalife/activity/HeartDetailActivity$ViewHolder;)Landroid/widget/TextView;

    move-result-object v2

    const-string v3, "Null"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 561
    :goto_1
    return-object p2

    .line 542
    .end local v1    # "value":I
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "holder":Lcom/smalife/activity/HeartDetailActivity$ViewHolder;
    check-cast v0, Lcom/smalife/activity/HeartDetailActivity$ViewHolder;

    .restart local v0    # "holder":Lcom/smalife/activity/HeartDetailActivity$ViewHolder;
    goto :goto_0

    .line 551
    .restart local v1    # "value":I
    :cond_1
    if-lez v1, :cond_2

    const/16 v2, 0xa

    if-ge v1, v2, :cond_2

    .line 552
    invoke-static {v0}, Lcom/smalife/activity/HeartDetailActivity$ViewHolder;->access$4(Lcom/smalife/activity/HeartDetailActivity$ViewHolder;)Landroid/widget/TextView;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v2, "0"

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 553
    iget-object v2, p0, Lcom/smalife/activity/HeartDetailActivity$MyAdapter;->this$0:Lcom/smalife/activity/HeartDetailActivity;

    invoke-static {v2}, Lcom/smalife/activity/HeartDetailActivity;->access$0(Lcom/smalife/activity/HeartDetailActivity;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v5, p0, Lcom/smalife/activity/HeartDetailActivity$MyAdapter;->this$0:Lcom/smalife/activity/HeartDetailActivity;

    invoke-static {v5}, Lcom/smalife/activity/HeartDetailActivity;->access$0(Lcom/smalife/activity/HeartDetailActivity;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v6, p1, 0x1

    sub-int/2addr v5, v6

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smalife/activity/HeartDetailActivity$ListEntity;

    .line 554
    invoke-virtual {v2}, Lcom/smalife/activity/HeartDetailActivity$ListEntity;->getValue()I

    move-result v2

    .line 553
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 554
    const-string v4, " bmp"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 552
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 556
    :cond_2
    invoke-static {v0}, Lcom/smalife/activity/HeartDetailActivity$ViewHolder;->access$4(Lcom/smalife/activity/HeartDetailActivity$ViewHolder;)Landroid/widget/TextView;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/smalife/activity/HeartDetailActivity$MyAdapter;->this$0:Lcom/smalife/activity/HeartDetailActivity;

    invoke-static {v2}, Lcom/smalife/activity/HeartDetailActivity;->access$0(Lcom/smalife/activity/HeartDetailActivity;)Ljava/util/ArrayList;

    move-result-object v2

    .line 557
    iget-object v5, p0, Lcom/smalife/activity/HeartDetailActivity$MyAdapter;->this$0:Lcom/smalife/activity/HeartDetailActivity;

    invoke-static {v5}, Lcom/smalife/activity/HeartDetailActivity;->access$0(Lcom/smalife/activity/HeartDetailActivity;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v6, p1, 0x1

    sub-int/2addr v5, v6

    .line 556
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smalife/activity/HeartDetailActivity$ListEntity;

    .line 557
    invoke-virtual {v2}, Lcom/smalife/activity/HeartDetailActivity$ListEntity;->getValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 558
    const-string v2, " bmp"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 556
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method
