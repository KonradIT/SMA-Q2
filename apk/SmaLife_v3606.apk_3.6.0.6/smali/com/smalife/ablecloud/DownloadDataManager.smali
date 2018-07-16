.class public Lcom/smalife/ablecloud/DownloadDataManager;
.super Ljava/lang/Object;
.source "DownloadDataManager.java"


# instance fields
.field private dao:Lcom/smalife/db/SmaDao;

.field private preferences:Landroid/content/SharedPreferences;

.field private sendManager:Lcom/smalife/ablecloud/SendMsgManager;

.field private userAccount:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 2
    .param p1, "user_Account"    # Ljava/lang/String;
    .param p2, "mContext"    # Landroid/content/Context;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/smalife/ablecloud/DownloadDataManager;->userAccount:Ljava/lang/String;

    .line 37
    new-instance v0, Lcom/smalife/db/SmaDao;

    invoke-direct {v0, p2}, Lcom/smalife/db/SmaDao;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/smalife/ablecloud/DownloadDataManager;->dao:Lcom/smalife/db/SmaDao;

    .line 38
    invoke-static {}, Lcom/smalife/ablecloud/SendMsgManager;->getSendSerivceIntance()Lcom/smalife/ablecloud/SendMsgManager;

    move-result-object v0

    iput-object v0, p0, Lcom/smalife/ablecloud/DownloadDataManager;->sendManager:Lcom/smalife/ablecloud/SendMsgManager;

    .line 40
    const-string v0, "sma"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 39
    iput-object v0, p0, Lcom/smalife/ablecloud/DownloadDataManager;->preferences:Landroid/content/SharedPreferences;

    .line 41
    return-void
.end method

.method static synthetic access$0(Lcom/smalife/ablecloud/DownloadDataManager;)Lcom/smalife/db/SmaDao;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/smalife/ablecloud/DownloadDataManager;->dao:Lcom/smalife/db/SmaDao;

    return-object v0
.end method

.method static synthetic access$1(Lcom/smalife/ablecloud/DownloadDataManager;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/smalife/ablecloud/DownloadDataManager;->userAccount:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lcom/smalife/ablecloud/DownloadDataManager;)Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/smalife/ablecloud/DownloadDataManager;->preferences:Landroid/content/SharedPreferences;

    return-object v0
.end method


# virtual methods
.method public downloadClock()V
    .locals 3

    .prologue
    .line 188
    new-instance v0, Lcom/accloud/service/ACMsg;

    invoke-direct {v0}, Lcom/accloud/service/ACMsg;-><init>()V

    .line 189
    .local v0, "msg":Lcom/accloud/service/ACMsg;
    const-string v1, "sync_clock"

    invoke-virtual {v0, v1}, Lcom/accloud/service/ACMsg;->setName(Ljava/lang/String;)V

    .line 190
    const-string v1, "user_account"

    iget-object v2, p0, Lcom/smalife/ablecloud/DownloadDataManager;->userAccount:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/accloud/service/ACMsg;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 191
    iget-object v1, p0, Lcom/smalife/ablecloud/DownloadDataManager;->sendManager:Lcom/smalife/ablecloud/SendMsgManager;

    new-instance v2, Lcom/smalife/ablecloud/DownloadDataManager$4;

    invoke-direct {v2, p0}, Lcom/smalife/ablecloud/DownloadDataManager$4;-><init>(Lcom/smalife/ablecloud/DownloadDataManager;)V

    invoke-virtual {v1, v0, v2}, Lcom/smalife/ablecloud/SendMsgManager;->sendMsg(Lcom/accloud/service/ACMsg;Lcom/accloud/cloudservice/PayloadCallback;)V

    .line 228
    return-void
.end method

.method public downloadRate()V
    .locals 3

    .prologue
    .line 147
    new-instance v0, Lcom/accloud/service/ACMsg;

    invoke-direct {v0}, Lcom/accloud/service/ACMsg;-><init>()V

    .line 148
    .local v0, "msg":Lcom/accloud/service/ACMsg;
    const-string v1, "sync_rate"

    invoke-virtual {v0, v1}, Lcom/accloud/service/ACMsg;->setName(Ljava/lang/String;)V

    .line 149
    const-string v1, "user_account"

    iget-object v2, p0, Lcom/smalife/ablecloud/DownloadDataManager;->userAccount:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/accloud/service/ACMsg;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 150
    iget-object v1, p0, Lcom/smalife/ablecloud/DownloadDataManager;->sendManager:Lcom/smalife/ablecloud/SendMsgManager;

    new-instance v2, Lcom/smalife/ablecloud/DownloadDataManager$3;

    invoke-direct {v2, p0}, Lcom/smalife/ablecloud/DownloadDataManager$3;-><init>(Lcom/smalife/ablecloud/DownloadDataManager;)V

    invoke-virtual {v1, v0, v2}, Lcom/smalife/ablecloud/SendMsgManager;->sendMsg(Lcom/accloud/service/ACMsg;Lcom/accloud/cloudservice/PayloadCallback;)V

    .line 182
    return-void
.end method

