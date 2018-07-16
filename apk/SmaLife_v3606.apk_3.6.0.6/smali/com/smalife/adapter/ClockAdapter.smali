.class public Lcom/smalife/adapter/ClockAdapter;
.super Landroid/widget/BaseAdapter;
.source "ClockAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smalife/adapter/ClockAdapter$HoldView;
    }
.end annotation


# instance fields
.field private clist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/smalife/entity/ClockEntity;",
            ">;"
        }
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field private days:[Ljava/lang/String;

.field mHoldView:Lcom/smalife/adapter/ClockAdapter$HoldView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;[Ljava/lang/String;)V
    .locals 0
    .param p1, "c"    # Landroid/content/Context;
    .param p3, "weekDays"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/smalife/entity/ClockEntity;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 24
    .local p2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smalife/entity/ClockEntity;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/smalife/adapter/ClockAdapter;->context:Landroid/content/Context;

    .line 26
    iput-object p2, p0, Lcom/smalife/adapter/ClockAdapter;->clist:Ljava/util/ArrayList;

    .line 27
    iput-object p3, p0, Lcom/smalife/adapter/ClockAdapter;->days:[Ljava/lang/String;

    .line 28
    return-void
.end method

.method static synthetic access$0(Lcom/smalife/adapter/ClockAdapter;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/smalife/adapter/ClockAdapter;->clist:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1(Lcom/smalife/adapter/ClockAdapter;I)V
    .locals 0

    .prologue
    .line 148
    invoke-direct {p0, p1}, Lcom/smalife/adapter/ClockAdapter;->modifyClock(I)V

    return-void
.end method

.method private modifyClock(I)V
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 149
    iget-object v0, p0, Lcom/smalife/adapter/ClockAdapter;->clist:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 150
    new-instance v1, Lcom/smalife/db/SmaDao;

    iget-object v0, p0, Lcom/smalife/adapter/ClockAdapter;->context:Landroid/content/Context;

    invoke-direct {v1, v0}, Lcom/smalife/db/SmaDao;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/smalife/adapter/ClockAdapter;->clist:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smalife/entity/ClockEntity;

    invoke-virtual {v0}, Lcom/smalife/entity/ClockEntity;->get_id()I

    move-result v2

    iget-object v0, p0, Lcom/smalife/adapter/ClockAdapter;->clist:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smalife/entity/ClockEntity;

    invoke-virtual {v1, v2, v0}, Lcom/smalife/db/SmaDao;->modifyClock(ILcom/smalife/entity/ClockEntity;)I

    .line 152
    :cond_0
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/smalife/adapter/ClockAdapter;->clist:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/smalife/adapter/ClockAdapter;->clist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 42
    iget-object v0, p0, Lcom/smalife/adapter/ClockAdapter;->clist:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/smalife/adapter/ClockAdapter;->clist:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smalife/entity/ClockEntity;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 47
    iget-object v0, p0, Lcom/smalife/adapter/ClockAdapter;->clist:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/smalife/adapter/ClockAdapter;->clist:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smalife/entity/ClockEntity;

    invoke-virtual {v0}, Lcom/smalife/entity/ClockEntity;->get_id()I

    move-result v0

    :goto_0
    int-to-long v0, v0

    return-wide v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .param p1, "position"    # I
    .param p2, "v"    # Landroid/view/View;
    .param p3, "root"    # Landroid/view/ViewGroup;

    .prologue
    const/16 v8, 0xff

    const/16 v7, 0x8c

    const/high16 v6, -0x1000000

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 52
    if-nez p2, :cond_1

    .line 53
    new-instance v1, Lcom/smalife/adapter/ClockAdapter$HoldView;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/smalife/adapter/ClockAdapter$HoldView;-><init>(Lcom/smalife/adapter/ClockAdapter;Lcom/smalife/adapter/ClockAdapter$HoldView;)V

    iput-object v1, p0, Lcom/smalife/adapter/ClockAdapter;->mHoldView:Lcom/smalife/adapter/ClockAdapter$HoldView;

    .line 54
    iget-object v1, p0, Lcom/smalife/adapter/ClockAdapter;->context:Landroid/content/Context;

    const v2, 0x7f030016

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/LinearLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 55
    iget-object v2, p0, Lcom/smalife/adapter/ClockAdapter;->mHoldView:Lcom/smalife/adapter/ClockAdapter$HoldView;

    const v1, 0x7f0e006a

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/smalife/adapter/ClockAdapter$HoldView;->monDay:Landroid/widget/TextView;

    .line 56
    iget-object v2, p0, Lcom/smalife/adapter/ClockAdapter;->mHoldView:Lcom/smalife/adapter/ClockAdapter$HoldView;

    const v1, 0x7f0e006b

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/smalife/adapter/ClockAdapter$HoldView;->tuesDay:Landroid/widget/TextView;

    .line 57
    iget-object v2, p0, Lcom/smalife/adapter/ClockAdapter;->mHoldView:Lcom/smalife/adapter/ClockAdapter$HoldView;

    const v1, 0x7f0e006c

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/smalife/adapter/ClockAdapter$HoldView;->wesDay:Landroid/widget/TextView;

    .line 58
    iget-object v2, p0, Lcom/smalife/adapter/ClockAdapter;->mHoldView:Lcom/smalife/adapter/ClockAdapter$HoldView;

    const v1, 0x7f0e006d

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/smalife/adapter/ClockAdapter$HoldView;->thurDay:Landroid/widget/TextView;

    .line 59
    iget-object v2, p0, Lcom/smalife/adapter/ClockAdapter;->mHoldView:Lcom/smalife/adapter/ClockAdapter$HoldView;

    const v1, 0x7f0e006e

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/smalife/adapter/ClockAdapter$HoldView;->fridDay:Landroid/widget/TextView;

    .line 60
    iget-object v2, p0, Lcom/smalife/adapter/ClockAdapter;->mHoldView:Lcom/smalife/adapter/ClockAdapter$HoldView;

    const v1, 0x7f0e006f

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/smalife/adapter/ClockAdapter$HoldView;->staDay:Landroid/widget/TextView;

    .line 61
    iget-object v2, p0, Lcom/smalife/adapter/ClockAdapter;->mHoldView:Lcom/smalife/adapter/ClockAdapter$HoldView;

    const v1, 0x7f0e0069

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/smalife/adapter/ClockAdapter$HoldView;->sunDay:Landroid/widget/TextView;

    .line 62
    iget-object v2, p0, Lcom/smalife/adapter/ClockAdapter;->mHoldView:Lcom/smalife/adapter/ClockAdapter$HoldView;

    const v1, 0x7f0e0066

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/smalife/adapter/ClockAdapter$HoldView;->clockTime:Landroid/widget/TextView;

    .line 63
    iget-object v2, p0, Lcom/smalife/adapter/ClockAdapter;->mHoldView:Lcom/smalife/adapter/ClockAdapter$HoldView;

    const v1, 0x7f0e0068

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, v2, Lcom/smalife/adapter/ClockAdapter$HoldView;->clockOpen:Landroid/widget/CheckBox;

    .line 64
    iget-object v2, p0, Lcom/smalife/adapter/ClockAdapter;->mHoldView:Lcom/smalife/adapter/ClockAdapter$HoldView;

    const v1, 0x7f0e0067

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/smalife/adapter/ClockAdapter$HoldView;->name:Landroid/widget/TextView;

    .line 65
    iget-object v2, p0, Lcom/smalife/adapter/ClockAdapter;->mHoldView:Lcom/smalife/adapter/ClockAdapter$HoldView;

    const v1, 0x7f0e0070

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/smalife/adapter/ClockAdapter$HoldView;->item_id:Landroid/widget/TextView;

    .line 66
    iget-object v1, p0, Lcom/smalife/adapter/ClockAdapter;->mHoldView:Lcom/smalife/adapter/ClockAdapter$HoldView;

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 70
    :goto_0
    iget-object v1, p0, Lcom/smalife/adapter/ClockAdapter;->mHoldView:Lcom/smalife/adapter/ClockAdapter$HoldView;

    iget-object v1, v1, Lcom/smalife/adapter/ClockAdapter$HoldView;->clockOpen:Landroid/widget/CheckBox;

    new-instance v2, Lcom/smalife/adapter/ClockAdapter$1;

    invoke-direct {v2, p0, p1}, Lcom/smalife/adapter/ClockAdapter$1;-><init>(Lcom/smalife/adapter/ClockAdapter;I)V

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    iget-object v1, p0, Lcom/smalife/adapter/ClockAdapter;->clist:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 83
    iget-object v1, p0, Lcom/smalife/adapter/ClockAdapter;->clist:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smalife/entity/ClockEntity;

    .line 84
    .local v0, "c":Lcom/smalife/entity/ClockEntity;
    if-eqz v0, :cond_0

    .line 85
    invoke-virtual {v0}, Lcom/smalife/entity/ClockEntity;->getMon_day()I

    move-result v1

    if-ne v1, v4, :cond_2

    .line 86
    iget-object v1, p0, Lcom/smalife/adapter/ClockAdapter;->mHoldView:Lcom/smalife/adapter/ClockAdapter$HoldView;

    iget-object v1, v1, Lcom/smalife/adapter/ClockAdapter$HoldView;->monDay:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/smalife/adapter/ClockAdapter;->days:[Ljava/lang/String;

    aget-object v2, v2, v5

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    iget-object v1, p0, Lcom/smalife/adapter/ClockAdapter;->mHoldView:Lcom/smalife/adapter/ClockAdapter$HoldView;

    iget-object v1, v1, Lcom/smalife/adapter/ClockAdapter$HoldView;->monDay:Landroid/widget/TextView;

    invoke-static {v5, v7, v8}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 91
    :goto_1
    invoke-virtual {v0}, Lcom/smalife/entity/ClockEntity;->getTues_day()I

    move-result v1

    if-ne v1, v4, :cond_3

    .line 92
    iget-object v1, p0, Lcom/smalife/adapter/ClockAdapter;->mHoldView:Lcom/smalife/adapter/ClockAdapter$HoldView;

    iget-object v1, v1, Lcom/smalife/adapter/ClockAdapter$HoldView;->tuesDay:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/smalife/adapter/ClockAdapter;->days:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    iget-object v1, p0, Lcom/smalife/adapter/ClockAdapter;->mHoldView:Lcom/smalife/adapter/ClockAdapter$HoldView;

    iget-object v1, v1, Lcom/smalife/adapter/ClockAdapter$HoldView;->tuesDay:Landroid/widget/TextView;

    invoke-static {v5, v7, v8}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 97
    :goto_2
    invoke-virtual {v0}, Lcom/smalife/entity/ClockEntity;->getWes_day()I

    move-result v1

    if-ne v1, v4, :cond_4

    .line 98
    iget-object v1, p0, Lcom/smalife/adapter/ClockAdapter;->mHoldView:Lcom/smalife/adapter/ClockAdapter$HoldView;

    iget-object v1, v1, Lcom/smalife/adapter/ClockAdapter$HoldView;->wesDay:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/smalife/adapter/ClockAdapter;->days:[Ljava/lang/String;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    iget-object v1, p0, Lcom/smalife/adapter/ClockAdapter;->mHoldView:Lcom/smalife/adapter/ClockAdapter$HoldView;

    iget-object v1, v1, Lcom/smalife/adapter/ClockAdapter$HoldView;->wesDay:Landroid/widget/TextView;

    invoke-static {v5, v7, v8}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 103
    :goto_3
    invoke-virtual {v0}, Lcom/smalife/entity/ClockEntity;->getThur_day()I

    move-result v1

    if-ne v1, v4, :cond_5

    .line 104
    iget-object v1, p0, Lcom/smalife/adapter/ClockAdapter;->mHoldView:Lcom/smalife/adapter/ClockAdapter$HoldView;

    iget-object v1, v1, Lcom/smalife/adapter/ClockAdapter$HoldView;->thurDay:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/smalife/adapter/ClockAdapter;->days:[Ljava/lang/String;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    iget-object v1, p0, Lcom/smalife/adapter/ClockAdapter;->mHoldView:Lcom/smalife/adapter/ClockAdapter$HoldView;

    iget-object v1, v1, Lcom/smalife/adapter/ClockAdapter$HoldView;->thurDay:Landroid/widget/TextView;

    invoke-static {v5, v7, v8}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 109
    :goto_4
    invoke-virtual {v0}, Lcom/smalife/entity/ClockEntity;->getFrid_day()I

    move-result v1

    if-ne v1, v4, :cond_6

    .line 110
    iget-object v1, p0, Lcom/smalife/adapter/ClockAdapter;->mHoldView:Lcom/smalife/adapter/ClockAdapter$HoldView;

    iget-object v1, v1, Lcom/smalife/adapter/ClockAdapter$HoldView;->fridDay:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/smalife/adapter/ClockAdapter;->days:[Ljava/lang/String;

    const/4 v3, 0x4

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    iget-object v1, p0, Lcom/smalife/adapter/ClockAdapter;->mHoldView:Lcom/smalife/adapter/ClockAdapter$HoldView;

    iget-object v1, v1, Lcom/smalife/adapter/ClockAdapter$HoldView;->fridDay:Landroid/widget/TextView;

    invoke-static {v5, v7, v8}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 115
    :goto_5
    invoke-virtual {v0}, Lcom/smalife/entity/ClockEntity;->getSta_day()I

    move-result v1

    if-ne v1, v4, :cond_7

    .line 116
    iget-object v1, p0, Lcom/smalife/adapter/ClockAdapter;->mHoldView:Lcom/smalife/adapter/ClockAdapter$HoldView;

    iget-object v1, v1, Lcom/smalife/adapter/ClockAdapter$HoldView;->staDay:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/smalife/adapter/ClockAdapter;->days:[Ljava/lang/String;

    const/4 v3, 0x5

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    iget-object v1, p0, Lcom/smalife/adapter/ClockAdapter;->mHoldView:Lcom/smalife/adapter/ClockAdapter$HoldView;

    iget-object v1, v1, Lcom/smalife/adapter/ClockAdapter$HoldView;->staDay:Landroid/widget/TextView;

    invoke-static {v5, v7, v8}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 121
    :goto_6
    invoke-virtual {v0}, Lcom/smalife/entity/ClockEntity;->getSun_day()I

    move-result v1

    if-ne v1, v4, :cond_8

    .line 122
    iget-object v1, p0, Lcom/smalife/adapter/ClockAdapter;->mHoldView:Lcom/smalife/adapter/ClockAdapter$HoldView;

    iget-object v1, v1, Lcom/smalife/adapter/ClockAdapter$HoldView;->sunDay:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/smalife/adapter/ClockAdapter;->days:[Ljava/lang/String;

    const/4 v3, 0x6

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    iget-object v1, p0, Lcom/smalife/adapter/ClockAdapter;->mHoldView:Lcom/smalife/adapter/ClockAdapter$HoldView;

    iget-object v1, v1, Lcom/smalife/adapter/ClockAdapter$HoldView;->sunDay:Landroid/widget/TextView;

    invoke-static {v5, v7, v8}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 127
    :goto_7
    invoke-virtual {v0}, Lcom/smalife/entity/ClockEntity;->getOpenOrClose()I

    move-result v1

    if-ne v1, v4, :cond_9

    .line 128
    iget-object v1, p0, Lcom/smalife/adapter/ClockAdapter;->mHoldView:Lcom/smalife/adapter/ClockAdapter$HoldView;

    iget-object v1, v1, Lcom/smalife/adapter/ClockAdapter$HoldView;->clockOpen:Landroid/widget/CheckBox;

    invoke-virtual {v1, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 132
    :goto_8
    iget-object v1, p0, Lcom/smalife/adapter/ClockAdapter;->mHoldView:Lcom/smalife/adapter/ClockAdapter$HoldView;

    iget-object v1, v1, Lcom/smalife/adapter/ClockAdapter$HoldView;->clockTime:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/smalife/entity/ClockEntity;->getClock_time()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    iget-object v1, p0, Lcom/smalife/adapter/ClockAdapter;->mHoldView:Lcom/smalife/adapter/ClockAdapter$HoldView;

    iget-object v1, v1, Lcom/smalife/adapter/ClockAdapter$HoldView;->name:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/smalife/entity/ClockEntity;->getClockName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    iget-object v1, p0, Lcom/smalife/adapter/ClockAdapter;->mHoldView:Lcom/smalife/adapter/ClockAdapter$HoldView;

    iget-object v1, v1, Lcom/smalife/adapter/ClockAdapter$HoldView;->item_id:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/smalife/entity/ClockEntity;->get_id()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    .end local v0    # "c":Lcom/smalife/entity/ClockEntity;
    :cond_0
    return-object p2

    .line 68
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smalife/adapter/ClockAdapter$HoldView;

    iput-object v1, p0, Lcom/smalife/adapter/ClockAdapter;->mHoldView:Lcom/smalife/adapter/ClockAdapter$HoldView;

    goto/16 :goto_0

    .line 89
    .restart local v0    # "c":Lcom/smalife/entity/ClockEntity;
    :cond_2
    iget-object v1, p0, Lcom/smalife/adapter/ClockAdapter;->mHoldView:Lcom/smalife/adapter/ClockAdapter$HoldView;

    iget-object v1, v1, Lcom/smalife/adapter/ClockAdapter$HoldView;->monDay:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_1

    .line 95
    :cond_3
    iget-object v1, p0, Lcom/smalife/adapter/ClockAdapter;->mHoldView:Lcom/smalife/adapter/ClockAdapter$HoldView;

    iget-object v1, v1, Lcom/smalife/adapter/ClockAdapter$HoldView;->tuesDay:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_2

    .line 101
    :cond_4
    iget-object v1, p0, Lcom/smalife/adapter/ClockAdapter;->mHoldView:Lcom/smalife/adapter/ClockAdapter$HoldView;

    iget-object v1, v1, Lcom/smalife/adapter/ClockAdapter$HoldView;->wesDay:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_3

    .line 107
    :cond_5
    iget-object v1, p0, Lcom/smalife/adapter/ClockAdapter;->mHoldView:Lcom/smalife/adapter/ClockAdapter$HoldView;

    iget-object v1, v1, Lcom/smalife/adapter/ClockAdapter$HoldView;->thurDay:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_4

    .line 113
    :cond_6
    iget-object v1, p0, Lcom/smalife/adapter/ClockAdapter;->mHoldView:Lcom/smalife/adapter/ClockAdapter$HoldView;

    iget-object v1, v1, Lcom/smalife/adapter/ClockAdapter$HoldView;->fridDay:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_5

    .line 119
    :cond_7
    iget-object v1, p0, Lcom/smalife/adapter/ClockAdapter;->mHoldView:Lcom/smalife/adapter/ClockAdapter$HoldView;

    iget-object v1, v1, Lcom/smalife/adapter/ClockAdapter$HoldView;->staDay:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_6

    .line 125
    :cond_8
    iget-object v1, p0, Lcom/smalife/adapter/ClockAdapter;->mHoldView:Lcom/smalife/adapter/ClockAdapter$HoldView;

    iget-object v1, v1, Lcom/smalife/adapter/ClockAdapter$HoldView;->sunDay:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_7

    .line 130
    :cond_9
    iget-object v1, p0, Lcom/smalife/adapter/ClockAdapter;->mHoldView:Lcom/smalife/adapter/ClockAdapter$HoldView;

    iget-object v1, v1, Lcom/smalife/adapter/ClockAdapter$HoldView;->clockOpen:Landroid/widget/CheckBox;

    invoke-virtual {v1, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_8
.end method

.method public updateAdapter(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/smalife/entity/ClockEntity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 31
    .local p1, "mlist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smalife/entity/ClockEntity;>;"
    iput-object p1, p0, Lcom/smalife/adapter/ClockAdapter;->clist:Ljava/util/ArrayList;

    .line 32
    invoke-virtual {p0}, Lcom/smalife/adapter/ClockAdapter;->notifyDataSetChanged()V

    .line 33
    return-void
.end method
