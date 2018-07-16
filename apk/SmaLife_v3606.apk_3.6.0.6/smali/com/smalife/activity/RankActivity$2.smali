.class Lcom/smalife/activity/RankActivity$2;
.super Ljava/lang/Object;
.source "RankActivity.java"

# interfaces
.implements Lcom/accloud/cloudservice/VoidCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smalife/activity/RankActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smalife/activity/RankActivity;


# direct methods
.method constructor <init>(Lcom/smalife/activity/RankActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/smalife/activity/RankActivity$2;->this$0:Lcom/smalife/activity/RankActivity;

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/smalife/activity/RankActivity$2;)Lcom/smalife/activity/RankActivity;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/smalife/activity/RankActivity$2;->this$0:Lcom/smalife/activity/RankActivity;

    return-object v0
.end method


# virtual methods
.method public error(Lcom/accloud/service/ACException;)V
    .locals 0
    .param p1, "arg0"    # Lcom/accloud/service/ACException;

    .prologue
    .line 123
    return-void
.end method

.method public success()V
    .locals 12

    .prologue
    .line 97
    invoke-static {}, Lcom/accloud/cloudservice/AC;->rankingMgr()Lcom/accloud/service/ACRankingMgr;

    move-result-object v1

    const-string v2, "china"

    const-string v3, "day"

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x1

    const-wide/16 v8, 0xa

    const-string v10, "desc"

    .line 98
    new-instance v11, Lcom/smalife/activity/RankActivity$2$1;

    invoke-direct {v11, p0}, Lcom/smalife/activity/RankActivity$2$1;-><init>(Lcom/smalife/activity/RankActivity$2;)V

    .line 97
    invoke-interface/range {v1 .. v11}, Lcom/accloud/service/ACRankingMgr;->scan(Ljava/lang/String;Ljava/lang/String;JJJLjava/lang/String;Lcom/accloud/cloudservice/PayloadCallback;)V

    .line 118
    return-void
.end method
