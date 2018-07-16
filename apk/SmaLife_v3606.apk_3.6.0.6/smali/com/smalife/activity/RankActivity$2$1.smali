.class Lcom/smalife/activity/RankActivity$2$1;
.super Ljava/lang/Object;
.source "RankActivity.java"

# interfaces
.implements Lcom/accloud/cloudservice/PayloadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smalife/activity/RankActivity$2;->success()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/accloud/cloudservice/PayloadCallback",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/accloud/service/ACRankingValue;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/smalife/activity/RankActivity$2;


# direct methods
.method constructor <init>(Lcom/smalife/activity/RankActivity$2;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/smalife/activity/RankActivity$2$1;->this$1:Lcom/smalife/activity/RankActivity$2;

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$1(Lcom/smalife/activity/RankActivity$2$1;)Lcom/smalife/activity/RankActivity$2;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/smalife/activity/RankActivity$2$1;->this$1:Lcom/smalife/activity/RankActivity$2;

    return-object v0
.end method


# virtual methods
.method public error(Lcom/accloud/service/ACException;)V
    .locals 2
    .param p1, "arg0"    # Lcom/accloud/service/ACException;

    .prologue
    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "error >>>> "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/accloud/service/ACException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bestmafen/utils/L;->i(Ljava/lang/String;)V

    .line 116
    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/smalife/activity/RankActivity$2$1;->success(Ljava/util/List;)V

    return-void
.end method

.method public success(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/accloud/service/ACRankingValue;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 103
    .local p1, "arg0":Ljava/util/List;, "Ljava/util/List<Lcom/accloud/service/ACRankingValue;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "success >>>> "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bestmafen/utils/L;->i(Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lcom/smalife/activity/RankActivity$2$1;->this$1:Lcom/smalife/activity/RankActivity$2;

    invoke-static {v0}, Lcom/smalife/activity/RankActivity$2;->access$0(Lcom/smalife/activity/RankActivity$2;)Lcom/smalife/activity/RankActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/smalife/activity/RankActivity;->access$2(Lcom/smalife/activity/RankActivity;)Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/smalife/activity/RankActivity$2$1$1;

    invoke-direct {v1, p0, p1}, Lcom/smalife/activity/RankActivity$2$1$1;-><init>(Lcom/smalife/activity/RankActivity$2$1;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    .line 111
    return-void
.end method
