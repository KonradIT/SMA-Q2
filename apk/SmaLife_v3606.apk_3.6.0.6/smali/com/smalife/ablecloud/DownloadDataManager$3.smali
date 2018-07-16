.class Lcom/smalife/ablecloud/DownloadDataManager$3;
.super Ljava/lang/Object;
.source "DownloadDataManager.java"

# interfaces
.implements Lcom/accloud/cloudservice/PayloadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smalife/ablecloud/DownloadDataManager;->downloadRate()V
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
    iput-object p1, p0, Lcom/smalife/ablecloud/DownloadDataManager$3;->this$0:Lcom/smalife/ablecloud/DownloadDataManager;

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public error(Lcom/accloud/service/ACException;)V
    .locals 2
    .param p1, "e"    # Lcom/accloud/service/ACException;

    .prologue
    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "download rate error "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/accloud/service/ACException;->getErrorCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/errorMsg : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 179
    invoke-virtual {p1}, Lcom/accloud/service/ACException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 178
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bestmafen/utils/L;->e(Ljava/lang/String;)V

    .line 180
    return-void
.end method

.method public success(Lcom/accloud/service/ACMsg;)V
    .locals 6
    .param p1, "msg"    # Lcom/accloud/service/ACMsg;

    .prologue
    .line 153
    const-string v3, "ratelist"

    invoke-virtual {p1, v3}, Lcom/accloud/service/ACMsg;->getList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 154
    .local v0, "aclist":Ljava/util/List;, "Ljava/util/List<Lcom/accloud/service/ACObject;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 158
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 174
    :cond_0
    return-void

    .line 158
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/accloud/service/ACObject;

    .line 159
    .local v1, "obj":Lcom/accloud/service/ACObject;
    new-instance v2, Lcom/smalife/db/entity/RateEntity;

    invoke-direct {v2}, Lcom/smalife/db/entity/RateEntity;-><init>()V

    .line 160
    .local v2, "rate":Lcom/smalife/db/entity/RateEntity;
    const-string v4, "user_account"

    invoke-virtual {v1, v4}, Lcom/accloud/service/ACObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/smalife/db/entity/RateEntity;->setUserAccount(Ljava/lang/String;)V

    .line 161
    const-string v4, "rate_id"

    invoke-virtual {v1, v4}, Lcom/accloud/service/ACObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/smalife/db/entity/RateEntity;->setRate_Id(J)V

    .line 162
    const-string v4, "rate_value"

    invoke-virtual {v1, v4}, Lcom/accloud/service/ACObject;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/smalife/db/entity/RateEntity;->setRate_value(I)V

    .line 164
    const-string v4, "rate_time"

    invoke-virtual {v1, v4}, Lcom/accloud/service/ACObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 163
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/smalife/db/entity/RateEntity;->setRate_time(J)V

    .line 165
    const-string v4, "rate_status"

    invoke-virtual {v1, v4}, Lcom/accloud/service/ACObject;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/smalife/db/entity/RateEntity;->setRate_status(I)V

    .line 166
    const-string v4, "rate_date"

    invoke-virtual {v1, v4}, Lcom/accloud/service/ACObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/smalife/db/entity/RateEntity;->setRate_date(Ljava/lang/String;)V

    .line 167
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/smalife/db/entity/RateEntity;->setSync(I)V

    .line 168
    iget-object v4, p0, Lcom/smalife/ablecloud/DownloadDataManager$3;->this$0:Lcom/smalife/ablecloud/DownloadDataManager;

    invoke-static {v4}, Lcom/smalife/ablecloud/DownloadDataManager;->access$0(Lcom/smalife/ablecloud/DownloadDataManager;)Lcom/smalife/db/SmaDao;

    move-result-object v4

    iget-object v5, p0, Lcom/smalife/ablecloud/DownloadDataManager$3;->this$0:Lcom/smalife/ablecloud/DownloadDataManager;

    invoke-static {v5}, Lcom/smalife/ablecloud/DownloadDataManager;->access$1(Lcom/smalife/ablecloud/DownloadDataManager;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Lcom/smalife/db/SmaDao;->addRateData(Lcom/smalife/db/entity/RateEntity;Ljava/lang/String;)V

    .line 169
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "rate data = ["

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/smalife/db/entity/RateEntity;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/bestmafen/utils/L;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/accloud/service/ACMsg;

    invoke-virtual {p0, p1}, Lcom/smalife/ablecloud/DownloadDataManager$3;->success(Lcom/accloud/service/ACMsg;)V

    return-void
.end method
