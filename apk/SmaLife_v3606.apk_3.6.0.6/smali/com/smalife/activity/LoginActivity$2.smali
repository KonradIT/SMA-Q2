.class Lcom/smalife/activity/LoginActivity$2;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Lcom/accloud/cloudservice/PayloadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smalife/activity/LoginActivity;->login(Ljava/lang/String;Ljava/lang/String;)V
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
        "Lcom/accloud/service/ACUserInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smalife/activity/LoginActivity;

.field private final synthetic val$account:Ljava/lang/String;

.field private final synthetic val$password:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/smalife/activity/LoginActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/smalife/activity/LoginActivity$2;->this$0:Lcom/smalife/activity/LoginActivity;

    iput-object p2, p0, Lcom/smalife/activity/LoginActivity$2;->val$account:Ljava/lang/String;

    iput-object p3, p0, Lcom/smalife/activity/LoginActivity$2;->val$password:Ljava/lang/String;

    .line 419
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$1(Lcom/smalife/activity/LoginActivity$2;)Lcom/smalife/activity/LoginActivity;
    .locals 1

    .prologue
    .line 419
    iget-object v0, p0, Lcom/smalife/activity/LoginActivity$2;->this$0:Lcom/smalife/activity/LoginActivity;

    return-object v0
.end method


# virtual methods
.method public error(Lcom/accloud/service/ACException;)V
    .locals 2
    .param p1, "e"    # Lcom/accloud/service/ACException;

    .prologue
    .line 422
    iget-object v0, p0, Lcom/smalife/activity/LoginActivity$2;->this$0:Lcom/smalife/activity/LoginActivity;

    .line 423
    invoke-virtual {p1}, Lcom/accloud/service/ACException;->getErrorCode()I

    move-result v1

    .line 422
    invoke-static {v0, v1}, Lcom/smalife/tools/ShowErrorToast;->showToast(Landroid/content/Context;I)V

    .line 424
    return-void
.end method

