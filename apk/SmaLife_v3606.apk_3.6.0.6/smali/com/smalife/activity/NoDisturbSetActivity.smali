.class public Lcom/smalife/activity/NoDisturbSetActivity;
.super Lcom/smalife/BaseActivity;
.source "NoDisturbSetActivity.java"

# interfaces
.implements Lcom/smalife/wheelview/OnItemSelectedListener;


# instance fields
.field private back_btn:Landroid/widget/ImageButton;

.field private disturbEntity:Lcom/smalife/entity/DisturbEntity;

.field private endData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private endTime:I

.field private endWV:Lcom/smalife/wheelview/WheelView;

.field private startData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private startTime:I

.field private startWV:Lcom/smalife/wheelview/WheelView;

.field private submit_btn:Landroid/widget/ImageButton;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/smalife/BaseActivity;-><init>()V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/smalife/activity/NoDisturbSetActivity;->startData:Ljava/util/ArrayList;

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/smalife/activity/NoDisturbSetActivity;->endData:Ljava/util/ArrayList;

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/smalife/activity/NoDisturbSetActivity;->disturbEntity:Lcom/smalife/entity/DisturbEntity;

    .line 18
    return-void
.end method

.method private findViewById()V
    .locals 1

    .prologue
    .line 83
    const v0, 0x7f0e0006

    invoke-virtual {p0, v0}, Lcom/smalife/activity/NoDisturbSetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/smalife/activity/NoDisturbSetActivity;->back_btn:Landroid/widget/ImageButton;

    .line 84
    const v0, 0x7f0e002c

    invoke-virtual {p0, v0}, Lcom/smalife/activity/NoDisturbSetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/smalife/activity/NoDisturbSetActivity;->submit_btn:Landroid/widget/ImageButton;

    .line 86
    const v0, 0x7f0e00fc

    invoke-virtual {p0, v0}, Lcom/smalife/activity/NoDisturbSetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/smalife/wheelview/WheelView;

    iput-object v0, p0, Lcom/smalife/activity/NoDisturbSetActivity;->startWV:Lcom/smalife/wheelview/WheelView;

    .line 87
    const v0, 0x7f0e00fd

    invoke-virtual {p0, v0}, Lcom/smalife/activity/NoDisturbSetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/smalife/wheelview/WheelView;

    iput-object v0, p0, Lcom/smalife/activity/NoDisturbSetActivity;->endWV:Lcom/smalife/wheelview/WheelView;

    .line 92
    iget-object v0, p0, Lcom/smalife/activity/NoDisturbSetActivity;->back_btn:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    iget-object v0, p0, Lcom/smalife/activity/NoDisturbSetActivity;->submit_btn:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    iget-object v0, p0, Lcom/smalife/activity/NoDisturbSetActivity;->startWV:Lcom/smalife/wheelview/WheelView;

    invoke-virtual {v0, p0}, Lcom/smalife/wheelview/WheelView;->setOnItemSelectedListener(Lcom/smalife/wheelview/OnItemSelectedListener;)V

    .line 96
    iget-object v0, p0, Lcom/smalife/activity/NoDisturbSetActivity;->endWV:Lcom/smalife/wheelview/WheelView;

    invoke-virtual {v0, p0}, Lcom/smalife/wheelview/WheelView;->setOnItemSelectedListener(Lcom/smalife/wheelview/OnItemSelectedListener;)V

    .line 98
    return-void
.end method

