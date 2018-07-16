.class public Lcom/smalife/activity/SportTrackListActivity;
.super Landroid/app/Activity;
.source "SportTrackListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smalife/activity/SportTrackListActivity$MyAdapter;,
        Lcom/smalife/activity/SportTrackListActivity$ViewHodler;
    }
.end annotation


# instance fields
.field private adapter:Lcom/smalife/activity/SportTrackListActivity$MyAdapter;

.field private application:Lcom/smalife/MyApplication;

.field private back:Landroid/widget/ImageButton;

.field private dao:Lcom/smalife/db/SmaDao;

.field private lists:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/smalife/entity/TrackListBean;",
            ">;"
        }
    .end annotation
.end field

.field private listview:Landroid/widget/ListView;

.field timeComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/smalife/db/entity/TrackEntity;",
            ">;"
        }
    .end annotation
.end field

.field private userAccount:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 110
    new-instance v0, Lcom/smalife/activity/SportTrackListActivity$1;

    invoke-direct {v0, p0}, Lcom/smalife/activity/SportTrackListActivity$1;-><init>(Lcom/smalife/activity/SportTrackListActivity;)V

    iput-object v0, p0, Lcom/smalife/activity/SportTrackListActivity;->timeComparator:Ljava/util/Comparator;

    .line 35
    return-void
.end method

