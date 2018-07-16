.class public Lcom/smalife/adapter/WeekAdapter;
.super Landroid/widget/BaseAdapter;
.source "WeekAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smalife/adapter/WeekAdapter$HoldView;
    }
.end annotation


# instance fields
.field private clist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/smalife/adapter/TimeField;",
            ">;"
        }
    .end annotation
.end field

.field private dayFiled:[I

.field holdView:Lcom/smalife/adapter/WeekAdapter$HoldView;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;[I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "filed"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/smalife/adapter/TimeField;",
            ">;[I)V"
        }
    .end annotation

    .prologue
    .line 20
    .local p2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smalife/adapter/TimeField;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 18
    const/16 v0, 0x8

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/smalife/adapter/WeekAdapter;->dayFiled:[I

    .line 21
    iput-object p1, p0, Lcom/smalife/adapter/WeekAdapter;->mContext:Landroid/content/Context;

    .line 22
    iput-object p2, p0, Lcom/smalife/adapter/WeekAdapter;->clist:Ljava/util/ArrayList;

    .line 23
    iput-object p3, p0, Lcom/smalife/adapter/WeekAdapter;->dayFiled:[I

    .line 24
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/smalife/adapter/WeekAdapter;->clist:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/smalife/adapter/WeekAdapter;->clist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDayFiled()[I
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/smalife/adapter/WeekAdapter;->dayFiled:[I

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 56
    iget-object v0, p0, Lcom/smalife/adapter/WeekAdapter;->clist:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/smalife/adapter/WeekAdapter;->clist:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smalife/adapter/TimeField;

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
    .line 61
    iget-object v0, p0, Lcom/smalife/adapter/WeekAdapter;->clist:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/smalife/adapter/WeekAdapter;->clist:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smalife/adapter/TimeField;

    invoke-virtual {v0}, Lcom/smalife/adapter/TimeField;->getId()B

    move-result v0

    :goto_0
    int-to-long v0, v0

    return-wide v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 66
    if-nez p2, :cond_1

    .line 67
    new-instance v1, Lcom/smalife/adapter/WeekAdapter$HoldView;

    invoke-direct {v1, p0}, Lcom/smalife/adapter/WeekAdapter$HoldView;-><init>(Lcom/smalife/adapter/WeekAdapter;)V

    iput-object v1, p0, Lcom/smalife/adapter/WeekAdapter;->holdView:Lcom/smalife/adapter/WeekAdapter$HoldView;

    .line 68
    iget-object v1, p0, Lcom/smalife/adapter/WeekAdapter;->mContext:Landroid/content/Context;

    const v2, 0x7f030018

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/LinearLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 69
    iget-object v2, p0, Lcom/smalife/adapter/WeekAdapter;->holdView:Lcom/smalife/adapter/WeekAdapter$HoldView;

    const v1, 0x7f0e0075

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, v2, Lcom/smalife/adapter/WeekAdapter$HoldView;->check_btn:Landroid/widget/ImageButton;

    .line 70
    iget-object v2, p0, Lcom/smalife/adapter/WeekAdapter;->holdView:Lcom/smalife/adapter/WeekAdapter$HoldView;

    const v1, 0x7f0e0074

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/smalife/adapter/WeekAdapter$HoldView;->week_v:Landroid/widget/TextView;

    .line 71
    iget-object v1, p0, Lcom/smalife/adapter/WeekAdapter;->holdView:Lcom/smalife/adapter/WeekAdapter$HoldView;

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 75
    :goto_0
    iget-object v1, p0, Lcom/smalife/adapter/WeekAdapter;->clist:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 76
    iget-object v1, p0, Lcom/smalife/adapter/WeekAdapter;->clist:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smalife/adapter/TimeField;

    .line 77
    .local v0, "entity":Lcom/smalife/adapter/TimeField;
    invoke-virtual {v0}, Lcom/smalife/adapter/TimeField;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 78
    iget-object v1, p0, Lcom/smalife/adapter/WeekAdapter;->holdView:Lcom/smalife/adapter/WeekAdapter$HoldView;

    iget-object v1, v1, Lcom/smalife/adapter/WeekAdapter$HoldView;->check_btn:Landroid/widget/ImageButton;

    invoke-virtual {v1, v5}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 79
    iget-object v1, p0, Lcom/smalife/adapter/WeekAdapter;->dayFiled:[I

    aput v5, v1, p1

    .line 84
    :goto_1
    iget-object v1, p0, Lcom/smalife/adapter/WeekAdapter;->holdView:Lcom/smalife/adapter/WeekAdapter$HoldView;

    iget-object v1, v1, Lcom/smalife/adapter/WeekAdapter$HoldView;->week_v:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/smalife/adapter/TimeField;->getWeek()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    .end local v0    # "entity":Lcom/smalife/adapter/TimeField;
    :cond_0
    return-object p2

    .line 73
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smalife/adapter/WeekAdapter$HoldView;

    iput-object v1, p0, Lcom/smalife/adapter/WeekAdapter;->holdView:Lcom/smalife/adapter/WeekAdapter$HoldView;

    goto :goto_0

    .line 81
    .restart local v0    # "entity":Lcom/smalife/adapter/TimeField;
    :cond_2
    iget-object v1, p0, Lcom/smalife/adapter/WeekAdapter;->holdView:Lcom/smalife/adapter/WeekAdapter$HoldView;

    iget-object v1, v1, Lcom/smalife/adapter/WeekAdapter$HoldView;->check_btn:Landroid/widget/ImageButton;

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 82
    iget-object v1, p0, Lcom/smalife/adapter/WeekAdapter;->dayFiled:[I

    aput v4, v1, p1

    goto :goto_1
.end method

.method public getWeekList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/smalife/adapter/TimeField;",
            ">;"
        }
    .end annotation

    .prologue
    .line 32
    iget-object v0, p0, Lcom/smalife/adapter/WeekAdapter;->clist:Ljava/util/ArrayList;

    return-object v0
.end method

.method public selectItem(IZ)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "checked"    # Z

    .prologue
    .line 45
    iget-object v0, p0, Lcom/smalife/adapter/WeekAdapter;->clist:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smalife/adapter/TimeField;

    invoke-virtual {v0, p2}, Lcom/smalife/adapter/TimeField;->setChecked(Z)V

    .line 46
    invoke-virtual {p0}, Lcom/smalife/adapter/WeekAdapter;->notifyDataSetChanged()V

    .line 47
    return-void
.end method

.method public setDayFiled([I)V
    .locals 0
    .param p1, "dayFiled"    # [I

    .prologue
    .line 41
    iput-object p1, p0, Lcom/smalife/adapter/WeekAdapter;->dayFiled:[I

    .line 42
    return-void
.end method

.method public updateAdapter(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/smalife/adapter/TimeField;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 27
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smalife/adapter/TimeField;>;"
    iput-object p1, p0, Lcom/smalife/adapter/WeekAdapter;->clist:Ljava/util/ArrayList;

    .line 28
    invoke-virtual {p0}, Lcom/smalife/adapter/WeekAdapter;->notifyDataSetChanged()V

    .line 29
    return-void
.end method
