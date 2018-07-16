.class Lcom/smalife/activity/RegisterActivity$6;
.super Ljava/lang/Object;
.source "RegisterActivity.java"

# interfaces
.implements Lcom/accloud/cloudservice/PayloadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smalife/activity/RegisterActivity;->login(Ljava/lang/String;Ljava/lang/String;)V
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
.field final synthetic this$0:Lcom/smalife/activity/RegisterActivity;

.field private final synthetic val$account:Ljava/lang/String;

.field private final synthetic val$password:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/smalife/activity/RegisterActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/smalife/activity/RegisterActivity$6;->this$0:Lcom/smalife/activity/RegisterActivity;

    iput-object p2, p0, Lcom/smalife/activity/RegisterActivity$6;->val$account:Ljava/lang/String;

    iput-object p3, p0, Lcom/smalife/activity/RegisterActivity$6;->val$password:Ljava/lang/String;

    .line 360
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$1(Lcom/smalife/activity/RegisterActivity$6;)Lcom/smalife/activity/RegisterActivity;
    .locals 1

    .prologue
    .line 360
    iget-object v0, p0, Lcom/smalife/activity/RegisterActivity$6;->this$0:Lcom/smalife/activity/RegisterActivity;

    return-object v0
.end method


# virtual methods
.method public error(Lcom/accloud/service/ACException;)V
    .locals 4
    .param p1, "e"    # Lcom/accloud/service/ACException;

    .prologue
    .line 363
    iget-object v0, p0, Lcom/smalife/activity/RegisterActivity$6;->this$0:Lcom/smalife/activity/RegisterActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/smalife/activity/RegisterActivity$6;->this$0:Lcom/smalife/activity/RegisterActivity;

    .line 364
    const-class v3, Lcom/smalife/activity/LoginActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 363
    invoke-virtual {v0, v1}, Lcom/smalife/activity/RegisterActivity;->startActivity(Landroid/content/Intent;)V

    .line 365
    iget-object v0, p0, Lcom/smalife/activity/RegisterActivity$6;->this$0:Lcom/smalife/activity/RegisterActivity;

    invoke-virtual {v0}, Lcom/smalife/activity/RegisterActivity;->finish()V

    .line 366
    iget-object v0, p0, Lcom/smalife/activity/RegisterActivity$6;->this$0:Lcom/smalife/activity/RegisterActivity;

    .line 367
    invoke-virtual {p1}, Lcom/accloud/service/ACException;->getErrorCode()I

    move-result v1

    .line 366
    invoke-static {v0, v1}, Lcom/smalife/tools/ShowErrorToast;->showToast(Landroid/content/Context;I)V

    .line 368
    return-void
.end method

