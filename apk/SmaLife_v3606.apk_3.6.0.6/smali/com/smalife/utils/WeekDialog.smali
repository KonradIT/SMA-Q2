.class public Lcom/smalife/utils/WeekDialog;
.super Landroid/app/Dialog;
.source "WeekDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smalife/utils/WeekDialog$ItemListener;,
        Lcom/smalife/utils/WeekDialog$WeekSelectListener;
    }
.end annotation


# instance fields
.field private cancel:Landroid/widget/Button;

.field private submit:Landroid/widget/Button;

.field private weekAdpater:Lcom/smalife/adapter/WeekAdapter;

.field private weekArray:[Ljava/lang/String;

.field private weekList:Landroid/widget/ListView;

.field private weekListener:Lcom/smalife/utils/WeekDialog$WeekSelectListener;

.field wklist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/smalife/adapter/TimeField;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;[I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "weeks"    # [I

    .prologue
    .line 27
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 24
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/smalife/utils/WeekDialog;->wklist:Ljava/util/ArrayList;

    .line 28
    const v2, 0x7f09013c

    invoke-virtual {p0, v2}, Lcom/smalife/utils/WeekDialog;->setTitle(I)V

    .line 29
    const v2, 0x7f030078

    invoke-virtual {p0, v2}, Lcom/smalife/utils/WeekDialog;->setContentView(I)V

    .line 30
    const v2, 0x7f0e002b

    invoke-virtual {p0, v2}, Lcom/smalife/utils/WeekDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/smalife/utils/WeekDialog;->cancel:Landroid/widget/Button;

    .line 31
    const v2, 0x7f0e002c

    invoke-virtual {p0, v2}, Lcom/smalife/utils/WeekDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/smalife/utils/WeekDialog;->submit:Landroid/widget/Button;

    .line 32
    iget-object v2, p0, Lcom/smalife/utils/WeekDialog;->cancel:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 33
    iget-object v2, p0, Lcom/smalife/utils/WeekDialog;->submit:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34
    const v2, 0x7f0e0268

    invoke-virtual {p0, v2}, Lcom/smalife/utils/WeekDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/smalife/utils/WeekDialog;->weekList:Landroid/widget/ListView;

    .line 35
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b001f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/smalife/utils/WeekDialog;->weekArray:[Ljava/lang/String;

    .line 36
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    iget-object v2, p0, Lcom/smalife/utils/WeekDialog;->weekArray:[Ljava/lang/String;

    array-length v2, v2

    if-lt v1, v2, :cond_1

    .line 42
    new-instance v2, Lcom/smalife/adapter/WeekAdapter;

    iget-object v3, p0, Lcom/smalife/utils/WeekDialog;->wklist:Ljava/util/ArrayList;

    const/16 v4, 0x8

    new-array v4, v4, [I

    invoke-direct {v2, p1, v3, v4}, Lcom/smalife/adapter/WeekAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;[I)V

    iput-object v2, p0, Lcom/smalife/utils/WeekDialog;->weekAdpater:Lcom/smalife/adapter/WeekAdapter;

    .line 43
    iget-object v2, p0, Lcom/smalife/utils/WeekDialog;->weekList:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/smalife/utils/WeekDialog;->weekAdpater:Lcom/smalife/adapter/WeekAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 44
    iget-object v2, p0, Lcom/smalife/utils/WeekDialog;->weekList:Landroid/widget/ListView;

    new-instance v3, Lcom/smalife/utils/WeekDialog$ItemListener;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/smalife/utils/WeekDialog$ItemListener;-><init>(Lcom/smalife/utils/WeekDialog;Lcom/smalife/utils/WeekDialog$ItemListener;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 45
    if-eqz p2, :cond_0

    .line 46
    invoke-virtual {p0, p2}, Lcom/smalife/utils/WeekDialog;->updateWeekDialog([I)V

    .line 48
    :cond_0
    return-void

    .line 37
    :cond_1
    new-instance v0, Lcom/smalife/adapter/TimeField;

    invoke-direct {v0}, Lcom/smalife/adapter/TimeField;-><init>()V

    .line 38
    .local v0, "entity":Lcom/smalife/adapter/TimeField;
    iget-object v2, p0, Lcom/smalife/utils/WeekDialog;->weekArray:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Lcom/smalife/adapter/TimeField;->setWeek(Ljava/lang/String;)V

    .line 39
    int-to-byte v2, v1

    invoke-virtual {v0, v2}, Lcom/smalife/adapter/TimeField;->setId(B)V

    .line 40
    iget-object v2, p0, Lcom/smalife/utils/WeekDialog;->wklist:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/smalife/utils/WeekDialog;)Lcom/smalife/adapter/WeekAdapter;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/smalife/utils/WeekDialog;->weekAdpater:Lcom/smalife/adapter/WeekAdapter;

    return-object v0
.end method


# virtual methods
.method public getWeekListener()Lcom/smalife/utils/WeekDialog$WeekSelectListener;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/smalife/utils/WeekDialog;->weekListener:Lcom/smalife/utils/WeekDialog$WeekSelectListener;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 92
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 109
    :goto_0
    return-void

    .line 94
    :pswitch_0
    iget-object v3, p0, Lcom/smalife/utils/WeekDialog;->weekListener:Lcom/smalife/utils/WeekDialog$WeekSelectListener;

    invoke-interface {v3}, Lcom/smalife/utils/WeekDialog$WeekSelectListener;->cancelSetting()V

    .line 95
    iget-object v3, p0, Lcom/smalife/utils/WeekDialog;->weekListener:Lcom/smalife/utils/WeekDialog$WeekSelectListener;

    invoke-interface {v3}, Lcom/smalife/utils/WeekDialog$WeekSelectListener;->dismissListener()V

    .line 96
    invoke-virtual {p0}, Lcom/smalife/utils/WeekDialog;->dismiss()V

    goto :goto_0

    .line 99
    :pswitch_1
    new-instance v0, Lcom/smalife/adapter/TimeField;

    invoke-direct {v0}, Lcom/smalife/adapter/TimeField;-><init>()V

    .line 100
    .local v0, "field":Lcom/smalife/adapter/TimeField;
    iget-object v3, p0, Lcom/smalife/utils/WeekDialog;->weekAdpater:Lcom/smalife/adapter/WeekAdapter;

    invoke-virtual {v3}, Lcom/smalife/adapter/WeekAdapter;->getDayFiled()[I

    move-result-object v2

    .line 101
    .local v2, "weekdays":[I
    array-length v4, v2

    const/4 v3, 0x0

    :goto_1
    if-lt v3, v4, :cond_0

    .line 104
    iget-object v3, p0, Lcom/smalife/utils/WeekDialog;->weekListener:Lcom/smalife/utils/WeekDialog$WeekSelectListener;

    invoke-interface {v3, v2}, Lcom/smalife/utils/WeekDialog$WeekSelectListener;->getTimeField([I)[I

    .line 105
    iget-object v3, p0, Lcom/smalife/utils/WeekDialog;->weekListener:Lcom/smalife/utils/WeekDialog$WeekSelectListener;

    invoke-interface {v3}, Lcom/smalife/utils/WeekDialog$WeekSelectListener;->dismissListener()V

    .line 106
    invoke-virtual {p0}, Lcom/smalife/utils/WeekDialog;->dismiss()V

    goto :goto_0

    .line 101
    :cond_0
    aget v1, v2, v3

    .line 102
    .local v1, "test":I
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "weekdays = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/bestmafen/utils/L;->e(Ljava/lang/String;)V

    .line 101
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 92
    :pswitch_data_0
    .packed-switch 0x7f0e002b
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setWeekListener(Lcom/smalife/utils/WeekDialog$WeekSelectListener;)V
    .locals 0
    .param p1, "weekListener"    # Lcom/smalife/utils/WeekDialog$WeekSelectListener;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/smalife/utils/WeekDialog;->weekListener:Lcom/smalife/utils/WeekDialog$WeekSelectListener;

    .line 118
    return-void
.end method

.method public updateWeekDialog([I)V
    .locals 7
    .param p1, "weeks"    # [I

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 51
    iget-object v1, p0, Lcom/smalife/utils/WeekDialog;->weekAdpater:Lcom/smalife/adapter/WeekAdapter;

    invoke-virtual {v1}, Lcom/smalife/adapter/WeekAdapter;->getWeekList()Ljava/util/ArrayList;

    move-result-object v0

    .line 52
    .local v0, "tlist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smalife/adapter/TimeField;>;"
    aget v1, p1, v3

    if-ne v1, v2, :cond_0

    .line 53
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smalife/adapter/TimeField;

    invoke-virtual {v1, v2}, Lcom/smalife/adapter/TimeField;->setChecked(Z)V

    .line 55
    :cond_0
    aget v1, p1, v2

    if-ne v1, v2, :cond_1

    .line 56
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smalife/adapter/TimeField;

    invoke-virtual {v1, v2}, Lcom/smalife/adapter/TimeField;->setChecked(Z)V

    .line 58
    :cond_1
    aget v1, p1, v4

    if-ne v1, v2, :cond_2

    .line 59
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smalife/adapter/TimeField;

    invoke-virtual {v1, v2}, Lcom/smalife/adapter/TimeField;->setChecked(Z)V

    .line 61
    :cond_2
    aget v1, p1, v5

    if-ne v1, v2, :cond_3

    .line 62
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smalife/adapter/TimeField;

    invoke-virtual {v1, v2}, Lcom/smalife/adapter/TimeField;->setChecked(Z)V

    .line 64
    :cond_3
    aget v1, p1, v6

    if-ne v1, v2, :cond_4

    .line 65
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smalife/adapter/TimeField;

    invoke-virtual {v1, v2}, Lcom/smalife/adapter/TimeField;->setChecked(Z)V

    .line 67
    :cond_4
    const/4 v1, 0x5

    aget v1, p1, v1

    if-ne v1, v2, :cond_5

    .line 68
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smalife/adapter/TimeField;

    invoke-virtual {v1, v2}, Lcom/smalife/adapter/TimeField;->setChecked(Z)V

    .line 70
    :cond_5
    const/4 v1, 0x6

    aget v1, p1, v1

    if-ne v1, v2, :cond_6

    .line 71
    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smalife/adapter/TimeField;

    invoke-virtual {v1, v2}, Lcom/smalife/adapter/TimeField;->setChecked(Z)V

    .line 73
    :cond_6
    iget-object v1, p0, Lcom/smalife/utils/WeekDialog;->weekAdpater:Lcom/smalife/adapter/WeekAdapter;

    invoke-virtual {v1, v0}, Lcom/smalife/adapter/WeekAdapter;->updateAdapter(Ljava/util/ArrayList;)V

    .line 74
    return-void
.end method
