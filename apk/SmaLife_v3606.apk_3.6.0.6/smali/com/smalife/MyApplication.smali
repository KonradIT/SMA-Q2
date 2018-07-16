.class public Lcom/smalife/MyApplication;
.super Landroid/app/Application;
.source "MyApplication.java"


# static fields
.field public static atyList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public isConnected:Z

.field private preferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method private umengInit()V
    .locals 4

    .prologue
    .line 592
    const-string v1, "lijunhu"

    const-wide/16 v2, 0x177

    invoke-static {p0, v1, v2, v3}, Lcom/accloud/cloudservice/AC;->init(Landroid/app/Application;Ljava/lang/String;J)V

    .line 595
    invoke-static {}, Lcom/accloud/cloudservice/AC;->notificationMgr()Lcom/accloud/service/ACNotificationMgr;

    move-result-object v0

    .line 596
    .local v0, "notificationMgr":Lcom/accloud/service/ACNotificationMgr;
    invoke-interface {v0}, Lcom/accloud/service/ACNotificationMgr;->init()V

    .line 598
    new-instance v1, Lcom/smalife/MyApplication$1;

    invoke-direct {v1, p0}, Lcom/smalife/MyApplication$1;-><init>(Lcom/smalife/MyApplication;)V

    invoke-interface {v0, v1}, Lcom/accloud/service/ACNotificationMgr;->setMessageHandler(Lcom/umeng/message/UHandler;)V

    .line 618
    return-void
.end method


# virtual methods
.method public clearAllSetting()V
    .locals 1

    .prologue
    .line 575
    iget-object v0, p0, Lcom/smalife/MyApplication;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 576
    return-void
.end method

.method public editAccount(Ljava/lang/String;)V
    .locals 2
    .param p1, "account"    # Ljava/lang/String;

    .prologue
    .line 113
    iget-object v0, p0, Lcom/smalife/MyApplication;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "account"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 114
    return-void
.end method

.method public editAccountPwd(Ljava/lang/String;)V
    .locals 2
    .param p1, "pwd"    # Ljava/lang/String;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/smalife/MyApplication;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "password"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 98
    return-void
.end method

.method public editAlias_ID(J)V
    .locals 3
    .param p1, "alias_id"    # J

    .prologue
    .line 359
    iget-object v0, p0, Lcom/smalife/MyApplication;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "alias_id"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 360
    return-void
.end method

.method public editAngle(F)V
    .locals 2
    .param p1, "degree"    # F

    .prologue
    .line 330
    iget-object v0, p0, Lcom/smalife/MyApplication;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "angle"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 331
    return-void
.end method

.method public editBackLigth(I)V
    .locals 2
    .param p1, "light"    # I

    .prologue
    .line 443
    iget-object v0, p0, Lcom/smalife/MyApplication;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "backligth_select"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 444
    return-void
.end method

.method public editBatteryLevel(I)V
    .locals 2
    .param p1, "level"    # I

    .prologue
    .line 298
    iget-object v0, p0, Lcom/smalife/MyApplication;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "battery"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 299
    return-void
.end method

.method public editBleVersion(Ljava/lang/String;)V
    .locals 2
    .param p1, "version"    # Ljava/lang/String;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/smalife/MyApplication;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "bleVersion"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 66
    return-void
.end method

.method public editBonded(Z)V
    .locals 2
    .param p1, "bonded"    # Z

    .prologue
    .line 177
    iget-object v0, p0, Lcom/smalife/MyApplication;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "bonded"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 178
    return-void
.end method

.method public editBondedDeviceAddress(Ljava/lang/String;)V
    .locals 2
    .param p1, "account"    # Ljava/lang/String;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/smalife/MyApplication;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "bondedDeviceAddress"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 42
    return-void
.end method

.method public editCallNotic(Z)V
    .locals 2
    .param p1, "open"    # Z

    .prologue
    .line 286
    iget-object v0, p0, Lcom/smalife/MyApplication;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "call_notic"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 287
    return-void