.method private initWheelData()V
    .locals 6

    .prologue
    const/16 v4, 0xa

    const/4 v5, 0x0

    .line 46
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x16

    if-le v0, v1, :cond_0

    .line 49
    const/4 v0, 0x1

    :goto_1
    const/16 v1, 0x17

    if-le v0, v1, :cond_2

    .line 53
    iget-object v1, p0, Lcom/smalife/activity/NoDisturbSetActivity;->startWV:Lcom/smalife/wheelview/WheelView;

    new-instance v2, Lcom/smalife/wheelview/ArrayWheelAdapter;

    .line 54
    iget-object v3, p0, Lcom/smalife/activity/NoDisturbSetActivity;->startData:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/smalife/activity/NoDisturbSetActivity;->startData:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-direct {v2, v3, v4}, Lcom/smalife/wheelview/ArrayWheelAdapter;-><init>(Ljava/util/ArrayList;I)V

    const v3, 0x7f0e00fc

    .line 53
    invoke-virtual {v1, v2, v3}, Lcom/smalife/wheelview/WheelView;->setAdapter(Lcom/smalife/wheelview/WheelAdapter;I)V

    .line 55
    iget-object v1, p0, Lcom/smalife/activity/NoDisturbSetActivity;->endWV:Lcom/smalife/wheelview/WheelView;

    new-instance v2, Lcom/smalife/wheelview/ArrayWheelAdapter;

    iget-object v3, p0, Lcom/smalife/activity/NoDisturbSetActivity;->endData:Ljava/util/ArrayList;

    .line 56
    iget-object v4, p0, Lcom/smalife/activity/NoDisturbSetActivity;->endData:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-direct {v2, v3, v4}, Lcom/smalife/wheelview/ArrayWheelAdapter;-><init>(Ljava/util/ArrayList;I)V

    const v3, 0x7f0e00fd

    .line 55
    invoke-virtual {v1, v2, v3}, Lcom/smalife/wheelview/WheelView;->setAdapter(Lcom/smalife/wheelview/WheelAdapter;I)V

    .line 58
    iget-object v1, p0, Lcom/smalife/activity/NoDisturbSetActivity;->startWV:Lcom/smalife/wheelview/WheelView;

    invoke-virtual {v1, v5}, Lcom/smalife/wheelview/WheelView;->setCurrentItem(I)V

    .line 59
    iput v5, p0, Lcom/smalife/activity/NoDisturbSetActivity;->startTime:I

    .line 61
    iget-object v1, p0, Lcom/smalife/activity/NoDisturbSetActivity;->endWV:Lcom/smalife/wheelview/WheelView;

    invoke-virtual {v1, v5}, Lcom/smalife/wheelview/WheelView;->setCurrentItem(I)V

    .line 62
    iput v5, p0, Lcom/smalife/activity/NoDisturbSetActivity;->endTime:I

    .line 80
    return-void

    .line 47
    :cond_0
    iget-object v2, p0, Lcom/smalife/activity/NoDisturbSetActivity;->startData:Ljava/util/ArrayList;

    if-ge v0, v4, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "0"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ":00"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 47
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ":00"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 50
    :cond_2
    iget-object v2, p0, Lcom/smalife/activity/NoDisturbSetActivity;->endData:Ljava/util/ArrayList;

    if-ge v0, v4, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "0"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ":00"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_3
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 50
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ":00"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_3
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    .line 137
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 185
    :goto_0
    return-void

    .line 139
    :sswitch_0
    invoke-virtual {p0}, Lcom/smalife/activity/NoDisturbSetActivity;->finish()V

    goto :goto_0

    .line 156
    :sswitch_1
    new-instance v0, Lcom/smalife/entity/DisturbEntity;

    invoke-direct {v0}, Lcom/smalife/entity/DisturbEntity;-><init>()V

    .line 157
    .local v0, "entity":Lcom/smalife/entity/DisturbEntity;
    iget-object v3, p0, Lcom/smalife/activity/NoDisturbSetActivity;->startData:Ljava/util/ArrayList;

    iget v4, p0, Lcom/smalife/activity/NoDisturbSetActivity;->startTime:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/smalife/entity/DisturbEntity;->setStartTime(Ljava/lang/String;)V

    .line 158
    iget-object v3, p0, Lcom/smalife/activity/NoDisturbSetActivity;->endData:Ljava/util/ArrayList;

    iget v4, p0, Lcom/smalife/activity/NoDisturbSetActivity;->endTime:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/smalife/entity/DisturbEntity;->setEndTime(Ljava/lang/String;)V

    .line 159
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 160
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/smalife/activity/NoDisturbSetActivity;->startData:Ljava/util/ArrayList;

    iget v4, p0, Lcom/smalife/activity/NoDisturbSetActivity;->startTime:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v5

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 161
    iget-object v3, p0, Lcom/smalife/activity/NoDisturbSetActivity;->endData:Ljava/util/ArrayList;

    iget v4, p0, Lcom/smalife/activity/NoDisturbSetActivity;->endTime:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v5

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 173
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 174
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "list"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 175
    const/4 v3, -0x1

    invoke-virtual {p0, v3, v1}, Lcom/smalife/activity/NoDisturbSetActivity;->setResult(ILandroid/content/Intent;)V

    .line 176
    invoke-virtual {p0}, Lcom/smalife/activity/NoDisturbSetActivity;->finish()V

    goto :goto_0

    .line 137
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0e0006 -> :sswitch_0
        0x7f0e002c -> :sswitch_1
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 36
    invoke-super {p0, p1}, Lcom/smalife/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    const v0, 0x7f030030

    invoke-virtual {p0, v0}, Lcom/smalife/activity/NoDisturbSetActivity;->setContentView(I)V

    .line 41
    invoke-direct {p0}, Lcom/smalife/activity/NoDisturbSetActivity;->findViewById()V

    .line 42
    invoke-direct {p0}, Lcom/smalife/activity/NoDisturbSetActivity;->initWheelData()V

    .line 43
    return-void
