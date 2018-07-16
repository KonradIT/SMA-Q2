.class public Lcom/smalife/activity/NoDisturbActivity;
.super Lcom/smalife/BaseActivity;
.source "NoDisturbActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field public static final REQUEST_CODE_1:I = 0x1

.field public static final REQUEST_CODE_2:I = 0x2


# instance fields
.field private iv_back:Landroid/widget/ImageView;

.field private mApplication:Lcom/smalife/MyApplication;

.field private mCb_switchers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/CheckBox;",
            ">;"
        }
    .end annotation
.end field

.field private mNodisturnbs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTv_tiems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/smalife/BaseActivity;-><init>()V

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/smalife/activity/NoDisturbActivity;->mNodisturnbs:Ljava/util/ArrayList;

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/smalife/activity/NoDisturbActivity;->mTv_tiems:Ljava/util/ArrayList;

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/smalife/activity/NoDisturbActivity;->mCb_switchers:Ljava/util/ArrayList;

    .line 21
    return-void
.end method

.method private initUI()V
    .locals 8

    .prologue
    const v7, 0x7f090244

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 54
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    if-le v0, v6, :cond_0

    .line 58
    const v1, 0x7f0e0006

    invoke-virtual {p0, v1}, Lcom/smalife/activity/NoDisturbActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/smalife/activity/NoDisturbActivity;->iv_back:Landroid/widget/ImageView;

    .line 59
    iget-object v1, p0, Lcom/smalife/activity/NoDisturbActivity;->iv_back:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    const v1, 0x7f0e0101

    invoke-virtual {p0, v1}, Lcom/smalife/activity/NoDisturbActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    const v1, 0x7f0e0105

    invoke-virtual {p0, v1}, Lcom/smalife/activity/NoDisturbActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    iget-object v2, p0, Lcom/smalife/activity/NoDisturbActivity;->mTv_tiems:Ljava/util/ArrayList;

    const v1, 0x7f0e0102

    invoke-virtual {p0, v1}, Lcom/smalife/activity/NoDisturbActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    iget-object v2, p0, Lcom/smalife/activity/NoDisturbActivity;->mTv_tiems:Ljava/util/ArrayList;

    const v1, 0x7f0e0106

    invoke-virtual {p0, v1}, Lcom/smalife/activity/NoDisturbActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    iget-object v1, p0, Lcom/smalife/activity/NoDisturbActivity;->mTv_tiems:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 66
    new-array v3, v6, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/smalife/activity/NoDisturbActivity;->mNodisturnbs:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    aget-object v2, v2, v5

    aput-object v2, v3, v4

    .line 67
    iget-object v2, p0, Lcom/smalife/activity/NoDisturbActivity;->mNodisturnbs:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    aget-object v2, v2, v6

    aput-object v2, v3, v5

    .line 66
    invoke-virtual {p0, v7, v3}, Lcom/smalife/activity/NoDisturbActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 65
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    iget-object v1, p0, Lcom/smalife/activity/NoDisturbActivity;->mTv_tiems:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 69
    new-array v3, v6, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/smalife/activity/NoDisturbActivity;->mNodisturnbs:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    aget-object v2, v2, v5

    aput-object v2, v3, v4

    .line 70
    iget-object v2, p0, Lcom/smalife/activity/NoDisturbActivity;->mNodisturnbs:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    aget-object v2, v2, v6

    aput-object v2, v3, v5

    .line 69
    invoke-virtual {p0, v7, v3}, Lcom/smalife/activity/NoDisturbActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 68
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    iget-object v2, p0, Lcom/smalife/activity/NoDisturbActivity;->mCb_switchers:Ljava/util/ArrayList;

    const v1, 0x7f0e0103

    invoke-virtual {p0, v1}, Lcom/smalife/activity/NoDisturbActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    iget-object v2, p0, Lcom/smalife/activity/NoDisturbActivity;->mCb_switchers:Ljava/util/ArrayList;

    const v1, 0x7f0e0107

    invoke-virtual {p0, v1}, Lcom/smalife/activity/NoDisturbActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    iget-object v1, p0, Lcom/smalife/activity/NoDisturbActivity;->mCb_switchers:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iget-object v2, p0, Lcom/smalife/activity/NoDisturbActivity;->mNodisturnbs:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    aget-object v2, v2, v4

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 74
    iget-object v1, p0, Lcom/smalife/activity/NoDisturbActivity;->mCb_switchers:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iget-object v2, p0, Lcom/smalife/activity/NoDisturbActivity;->mNodisturnbs:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    aget-object v2, v2, v4

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 75
    iget-object v1, p0, Lcom/smalife/activity/NoDisturbActivity;->mCb_switchers:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    invoke-virtual {v1, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 76
    iget-object v1, p0, Lcom/smalife/activity/NoDisturbActivity;->mCb_switchers:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    invoke-virtual {v1, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 88
    return-void

    .line 55
    :cond_0
    iget-object v1, p0, Lcom/smalife/activity/NoDisturbActivity;->mNodisturnbs:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/smalife/activity/NoDisturbActivity;->mApplication:Lcom/smalife/MyApplication;

    invoke-virtual {v2, v0}, Lcom/smalife/MyApplication;->getNodisturb(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 8
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const v7, 0x7f090244

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 125
    const-string v1, ">>>>entity.tostring"

    invoke-static {v1}, Lcom/bestmafen/utils/L;->e(Ljava/lang/String;)V

    .line 126
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 127
    const-string v1, "list"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 128
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/bestmafen/utils/L;->e(Ljava/lang/String;)V

    .line 129
    if-ne p1, v4, :cond_1

    .line 130
    iget-object v1, p0, Lcom/smalife/activity/NoDisturbActivity;->mNodisturnbs:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, v1, v4

    .line 131
    iget-object v1, p0, Lcom/smalife/activity/NoDisturbActivity;->mNodisturnbs:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, v1, v6

    .line 132
    iget-object v1, p0, Lcom/smalife/activity/NoDisturbActivity;->mTv_tiems:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 134
    new-array v3, v6, [Ljava/lang/Object;

    .line 135
    iget-object v2, p0, Lcom/smalife/activity/NoDisturbActivity;->mNodisturnbs:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    aget-object v2, v2, v4

    aput-object v2, v3, v5

    .line 136
    iget-object v2, p0, Lcom/smalife/activity/NoDisturbActivity;->mNodisturnbs:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    aget-object v2, v2, v6

    aput-object v2, v3, v4

    .line 134
    invoke-virtual {p0, v7, v3}, Lcom/smalife/activity/NoDisturbActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 133
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    .end local v0    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    return-void

    .line 138
    .restart local v0    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    if-ne p1, v6, :cond_0

    .line 139
    iget-object v1, p0, Lcom/smalife/activity/NoDisturbActivity;->mNodisturnbs:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, v1, v4

    .line 140
    iget-object v1, p0, Lcom/smalife/activity/NoDisturbActivity;->mNodisturnbs:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, v1, v6

    .line 141
    iget-object v1, p0, Lcom/smalife/activity/NoDisturbActivity;->mTv_tiems:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 143
    new-array v3, v6, [Ljava/lang/Object;

    .line 144
    iget-object v2, p0, Lcom/smalife/activity/NoDisturbActivity;->mNodisturnbs:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    aget-object v2, v2, v4

    aput-object v2, v3, v5

    .line 145
    iget-object v2, p0, Lcom/smalife/activity/NoDisturbActivity;->mNodisturnbs:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    aget-object v2, v2, v6

    aput-object v2, v3, v4

    .line 143
    invoke-virtual {p0, v7, v3}, Lcom/smalife/activity/NoDisturbActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 142
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    const/4 v2, 0x0

    .line 207
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v0

    const v1, 0x7f0e0103

    if-ne v0, v1, :cond_2

    .line 208
    iget-object v0, p0, Lcom/smalife/activity/NoDisturbActivity;->mNodisturnbs:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    if-eqz p2, :cond_1

    const-string v1, "1"

    :goto_0
    aput-object v1, v0, v2

    .line 212
    :cond_0
    :goto_1
    return-void

    .line 208
    :cond_1
    const-string v1, "0"

    goto :goto_0

    .line 209
    :cond_2
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v0

    const v1, 0x7f0e0107

    if-ne v0, v1, :cond_0

    .line 210
    iget-object v0, p0, Lcom/smalife/activity/NoDisturbActivity;->mNodisturnbs:Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    if-eqz p2, :cond_3

    const-string v1, "1"

    :goto_2
    aput-object v1, v0, v2

    goto :goto_1

    :cond_3
    const-string v1, "0"

    goto :goto_2
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 173
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 203
    :goto_0
    return-void

    .line 175
    :sswitch_0
    invoke-virtual {p0}, Lcom/smalife/activity/NoDisturbActivity;->finish()V

    goto :goto_0

    .line 186
    :sswitch_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/smalife/activity/NoDisturbSetActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 187
    const/4 v1, 0x1

    .line 185
    invoke-virtual {p0, v0, v1}, Lcom/smalife/activity/NoDisturbActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 191
    :sswitch_2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/smalife/activity/NoDisturbSetActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 192
    const/4 v1, 0x2

    .line 190
    invoke-virtual {p0, v0, v1}, Lcom/smalife/activity/NoDisturbActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 173
    :sswitch_data_0
    .sparse-switch
        0x7f0e0006 -> :sswitch_0
        0x7f0e0101 -> :sswitch_1
        0x7f0e0105 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 45
    invoke-super {p0, p1}, Lcom/smalife/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    const v0, 0x7f030032

    invoke-virtual {p0, v0}, Lcom/smalife/activity/NoDisturbActivity;->setContentView(I)V

    .line 47
    invoke-virtual {p0}, Lcom/smalife/activity/NoDisturbActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/smalife/MyApplication;

    iput-object v0, p0, Lcom/smalife/activity/NoDisturbActivity;->mApplication:Lcom/smalife/MyApplication;

    .line 50
    invoke-direct {p0}, Lcom/smalife/activity/NoDisturbActivity;->initUI()V

    .line 51
    return-void
.end method

.method protected onDestroy()V
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 92
    invoke-super {p0}, Lcom/smalife/BaseActivity;->onDestroy()V

    .line 93
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    if-le v1, v9, :cond_4

    .line 102
    new-instance v2, Landroid/content/Intent;

    const-string v3, "AskAction"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 103
    .local v2, "intent":Landroid/content/Intent;
    const-string v3, "action_key"

    .line 104
    const/16 v4, 0x48

    .line 103
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 106
    const/16 v3, 0xd

    new-array v0, v3, [B

    .line 107
    .local v0, "bytes":[B
    iget-object v3, p0, Lcom/smalife/activity/NoDisturbActivity;->mNodisturnbs:Ljava/util/ArrayList;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    aget-object v3, v3, v7

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 108
    iget-object v3, p0, Lcom/smalife/activity/NoDisturbActivity;->mNodisturnbs:Ljava/util/ArrayList;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    aget-object v3, v3, v7

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 109
    :cond_0
    aput-byte v8, v0, v7

    .line 111
    :cond_1
    iget-object v3, p0, Lcom/smalife/activity/NoDisturbActivity;->mNodisturnbs:Ljava/util/ArrayList;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    aget-object v3, v3, v7

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 112
    iget-object v3, p0, Lcom/smalife/activity/NoDisturbActivity;->mNodisturnbs:Ljava/util/ArrayList;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    aget-object v3, v3, v8

    invoke-static {v3}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v3

    aput-byte v3, v0, v8

    .line 113
    const/4 v4, 0x3

    iget-object v3, p0, Lcom/smalife/activity/NoDisturbActivity;->mNodisturnbs:Ljava/util/ArrayList;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    aget-object v3, v3, v9

    invoke-static {v3}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v3

    aput-byte v3, v0, v4

    .line 115
    :cond_2
    iget-object v3, p0, Lcom/smalife/activity/NoDisturbActivity;->mNodisturnbs:Ljava/util/ArrayList;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    aget-object v3, v3, v7

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 116
    const/4 v4, 0x5

    iget-object v3, p0, Lcom/smalife/activity/NoDisturbActivity;->mNodisturnbs:Ljava/util/ArrayList;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    aget-object v3, v3, v8

    invoke-static {v3}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v3

    aput-byte v3, v0, v4

    .line 117
    const/4 v4, 0x7

    iget-object v3, p0, Lcom/smalife/activity/NoDisturbActivity;->mNodisturnbs:Ljava/util/ArrayList;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    aget-object v3, v3, v9

    invoke-static {v3}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v3

    aput-byte v3, v0, v4

    .line 119
    :cond_3
    const-string v3, "bytes"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 120
    invoke-virtual {p0, v2}, Lcom/smalife/activity/NoDisturbActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 121
    return-void

    .line 94
    .end local v0    # "bytes":[B
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_4
    iget-object v3, p0, Lcom/smalife/activity/NoDisturbActivity;->mNodisturnbs:Ljava/util/ArrayList;

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/bestmafen/utils/L;->i(Ljava/lang/String;)V

    .line 95
    iget-object v4, p0, Lcom/smalife/activity/NoDisturbActivity;->mApplication:Lcom/smalife/MyApplication;

    .line 97
    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/smalife/activity/NoDisturbActivity;->mNodisturnbs:Ljava/util/ArrayList;

    add-int/lit8 v6, v1, -0x1

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    aget-object v3, v3, v7

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ","

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 98
    iget-object v3, p0, Lcom/smalife/activity/NoDisturbActivity;->mNodisturnbs:Ljava/util/ArrayList;

    add-int/lit8 v6, v1, -0x1

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    aget-object v3, v3, v8

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ","

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 99
    iget-object v3, p0, Lcom/smalife/activity/NoDisturbActivity;->mNodisturnbs:Ljava/util/ArrayList;

    add-int/lit8 v6, v1, -0x1

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    aget-object v3, v3, v9

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 97
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 95
    invoke-virtual {v4, v1, v3}, Lcom/smalife/MyApplication;->editNodisturb(ILjava/lang/String;)V

    .line 93
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0
.end method
