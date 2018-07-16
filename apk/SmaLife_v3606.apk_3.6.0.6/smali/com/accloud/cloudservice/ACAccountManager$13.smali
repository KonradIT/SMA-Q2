.class Lcom/accloud/cloudservice/ACAccountManager$13;
.super Ljava/lang/Object;
.source "ACAccountManager.java"

# interfaces
.implements Lcom/accloud/cloudservice/ACMsgListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/accloud/cloudservice/ACAccountManager;->changePassword(Ljava/lang/String;Ljava/lang/String;Lcom/accloud/cloudservice/VoidCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/accloud/cloudservice/ACAccountManager;

.field final synthetic val$callback:Lcom/accloud/cloudservice/VoidCallback;


# direct methods
.method constructor <init>(Lcom/accloud/cloudservice/ACAccountManager;Lcom/accloud/cloudservice/VoidCallback;)V
    .locals 0

    .prologue
    .line 520
    iput-object p1, p0, Lcom/accloud/cloudservice/ACAccountManager$13;->this$0:Lcom/accloud/cloudservice/ACAccountManager;

    iput-object p2, p0, Lcom/accloud/cloudservice/ACAccountManager$13;->val$callback:Lcom/accloud/cloudservice/VoidCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public error(Lcom/accloud/service/ACException;)V
    .locals 1
    .param p1, "e"    # Lcom/accloud/service/ACException;

    .prologue
    .line 545
    iget-object v0, p0, Lcom/accloud/cloudservice/ACAccountManager$13;->val$callback:Lcom/accloud/cloudservice/VoidCallback;

    invoke-interface {v0, p1}, Lcom/accloud/cloudservice/VoidCallback;->error(Lcom/accloud/service/ACException;)V

    .line 546
    return-void
.end method

.method public finish(Lcom/accloud/service/ACMsg;)V
    .locals 10
    .param p1, "resp"    # Lcom/accloud/service/ACMsg;

    .prologue
    .line 523
    invoke-virtual {p1}, Lcom/accloud/service/ACMsg;->isErr()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 524
    iget-object v6, p0, Lcom/accloud/cloudservice/ACAccountManager$13;->val$callback:Lcom/accloud/cloudservice/VoidCallback;

    new-instance v7, Lcom/accloud/service/ACException;

    invoke-virtual {p1}, Lcom/accloud/service/ACMsg;->getErrCode()Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const-string v9, "error"

    invoke-virtual {p1, v9}, Lcom/accloud/service/ACMsg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lcom/accloud/service/ACException;-><init>(ILjava/lang/String;)V

    invoke-interface {v6, v7}, Lcom/accloud/cloudservice/VoidCallback;->error(Lcom/accloud/service/ACException;)V

    .line 541
    :goto_0
    return-void

    .line 526
    :cond_0
    const-string v6, "userId"

    invoke-virtual {p1, v6}, Lcom/accloud/service/ACMsg;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 527
    .local v4, "userId":J
    const-string v6, "token"

    invoke-virtual {p1, v6}, Lcom/accloud/service/ACMsg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 528
    .local v2, "token":Ljava/lang/String;
    const-string v6, "tokenExpire"

    invoke-virtual {p1, v6}, Lcom/accloud/service/ACMsg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 529
    .local v3, "tokenExpire":Ljava/lang/String;
    const-string v6, "refreshToken"

    invoke-virtual {p1, v6}, Lcom/accloud/service/ACMsg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 530
    .local v0, "refreshToken":Ljava/lang/String;
    const-string v6, "refreshTokenExpire"

    invoke-virtual {p1, v6}, Lcom/accloud/service/ACMsg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 531
    .local v1, "refreshTokenExpire":Ljava/lang/String;
    sget-object v6, Lcom/accloud/cloudservice/AC;->context:Landroid/content/Context;

    const-string v7, "ablecloud_private_userId"

    invoke-static {v6, v7, v4, v5}, Lcom/accloud/utils/PreferencesUtils;->putLong(Landroid/content/Context;Ljava/lang/String;J)Z

    .line 532
    sget-object v6, Lcom/accloud/cloudservice/AC;->context:Landroid/content/Context;

    const-string v7, "ablecloud_private_token"

    invoke-static {v6, v7, v2}, Lcom/accloud/utils/PreferencesUtils;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 533
    sget-object v6, Lcom/accloud/cloudservice/AC;->context:Landroid/content/Context;

    const-string v7, "ablecloud_private_refresh_token"

    invoke-static {v6, v7, v0}, Lcom/accloud/utils/PreferencesUtils;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 535
    :try_start_0
    sget-object v6, Lcom/accloud/cloudservice/AC;->context:Landroid/content/Context;

    const-string v7, "ablecloud_private_token_expire"

    iget-object v8, p0, Lcom/accloud/cloudservice/ACAccountManager$13;->this$0:Lcom/accloud/cloudservice/ACAccountManager;

    invoke-static {v8}, Lcom/accloud/cloudservice/ACAccountManager;->access$000(Lcom/accloud/cloudservice/ACAccountManager;)Ljava/text/SimpleDateFormat;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    invoke-static {v6, v7, v8, v9}, Lcom/accloud/utils/PreferencesUtils;->putLong(Landroid/content/Context;Ljava/lang/String;J)Z

    .line 536
    sget-object v6, Lcom/accloud/cloudservice/AC;->context:Landroid/content/Context;

    const-string v7, "ablecloud_private_fefresh_token_expire"

    iget-object v8, p0, Lcom/accloud/cloudservice/ACAccountManager$13;->this$0:Lcom/accloud/cloudservice/ACAccountManager;

    invoke-static {v8}, Lcom/accloud/cloudservice/ACAccountManager;->access$000(Lcom/accloud/cloudservice/ACAccountManager;)Ljava/text/SimpleDateFormat;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    invoke-static {v6, v7, v8, v9}, Lcom/accloud/utils/PreferencesUtils;->putLong(Landroid/content/Context;Ljava/lang/String;J)Z
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 539
    :goto_1
    iget-object v6, p0, Lcom/accloud/cloudservice/ACAccountManager$13;->val$callback:Lcom/accloud/cloudservice/VoidCallback;

    invoke-interface {v6}, Lcom/accloud/cloudservice/VoidCallback;->success()V

    goto :goto_0

    .line 537
    :catch_0
    move-exception v6

    goto :goto_1
.end method
