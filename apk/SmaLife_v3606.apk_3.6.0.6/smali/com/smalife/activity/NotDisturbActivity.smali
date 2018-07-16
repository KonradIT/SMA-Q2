.class public Lcom/smalife/activity/NotDisturbActivity;
.super Lcom/smalife/BaseActivity;
.source "NotDisturbActivity.java"

# interfaces
.implements Lcom/smalife/utils/PickerView$onSelectListener;


# instance fields
.field private TEnd:B

.field private TStart:B

.field private back_btn:Landroid/widget/ImageButton;

.field private end:Lcom/smalife/utils/PickerView;

.field endData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private isOpen:Z

.field private start:Lcom/smalife/utils/PickerView;

.field startData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private status:Landroid/widget/CheckBox;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/smalife/BaseActivity;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/smalife/activity/NotDisturbActivity;->isOpen:Z

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/smalife/activity/NotDisturbActivity;->startData:Ljava/util/List;

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/smalife/activity/NotDisturbActivity;->endData:Ljava/util/List;

    .line 20
    return-void
.end method

.method private initUI()V
    .locals 8

    .prologue
    const v7, 0x7f0e013f

    const v6, 0x7f0e013e

    const/16 v5, 0x17

    const/16 v4, 0xa

    .line 39
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v5, :cond_0

    .line 42
    const/4 v0, 0x0

    :goto_1
    if-le v0, v5, :cond_2

    .line 45
    invoke-virtual {p0, v6}, Lcom/smalife/activity/NotDisturbActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/smalife/utils/PickerView;

    iput-object v1, p0, Lcom/smalife/activity/NotDisturbActivity;->start:Lcom/smalife/utils/PickerView;

    .line 46
    invoke-virtual {p0, v7}, Lcom/smalife/activity/NotDisturbActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/smalife/utils/PickerView;

    iput-object v1, p0, Lcom/smalife/activity/NotDisturbActivity;->end:Lcom/smalife/utils/PickerView;

    .line 47
    iget-object v1, p0, Lcom/smalife/activity/NotDisturbActivity;->start:Lcom/smalife/utils/PickerView;

    invoke-virtual {v1, p0}, Lcom/smalife/utils/PickerView;->setOnSelectListener(Lcom/smalife/utils/PickerView$onSelectListener;)V

    .line 48
    iget-object v1, p0, Lcom/smalife/activity/NotDisturbActivity;->end:Lcom/smalife/utils/PickerView;

    invoke-virtual {v1, p0}, Lcom/smalife/utils/PickerView;->setOnSelectListener(Lcom/smalife/utils/PickerView$onSelectListener;)V

    .line 49
    iget-object v1, p0, Lcom/smalife/activity/NotDisturbActivity;->start:Lcom/smalife/utils/PickerView;

    iget-object v2, p0, Lcom/smalife/activity/NotDisturbActivity;->startData:Ljava/util/List;

    invoke-virtual {v1, v2, v6}, Lcom/smalife/utils/PickerView;->setData(Ljava/util/List;I)V

    .line 50
    iget-object v1, p0, Lcom/smalife/activity/NotDisturbActivity;->end:Lcom/smalife/utils/PickerView;

    iget-object v2, p0, Lcom/smalife/activity/NotDisturbActivity;->endData:Ljava/util/List;

    invoke-virtual {v1, v2, v7}, Lcom/smalife/utils/PickerView;->setData(Ljava/util/List;I)V

    .line 51
    iget-object v1, p0, Lcom/smalife/activity/NotDisturbActivity;->start:Lcom/smalife/utils/PickerView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/smalife/utils/PickerView;->setCurrentSelected(I)V

    .line 52
    iget-object v1, p0, Lcom/smalife/activity/NotDisturbActivity;->end:Lcom/smalife/utils/PickerView;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Lcom/smalife/utils/PickerView;->setCurrentSelected(I)V

    .line 54
    const v1, 0x7f0e0006

    invoke-virtual {p0, v1}, Lcom/smalife/activity/NotDisturbActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/smalife/activity/NotDisturbActivity;->back_btn:Landroid/widget/ImageButton;

    .line 55
    iget-object v1, p0, Lcom/smalife/activity/NotDisturbActivity;->back_btn:Landroid/widget/ImageButton;

    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    const v1, 0x7f0e0140

    invoke-virtual {p0, v1}, Lcom/smalife/activity/NotDisturbActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/smalife/activity/NotDisturbActivity;->status:Landroid/widget/CheckBox;

    .line 58
    return-void

    .line 40
    :cond_0
    iget-object v2, p0, Lcom/smalife/activity/NotDisturbActivity;->startData:Ljava/util/List;

    if-ge v0, v4, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "0"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 40
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 43
    :cond_2
    iget-object v2, p0, Lcom/smalife/activity/NotDisturbActivity;->endData:Ljava/util/List;

    if-ge v0, v4, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "0"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_3
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 43
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_3
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 76
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 81
    :goto_0
    return-void

    .line 78
    :pswitch_0
    invoke-virtual {p0}, Lcom/smalife/activity/NotDisturbActivity;->finish()V

    goto :goto_0

    .line 76
    :pswitch_data_0
    .packed-switch 0x7f0e0006
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 32
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/smalife/activity/NotDisturbActivity;->requestWindowFeature(I)Z

    .line 33
    invoke-super {p0, p1}, Lcom/smalife/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    const v0, 0x7f03003b

    invoke-virtual {p0, v0}, Lcom/smalife/activity/NotDisturbActivity;->setContentView(I)V

    .line 35
    invoke-direct {p0}, Lcom/smalife/activity/NotDisturbActivity;->initUI()V

    .line 36
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 62
    invoke-super {p0}, Lcom/smalife/BaseActivity;->onResume()V

    .line 65
    iput-boolean v1, p0, Lcom/smalife/activity/NotDisturbActivity;->isOpen:Z

    .line 66
    iget-boolean v0, p0, Lcom/smalife/activity/NotDisturbActivity;->isOpen:Z

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/smalife/activity/NotDisturbActivity;->status:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 72
    :goto_0
    return-void

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/smalife/activity/NotDisturbActivity;->status:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0
.end method

.method public onSelect(Ljava/lang/String;I)V
    .locals 1
    .param p1, "t"    # Ljava/lang/String;
    .param p2, "res"    # I

    .prologue
    .line 85
    packed-switch p2, :pswitch_data_0

    .line 96
    :goto_0
    return-void

    .line 87
    :pswitch_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/smalife/activity/NotDisturbActivity;->TStart:B

    goto :goto_0

    .line 90
    :pswitch_1
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/smalife/activity/NotDisturbActivity;->TEnd:B

    goto :goto_0

    .line 85
    :pswitch_data_0
    .packed-switch 0x7f0e013e
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
