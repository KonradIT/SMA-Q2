.class Lcom/accloud/cloudservice/ACAccountManager$14;
.super Ljava/lang/Object;
.source "ACAccountManager.java"

# interfaces
.implements Lcom/accloud/cloudservice/ACMsgListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/accloud/cloudservice/ACAccountManager;->resetPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/accloud/cloudservice/PayloadCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/accloud/cloudservice/ACAccountManager;

.field final synthetic val$callback:Lcom/accloud/cloudservice/PayloadCallback;


# direct methods
.method constructor <init>(Lcom/accloud/cloudservice/ACAccountManager;Lcom/accloud/cloudservice/PayloadCallback;)V
    .locals 0

    .prologue
    .line 566
    iput-object p1, p0, Lcom/accloud/cloudservice/ACAccountManager$14;->this$0:Lcom/accloud/cloudservice/ACAccountManager;

    iput-object p2, p0, Lcom/accloud/cloudservice/ACAccountManager$14;->val$callback:Lcom/accloud/cloudservice/PayloadCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public error(Lcom/accloud/service/ACException;)V
    .locals 1
    .param p1, "e"    # Lcom/accloud/service/ACException;

    .prologue
    .line 593
    iget-object v0, p0, Lcom/accloud/cloudservice/ACAccountManager$14;->val$callback:Lcom/accloud/cloudservice/PayloadCallback;

    invoke-interface {v0, p1}, Lcom/accloud/cloudservice/PayloadCallback;->error(Lcom/accloud/service/ACException;)V

    .line 594
    return-void
.end method

.method public finish(Lcom/accloud/service/ACMsg;)V
    .locals 12
    .param p1, "resp"    # Lcom/accloud/service/ACMsg;

    .prologue
    .line 569
    invoke-virtual {p1}, Lcom/accloud/service/ACMsg;->isErr()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 570
    iget-object v5, p0, Lcom/accloud/cloudservice/ACAccountManager$14;->val$callback:Lcom/accloud/cloudservice/PayloadCallback;

    new-instance v8, Lcom/accloud/service/ACException;

    invoke-virtual {p1}, Lcom/accloud/service/ACMsg;->getErrCode()Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const-string v10, "error"

    invoke-virtual {p1, v10}, Lcom/accloud/service/ACMsg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lcom/accloud/service/ACException;-><init>(ILjava/lang/String;)V

    invoke-interface {v5, v8}, Lcom/accloud/cloudservice/PayloadCallback;->error(Lcom/accloud/service/ACException;)V

    .line 589
    :goto_0
    return-void

    .line 572
    :cond_0
    const-string v5, "userId"

    invoke-virtual {p1, v5}, Lcom/accloud/service/ACMsg;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 573
    .local v6, "uid":J
    const-string v5, "token"

    invoke-virtual {p1, v5}, Lcom/accloud/service/ACMsg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 574
    .local v3, "token":Ljava/lang/String;
    const-string v5, "tokenExpire"

    invoke-virtual {p1, v5}, Lcom/accloud/service/ACMsg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 575
    .local v4, "tokenExpire":Ljava/lang/String;
    const-string v5, "refreshToken"

    invoke-virtual {p1, v5}, Lcom/accloud/service/ACMsg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 576
    .local v1, "refreshToken":Ljava/lang/String;
    const-string v5, "refreshTokenExpire"

    invoke-virtual {p1, v5}, Lcom/accloud/service/ACMsg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 577
    .local v2, "refreshTokenExpire":Ljava/lang/String;
    const-string v5, "nickName"

    invoke-virtual {p1, v5}, Lcom/accloud/service/ACMsg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 578
    .local v0, "name":Ljava/lang/String;
    invoke-static {}, Lcom/accloud/cloudservice/ACAccountManager;->access$100()Ljava/lang/String;

    move-result-object v5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "uid:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "token:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/accloud/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 579
    sget-object v5, Lcom/accloud/cloudservice/AC;->context:Landroid/content/Context;

    const-string v8, "ablecloud_private_userId"

    invoke-static {v5, v8, v6, v7}, Lcom/accloud/utils/PreferencesUtils;->putLong(Landroid/content/Context;Ljava/lang/String;J)Z

    .line 580
    sget-object v5, Lcom/accloud/cloudservice/AC;->context:Landroid/content/Context;

    const-string v8, "ablecloud_private_token"

    invoke-static {v5, v8, v3}, Lcom/accloud/utils/PreferencesUtils;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 581
    sget-object v5, Lcom/accloud/cloudservice/AC;->context:Landroid/content/Context;

    const-string v8, "ablecloud_private_refresh_token"

    invoke-static {v5, v8, v1}, Lcom/accloud/utils/PreferencesUtils;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 583
    :try_start_0
    sget-object v5, Lcom/accloud/cloudservice/AC;->context:Landroid/content/Context;

    const-string v8, "ablecloud_private_token_expire"

    iget-object v9, p0, Lcom/accloud/cloudservice/ACAccountManager$14;->this$0:Lcom/accloud/cloudservice/ACAccountManager;

    invoke-static {v9}, Lcom/accloud/cloudservice/ACAccountManager;->access$000(Lcom/accloud/cloudservice/ACAccountManager;)Ljava/text/SimpleDateFormat;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    invoke-static {v5, v8, v10, v11}, Lcom/accloud/utils/PreferencesUtils;->putLong(Landroid/content/Context;Ljava/lang/String;J)Z

    .line 584
    sget-object v5, Lcom/accloud/cloudservice/AC;->context:Landroid/content/Context;

    const-string v8, "ablecloud_private_fefresh_token_expire"

    iget-object v9, p0, Lcom/accloud/cloudservice/ACAccountManager$14;->this$0:Lcom/accloud/cloudservice/ACAccountManager;

    invoke-static {v9}, Lcom/accloud/cloudservice/ACAccountManager;->access$000(Lcom/accloud/cloudservice/ACAccountManager;)Ljava/text/SimpleDateFormat;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    invoke-static {v5, v8, v10, v11}, Lcom/accloud/utils/PreferencesUtils;->putLong(Landroid/content/Context;Ljava/lang/String;J)Z
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 587
    :goto_1
    iget-object v5, p0, Lcom/accloud/cloudservice/ACAccountManager$14;->val$callback:Lcom/accloud/cloudservice/PayloadCallback;

    new-instance v8, Lcom/accloud/service/ACUserInfo;

    invoke-direct {v8, v6, v7, v0}, Lcom/accloud/service/ACUserInfo;-><init>(JLjava/lang/String;)V

    invoke-interface {v5, v8}, Lcom/accloud/cloudservice/PayloadCallback;->success(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 585
    :catch_0
    move-exception v5

    goto :goto_1
.end method
