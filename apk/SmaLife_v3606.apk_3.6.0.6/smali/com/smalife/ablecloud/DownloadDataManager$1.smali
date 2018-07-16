.class Lcom/smalife/ablecloud/DownloadDataManager$1;
.super Ljava/lang/Object;
.source "DownloadDataManager.java"

# interfaces
.implements Lcom/accloud/cloudservice/PayloadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smalife/ablecloud/DownloadDataManager;->downloadSport()V
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
        "Lcom/accloud/service/ACMsg;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smalife/ablecloud/DownloadDataManager;


# direct methods
.method constructor <init>(Lcom/smalife/ablecloud/DownloadDataManager;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/smalife/ablecloud/DownloadDataManager$1;->this$0:Lcom/smalife/ablecloud/DownloadDataManager;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public error(Lcom/accloud/service/ACException;)V
    .locals 2
    .param p1, "e"    # Lcom/accloud/service/ACException;

    .prologue
    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "download sport error "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/accloud/service/ACException;->getErrorCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/errorMsg : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 90
    invoke-virtual {p1}, Lcom/accloud/service/ACException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 89
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bestmafen/utils/L;->e(Ljava/lang/String;)V

    .line 91
    return-void
.end method

.method public success(Lcom/accloud/service/ACMsg;)V
    .locals 8
    .param p1, "msg"    # Lcom/accloud/service/ACMsg;

    .prologue
    .line 53
    const-string v5, "sport_sync_rt"

    invoke-virtual {p1, v5}, Lcom/accloud/service/ACMsg;->getList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 54
    .local v0, "aclist":Ljava/util/List;, "Ljava/util/List<Lcom/accloud/service/ACObject;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 57
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_1

    .line 85
    :cond_0
    return-void

    .line 57
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/accloud/service/ACObject;

    .line 58
    .local v2, "obj":Lcom/accloud/service/ACObject;
    new-instance v3, Lcom/smalife/db/entity/SportEntity;

    invoke-direct {v3}, Lcom/smalife/db/entity/SportEntity;-><init>()V

    .line 59
    .local v3, "sport":Lcom/smalife/db/entity/SportEntity;
    const-string v6, "sport_id"

    invoke-virtual {v2, v6}, Lcom/accloud/service/ACObject;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Lcom/smalife/db/entity/SportEntity;->setSport_id(J)V

    .line 60
    const-string v6, "user_account"

    invoke-virtual {v2, v6}, Lcom/accloud/service/ACObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 61
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 60
    invoke-virtual {v3, v6}, Lcom/smalife/db/entity/SportEntity;->setUserAccount(Ljava/lang/String;)V

    .line 62
    const-string v6, "mac_Address"

    invoke-virtual {v2, v6}, Lcom/accloud/service/ACObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 63
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 64
    .local v1, "macAddress":Ljava/lang/String;
    invoke-virtual {v3, v1}, Lcom/smalife/db/entity/SportEntity;->setMacAddress(Ljava/lang/String;)V

    .line 66
    const-string v6, "offset"

    .line 65
    invoke-virtual {v2, v6}, Lcom/accloud/service/ACObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 66
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 65
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v3, v6}, Lcom/smalife/db/entity/SportEntity;->setOffSet(I)V

    .line 68
    const-string v6, "steps"

    invoke-virtual {v2, v6}, Lcom/accloud/service/ACObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 67
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v3, v6}, Lcom/smalife/db/entity/SportEntity;->setSteps(I)V

    .line 70
    const-string v6, "distance"

    .line 69
    invoke-virtual {v2, v6}, Lcom/accloud/service/ACObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 70
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 69
    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-virtual {v3, v6}, Lcom/smalife/db/entity/SportEntity;->setDistance(F)V

    .line 72
    const-string v6, "calorie"

    .line 71
    invoke-virtual {v2, v6}, Lcom/accloud/service/ACObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 72
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 71
    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-virtual {v3, v6}, Lcom/smalife/db/entity/SportEntity;->setCalorie(F)V

    .line 73
    const-string v6, "count_date"

    invoke-virtual {v2, v6}, Lcom/accloud/service/ACObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 75
    .local v4, "str":Ljava/lang/String;
    iget-object v6, p0, Lcom/smalife/ablecloud/DownloadDataManager$1;->this$0:Lcom/smalife/ablecloud/DownloadDataManager;

    invoke-virtual {v6, v4}, Lcom/smalife/ablecloud/DownloadDataManager;->isyyyy_MM_dd(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 76
    iget-object v6, p0, Lcom/smalife/ablecloud/DownloadDataManager$1;->this$0:Lcom/smalife/ablecloud/DownloadDataManager;

    invoke-virtual {v6, v4}, Lcom/smalife/ablecloud/DownloadDataManager;->formatDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 78
    :cond_2
    invoke-virtual {v3, v4}, Lcom/smalife/db/entity/SportEntity;->setCountDate(Ljava/lang/String;)V

    .line 79
    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Lcom/smalife/db/entity/SportEntity;->setSync(I)V

    .line 80
    iget-object v6, p0, Lcom/smalife/ablecloud/DownloadDataManager$1;->this$0:Lcom/smalife/ablecloud/DownloadDataManager;

    invoke-static {v6}, Lcom/smalife/ablecloud/DownloadDataManager;->access$0(Lcom/smalife/ablecloud/DownloadDataManager;)Lcom/smalife/db/SmaDao;

    move-result-object v6

    iget-object v7, p0, Lcom/smalife/ablecloud/DownloadDataManager$1;->this$0:Lcom/smalife/ablecloud/DownloadDataManager;

    invoke-static {v7}, Lcom/smalife/ablecloud/DownloadDataManager;->access$1(Lcom/smalife/ablecloud/DownloadDataManager;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v3, v7}, Lcom/smalife/db/SmaDao;->addSportData(Lcom/smalife/db/entity/SportEntity;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/accloud/service/ACMsg;

    invoke-virtual {p0, p1}, Lcom/smalife/ablecloud/DownloadDataManager$1;->success(Lcom/accloud/service/ACMsg;)V

    return-void
.end method