.method static synthetic access$0(Lcom/smalife/activity/SportTrackListActivity;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/smalife/activity/SportTrackListActivity;->lists:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1(Lcom/smalife/activity/SportTrackListActivity;)Lcom/smalife/activity/SportTrackListActivity$MyAdapter;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/smalife/activity/SportTrackListActivity;->adapter:Lcom/smalife/activity/SportTrackListActivity$MyAdapter;

    return-object v0
.end method

.method private initData()V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/smalife/activity/SportTrackListActivity;->testData()V

    .line 93
    return-void
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 55
    const v0, 0x7f0e0215

    invoke-virtual {p0, v0}, Lcom/smalife/activity/SportTrackListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/smalife/activity/SportTrackListActivity;->listview:Landroid/widget/ListView;

    .line 57
    iget-object v0, p0, Lcom/smalife/activity/SportTrackListActivity;->listview:Landroid/widget/ListView;

    new-instance v1, Lcom/smalife/activity/SportTrackListActivity$2;

    invoke-direct {v1, p0}, Lcom/smalife/activity/SportTrackListActivity$2;-><init>(Lcom/smalife/activity/SportTrackListActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 66
    iget-object v0, p0, Lcom/smalife/activity/SportTrackListActivity;->listview:Landroid/widget/ListView;

    new-instance v1, Lcom/smalife/activity/SportTrackListActivity$3;

    invoke-direct {v1, p0}, Lcom/smalife/activity/SportTrackListActivity$3;-><init>(Lcom/smalife/activity/SportTrackListActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 75
    const v0, 0x7f0e0006

    invoke-virtual {p0, v0}, Lcom/smalife/activity/SportTrackListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/smalife/activity/SportTrackListActivity;->back:Landroid/widget/ImageButton;

    .line 76
    iget-object v0, p0, Lcom/smalife/activity/SportTrackListActivity;->back:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    return-void
.end method

.method private testData()V
    .locals 4

    .prologue
    .line 97
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/smalife/activity/SportTrackListActivity;->lists:Ljava/util/ArrayList;

    .line 98
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v2, 0x8

    if-lt v1, v2, :cond_0

    .line 107
    iget-object v2, p0, Lcom/smalife/activity/SportTrackListActivity;->listview:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/smalife/activity/SportTrackListActivity;->adapter:Lcom/smalife/activity/SportTrackListActivity$MyAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 108
    return-void

    .line 99
    :cond_0
    new-instance v0, Lcom/smalife/entity/TrackListBean;

    invoke-direct {v0}, Lcom/smalife/entity/TrackListBean;-><init>()V

    .line 100
    .local v0, "bean":Lcom/smalife/entity/TrackListBean;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "2015-11-0"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v3, v1, 0x2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/smalife/entity/TrackListBean;->setDate(Ljava/lang/String;)V

    .line 101
    new-instance v2, Ljava/lang/StringBuilder;

    mul-int/lit16 v3, v1, 0x3e8

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "km"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/smalife/entity/TrackListBean;->setDistance(Ljava/lang/String;)V

    .line 102
    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v3, v1, 0x1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "km/h"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/smalife/entity/TrackListBean;->setSpeed(Ljava/lang/String;)V

    .line 103
    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v3, v1, 0x6

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ":00"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/smalife/entity/TrackListBean;->setStart_time(Ljava/lang/String;)V

    .line 104
    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v3, v1, 0xb

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ":00"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/smalife/entity/TrackListBean;->setEnd_time(Ljava/lang/String;)V

    .line 105
    iget-object v2, p0, Lcom/smalife/activity/SportTrackListActivity;->lists:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 215
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 223
    :goto_0
    return-void

    .line 217
    :pswitch_0
    invoke-virtual {p0}, Lcom/smalife/activity/SportTrackListActivity;->finish()V

    goto :goto_0

    .line 215
    :pswitch_data_0
    .packed-switch 0x7f0e0006
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 46
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    const v0, 0x7f030063

    invoke-virtual {p0, v0}, Lcom/smalife/activity/SportTrackListActivity;->setContentView(I)V

    .line 48
    new-instance v0, Lcom/smalife/db/SmaDao;

    invoke-direct {v0, p0}, Lcom/smalife/db/SmaDao;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/smalife/activity/SportTrackListActivity;->dao:Lcom/smalife/db/SmaDao;

    .line 49
    invoke-virtual {p0}, Lcom/smalife/activity/SportTrackListActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/smalife/MyApplication;

    iput-object v0, p0, Lcom/smalife/activity/SportTrackListActivity;->application:Lcom/smalife/MyApplication;

    .line 50
    new-instance v0, Lcom/smalife/activity/SportTrackListActivity$MyAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/smalife/activity/SportTrackListActivity$MyAdapter;-><init>(Lcom/smalife/activity/SportTrackListActivity;Lcom/smalife/activity/SportTrackListActivity$MyAdapter;)V

    iput-object v0, p0, Lcom/smalife/activity/SportTrackListActivity;->adapter:Lcom/smalife/activity/SportTrackListActivity$MyAdapter;

    .line 51
    invoke-direct {p0}, Lcom/smalife/activity/SportTrackListActivity;->initView()V

    .line 52
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 81
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 82
    iget-object v0, p0, Lcom/smalife/activity/SportTrackListActivity;->application:Lcom/smalife/MyApplication;

    invoke-virtual {v0}, Lcom/smalife/MyApplication;->getAccount()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/smalife/activity/SportTrackListActivity;->userAccount:Ljava/lang/String;

    .line 83
    invoke-direct {p0}, Lcom/smalife/activity/SportTrackListActivity;->initData()V

    .line 84
    return-void
.end method

.method protected showDeleteDialog(I)V
    .locals 5
    .param p1, "position"    # I

    .prologue
    const/16 v4, 0x400

    .line 128
    new-instance v1, Landroid/app/Dialog;

    const v3, 0x7f0a0013

    invoke-direct {v1, p0, v3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 129
    .local v1, "dialog":Landroid/app/Dialog;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 130
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v4, v4}, Landroid/view/Window;->setFlags(II)V

    .line 132
    const v3, 0x7f03001b

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->setContentView(I)V

    .line 133
    const v3, 0x7f0e007f

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 134
    .local v0, "cancel":Landroid/widget/TextView;
    const v3, 0x7f0e0080

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 135
    .local v2, "submit":Landroid/widget/TextView;
    new-instance v3, Lcom/smalife/activity/SportTrackListActivity$4;

    invoke-direct {v3, p0, v1}, Lcom/smalife/activity/SportTrackListActivity$4;-><init>(Lcom/smalife/activity/SportTrackListActivity;Landroid/app/Dialog;)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    new-instance v3, Lcom/smalife/activity/SportTrackListActivity$5;

    invoke-direct {v3, p0, v1}, Lcom/smalife/activity/SportTrackListActivity$5;-><init>(Lcom/smalife/activity/SportTrackListActivity;Landroid/app/Dialog;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 153
    return-void
.end method
