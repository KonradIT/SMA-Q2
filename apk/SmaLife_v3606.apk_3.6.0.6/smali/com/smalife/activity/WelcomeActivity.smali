.class public Lcom/smalife/activity/WelcomeActivity;
.super Lcom/smalife/BaseActivity;
.source "WelcomeActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smalife/activity/WelcomeActivity$MyAdapter;
    }
.end annotation


# instance fields
.field private adapter:Lcom/smalife/activity/WelcomeActivity$MyAdapter;

.field private listener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field private pager:Landroid/support/v4/view/ViewPager;

.field private point_one:Landroid/widget/ImageView;

.field private point_three:Landroid/widget/ImageView;

.field private point_two:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/smalife/BaseActivity;-><init>()V

    .line 58
    new-instance v0, Lcom/smalife/activity/WelcomeActivity$1;

    invoke-direct {v0, p0}, Lcom/smalife/activity/WelcomeActivity$1;-><init>(Lcom/smalife/activity/WelcomeActivity;)V

    iput-object v0, p0, Lcom/smalife/activity/WelcomeActivity;->listener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 18
    return-void
.end method

.method static synthetic access$0(Lcom/smalife/activity/WelcomeActivity;I)V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/smalife/activity/WelcomeActivity;->initPoint(I)V

    return-void
.end method

.method private initPoint(I)V
    .locals 3
    .param p1, "index"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 77
    iget-object v0, p0, Lcom/smalife/activity/WelcomeActivity;->point_one:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 78
    iget-object v0, p0, Lcom/smalife/activity/WelcomeActivity;->point_two:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 79
    iget-object v0, p0, Lcom/smalife/activity/WelcomeActivity;->point_three:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 80
    packed-switch p1, :pswitch_data_0

    .line 91
    :goto_0
    return-void

    .line 82
    :pswitch_0
    iget-object v0, p0, Lcom/smalife/activity/WelcomeActivity;->point_one:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    goto :goto_0

    .line 85
    :pswitch_1
    iget-object v0, p0, Lcom/smalife/activity/WelcomeActivity;->point_two:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    goto :goto_0

    .line 88
    :pswitch_2
    iget-object v0, p0, Lcom/smalife/activity/WelcomeActivity;->point_three:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    goto :goto_0

    .line 80
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private initUI()V
    .locals 9

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x1

    .line 30
    const v4, 0x7f0e00b2

    invoke-virtual {p0, v4}, Lcom/smalife/activity/WelcomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/support/v4/view/ViewPager;

    iput-object v4, p0, Lcom/smalife/activity/WelcomeActivity;->pager:Landroid/support/v4/view/ViewPager;

    .line 31
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 32
    .local v3, "vlist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_0
    const/4 v4, 0x3

    if-lt v2, v4, :cond_0

    .line 49
    new-instance v4, Lcom/smalife/activity/WelcomeActivity$MyAdapter;

    invoke-direct {v4, p0, v3}, Lcom/smalife/activity/WelcomeActivity$MyAdapter;-><init>(Lcom/smalife/activity/WelcomeActivity;Ljava/util/ArrayList;)V

    iput-object v4, p0, Lcom/smalife/activity/WelcomeActivity;->adapter:Lcom/smalife/activity/WelcomeActivity$MyAdapter;

    .line 50
    iget-object v4, p0, Lcom/smalife/activity/WelcomeActivity;->pager:Landroid/support/v4/view/ViewPager;

    iget-object v5, p0, Lcom/smalife/activity/WelcomeActivity;->adapter:Lcom/smalife/activity/WelcomeActivity$MyAdapter;

    invoke-virtual {v4, v5}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 51
    iget-object v4, p0, Lcom/smalife/activity/WelcomeActivity;->pager:Landroid/support/v4/view/ViewPager;

    iget-object v5, p0, Lcom/smalife/activity/WelcomeActivity;->listener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-virtual {v4, v5}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 52
    const v4, 0x7f0e00b3

    invoke-virtual {p0, v4}, Lcom/smalife/activity/WelcomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/smalife/activity/WelcomeActivity;->point_one:Landroid/widget/ImageView;

    .line 53
    iget-object v4, p0, Lcom/smalife/activity/WelcomeActivity;->point_one:Landroid/widget/ImageView;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 54
    const v4, 0x7f0e00b4

    invoke-virtual {p0, v4}, Lcom/smalife/activity/WelcomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/smalife/activity/WelcomeActivity;->point_two:Landroid/widget/ImageView;

    .line 55
    const v4, 0x7f0e00b5

    invoke-virtual {p0, v4}, Lcom/smalife/activity/WelcomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/smalife/activity/WelcomeActivity;->point_three:Landroid/widget/ImageView;

    .line 56
    return-void

    .line 33
    :cond_0
    invoke-virtual {p0}, Lcom/smalife/activity/WelcomeActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    .line 34
    const v5, 0x7f030079

    const/4 v6, 0x0

    .line 33
    invoke-static {v4, v5, v6}, Landroid/widget/LinearLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 35
    .local v1, "item_v":Landroid/view/View;
    const v4, 0x7f0e0269

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 36
    .local v0, "go_btn":Landroid/widget/Button;
    if-nez v2, :cond_2

    .line 37
    const v4, 0x7f0200e7

    invoke-virtual {v1, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 38
    invoke-virtual {v0, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 47
    :cond_1
    :goto_1
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 39
    :cond_2
    if-ne v2, v7, :cond_3

    .line 40
    const v4, 0x7f0200e9

    invoke-virtual {v1, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 41
    invoke-virtual {v0, v8}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1

    .line 42
    :cond_3
    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    .line 43
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 44
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    const v4, 0x7f0200e8

    invoke-virtual {v1, v4}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 131
    invoke-super {p0, p1}, Lcom/smalife/BaseActivity;->onClick(Landroid/view/View;)V

    .line 132
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 138
    :goto_0
    return-void

    .line 134
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/smalife/activity/WelcomeActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/smalife/activity/LoginActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/smalife/activity/WelcomeActivity;->startActivity(Landroid/content/Intent;)V

    .line 135
    invoke-virtual {p0}, Lcom/smalife/activity/WelcomeActivity;->finish()V

    goto :goto_0

    .line 132
    nop

    :pswitch_data_0
    .packed-switch 0x7f0e0269
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 24
    invoke-super {p0, p1}, Lcom/smalife/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 25
    const v0, 0x7f03007a

    invoke-virtual {p0, v0}, Lcom/smalife/activity/WelcomeActivity;->setContentView(I)V

    .line 26
    invoke-direct {p0}, Lcom/smalife/activity/WelcomeActivity;->initUI()V

    .line 27
    return-void
.end method