.end method

.method public editChoseSma(Z)V
    .locals 2
    .param p1, "sma"    # Z

    .prologue
    .line 391
    iget-object v0, p0, Lcom/smalife/MyApplication;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "chose_sma"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 392
    return-void
.end method

.method public editChoseXiaoQ(Z)V
    .locals 2
    .param p1, "xiaoq"    # Z

    .prologue
    .line 399
    iget-object v0, p0, Lcom/smalife/MyApplication;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "chose_xiaoq"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 400
    return-void
.end method

.method public editClientID(Ljava/lang/String;)V
    .locals 2
    .param p1, "client_id"    # Ljava/lang/String;

    .prologue
    .line 262
    iget-object v0, p0, Lcom/smalife/MyApplication;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "client_id"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 263
    return-void
.end method

.method public editCrashLogUrl(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 479
    iget-object v0, p0, Lcom/smalife/MyApplication;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "log_url"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 480
    return-void
.end method

.method public editCurActivity(Ljava/lang/String;)V
    .locals 2
    .param p1, "ActivityName"    # Ljava/lang/String;

    .prologue
    .line 121
    iget-object v0, p0, Lcom/smalife/MyApplication;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "curActivity"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 122
    return-void
.end method

.method public editCurRateID(J)V
    .locals 3
    .param p1, "id"    # J

    .prologue
    .line 431
    iget-object v0, p0, Lcom/smalife/MyApplication;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "rate_id"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 432
    return-void
.end method

.method public editCurRateTime(I)V
    .locals 2
    .param p1, "time"    # I

    .prologue
    .line 423
    iget-object v0, p0, Lcom/smalife/MyApplication;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "rate_time"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 424
    return-void
.end method

.method public editDisturb(Z)V
    .locals 2
    .param p1, "disturb"    # Z

    .prologue
    .line 455
    iget-object v0, p0, Lcom/smalife/MyApplication;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "disturb"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 456
    return-void
.end method

.method public editDisturbWeekDays(Ljava/lang/String;)V
    .locals 2
    .param p1, "weeks"    # Ljava/lang/String;

    .prologue
    .line 556
    iget-object v0, p0, Lcom/smalife/MyApplication;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "disturbweekDays"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 557
    return-void
.end method

.method public editFirmType(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/smalife/MyApplication;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "firmtype"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 82
    return-void
.end method

.method public editFirmWareVersion(Ljava/lang/String;)V
    .locals 2
    .param p1, "account"    # Ljava/lang/String;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/smalife/MyApplication;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "firmWareVersion"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 50
    return-void
.end method

.method public editFirstLogin(Z)V
    .locals 2
    .param p1, "hasLogin"    # Z

    .prologue
    .line 294
    iget-object v0, p0, Lcom/smalife/MyApplication;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "hasLogin"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 295
    return-void
.end method

.method public editFriendAccount(Ljava/lang/String;)V
    .locals 2
    .param p1, "friendAccount"    # Ljava/lang/String;

    .prologue
    .line 153
    iget-object v0, p0, Lcom/smalife/MyApplication;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "friend_Account"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 154
    return-void
.end method

.method public editFriendName(Ljava/lang/String;)V
    .locals 2
    .param p1, "friendName"    # Ljava/lang/String;

    .prologue
    .line 145
    iget-object v0, p0, Lcom/smalife/MyApplication;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "friendName"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 146
    return-void
.end method

.method public editHasLogin(Z)V
    .locals 2
    .param p1, "hasLogin"    # Z

    .prologue
    .line 322
    iget-object v0, p0, Lcom/smalife/MyApplication;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "hasLogin"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 323
    return-void
.end method

.method public editHasUploadMAC2WX(Z)V
    .locals 2
    .param p1, "hasupload"    # Z

    .prologue
    .line 487
    iget-object v0, p0, Lcom/smalife/MyApplication;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "hasupload"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 488
    return-void
.end method

.method public editHeaderIcon_url(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 314
    iget-object v0, p0, Lcom/smalife/MyApplication;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "header_url"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 315
    return-void
.end method

.method public editLanguage(Z)V
    .locals 2
    .param p1, "isZH"    # Z

    .prologue
    .line 306
    iget-object v0, p0, Lcom/smalife/MyApplication;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "isZh"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 307
    return-void
.end method

.method public editLanguageSet(I)V
    .locals 2
    .param p1, "set"    # I

    .prologue
    .line 548
    iget-object v0, p0, Lcom/smalife/MyApplication;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "language"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 549
    return-void
.end method

.method public editLatestHeartValue(Ljava/lang/String;)V
    .locals 2
    .param p1, "heratValue"    # Ljava/lang/String;

    .prologue
    .line 451
    iget-object v0, p0, Lcom/smalife/MyApplication;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "latest_heart_value"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 452
    return-void
.end method

.method public editLightHandSet(Z)V
    .locals 2
    .param p1, "disturb"    # Z

    .prologue
    .line 532
    iget-object v0, p0, Lcom/smalife/MyApplication;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "light_hand"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 533
    return-void
.end method

.method public editLocationModel(I)V
    .locals 2
    .param p1, "model"    # I

    .prologue
    .line 407
    iget-object v0, p0, Lcom/smalife/MyApplication;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "location_model"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 408
    return-void
.end method

.method public editLongSitEnable(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 198
    iget-object v0, p0, Lcom/smalife/MyApplication;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "long_sit"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 199
    return-void
.end method

.method public editLongSitEnd(B)V
    .locals 2
    .param p1, "end"    # B

    .prologue
    .line 238
    iget-object v0, p0, Lcom/smalife/MyApplication;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "long_sit_end"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 239
    return-void
.end method

.method public editLongSitReapte(B)V
    .locals 2
    .param p1, "repeate"    # B

    .prologue
    .line 214
    iget-object v0, p0, Lcom/smalife/MyApplication;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "long_sit_repeate"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 215
    return-void
.end method

.method public editLongSitStart(B)V
    .locals 2
    .param p1, "start"    # B

    .prologue
    .line 230
    iget-object v0, p0, Lcom/smalife/MyApplication;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "long_sit_start"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 231
    return-void
.end method

.method public editLongSitSteps(B)V
    .locals 2
    .param p1, "steps"    # B

    .prologue
    .line 222
    iget-object v0, p0, Lcom/smalife/MyApplication;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "long_sit_steps"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 223
    return-void
.end method

.method public editLongSitTime(B)V
    .locals 2
    .param p1, "time"    # B

    .prologue
    .line 206
    iget-object v0, p0, Lcom/smalife/MyApplication;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "long_sit_time"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 207
    return-void
.end method

.method public editLongSitWeekDays(Ljava/lang/String;)V
    .locals 2
    .param p1, "weekDays"    # Ljava/lang/String;

    .prologue
    .line 246
    iget-object v0, p0, Lcom/smalife/MyApplication;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "long_sit_weekDays"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 247
    return-void
.end method

.method public editLost_notice(Z)V
    .locals 2
    .param p1, "open"    # Z

    .prologue
    .line 270
    iget-object v0, p0, Lcom/smalife/MyApplication;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "lost_notice"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 271
    return-void
.end method

.method public editMsgNotic(Z)V
    .locals 2
    .param p1, "open"    # Z

    .prologue
    .line 278
    iget-object v0, p0, Lcom/smalife/MyApplication;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "msg_notic"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 279
    return-void
.end method

.method public editNickName(Ljava/lang/String;)V
    .locals 2
    .param p1, "nickName"    # Ljava/lang/String;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/smalife/MyApplication;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "nickName"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 130
    return-void
.end method

.method public editNodisturb(ILjava/lang/String;)V
    .locals 3
    .param p1, "position"    # I
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 568
    iget-object v0, p0, Lcom/smalife/MyApplication;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "nodisturb"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 569
    return-void
.end method

.method public editOffSet(I)V
    .locals 2
    .param p1, "offset"    # I

    .prologue
    .line 254
    iget-object v0, p0, Lcom/smalife/MyApplication;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "offset"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 255
    return-void
.end method

.method public editProgress(I)V
    .locals 2
    .param p1, "progress"    # I

    .prologue
    .line 338
    iget-object v0, p0, Lcom/smalife/MyApplication;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "progress"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 339
    return-void
.end method

.method public editPwd(Ljava/lang/String;)V
    .locals 2
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 161
    iget-object v0, p0, Lcom/smalife/MyApplication;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "password"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 162
    return-void
.end method

.method public editQota(Z)V
    .locals 2
    .param p1, "ota"    # Z

    .prologue
    .line 415
    iget-object v0, p0, Lcom/smalife/MyApplication;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "xiaoq_ota"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 416
    return-void
.end method

.method public editRateDetectionEnd(B)V
    .locals 2
    .param p1, "end"    # B

    .prologue
    .line 503
    iget-object v0, p0, Lcom/smalife/MyApplication;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "detection_end"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 504
    return-void
.end method

.method public editRateDetectionStart(B)V
    .locals 2
    .param p1, "start"    # B

    .prologue
    .line 495
    iget-object v0, p0, Lcom/smalife/MyApplication;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "detection_start"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 496
    return-void
.end method

.method public editRateOpen(B)V
    .locals 2
    .param p1, "open"    # B

    .prologue
    .line 519
    iget-object v0, p0, Lcom/smalife/MyApplication;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "detection_open"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 520
    return-void
.end method

.method public editRatePeriodTime(I)V
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 511
    iget-object v0, p0, Lcom/smalife/MyApplication;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "detection_time"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 512
    return-void
.end method

.method public editSelectCountryNum(Ljava/lang/String;)V
    .locals 2
    .param p1, "num"    # Ljava/lang/String;

    .prologue
    .line 375
    iget-object v0, p0, Lcom/smalife/MyApplication;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "select_country_num"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 376
    return-void
.end method

.method public editShakeTime(I)V
    .locals 2
    .param p1, "shakes_select"    # I

    .prologue
    .line 471
    iget-object v0, p0, Lcom/smalife/MyApplication;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "shakes_select"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 472
    return-void
.end method

.method public editSleepDetection(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 73
    iget-object v0, p0, Lcom/smalife/MyApplication;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "sleepdetection"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 74
    return-void
.end method

.method public editStartSign(Z)V
    .locals 2
    .param p1, "starSign"    # Z

    .prologue
    .line 463
    iget-object v0, p0, Lcom/smalife/MyApplication;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "starSign"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 464
    return-void
.end method

.method public editSyncDay(I)V
    .locals 4
    .param p1, "sync_day"    # I

    .prologue
    .line 367
    iget-object v0, p0, Lcom/smalife/MyApplication;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "sync_day"

    int-to-long v2, p1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 368
    return-void
.end method

.method public editThridLogin(Z)V
    .locals 2
    .param p1, "isThrid"    # Z

    .prologue
    .line 105
    iget-object v0, p0, Lcom/smalife/MyApplication;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "isThridLogin"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 106
    return-void
.end method

.method public editUnit(I)V
    .locals 2
    .param p1, "unit"    # I

    .prologue
    .line 137
    iget-object v0, p0, Lcom/smalife/MyApplication;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "unit"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 138
    return-void
.end method

.method public editUserID(I)V
    .locals 2
    .param p1, "_id"    # I

    .prologue
    .line 169
    iget-object v0, p0, Lcom/smalife/MyApplication;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "user_id"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 170
    return-void
.end method

.method public editVerticalScreenSet(I)V
    .locals 2
    .param p1, "status"    # I

    .prologue
    .line 540
    iget-object v0, p0, Lcom/smalife/MyApplication;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "screen"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 541
    return-void
.end method

.method public editWatchType(Ljava/lang/String;)V
    .locals 2
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 190
    iget-object v0, p0, Lcom/smalife/MyApplication;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "sma_type"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 191
    return-void
.end method

.method public getAccount()Ljava/lang/String;
    .locals 3

    .prologue
    .line 117
    iget-object v0, p0, Lcom/smalife/MyApplication;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "account"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAccountPwd()Ljava/lang/String;
    .locals 3

    .prologue
    .line 101
    iget-object v0, p0, Lcom/smalife/MyApplication;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "password"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAliasID()J
    .locals 4

    .prologue
    .line 363
    iget-object v0, p0, Lcom/smalife/MyApplication;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "alias_id"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getAngel()F
    .locals 3

    .prologue
    .line 334
    iget-object v0, p0, Lcom/smalife/MyApplication;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "angle"

    const v2, 0x3fc7b403

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public getBackLigth()I
    .locals 3

    .prologue
    .line 439
    iget-object v0, p0, Lcom/smalife/MyApplication;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "backligth_select"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getBatteryLevel()I
    .locals 3

    .prologue
    .line 302
    iget-object v0, p0, Lcom/smalife/MyApplication;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "battery"

    sget v2, Lcom/smalife/ble/CmdKeyValue$BLE;->battery_level:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getBleVersion()Ljava/lang/String;
    .locals 3

    .prologue
    .line 69
    iget-object v0, p0, Lcom/smalife/MyApplication;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "bleVersion"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBonded()Z
    .locals 3

    .prologue
    .line 186
    iget-object v0, p0, Lcom/smalife/MyApplication;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "bonded"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getBondedDeviceAddress()Ljava/lang/String;
    .locals 3

    .prologue
    .line 45
    iget-object v0, p0, Lcom/smalife/MyApplication;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "bondedDeviceAddress"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCallNotic()Z
    .locals 3

    .prologue
    .line 290
    iget-object v0, p0, Lcom/smalife/MyApplication;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "call_notic"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getChoseSma()Z
    .locals 3

    .prologue
    .line 395
    iget-object v0, p0, Lcom/smalife/MyApplication;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "chose_sma"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getChoseXiaoQ()Z
    .locals 3

    .prologue
    .line 403
    iget-object v0, p0, Lcom/smalife/MyApplication;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "chose_xiaoq"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getClientID()Ljava/lang/String;
    .locals 3

    .prologue
    .line 266
    iget-object v0, p0, Lcom/smalife/MyApplication;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "client_id"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCrashLogUrl()Ljava/lang/String;
    .locals 3

    .prologue
    .line 483
    iget-object v0, p0, Lcom/smalife/MyApplication;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "log_url"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurActivtiy()Ljava/lang/String;
    .locals 3

    .prologue
    .line 125
    iget-object v0, p0, Lcom/smalife/MyApplication;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "curActivity"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurRateID()J
    .locals 4

    .prologue
    .line 435
    iget-object v0, p0, Lcom/smalife/MyApplication;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "rate_id"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getCurRateTime()I
    .locals 3

    .prologue
    .line 427
    iget-object v0, p0, Lcom/smalife/MyApplication;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "rate_time"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getDisturb()Z
    .locals 3

    .prologue
    .line 459
    iget-object v0, p0, Lcom/smalife/MyApplication;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "disturb"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getDisturbWeekDays()Ljava/lang/String;
    .locals 3

    .prologue
    .line 560
    iget-object v0, p0, Lcom/smalife/MyApplication;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "disturbweekDays"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFirmType()Ljava/lang/String;
    .locals 3

    .prologue
    .line 85
    iget-object v0, p0, Lcom/smalife/MyApplication;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "firmtype"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFirmWareVersion()Ljava/lang/String;
    .locals 3

    .prologue
    .line 53
    iget-object v0, p0, Lcom/smalife/MyApplication;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "firmWareVersion"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFriendAccount()Ljava/lang/String;
    .locals 3

    .prologue
    .line 157
    iget-object v0, p0, Lcom/smalife/MyApplication;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "friend_Account"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFriendName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 149
    iget-object v0, p0, Lcom/smalife/MyApplication;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "friendName"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHasLogin()Z
    .locals 3

    .prologue
    .line 326
    iget-object v0, p0, Lcom/smalife/MyApplication;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "hasLogin"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getHeaderIcon_url()Ljava/lang/String;
    .locals 3

    .prologue
    .line 318
    iget-object v0, p0, Lcom/smalife/MyApplication;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "header_url"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLanguage()Z
    .locals 3

    .prologue
    .line 310
    iget-object v0, p0, Lcom/smalife/MyApplication;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "isZh"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getLanguageSet()I
    .locals 3

    .prologue
    .line 552
    iget-object v0, p0, Lcom/smalife/MyApplication;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "language"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getLatestHeartValue()Ljava/lang/String;
    .locals 3

    .prologue
    .line 447
    iget-object v0, p0, Lcom/smalife/MyApplication;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "latest_heart_value"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLightHandSet()Z
    .locals 3

    .prologue
    .line 536
    iget-object v0, p0, Lcom/smalife/MyApplication;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "light_hand"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getLocationModel()I
    .locals 3

    .prologue
    .line 411
    iget-object v0, p0, Lcom/smalife/MyApplication;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "location_model"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getLongSitEnable()Z
    .locals 3

    .prologue
    .line 202
    iget-object v0, p0, Lcom/smalife/MyApplication;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "long_sit"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getLongSitEnd()B
    .locals 3

    .prologue
    .line 242
    iget-object v0, p0, Lcom/smalife/MyApplication;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "long_sit_end"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    int-to-byte v0, v0

    return v0
.end method

.method public getLongSitReapte()B
    .locals 3

    .prologue
    .line 218
    iget-object v0, p0, Lcom/smalife/MyApplication;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "long_sit_repeate"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    int-to-byte v0, v0

    return v0
.end method

.method public getLongSitStart()B
    .locals 3

    .prologue
    .line 234
    iget-object v0, p0, Lcom/smalife/MyApplication;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "long_sit_start"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    int-to-byte v0, v0

    return v0
.end method

.method public getLongSitSteps()B
    .locals 3

    .prologue
    .line 226
    iget-object v0, p0, Lcom/smalife/MyApplication;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "long_sit_steps"

    const/16 v2, 0x1e

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    int-to-byte v0, v0

    return v0
.end method

.method public getLongSitTime()B
    .locals 3

    .prologue
    .line 210
    iget-object v0, p0, Lcom/smalife/MyApplication;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "long_sit_time"

    const/16 v2, 0x1e

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    int-to-byte v0, v0

    return v0
.end method

.method public getLongSitWeekDays()Ljava/lang/String;
    .locals 3

    .prologue
    .line 250
    iget-object v0, p0, Lcom/smalife/MyApplication;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "long_sit_weekDays"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLost_notice()Z
    .locals 3

    .prologue
    .line 274
    iget-object v0, p0, Lcom/smalife/MyApplication;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "lost_notice"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getMsgNotic()Z
    .locals 3

    .prologue
    .line 282
    iget-object v0, p0, Lcom/smalife/MyApplication;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "msg_notic"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getNickName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 133
    iget-object v0, p0, Lcom/smalife/MyApplication;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "nickName"

    const-string v2, "sma_watch"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNodisturb(I)Ljava/lang/String;
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 564
    iget-object v0, p0, Lcom/smalife/MyApplication;->preferences:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "nodisturb"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "0,00,23"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOffset()I
    .locals 3

    .prologue
    .line 258
    iget-object v0, p0, Lcom/smalife/MyApplication;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "offset"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getProgress()I
    .locals 3

    .prologue
    .line 342
    iget-object v0, p0, Lcom/smalife/MyApplication;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "progress"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getPwd()Ljava/lang/String;
    .locals 3

    .prologue
    .line 165
    iget-object v0, p0, Lcom/smalife/MyApplication;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "password"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getQota()Z
    .locals 3

    .prologue
    .line 419
    iget-object v0, p0, Lcom/smalife/MyApplication;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "xiaoq_ota"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getRateDetectionEnd()B
    .locals 3

    .prologue
    .line 507
    iget-object v0, p0, Lcom/smalife/MyApplication;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "detection_end"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    int-to-byte v0, v0

    return v0
.end method

.method public getRateDetectionStart()B
    .locals 3

    .prologue
    .line 499
    iget-object v0, p0, Lcom/smalife/MyApplication;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "detection_start"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    int-to-byte v0, v0

    return v0
.end method

.method public getRateOpen()B
    .locals 3

    .prologue
    .line 528
    iget-object v0, p0, Lcom/smalife/MyApplication;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "detection_open"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    int-to-byte v0, v0

    return v0
.end method

.method public getRatePeriodTime()I
    .locals 3

    .prologue
    .line 515
    iget-object v0, p0, Lcom/smalife/MyApplication;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "detection_time"

    const/4 v2, 0x2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getSelectCountryNum()Ljava/lang/String;
    .locals 3

    .prologue
    .line 379
    iget-object v0, p0, Lcom/smalife/MyApplication;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "select_country_num"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getShakeTime()I
    .locals 3

    .prologue
    .line 475
    iget-object v0, p0, Lcom/smalife/MyApplication;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "shakes_select"

    const/4 v2, 0x2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getSleepDetection()Z
    .locals 3

    .prologue
    .line 77
    iget-object v0, p0, Lcom/smalife/MyApplication;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "sleepdetection"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getStartSign()Z
    .locals 3

    .prologue
    .line 467
    iget-object v0, p0, Lcom/smalife/MyApplication;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "starSign"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getSyncDay()I
    .locals 3

    .prologue
    .line 371
    iget-object v0, p0, Lcom/smalife/MyApplication;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "sync_day"

    const v2, 0x1337755

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getUnit()I
    .locals 3

    .prologue
    .line 141
    iget-object v0, p0, Lcom/smalife/MyApplication;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "unit"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getUserID()I
    .locals 3

    .prologue
    .line 173
    iget-object v0, p0, Lcom/smalife/MyApplication;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "user_id"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getVerticalScreenSet()I
    .locals 3

    .prologue
    .line 544
    iget-object v0, p0, Lcom/smalife/MyApplication;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "screen"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getWatchType()Ljava/lang/String;
    .locals 3

    .prologue
    .line 194
    iget-object v0, p0, Lcom/smalife/MyApplication;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "sma_type"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasUploadMAC2WX()Z
    .locals 3

    .prologue
    .line 491
    iget-object v0, p0, Lcom/smalife/MyApplication;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "hasupload"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isThridLogin()Z
    .locals 3

    .prologue
    .line 109
    iget-object v0, p0, Lcom/smalife/MyApplication;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "isThridLogin"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public onCreate()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 29
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 31
    invoke-static {}, Lcom/smalife/utils/CrashHandler;->getInstance()Lcom/smalife/utils/CrashHandler;

    move-result-object v0

    .line 32
    .local v0, "catchHandler":Lcom/smalife/utils/CrashHandler;
    invoke-virtual {p0}, Lcom/smalife/MyApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/smalife/utils/CrashHandler;->init(Landroid/content/Context;)V

    .line 33
    const-string v2, "sma"

    invoke-virtual {p0, v2, v1}, Lcom/smalife/MyApplication;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/smalife/MyApplication;->preferences:Landroid/content/SharedPreferences;

    .line 34
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Lcom/smalife/MyApplication;->atyList:Ljava/util/ArrayList;

    .line 35
    invoke-direct {p0}, Lcom/smalife/MyApplication;->umengInit()V

    .line 36
    invoke-virtual {p0}, Lcom/smalife/MyApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    .line 37
    const-string v3, "CN"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 36
    :cond_0
    sput v1, Lcom/smalife/ablecloud/Config;->template:I

    .line 38
    return-void
.end method