.method public success(Lcom/accloud/service/ACUserInfo;)V
    .locals 5
    .param p1, "user"    # Lcom/accloud/service/ACUserInfo;

    .prologue
    .line 373
    iget-object v1, p0, Lcom/smalife/activity/RegisterActivity$6;->this$0:Lcom/smalife/activity/RegisterActivity;

    iget-object v1, v1, Lcom/smalife/activity/RegisterActivity;->application:Lcom/smalife/MyApplication;

    iget-object v2, p0, Lcom/smalife/activity/RegisterActivity$6;->val$account:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/smalife/MyApplication;->editAccount(Ljava/lang/String;)V

    .line 374
    iget-object v1, p0, Lcom/smalife/activity/RegisterActivity$6;->this$0:Lcom/smalife/activity/RegisterActivity;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/smalife/activity/RegisterActivity$6;->this$0:Lcom/smalife/activity/RegisterActivity;

    .line 375
    const-class v4, Lcom/smalife/DownLoadDataService;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 374
    invoke-virtual {v1, v2}, Lcom/smalife/activity/RegisterActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 376
    iget-object v1, p0, Lcom/smalife/activity/RegisterActivity$6;->this$0:Lcom/smalife/activity/RegisterActivity;

    iget-object v2, p0, Lcom/smalife/activity/RegisterActivity$6;->this$0:Lcom/smalife/activity/RegisterActivity;

    invoke-virtual {v2}, Lcom/smalife/activity/RegisterActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 377
    const v3, 0x7f0900b4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 376
    invoke-static {v1, v2}, Lcom/smalife/tools/ShowToast;->show(Landroid/content/Context;Ljava/lang/String;)V

    .line 378
    new-instance v0, Lcom/accloud/service/ACMsg;

    invoke-direct {v0}, Lcom/accloud/service/ACMsg;-><init>()V

    .line 379
    .local v0, "fmsg":Lcom/accloud/service/ACMsg;
    const-string v1, "scanFriendInfo"

    invoke-virtual {v0, v1}, Lcom/accloud/service/ACMsg;->setName(Ljava/lang/String;)V

    .line 380
    const-string v1, "uAccount"

    iget-object v2, p0, Lcom/smalife/activity/RegisterActivity$6;->val$account:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/accloud/service/ACMsg;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 382
    iget-object v1, p0, Lcom/smalife/activity/RegisterActivity$6;->this$0:Lcom/smalife/activity/RegisterActivity;

    invoke-virtual {p1}, Lcom/accloud/service/ACUserInfo;->getUserId()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/smalife/activity/RegisterActivity;->access$13(Lcom/smalife/activity/RegisterActivity;J)V

    .line 383
    iget-object v1, p0, Lcom/smalife/activity/RegisterActivity$6;->this$0:Lcom/smalife/activity/RegisterActivity;

    iget-object v1, v1, Lcom/smalife/activity/RegisterActivity;->application:Lcom/smalife/MyApplication;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/smalife/MyApplication;->editHasLogin(Z)V

    .line 384
    invoke-static {}, Lcom/accloud/cloudservice/AC;->notificationMgr()Lcom/accloud/service/ACNotificationMgr;

    move-result-object v1

    iget-object v2, p0, Lcom/smalife/activity/RegisterActivity$6;->this$0:Lcom/smalife/activity/RegisterActivity;

    invoke-static {v2}, Lcom/smalife/activity/RegisterActivity;->access$1(Lcom/smalife/activity/RegisterActivity;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-object v3, p0, Lcom/smalife/activity/RegisterActivity$6;->this$0:Lcom/smalife/activity/RegisterActivity;

    invoke-static {v3}, Lcom/smalife/activity/RegisterActivity;->access$12(Lcom/smalife/activity/RegisterActivity;)Lcom/accloud/cloudservice/VoidCallback;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/accloud/service/ACNotificationMgr;->addAlias(Ljava/lang/Long;Lcom/accloud/cloudservice/VoidCallback;)V

    .line 385
    invoke-static {}, Lcom/accloud/cloudservice/AC;->accountMgr()Lcom/accloud/service/ACAccountMgr;

    move-result-object v1

    .line 386
    new-instance v2, Lcom/smalife/activity/RegisterActivity$6$1;

    iget-object v3, p0, Lcom/smalife/activity/RegisterActivity$6;->val$account:Ljava/lang/String;

    iget-object v4, p0, Lcom/smalife/activity/RegisterActivity$6;->val$password:Ljava/lang/String;

    invoke-direct {v2, p0, v3, p1, v4}, Lcom/smalife/activity/RegisterActivity$6$1;-><init>(Lcom/smalife/activity/RegisterActivity$6;Ljava/lang/String;Lcom/accloud/service/ACUserInfo;Ljava/lang/String;)V

    .line 385
    invoke-interface {v1, v2}, Lcom/accloud/service/ACAccountMgr;->getUserProfile(Lcom/accloud/cloudservice/PayloadCallback;)V

    .line 438
    iget-object v1, p0, Lcom/smalife/activity/RegisterActivity$6;->this$0:Lcom/smalife/activity/RegisterActivity;

    iget-object v1, v1, Lcom/smalife/activity/RegisterActivity;->application:Lcom/smalife/MyApplication;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/smalife/MyApplication;->editThridLogin(Z)V

    .line 445
    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/accloud/service/ACUserInfo;

    invoke-virtual {p0, p1}, Lcom/smalife/activity/RegisterActivity$6;->success(Lcom/accloud/service/ACUserInfo;)V

    return-void
.end method
