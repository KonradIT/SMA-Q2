.class Lcom/smalife/adapter/RankAdapter$HoldView;
.super Ljava/lang/Object;
.source "RankAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smalife/adapter/RankAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HoldView"
.end annotation


# instance fields
.field cur_rank:Landroid/widget/TextView;

.field progressBar:Landroid/widget/ProgressBar;

.field steps:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/smalife/adapter/RankAdapter;

.field u_name:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/smalife/adapter/RankAdapter;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/smalife/adapter/RankAdapter$HoldView;->this$0:Lcom/smalife/adapter/RankAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
