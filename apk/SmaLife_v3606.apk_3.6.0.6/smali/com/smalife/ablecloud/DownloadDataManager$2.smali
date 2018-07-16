.class Lcom/smalife/ablecloud/DownloadDataManager$2;
.super Ljava/lang/Object;
.source "DownloadDataManager.java"

# interfaces
.implements Lcom/accloud/cloudservice/PayloadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smalife/ablecloud/DownloadDataManager;->downloadSleep()V
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
    iput-object p1, p0, Lcom/smalife/ablecloud/DownloadDataManager$2;->this$0:Lcom/smalife/ablecloud/DownloadDataManager;

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public error(Lcom/accloud/service/ACException;)V
    .locals 2
    .param p1, "e"    # Lcom/accloud/service/ACException;

    .prologue
    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "download sleep error "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/accloud/service/ACException;->getErrorCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/errorMsg : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 138
    invoke-virtual {p1}, Lcom/accloud/service/ACException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 137
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bestmafen/utils/L;->e(Ljava/lang/String;)V

    .line 139
    return-void
.end method

.method public success(Lcom/accloud/service/ACMsg;)V
    .locals 8
    .param p1, "msg"    # Lcom/accloud/service/ACMsg;

    .prologue
    .line 105
    const-string v5, "sleep_sync_rt"

    invoke-virtual {p1, v5}, Lcom/accloud/service/ACMsg;->getList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 106
    .local v0, "aclist":Ljava/util/List;, "Ljava/util/List<Lcom/accloud/service/ACObject;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 109
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_1

    .line 133
    :cond_0
    return-void

    .line 109
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/accloud/service/ACObject;

    .line 110
    .local v2, "obj":Lcom/accloud/service/ACObject;
    new-instance v3, Lcom/smalife/db/entity/SleepEntity;

    invoke-direct {v3}, Lcom/smalife/db/entity/SleepEntity;-><init>()V

    .line 111
    .local v3, "sleep":Lcom/smalife/db/entity/SleepEntity;
    const-string v6, "sleep_date"

    invoke-virtual {v2, v6}, Lcom/accloud/service/ACObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    .line 113
    .local v4, "str":Ljava/lang/String;
    iget-object v6, p0, Lcom/smalife/ablecloud/DownloadDataManager$2;->this$0:Lcom/smalife/ablecloud/DownloadDataManager;

    invoke-virtual {v6, v4}, Lcom/smalife/ablecloud/DownloadDataManager;->isyyyy_MM_dd(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 114
    iget-object v6, p0, Lcom/smalife/ablecloud/DownloadDataManager$2;->this$0:Lcom/smalife/ablecloud/DownloadDataManager;

    invoke-virtual {v6, v4}, Lcom/smalife/ablecloud/DownloadDataManager;->formatDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 116
    :cond_2
    invoke-virtual {v3, v4}, Lcom/smalife/db/entity/SleepEntity;->setSleep_date(Ljava/lang/String;)V

    .line 118
    const-string v6, "sleep_id"

    invoke-virtual {v2, v6}, Lcom/accloud/service/ACObject;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Lcom/smalife/db/entity/SleepEntity;->setSleep_id(J)V

    .line 119
    const-string v6, "user_account"

    invoke-virtual {v2, v6}, Lcom/accloud/service/ACObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/smalife/db/entity/SleepEntity;->setUserAccount(Ljava/lang/String;)V

    .line 121
    const-string v6, "action_time"

    invoke-virtual {v2, v6}, Lcom/accloud/service/ACObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 120
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/smalife/db/entity/SleepEntity;->setActionTime(Ljava/lang/String;)V

    .line 123
    const-string v6, "time_type"

    invoke-virtual {v2, v6}, Lcom/accloud/service/ACObject;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    long-to-int v6, v6

    .line 122
    invoke-virtual {v3, v6}, Lcom/smalife/db/entity/SleepEntity;->setSleep_model(I)V

    .line 124
    const-string v6, "sleep_type"

    invoke-virtual {v2, v6}, Lcom/accloud/service/ACObject;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    long-to-int v6, v6

    invoke-virtual {v3, v6}, Lcom/smalife/db/entity/SleepEntity;->setSleep_type(I)V

    .line 125
    const-string v6, "mac_Address"

    invoke-virtual {v2, v6}, Lcom/accloud/service/ACObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 126
    .local v1, "macAddress":Ljava/lang/String;
    invoke-virtual {v3, v1}, Lcom/smalife/db/entity/SleepEntity;->setMacAddress(Ljava/lang/String;)V

    .line 127
    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Lcom/smalife/db/entity/SleepEntity;->setSync(I)V

    .line 128
    iget-object v6, p0, Lcom/smalife/ablecloud/DownloadDataManager$2;->this$0:Lcom/smalife/ablecloud/DownloadDataManager;

    invoke-static {v6}, Lcom/smalife/ablecloud/DownloadDataManager;->access$0(Lcom/smalife/ablecloud/DownloadDataManager;)Lcom/smalife/db/SmaDao;

    move-result-object v6

    iget-object v7, p0, Lcom/smalife/ablecloud/DownloadDataManager$2;->this$0:Lcom/smalife/ablecloud/DownloadDataManager;

    invoke-static {v7}, Lcom/smalife/ablecloud/DownloadDataManager;->access$1(Lcom/smalife/ablecloud/DownloadDataManager;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v3}, Lcom/smalife/db/SmaDao;->addSleepData(Ljava/lang/String;Lcom/smalife/db/entity/SleepEntity;)V

    goto :goto_0
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/accloud/service/ACMsg;

    invoke-virtual {p0, p1}, Lcom/smalife/ablecloud/DownloadDataManager$2;->success(Lcom/accloud/service/ACMsg;)V

    return-void
.end method
