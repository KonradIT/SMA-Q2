.class Lcom/smalife/activity/HeartDetailActivity$ViewHolder;
.super Ljava/lang/Object;
.source "HeartDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smalife/activity/HeartDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smalife/activity/HeartDetailActivity;

.field private tv1:Landroid/widget/TextView;

.field private tv2:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Lcom/smalife/activity/HeartDetailActivity;)V
    .locals 0

    .prologue
    .line 565
    iput-object p1, p0, Lcom/smalife/activity/HeartDetailActivity$ViewHolder;->this$0:Lcom/smalife/activity/HeartDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/smalife/activity/HeartDetailActivity;Lcom/smalife/activity/HeartDetailActivity$ViewHolder;)V
    .locals 0

    .prologue
    .line 565
    invoke-direct {p0, p1}, Lcom/smalife/activity/HeartDetailActivity$ViewHolder;-><init>(Lcom/smalife/activity/HeartDetailActivity;)V

    return-void
.end method

.method static synthetic access$1(Lcom/smalife/activity/HeartDetailActivity$ViewHolder;Landroid/widget/TextView;)V
    .locals 0

    .prologue
    .line 566
    iput-object p1, p0, Lcom/smalife/activity/HeartDetailActivity$ViewHolder;->tv1:Landroid/widget/TextView;

    return-void
.end method

.method static synthetic access$2(Lcom/smalife/activity/HeartDetailActivity$ViewHolder;Landroid/widget/TextView;)V
    .locals 0

    .prologue
    .line 566
    iput-object p1, p0, Lcom/smalife/activity/HeartDetailActivity$ViewHolder;->tv2:Landroid/widget/TextView;

    return-void
.end method

.method static synthetic access$3(Lcom/smalife/activity/HeartDetailActivity$ViewHolder;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 566
    iget-object v0, p0, Lcom/smalife/activity/HeartDetailActivity$ViewHolder;->tv1:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$4(Lcom/smalife/activity/HeartDetailActivity$ViewHolder;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 566
    iget-object v0, p0, Lcom/smalife/activity/HeartDetailActivity$ViewHolder;->tv2:Landroid/widget/TextView;

    return-object v0
.end method
