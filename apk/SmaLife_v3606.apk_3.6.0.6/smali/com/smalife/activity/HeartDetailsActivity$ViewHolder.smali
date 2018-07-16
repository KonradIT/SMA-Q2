.class Lcom/smalife/activity/HeartDetailsActivity$ViewHolder;
.super Ljava/lang/Object;
.source "HeartDetailsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smalife/activity/HeartDetailsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smalife/activity/HeartDetailsActivity;

.field private tv1:Landroid/widget/TextView;

.field private tv2:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Lcom/smalife/activity/HeartDetailsActivity;)V
    .locals 0

    .prologue
    .line 271
    iput-object p1, p0, Lcom/smalife/activity/HeartDetailsActivity$ViewHolder;->this$0:Lcom/smalife/activity/HeartDetailsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/smalife/activity/HeartDetailsActivity;Lcom/smalife/activity/HeartDetailsActivity$ViewHolder;)V
    .locals 0

    .prologue
    .line 271
    invoke-direct {p0, p1}, Lcom/smalife/activity/HeartDetailsActivity$ViewHolder;-><init>(Lcom/smalife/activity/HeartDetailsActivity;)V

    return-void
.end method

.method static synthetic access$1(Lcom/smalife/activity/HeartDetailsActivity$ViewHolder;Landroid/widget/TextView;)V
    .locals 0

    .prologue
    .line 272
    iput-object p1, p0, Lcom/smalife/activity/HeartDetailsActivity$ViewHolder;->tv1:Landroid/widget/TextView;

    return-void
.end method

.method static synthetic access$2(Lcom/smalife/activity/HeartDetailsActivity$ViewHolder;Landroid/widget/TextView;)V
    .locals 0

    .prologue
    .line 272
    iput-object p1, p0, Lcom/smalife/activity/HeartDetailsActivity$ViewHolder;->tv2:Landroid/widget/TextView;

    return-void
.end method

.method static synthetic access$3(Lcom/smalife/activity/HeartDetailsActivity$ViewHolder;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lcom/smalife/activity/HeartDetailsActivity$ViewHolder;->tv1:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$4(Lcom/smalife/activity/HeartDetailsActivity$ViewHolder;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lcom/smalife/activity/HeartDetailsActivity$ViewHolder;->tv2:Landroid/widget/TextView;

    return-object v0
.end method
