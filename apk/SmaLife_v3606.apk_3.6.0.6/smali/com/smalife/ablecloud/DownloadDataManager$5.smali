.class Lcom/smalife/ablecloud/DownloadDataManager$5;
.super Ljava/lang/Object;
.source "DownloadDataManager.java"

# interfaces
.implements Lcom/accloud/cloudservice/PayloadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smalife/ablecloud/DownloadDataManager;->downloadSma()V
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
    iput-object p1, p0, Lcom/smalife/ablecloud/DownloadDataManager$5;->this$0:Lcom/smalife/ablecloud/DownloadDataManager;

    .line 234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public error(Lcom/accloud/service/ACException;)V
    .locals 2
    .param p1, "e"    # Lcom/accloud/service/ACException;

    .prologue
    .line 277
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "download sma error "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/accloud/service/ACException;->getErrorCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/errorMsg : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 278
    invoke-virtual {p1}, Lcom/accloud/service/ACException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 277
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bestmafen/utils/L;->e(Ljava/lang/String;)V

    .line 279
    return-void
.end method

.method public success(Lcom/accloud/service/ACMsg;)V
    .locals 14
    .param p1, "msg"    # Lcom/accloud/service/ACMsg;

    .prologue
    const-wide/16 v12, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 237
    const-string v7, "sma_data"

    invoke-virtual {p1, v7}, Lcom/accloud/service/ACMsg;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/accloud/service/ACObject;

    .line 238
    .local v1, "obj":Lcom/accloud/service/ACObject;
    if-eqz v1, :cond_0

    .line 239
    iget-object v7, p0, Lcom/smalife/ablecloud/DownloadDataManager$5;->this$0:Lcom/smalife/ablecloud/DownloadDataManager;

    invoke-static {v7}, Lcom/smalife/ablecloud/DownloadDataManager;->access$2(Lcom/smalife/ablecloud/DownloadDataManager;)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 240
    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    .line 241
    const-string v8, "long_sit_time"

    .line 242
    const-string v9, "long_min"

    invoke-virtual {v1, v9}, Lcom/accloud/service/ACObject;->getLong(Ljava/lang/String;)J

    move-result-wide v10

    long-to-int v9, v10

    .line 241
    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    .line 242
    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 243
    iget-object v7, p0, Lcom/smalife/ablecloud/DownloadDataManager$5;->this$0:Lcom/smalife/ablecloud/DownloadDataManager;

    invoke-static {v7}, Lcom/smalife/ablecloud/DownloadDataManager;->access$2(Lcom/smalife/ablecloud/DownloadDataManager;)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 244
    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    .line 245
    const-string v8, "long_sit_start"

    .line 246
    const-string v9, "long_sit_start"

    invoke-virtual {v1, v9}, Lcom/accloud/service/ACObject;->getLong(Ljava/lang/String;)J

    move-result-wide v10

    long-to-int v9, v10

    .line 245
    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    .line 247
    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 248
    iget-object v7, p0, Lcom/smalife/ablecloud/DownloadDataManager$5;->this$0:Lcom/smalife/ablecloud/DownloadDataManager;

    invoke-static {v7}, Lcom/smalife/ablecloud/DownloadDataManager;->access$2(Lcom/smalife/ablecloud/DownloadDataManager;)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 249
    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    .line 250
    const-string v8, "long_sit_end"

    .line 251
    const-string v9, "long_sit_end"

    invoke-virtual {v1, v9}, Lcom/accloud/service/ACObject;->getLong(Ljava/lang/String;)J

    move-result-wide v10

    long-to-int v9, v10

    .line 250
    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    .line 251
    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 252
    iget-object v7, p0, Lcom/smalife/ablecloud/DownloadDataManager$5;->this$0:Lcom/smalife/ablecloud/DownloadDataManager;

    invoke-static {v7}, Lcom/smalife/ablecloud/DownloadDataManager;->access$2(Lcom/smalife/ablecloud/DownloadDataManager;)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 253
    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    .line 254
    const-string v8, "long_sit_weekDays"

    .line 255
    const-string v9, "weeks"

    invoke-virtual {v1, v9}, Lcom/accloud/service/ACObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 254
    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    .line 255
    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 256
    const-string v7, "lost_open"

    invoke-virtual {v1, v7}, Lcom/accloud/service/ACObject;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    cmp-long v7, v8, v12

    if-nez v7, :cond_1

    move v2, v5

    .line 258
    .local v2, "open_lost":Z
    :goto_0
    iget-object v7, p0, Lcom/smalife/ablecloud/DownloadDataManager$5;->this$0:Lcom/smalife/ablecloud/DownloadDataManager;

    invoke-static {v7}, Lcom/smalife/ablecloud/DownloadDataManager;->access$2(Lcom/smalife/ablecloud/DownloadDataManager;)Landroid/content/SharedPreferences;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    const-string v8, "lost_notice"

    invoke-interface {v7, v8, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    .line 259
    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 260
    const-string v7, "msg_notic"

    invoke-virtual {v1, v7}, Lcom/accloud/service/ACObject;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    cmp-long v7, v8, v12

    if-nez v7, :cond_2

    move v0, v5

    .line 262
    .local v0, "msg_notic":Z
    :goto_1
    iget-object v7, p0, Lcom/smalife/ablecloud/DownloadDataManager$5;->this$0:Lcom/smalife/ablecloud/DownloadDataManager;

    invoke-static {v7}, Lcom/smalife/ablecloud/DownloadDataManager;->access$2(Lcom/smalife/ablecloud/DownloadDataManager;)Landroid/content/SharedPreferences;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    const-string v8, "msg_notic"

    invoke-interface {v7, v8, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    .line 263
    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 264
    const-string v7, "tel_notic"

    invoke-virtual {v1, v7}, Lcom/accloud/service/ACObject;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    cmp-long v7, v8, v12

    if-nez v7, :cond_3

    move v4, v5

    .line 266
    .local v4, "tel_notic":Z
    :goto_2
    iget-object v7, p0, Lcom/smalife/ablecloud/DownloadDataManager$5;->this$0:Lcom/smalife/ablecloud/DownloadDataManager;

    invoke-static {v7}, Lcom/smalife/ablecloud/DownloadDataManager;->access$2(Lcom/smalife/ablecloud/DownloadDataManager;)Landroid/content/SharedPreferences;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    const-string v8, "call_notic"

    invoke-interface {v7, v8, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    .line 267
    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 268
    const-string v7, "long_sit_open"

    invoke-virtual {v1, v7}, Lcom/accloud/service/ACObject;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    cmp-long v7, v8, v12

    if-nez v7, :cond_4

    move v3, v5

    .line 270
    .local v3, "sit_open":Z
    :goto_3
    iget-object v5, p0, Lcom/smalife/ablecloud/DownloadDataManager$5;->this$0:Lcom/smalife/ablecloud/DownloadDataManager;

    invoke-static {v5}, Lcom/smalife/ablecloud/DownloadDataManager;->access$2(Lcom/smalife/ablecloud/DownloadDataManager;)Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "long_sit"

    invoke-interface {v5, v6, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 271
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 273
    .end local v0    # "msg_notic":Z
    .end local v2    # "open_lost":Z
    .end local v3    # "sit_open":Z
    .end local v4    # "tel_notic":Z
    :cond_0
    return-void

    :cond_1
    move v2, v6

    .line 257
    goto :goto_0

    .restart local v2    # "open_lost":Z
    :cond_2
    move v0, v6

    .line 261
    goto :goto_1

    .restart local v0    # "msg_notic":Z
    :cond_3
    move v4, v6

    .line 265
    goto :goto_2

    .restart local v4    # "tel_notic":Z
    :cond_4
    move v3, v6

    .line 269
    goto :goto_3
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/accloud/service/ACMsg;

    invoke-virtual {p0, p1}, Lcom/smalife/ablecloud/DownloadDataManager$5;->success(Lcom/accloud/service/ACMsg;)V

    return-void
.end method
