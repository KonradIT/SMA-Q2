.class public Lcom/smalife/activity/SportHeartActivity;
.super Lcom/smalife/BaseActivity;
.source "SportHeartActivity.java"


# instance fields
.field private aerobic:Landroid/widget/TextView;

.field private anaerobic:Landroid/widget/TextView;

.field private back_btn:Landroid/widget/ImageButton;

.field private consumption:Landroid/widget/TextView;

.field private dao:Lcom/smalife/db/SmaDao;

.field private mLineChart:Lcom/smalife/utils/HeartChartView;

.field private marray:[I

.field private max_rate:Landroid/widget/TextView;

.field private mean_rate:Landroid/widget/TextView;

.field private mlist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/smalife/utils/HeartPoint;",
            ">;"
        }
    .end annotation
.end field

.field private quit_rate:Landroid/widget/TextView;

.field private share_btn:Landroid/widget/ImageButton;

.field private strenuous:Landroid/widget/TextView;

.field private userAccount:Ljava/lang/String;

.field private warm_up:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/smalife/BaseActivity;-><init>()V

    return-void
.end method

.method private initData()V
    .locals 15

    .prologue
    .line 59
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    iput-object v12, p0, Lcom/smalife/activity/SportHeartActivity;->mlist:Ljava/util/ArrayList;

    .line 60
    new-instance v0, Lcom/smalife/utils/HeartPoint;

    const/4 v12, 0x0

    const/16 v13, 0x41

    invoke-direct {v0, v12, v13}, Lcom/smalife/utils/HeartPoint;-><init>(II)V

    .line 61
    .local v0, "point0":Lcom/smalife/utils/HeartPoint;
    new-instance v1, Lcom/smalife/utils/HeartPoint;

    const/4 v12, 0x1

    const/16 v13, 0x32

    invoke-direct {v1, v12, v13}, Lcom/smalife/utils/HeartPoint;-><init>(II)V

    .line 62
    .local v1, "point1":Lcom/smalife/utils/HeartPoint;
    new-instance v4, Lcom/smalife/utils/HeartPoint;

    const/4 v12, 0x2

    const/16 v13, 0x46

    invoke-direct {v4, v12, v13}, Lcom/smalife/utils/HeartPoint;-><init>(II)V

    .line 63
    .local v4, "point2":Lcom/smalife/utils/HeartPoint;
    new-instance v5, Lcom/smalife/utils/HeartPoint;

    const/4 v12, 0x3

    const/16 v13, 0x37

    invoke-direct {v5, v12, v13}, Lcom/smalife/utils/HeartPoint;-><init>(II)V

    .line 64
    .local v5, "point3":Lcom/smalife/utils/HeartPoint;
    new-instance v6, Lcom/smalife/utils/HeartPoint;

    const/4 v12, 0x4

    const/16 v13, 0x41

    invoke-direct {v6, v12, v13}, Lcom/smalife/utils/HeartPoint;-><init>(II)V

    .line 65
    .local v6, "point4":Lcom/smalife/utils/HeartPoint;
    new-instance v7, Lcom/smalife/utils/HeartPoint;

    const/4 v12, 0x5

    const/16 v13, 0x32

    invoke-direct {v7, v12, v13}, Lcom/smalife/utils/HeartPoint;-><init>(II)V

    .line 66
    .local v7, "point5":Lcom/smalife/utils/HeartPoint;
    new-instance v8, Lcom/smalife/utils/HeartPoint;

    const/4 v12, 0x6

    const/16 v13, 0x46

    invoke-direct {v8, v12, v13}, Lcom/smalife/utils/HeartPoint;-><init>(II)V

    .line 67
    .local v8, "point6":Lcom/smalife/utils/HeartPoint;
    new-instance v9, Lcom/smalife/utils/HeartPoint;

    const/4 v12, 0x7

    const/16 v13, 0x37

    invoke-direct {v9, v12, v13}, Lcom/smalife/utils/HeartPoint;-><init>(II)V

    .line 68
    .local v9, "point7":Lcom/smalife/utils/HeartPoint;
    new-instance v10, Lcom/smalife/utils/HeartPoint;

    const/16 v12, 0x8

    const/16 v13, 0x41

    invoke-direct {v10, v12, v13}, Lcom/smalife/utils/HeartPoint;-><init>(II)V

    .line 69
    .local v10, "point8":Lcom/smalife/utils/HeartPoint;
    new-instance v11, Lcom/smalife/utils/HeartPoint;

    const/16 v12, 0x9

    const/16 v13, 0x3c

    invoke-direct {v11, v12, v13}, Lcom/smalife/utils/HeartPoint;-><init>(II)V

    .line 70
    .local v11, "point9":Lcom/smalife/utils/HeartPoint;
    new-instance v2, Lcom/smalife/utils/HeartPoint;

    const/16 v12, 0xa

    const/16 v13, 0x41

    invoke-direct {v2, v12, v13}, Lcom/smalife/utils/HeartPoint;-><init>(II)V

    .line 71
    .local v2, "point10":Lcom/smalife/utils/HeartPoint;
    new-instance v3, Lcom/smalife/utils/HeartPoint;

    const/16 v12, 0xb

    const/16 v13, 0x37

    invoke-direct {v3, v12, v13}, Lcom/smalife/utils/HeartPoint;-><init>(II)V

    .line 72
    .local v3, "point11":Lcom/smalife/utils/HeartPoint;
    iget-object v12, p0, Lcom/smalife/activity/SportHeartActivity;->mlist:Ljava/util/ArrayList;

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    iget-object v12, p0, Lcom/smalife/activity/SportHeartActivity;->mlist:Ljava/util/ArrayList;

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    iget-object v12, p0, Lcom/smalife/activity/SportHeartActivity;->mlist:Ljava/util/ArrayList;

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    iget-object v12, p0, Lcom/smalife/activity/SportHeartActivity;->mlist:Ljava/util/ArrayList;

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    iget-object v12, p0, Lcom/smalife/activity/SportHeartActivity;->mlist:Ljava/util/ArrayList;

    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    iget-object v12, p0, Lcom/smalife/activity/SportHeartActivity;->mlist:Ljava/util/ArrayList;

    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    iget-object v12, p0, Lcom/smalife/activity/SportHeartActivity;->mlist:Ljava/util/ArrayList;

    invoke-virtual {v12, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    iget-object v12, p0, Lcom/smalife/activity/SportHeartActivity;->mlist:Ljava/util/ArrayList;

    invoke-virtual {v12, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    iget-object v12, p0, Lcom/smalife/activity/SportHeartActivity;->mlist:Ljava/util/ArrayList;

    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    iget-object v12, p0, Lcom/smalife/activity/SportHeartActivity;->mlist:Ljava/util/ArrayList;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    iget-object v12, p0, Lcom/smalife/activity/SportHeartActivity;->mlist:Ljava/util/ArrayList;

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    iget-object v12, p0, Lcom/smalife/activity/SportHeartActivity;->mlist:Ljava/util/ArrayList;

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    const/4 v12, 0x6

    new-array v12, v12, [I

    fill-array-data v12, :array_0

    iput-object v12, p0, Lcom/smalife/activity/SportHeartActivity;->marray:[I

    .line 87
    iget-object v12, p0, Lcom/smalife/activity/SportHeartActivity;->mLineChart:Lcom/smalife/utils/HeartChartView;

    iget-object v13, p0, Lcom/smalife/activity/SportHeartActivity;->marray:[I

    iget-object v14, p0, Lcom/smalife/activity/SportHeartActivity;->mlist:Ljava/util/ArrayList;

    invoke-virtual {v12, v13, v14}, Lcom/smalife/utils/HeartChartView;->drawLine([ILjava/util/ArrayList;)V

    .line 89
    iget-object v12, p0, Lcom/smalife/activity/SportHeartActivity;->strenuous:Landroid/widget/TextView;

    const-string v13, "24"

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    iget-object v12, p0, Lcom/smalife/activity/SportHeartActivity;->anaerobic:Landroid/widget/TextView;

    const-string v13, "08"

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    iget-object v12, p0, Lcom/smalife/activity/SportHeartActivity;->aerobic:Landroid/widget/TextView;

    const-string v13, "15"

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    iget-object v12, p0, Lcom/smalife/activity/SportHeartActivity;->consumption:Landroid/widget/TextView;

    const-string v13, "33"

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    iget-object v12, p0, Lcom/smalife/activity/SportHeartActivity;->warm_up:Landroid/widget/TextView;

    const-string v13, "07"

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    return-void

    .line 85
    :array_0
    .array-data 4
        0x32
        0x37
        0x3c
        0x41
        0x46
        0x4b
    .end array-data
.end method

.method private initUI()V
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/smalife/activity/SportHeartActivity;->application:Lcom/smalife/MyApplication;

    invoke-virtual {v0}, Lcom/smalife/MyApplication;->getAccount()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/smalife/activity/SportHeartActivity;->userAccount:Ljava/lang/String;

    .line 36
    new-instance v0, Lcom/smalife/db/SmaDao;

    invoke-direct {v0, p0}, Lcom/smalife/db/SmaDao;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/smalife/activity/SportHeartActivity;->dao:Lcom/smalife/db/SmaDao;

    .line 37
    const v0, 0x7f0e01ff

    invoke-virtual {p0, v0}, Lcom/smalife/activity/SportHeartActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/smalife/utils/HeartChartView;

    iput-object v0, p0, Lcom/smalife/activity/SportHeartActivity;->mLineChart:Lcom/smalife/utils/HeartChartView;

    .line 40
    const v0, 0x7f0e0200

    invoke-virtual {p0, v0}, Lcom/smalife/activity/SportHeartActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/smalife/activity/SportHeartActivity;->max_rate:Landroid/widget/TextView;

    .line 41
    const v0, 0x7f0e0201

    invoke-virtual {p0, v0}, Lcom/smalife/activity/SportHeartActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/smalife/activity/SportHeartActivity;->mean_rate:Landroid/widget/TextView;

    .line 42
    const v0, 0x7f0e0202

    invoke-virtual {p0, v0}, Lcom/smalife/activity/SportHeartActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/smalife/activity/SportHeartActivity;->quit_rate:Landroid/widget/TextView;

    .line 45
    const v0, 0x7f0e0203

    invoke-virtual {p0, v0}, Lcom/smalife/activity/SportHeartActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/smalife/activity/SportHeartActivity;->strenuous:Landroid/widget/TextView;

    .line 46
    const v0, 0x7f0e0204

    invoke-virtual {p0, v0}, Lcom/smalife/activity/SportHeartActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/smalife/activity/SportHeartActivity;->anaerobic:Landroid/widget/TextView;

    .line 47
    const v0, 0x7f0e0205

    invoke-virtual {p0, v0}, Lcom/smalife/activity/SportHeartActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/smalife/activity/SportHeartActivity;->aerobic:Landroid/widget/TextView;

    .line 48
    const v0, 0x7f0e0206

    invoke-virtual {p0, v0}, Lcom/smalife/activity/SportHeartActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/smalife/activity/SportHeartActivity;->consumption:Landroid/widget/TextView;

    .line 49
    const v0, 0x7f0e0207

    invoke-virtual {p0, v0}, Lcom/smalife/activity/SportHeartActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/smalife/activity/SportHeartActivity;->warm_up:Landroid/widget/TextView;

    .line 51
    const v0, 0x7f0e000e

    invoke-virtual {p0, v0}, Lcom/smalife/activity/SportHeartActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/smalife/activity/SportHeartActivity;->share_btn:Landroid/widget/ImageButton;

    .line 52
    const v0, 0x7f0e0006

    invoke-virtual {p0, v0}, Lcom/smalife/activity/SportHeartActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/smalife/activity/SportHeartActivity;->back_btn:Landroid/widget/ImageButton;

    .line 54
    iget-object v0, p0, Lcom/smalife/activity/SportHeartActivity;->share_btn:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    iget-object v0, p0, Lcom/smalife/activity/SportHeartActivity;->back_btn:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 105
    invoke-super {p0, p1}, Lcom/smalife/BaseActivity;->onClick(Landroid/view/View;)V

    .line 106
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 114
    :goto_0
    :sswitch_0
    return-void

    .line 111
    :sswitch_1
    invoke-virtual {p0}, Lcom/smalife/activity/SportHeartActivity;->finish()V

    goto :goto_0

    .line 106
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0e0006 -> :sswitch_1
        0x7f0e000e -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 28
    invoke-super {p0, p1}, Lcom/smalife/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    const v0, 0x7f030060

    invoke-virtual {p0, v0}, Lcom/smalife/activity/SportHeartActivity;->setContentView(I)V

    .line 30
    invoke-direct {p0}, Lcom/smalife/activity/SportHeartActivity;->initUI()V

    .line 31
    invoke-direct {p0}, Lcom/smalife/activity/SportHeartActivity;->initData()V

    .line 32
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 99
    invoke-super {p0}, Lcom/smalife/BaseActivity;->onResume()V

    .line 101
    return-void
.end method
