.class public Lcom/smalife/activity/HeartDetailActivity$MyMarkView;
.super Lcom/github/mikephil/charting/components/MarkerView;
.source "HeartDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smalife/activity/HeartDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyMarkView"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smalife/activity/HeartDetailActivity;

.field private timeMarkText:Landroid/widget/TextView;

.field private valueMarkText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/smalife/activity/HeartDetailActivity;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 573
    iput-object p1, p0, Lcom/smalife/activity/HeartDetailActivity$MyMarkView;->this$0:Lcom/smalife/activity/HeartDetailActivity;

    .line 574
    const v0, 0x7f030037

    invoke-direct {p0, p2, v0}, Lcom/github/mikephil/charting/components/MarkerView;-><init>(Landroid/content/Context;I)V

    .line 575
    const v0, 0x7f0e012e

    invoke-virtual {p0, v0}, Lcom/smalife/activity/HeartDetailActivity$MyMarkView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/smalife/activity/HeartDetailActivity$MyMarkView;->valueMarkText:Landroid/widget/TextView;

    .line 576
    const v0, 0x7f0e012f

    invoke-virtual {p0, v0}, Lcom/smalife/activity/HeartDetailActivity$MyMarkView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/smalife/activity/HeartDetailActivity$MyMarkView;->timeMarkText:Landroid/widget/TextView;

    .line 577
    return-void
.end method


# virtual methods
.method public getXOffset()I
    .locals 1

    .prologue
    .line 598
    invoke-virtual {p0}, Lcom/smalife/activity/HeartDetailActivity$MyMarkView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    neg-int v0, v0

    return v0
.end method

.method public getYOffset()I
    .locals 1

    .prologue
    .line 603
    invoke-virtual {p0}, Lcom/smalife/activity/HeartDetailActivity$MyMarkView;->getHeight()I

    move-result v0

    neg-int v0, v0

    add-int/lit8 v0, v0, -0x4

    return v0
.end method

.method public refreshContent(Lcom/github/mikephil/charting/data/Entry;Lcom/github/mikephil/charting/highlight/Highlight;)V
    .locals 6
    .param p1, "entry"    # Lcom/github/mikephil/charting/data/Entry;
    .param p2, "highlight"    # Lcom/github/mikephil/charting/highlight/Highlight;

    .prologue
    .line 581
    instance-of v1, p1, Lcom/github/mikephil/charting/data/CandleEntry;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 582
    check-cast v0, Lcom/github/mikephil/charting/data/CandleEntry;

    .line 583
    .local v0, "ce":Lcom/github/mikephil/charting/data/CandleEntry;
    iget-object v1, p0, Lcom/smalife/activity/HeartDetailActivity$MyMarkView;->valueMarkText:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 584
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/CandleEntry;->getHigh()F

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lcom/github/mikephil/charting/utils/Utils;->formatNumber(FIZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 583
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 594
    .end local v0    # "ce":Lcom/github/mikephil/charting/data/CandleEntry;
    :goto_0
    return-void

    .line 586
    :cond_0
    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v1

    float-to-int v1, v1

    const/16 v2, 0xa

    if-ge v1, v2, :cond_1

    .line 587
    iget-object v1, p0, Lcom/smalife/activity/HeartDetailActivity$MyMarkView;->valueMarkText:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "0"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 591
    :goto_1
    iget-object v2, p0, Lcom/smalife/activity/HeartDetailActivity$MyMarkView;->timeMarkText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/smalife/activity/HeartDetailActivity$MyMarkView;->this$0:Lcom/smalife/activity/HeartDetailActivity;

    invoke-static {v1}, Lcom/smalife/activity/HeartDetailActivity;->access$0(Lcom/smalife/activity/HeartDetailActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/Entry;->getXIndex()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smalife/activity/HeartDetailActivity$ListEntity;

    .line 592
    invoke-virtual {v1}, Lcom/smalife/activity/HeartDetailActivity$ListEntity;->getName()Ljava/lang/String;

    move-result-object v1

    .line 591
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 589
    :cond_1
    iget-object v1, p0, Lcom/smalife/activity/HeartDetailActivity$MyMarkView;->valueMarkText:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method