.method public success(Lcom/accloud/service/ACUserInfo;)V
    .locals 5
    .param p1, "user"    # Lcom/accloud/service/ACUserInfo;

    .prologue
    .line 428
    iget-object v1, p0, Lcom/smalife/activity/LoginActivity$2;->this$0:Lcom/smalife/activity/LoginActivity;

    invoke-virtual {p1}, Lcom/accloud/service/ACUserInfo;->getUserId()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/smalife/activity/LoginActivity;->access$1(Lcom/smalife/activity/LoginActivity;J)V

    .line 429
    invoke-static {}, Lcom/accloud/cloudservice/AC;->notificationMgr()Lcom/accloud/service/ACNotificationMgr;

    move-result-object v1

    iget-object v2, p0, Lcom/smalife/activity/LoginActivity$2;->this$0:Lcom/smalife/activity/LoginActivity;

    invoke-static {v2}, Lcom/smalife/activity/LoginActivity;->access$2(Lcom/smalife/activity/LoginActivity;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 430
    new-instance v3, Lcom/smalife/activity/LoginActivity$2$1;

    invoke-direct {v3, p0}, Lcom/smalife/activity/LoginActivity$2$1;-><init>(Lcom/smalife/activity/LoginActivity$2;)V

    .line 429
    invoke-interface {v1, v2, v3}, Lcom/accloud/service/ACNotificationMgr;->addAlias(Ljava/lang/Long;Lcom/accloud/cloudservice/VoidCallback;)V

    .line 443
    iget-object v1, p0, Lcom/smalife/activity/LoginActivity$2;->this$0:Lcom/smalife/activity/LoginActivity;

    invoke-static {v1}, Lcom/smalife/activity/LoginActivity;->access$3(Lcom/smalife/activity/LoginActivity;)Lcom/smalife/MyApplication;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/smalife/MyApplication;->editHasLogin(Z)V

    .line 444
    iget-object v1, p0, Lcom/smalife/activity/LoginActivity$2;->this$0:Lcom/smalife/activity/LoginActivity;

    invoke-static {v1}, Lcom/smalife/activity/LoginActivity;->access$3(Lcom/smalife/activity/LoginActivity;)Lcom/smalife/MyApplication;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/smalife/MyApplication;->editThridLogin(Z)V

    .line 445
    iget-object v1, p0, Lcom/smalife/activity/LoginActivity$2;->this$0:Lcom/smalife/activity/LoginActivity;

    invoke-static {v1}, Lcom/smalife/activity/LoginActivity;->access$3(Lcom/smalife/activity/LoginActivity;)Lcom/smalife/MyApplication;

    move-result-object v1

    iget-object v2, p0, Lcom/smalife/activity/LoginActivity$2;->val$account:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/smalife/MyApplication;->editAccount(Ljava/lang/String;)V

    .line 447
    iget-object v1, p0, Lcom/smalife/activity/LoginActivity$2;->this$0:Lcom/smalife/activity/LoginActivity;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/smalife/activity/LoginActivity$2;->this$0:Lcom/smalife/activity/LoginActivity;

    .line 448
    const-class v4, Lcom/smalife/DownLoadDataService;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 447
    invoke-virtual {v1, v2}, Lcom/smalife/activity/LoginActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 449
    iget-object v1, p0, Lcom/smalife/activity/LoginActivity$2;->this$0:Lcom/smalife/activity/LoginActivity;

    iget-object v2, p0, Lcom/smalife/activity/LoginActivity$2;->this$0:Lcom/smalife/activity/LoginActivity;

    invoke-virtual {v2}, Lcom/smalife/activity/LoginActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 450
    const v3, 0x7f0900b4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 449
    invoke-static {v1, v2}, Lcom/smalife/tools/ShowToast;->show(Landroid/content/Context;Ljava/lang/String;)V

    .line 452
    new-instance v0, Lcom/accloud/service/ACMsg;

    invoke-direct {v0}, Lcom/accloud/service/ACMsg;-><init>()V

    .line 453
    .local v0, "fmsg":Lcom/accloud/service/ACMsg;
    const-string v1, "scanFriendInfo"

    invoke-virtual {v0, v1}, Lcom/accloud/service/ACMsg;->setName(Ljava/lang/String;)V

    .line 454
    const-string v1, "uAccount"

    iget-object v2, p0, Lcom/smalife/activity/LoginActivity$2;->this$0:Lcom/smalife/activity/LoginActivity;

    invoke-static {v2}, Lcom/smalife/activity/LoginActivity;->access$4(Lcom/smalife/activity/LoginActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/accloud/service/ACMsg;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 456
    invoke-static {}, Lcom/accloud/cloudservice/AC;->accountMgr()Lcom/accloud/service/ACAccountMgr;

    move-result-object v1

    .line 457
    new-instance v2, Lcom/smalife/activity/LoginActivity$2$2;

    iget-object v3, p0, Lcom/smalife/activity/LoginActivity$2;->val$account:Ljava/lang/String;

    iget-object v4, p0, Lcom/smalife/activity/LoginActivity$2;->val$password:Ljava/lang/String;

    invoke-direct {v2, p0, v3, p1, v4}, Lcom/smalife/activity/LoginActivity$2$2;-><init>(Lcom/smalife/activity/LoginActivity$2;Ljava/lang/String;Lcom/accloud/service/ACUserInfo;Ljava/lang/String;)V

    .line 456
    invoke-interface {v1, v2}, Lcom/accloud/service/ACAccountMgr;->getUserProfile(Lcom/accloud/cloudservice/PayloadCallback;)V

    .line 506
    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/accloud/service/ACUserInfo;

    invoke-virtual {p0, p1}, Lcom/smalife/activity/LoginActivity$2;->success(Lcom/accloud/service/ACUserInfo;)V

    return-void
.end method
