.class Lcom/smalife/activity/RankActivity$RankAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "RankActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smalife/activity/RankActivity$RankAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field private iv_icon:Lcom/android/volley/toolbox/NetworkImageView;

.field final synthetic this$1:Lcom/smalife/activity/RankActivity$RankAdapter;

.field private tv_name:Landroid/widget/TextView;

.field private tv_ranking:Landroid/widget/TextView;

.field private tv_steps:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/smalife/activity/RankActivity$RankAdapter;Landroid/view/View;)V
    .locals 1
    .param p2, "v"    # Landroid/view/View;

    .prologue
    .line 193
    iput-object p1, p0, Lcom/smalife/activity/RankActivity$RankAdapter$ViewHolder;->this$1:Lcom/smalife/activity/RankActivity$RankAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 194
    const v0, 0x7f0e00f8

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/smalife/activity/RankActivity$RankAdapter$ViewHolder;->tv_ranking:Landroid/widget/TextView;

    .line 195
    const v0, 0x7f0e00fa

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/smalife/activity/RankActivity$RankAdapter$ViewHolder;->tv_name:Landroid/widget/TextView;

    .line 196
    const v0, 0x7f0e00fb

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/smalife/activity/RankActivity$RankAdapter$ViewHolder;->tv_steps:Landroid/widget/TextView;

    .line 197
    const v0, 0x7f0e00f9

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/volley/toolbox/NetworkImageView;

    iput-object v0, p0, Lcom/smalife/activity/RankActivity$RankAdapter$ViewHolder;->iv_icon:Lcom/android/volley/toolbox/NetworkImageView;

    .line 198
    invoke-virtual {p2, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 199
    return-void
.end method

.method static synthetic access$0(Lcom/smalife/activity/RankActivity$RankAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/smalife/activity/RankActivity$RankAdapter$ViewHolder;->tv_ranking:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1(Lcom/smalife/activity/RankActivity$RankAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/smalife/activity/RankActivity$RankAdapter$ViewHolder;->tv_name:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2(Lcom/smalife/activity/RankActivity$RankAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/smalife/activity/RankActivity$RankAdapter$ViewHolder;->tv_steps:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$3(Lcom/smalife/activity/RankActivity$RankAdapter$ViewHolder;)Lcom/android/volley/toolbox/NetworkImageView;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/smalife/activity/RankActivity$RankAdapter$ViewHolder;->iv_icon:Lcom/android/volley/toolbox/NetworkImageView;

    return-object v0
.end method