.end method

.method public onItemSelected(II)V
    .locals 0
    .param p1, "index"    # I
    .param p2, "id"    # I

    .prologue
    .line 189
    packed-switch p2, :pswitch_data_0

    .line 199
    :goto_0
    return-void

    .line 191
    :pswitch_0
    iput p1, p0, Lcom/smalife/activity/NoDisturbSetActivity;->startTime:I

    goto :goto_0

    .line 194
    :pswitch_1
    iput p1, p0, Lcom/smalife/activity/NoDisturbSetActivity;->endTime:I

    goto :goto_0

    .line 189
    :pswitch_data_0
    .packed-switch 0x7f0e00fc
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 102
    invoke-super {p0}, Lcom/smalife/BaseActivity;->onResume()V

    .line 103
    invoke-virtual {p0}, Lcom/smalife/activity/NoDisturbSetActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 104
    invoke-virtual {p0}, Lcom/smalife/activity/NoDisturbSetActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 105
    const-string v1, "entity"

    .line 104
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/smalife/entity/DisturbEntity;

    iput-object v0, p0, Lcom/smalife/activity/NoDisturbSetActivity;->disturbEntity:Lcom/smalife/entity/DisturbEntity;

    .line 106
    iget-object v0, p0, Lcom/smalife/activity/NoDisturbSetActivity;->disturbEntity:Lcom/smalife/entity/DisturbEntity;

    if-eqz v0, :cond_0

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smalife/activity/NoDisturbSetActivity;->startData:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/smalife/activity/NoDisturbSetActivity;->endData:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bestmafen/utils/L;->e(Ljava/lang/String;)V

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "disturbEntity = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/smalife/activity/NoDisturbSetActivity;->disturbEntity:Lcom/smalife/entity/DisturbEntity;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bestmafen/utils/L;->e(Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Lcom/smalife/activity/NoDisturbSetActivity;->disturbEntity:Lcom/smalife/entity/DisturbEntity;

    invoke-virtual {v0}, Lcom/smalife/entity/DisturbEntity;->getStartTime()Ljava/lang/String;

    move-result-object v0

    .line 111
    const-string v1, ":"

    .line 110
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 111
    aget-object v0, v0, v2

    .line 110
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/smalife/activity/NoDisturbSetActivity;->startTime:I

    .line 112
    iget-object v0, p0, Lcom/smalife/activity/NoDisturbSetActivity;->startWV:Lcom/smalife/wheelview/WheelView;

    iget v1, p0, Lcom/smalife/activity/NoDisturbSetActivity;->startTime:I

    invoke-virtual {v0, v1}, Lcom/smalife/wheelview/WheelView;->setCurrentItem(I)V

    .line 115
    iget-object v0, p0, Lcom/smalife/activity/NoDisturbSetActivity;->disturbEntity:Lcom/smalife/entity/DisturbEntity;

    invoke-virtual {v0}, Lcom/smalife/entity/DisturbEntity;->getEndTime()Ljava/lang/String;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 114
    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/smalife/activity/NoDisturbSetActivity;->endTime:I

    .line 116
    iget-object v0, p0, Lcom/smalife/activity/NoDisturbSetActivity;->endWV:Lcom/smalife/wheelview/WheelView;

    iget v1, p0, Lcom/smalife/activity/NoDisturbSetActivity;->endTime:I

    invoke-virtual {v0, v1}, Lcom/smalife/wheelview/WheelView;->setCurrentItem(I)V

    .line 133
    :cond_0
    return-void
.end method