.method public downloadSleep()V
    .locals 3

    .prologue
    .line 99
    new-instance v0, Lcom/accloud/service/ACMsg;

    invoke-direct {v0}, Lcom/accloud/service/ACMsg;-><init>()V

    .line 100
    .local v0, "msg":Lcom/accloud/service/ACMsg;
    const-string v1, "sync_sleep"

    invoke-virtual {v0, v1}, Lcom/accloud/service/ACMsg;->setName(Ljava/lang/String;)V

    .line 101
    const-string v1, "user_account"

    iget-object v2, p0, Lcom/smalife/ablecloud/DownloadDataManager;->userAccount:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/accloud/service/ACMsg;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 102
    iget-object v1, p0, Lcom/smalife/ablecloud/DownloadDataManager;->sendManager:Lcom/smalife/ablecloud/SendMsgManager;

    new-instance v2, Lcom/smalife/ablecloud/DownloadDataManager$2;

    invoke-direct {v2, p0}, Lcom/smalife/ablecloud/DownloadDataManager$2;-><init>(Lcom/smalife/ablecloud/DownloadDataManager;)V

    invoke-virtual {v1, v0, v2}, Lcom/smalife/ablecloud/SendMsgManager;->sendMsg(Lcom/accloud/service/ACMsg;Lcom/accloud/cloudservice/PayloadCallback;)V

    .line 141
    return-void
.end method

.method public downloadSma()V
    .locals 3

    .prologue
    .line 231
    new-instance v0, Lcom/accloud/service/ACMsg;

    invoke-direct {v0}, Lcom/accloud/service/ACMsg;-><init>()V

    .line 232
    .local v0, "msg":Lcom/accloud/service/ACMsg;
    const-string v1, "sync_sma"

    invoke-virtual {v0, v1}, Lcom/accloud/service/ACMsg;->setName(Ljava/lang/String;)V

    .line 233
    const-string v1, "user_account"

    iget-object v2, p0, Lcom/smalife/ablecloud/DownloadDataManager;->userAccount:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/accloud/service/ACMsg;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 234
    iget-object v1, p0, Lcom/smalife/ablecloud/DownloadDataManager;->sendManager:Lcom/smalife/ablecloud/SendMsgManager;

    new-instance v2, Lcom/smalife/ablecloud/DownloadDataManager$5;

    invoke-direct {v2, p0}, Lcom/smalife/ablecloud/DownloadDataManager$5;-><init>(Lcom/smalife/ablecloud/DownloadDataManager;)V

    invoke-virtual {v1, v0, v2}, Lcom/smalife/ablecloud/SendMsgManager;->sendMsg(Lcom/accloud/service/ACMsg;Lcom/accloud/cloudservice/PayloadCallback;)V

    .line 281
    return-void
.end method

.method public downloadSport()V
    .locals 3

    .prologue
    .line 47
    new-instance v0, Lcom/accloud/service/ACMsg;

    invoke-direct {v0}, Lcom/accloud/service/ACMsg;-><init>()V

    .line 48
    .local v0, "msg":Lcom/accloud/service/ACMsg;
    const-string v1, "sync_sport"

    invoke-virtual {v0, v1}, Lcom/accloud/service/ACMsg;->setName(Ljava/lang/String;)V

    .line 49
    const-string v1, "user_account"

    iget-object v2, p0, Lcom/smalife/ablecloud/DownloadDataManager;->userAccount:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/accloud/service/ACMsg;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 50
    iget-object v1, p0, Lcom/smalife/ablecloud/DownloadDataManager;->sendManager:Lcom/smalife/ablecloud/SendMsgManager;

    new-instance v2, Lcom/smalife/ablecloud/DownloadDataManager$1;

    invoke-direct {v2, p0}, Lcom/smalife/ablecloud/DownloadDataManager$1;-><init>(Lcom/smalife/ablecloud/DownloadDataManager;)V

    invoke-virtual {v1, v0, v2}, Lcom/smalife/ablecloud/SendMsgManager;->sendMsg(Lcom/accloud/service/ACMsg;Lcom/accloud/cloudservice/PayloadCallback;)V

    .line 93
    return-void
.end method

.method public formatDate(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 297
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyyMMdd"

    .line 298
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    .line 297
    invoke-direct {v1, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 299
    .local v1, "sf1":Ljava/text/SimpleDateFormat;
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy-MM-dd"

    .line 300
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    .line 299
    invoke-direct {v2, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 301
    .local v2, "sf2":Ljava/text/SimpleDateFormat;
    const-string v3, ""

    .line 303
    .local v3, "sfstr":Ljava/lang/String;
    :try_start_0
    invoke-virtual {v1, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 308
    :goto_0
    return-object v3

    .line 304
    :catch_0
    move-exception v0

    .line 306
    .local v0, "e":Ljava/text/ParseException;
    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_0
.end method

.method public isyyyy_MM_dd(Ljava/lang/String;)Z
    .locals 4
    .param p1, "date"    # Ljava/lang/String;

    .prologue
    .line 286
    const-string v2, "\\d{4}-\\d{2}-\\d{2}"

    .line 287
    .local v2, "pat":Ljava/lang/String;
    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 288
    .local v1, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 289
    .local v0, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 290
    const/4 v3, 0x1

    .line 292
    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method
