.class Lcom/smalife/activity/RankActivity$2$1$1;
.super Ljava/lang/Object;
.source "RankActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smalife/activity/RankActivity$2$1;->success(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/smalife/activity/RankActivity$2$1;

.field private final synthetic val$arg0:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/smalife/activity/RankActivity$2$1;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/smalife/activity/RankActivity$2$1$1;->this$2:Lcom/smalife/activity/RankActivity$2$1;

    iput-object p2, p0, Lcom/smalife/activity/RankActivity$2$1$1;->val$arg0:Ljava/util/List;

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/smalife/activity/RankActivity$2$1$1;->this$2:Lcom/smalife/activity/RankActivity$2$1;

    invoke-static {v0}, Lcom/smalife/activity/RankActivity$2$1;->access$1(Lcom/smalife/activity/RankActivity$2$1;)Lcom/smalife/activity/RankActivity$2;

    move-result-object v0

    invoke-static {v0}, Lcom/smalife/activity/RankActivity$2;->access$0(Lcom/smalife/activity/RankActivity$2;)Lcom/smalife/activity/RankActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/smalife/activity/RankActivity;->access$3(Lcom/smalife/activity/RankActivity;)Lcom/smalife/activity/RankActivity$RankAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/smalife/activity/RankActivity$2$1$1;->val$arg0:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/smalife/activity/RankActivity$RankAdapter;->setData(Ljava/util/List;)V

    .line 109
    return-void
.end method
