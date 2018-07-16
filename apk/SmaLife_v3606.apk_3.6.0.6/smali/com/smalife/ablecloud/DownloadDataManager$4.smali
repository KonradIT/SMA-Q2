.class Lcom/smalife/ablecloud/DownloadDataManager$4;
.super Ljava/lang/Object;
.source "DownloadDataManager.java"

# interfaces
.implements Lcom/accloud/cloudservice/PayloadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smalife/ablecloud/DownloadDataManager;->downloadClock()V
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
    iput-object p1, p0, Lcom/smalife/ablecloud/DownloadDataManager$4;->this$0:Lcom/smalife/ablecloud/DownloadDataManager;

    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public error(Lcom/accloud/service/ACException;)V
    .locals 2
    .param p1, "e"    # Lcom/accloud/service/ACException;

    .prologue
    .line 224
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "download clock error "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/accloud/service/ACException;->getErrorCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/errorMsg : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 225
    invoke-virtual {p1}, Lcom/accloud/service/ACException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 224
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bestmafen/utils/L;->e(Ljava/lang/String;)V

    .line 226
    return-void
.end method

.method public success(Lcom/accloud/service/ACMsg;)V
    .locals 6
    .param p1, "msg"    # Lcom/accloud/service/ACMsg;

    .prologue
    .line 194
    const-string v3, "clock_sync_rt"

    invoke-virtual {p1, v3}, Lcom/accloud/service/ACMsg;->getList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 195
    .local v0, "aclist":Ljava/util/List;, "Ljava/util/List<Lcom/accloud/service/ACObject;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 196
    iget-object v3, p0, Lcom/smalife/ablecloud/DownloadDataManager$4;->this$0:Lcom/smalife/ablecloud/DownloadDataManager;

    invoke-static {v3}, Lcom/smalife/ablecloud/DownloadDataManager;->access$0(Lcom/smalife/ablecloud/DownloadDataManager;)Lcom/smalife/db/SmaDao;

    move-result-object v3

    iget-object v4, p0, Lcom/smalife/ablecloud/DownloadDataManager$4;->this$0:Lcom/smalife/ablecloud/DownloadDataManager;

    invoke-static {v4}, Lcom/smalife/ablecloud/DownloadDataManager;->access$1(Lcom/smalife/ablecloud/DownloadDataManager;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/smalife/db/SmaDao;->delAllClocks(Ljava/lang/String;)I

    .line 197
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 220
    :cond_0
    return-void

    .line 197
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/accloud/service/ACObject;

    .line 198
    .local v2, "obj":Lcom/accloud/service/ACObject;
    new-instance v1, Lcom/smalife/entity/ClockEntity;

    invoke-direct {v1}, Lcom/smalife/entity/ClockEntity;-><init>()V

    .line 199
    .local v1, "clock":Lcom/smalife/entity/ClockEntity;
    const-string v4, "user_account"

    invoke-virtual {v2, v4}, Lcom/accloud/service/ACObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/smalife/entity/ClockEntity;->setAccount(Ljava/lang/String;)V

    .line 200
    const-string v4, "name"

    invoke-virtual {v2, v4}, Lcom/accloud/service/ACObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/smalife/entity/ClockEntity;->setClockName(Ljava/lang/String;)V

    .line 201
    sget-object v4, Lcom/smalife/ble/CmdKeyValue$BLE;->MacAddress:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/accloud/service/ACObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/smalife/entity/ClockEntity;->setMacAddress(Ljava/lang/String;)V

    .line 202
    const-string v4, "clock_time"

    invoke-virtual {v2, v4}, Lcom/accloud/service/ACObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/smalife/entity/ClockEntity;->setClock_time(Ljava/lang/String;)V

    .line 203
    const-string v4, "clockOpen"

    invoke-virtual {v2, v4}, Lcom/accloud/service/ACObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    long-to-int v4, v4

    invoke-virtual {v1, v4}, Lcom/smalife/entity/ClockEntity;->setOpenOrClose(I)V

    .line 204
    const-string v4, "repeat"

    invoke-virtual {v2, v4}, Lcom/accloud/service/ACObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    long-to-int v4, v4

    invoke-virtual {v1, v4}, Lcom/smalife/entity/ClockEntity;->setRepeat(I)V

    .line 205
    const-string v4, "year"

    invoke-virtual {v2, v4}, Lcom/accloud/service/ACObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    long-to-int v4, v4

    invoke-virtual {v1, v4}, Lcom/smalife/entity/ClockEntity;->setYear(I)V

    .line 206
    const-string v4, "month"

    invoke-virtual {v2, v4}, Lcom/accloud/service/ACObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    long-to-int v4, v4

    invoke-virtual {v1, v4}, Lcom/smalife/entity/ClockEntity;->setMonth(I)V

    .line 207
    const-string v4, "day"

    invoke-virtual {v2, v4}, Lcom/accloud/service/ACObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    long-to-int v4, v4

    invoke-virtual {v1, v4}, Lcom/smalife/entity/ClockEntity;->setDay(I)V

    .line 208
    const-string v4, "mon_day"

    invoke-virtual {v2, v4}, Lcom/accloud/service/ACObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    long-to-int v4, v4

    invoke-virtual {v1, v4}, Lcom/smalife/entity/ClockEntity;->setMon_day(I)V

    .line 209
    const-string v4, "tues_day"

    invoke-virtual {v2, v4}, Lcom/accloud/service/ACObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    long-to-int v4, v4

    invoke-virtual {v1, v4}, Lcom/smalife/entity/ClockEntity;->setTues_day(I)V

    .line 210
    const-string v4, "wes_day"

    invoke-virtual {v2, v4}, Lcom/accloud/service/ACObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    long-to-int v4, v4

    invoke-virtual {v1, v4}, Lcom/smalife/entity/ClockEntity;->setWes_day(I)V

    .line 211
    const-string v4, "thur_day"

    invoke-virtual {v2, v4}, Lcom/accloud/service/ACObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    long-to-int v4, v4

    invoke-virtual {v1, v4}, Lcom/smalife/entity/ClockEntity;->setThur_day(I)V

    .line 212
    const-string v4, "frid_day"

    invoke-virtual {v2, v4}, Lcom/accloud/service/ACObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    long-to-int v4, v4

    invoke-virtual {v1, v4}, Lcom/smalife/entity/ClockEntity;->setFrid_day(I)V

    .line 213
    const-string v4, "sta_day"

    invoke-virtual {v2, v4}, Lcom/accloud/service/ACObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    long-to-int v4, v4

    invoke-virtual {v1, v4}, Lcom/smalife/entity/ClockEntity;->setSta_day(I)V

    .line 214
    const-string v4, "sun_day"

    invoke-virtual {v2, v4}, Lcom/accloud/service/ACObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    long-to-int v4, v4

    invoke-virtual {v1, v4}, Lcom/smalife/entity/ClockEntity;->setSun_day(I)V

    .line 215
    const-string v4, "clock_id"

    invoke-virtual {v2, v4}, Lcom/accloud/service/ACObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    long-to-int v4, v4

    invoke-virtual {v1, v4}, Lcom/smalife/entity/ClockEntity;->set_id(I)V

    .line 216
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcom/smalife/entity/ClockEntity;->setSync(I)V

    .line 217
    iget-object v4, p0, Lcom/smalife/ablecloud/DownloadDataManager$4;->this$0:Lcom/smalife/ablecloud/DownloadDataManager;

    invoke-static {v4}, Lcom/smalife/ablecloud/DownloadDataManager;->access$0(Lcom/smalife/ablecloud/DownloadDataManager;)Lcom/smalife/db/SmaDao;

    move-result-object v4

    iget-object v5, p0, Lcom/smalife/ablecloud/DownloadDataManager$4;->this$0:Lcom/smalife/ablecloud/DownloadDataManager;

    invoke-static {v5}, Lcom/smalife/ablecloud/DownloadDataManager;->access$1(Lcom/smalife/ablecloud/DownloadDataManager;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v1}, Lcom/smalife/db/SmaDao;->addNewClock(Ljava/lang/String;Lcom/smalife/entity/ClockEntity;)V

    goto/16 :goto_0
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/accloud/service/ACMsg;

    invoke-virtual {p0, p1}, Lcom/smalife/ablecloud/DownloadDataManager$4;->success(Lcom/accloud/service/ACMsg;)V

    return-void
.end method
