.class Lcom/smalife/activity/LoginActivity$3;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Lcom/accloud/cloudservice/PayloadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smalife/activity/LoginActivity;->loginWithThirdId(Lcom/accloud/service/ACThirdPlatform;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
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

.field private final synthetic val$nickName:Ljava/lang/String;

.field private final synthetic val$user_account:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/smalife/activity/LoginActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/smalife/activity/LoginActivity$3;->this$0:Lcom/smalife/activity/LoginActivity;

    iput-object p2, p0, Lcom/smalife/activity/LoginActivity$3;->val$user_account:Ljava/lang/String;

    iput-object p3, p0, Lcom/smalife/activity/LoginActivity$3;->val$nickName:Ljava/lang/String;

    .line 601
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public error(Lcom/accloud/service/ACException;)V
    .locals 0
    .param p1, "e"    # Lcom/accloud/service/ACException;

    .prologue
    .line 629
    return-void
.end method

.method public success(Lcom/accloud/service/ACUserInfo;)V
    .locals 5
    .param p1, "userInfo"    # Lcom/accloud/service/ACUserInfo;

    .prologue
    .line 604
    new-instance v1, Ljava/lang/StringBuilder;

    const-class v2, Lcom/smalife/activity/LoginActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 605
    const-string v2, ">>>>loginWithThirdId success"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 606
    invoke-virtual {p1}, Lcom/accloud/service/ACUserInfo;->getUserId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 607
    invoke-virtual {p1}, Lcom/accloud/service/ACUserInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 604
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/bestmafen/utils/L;->e(Ljava/lang/String;)V

    .line 608
    iget-object v1, p0, Lcom/smalife/activity/LoginActivity$3;->this$0:Lcom/smalife/activity/LoginActivity;

    new-instance v2, Lcom/smalife/ablecloud/DownloadDataManager;

    .line 609
    iget-object v3, p0, Lcom/smalife/activity/LoginActivity$3;->val$user_account:Ljava/lang/String;

    iget-object v4, p0, Lcom/smalife/activity/LoginActivity$3;->this$0:Lcom/smalife/activity/LoginActivity;

    invoke-direct {v2, v3, v4}, Lcom/smalife/ablecloud/DownloadDataManager;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    .line 608
    invoke-static {v1, v2}, Lcom/smalife/activity/LoginActivity;->access$5(Lcom/smalife/activity/LoginActivity;Lcom/smalife/ablecloud/DownloadDataManager;)V

    .line 610
    iget-object v1, p0, Lcom/smalife/activity/LoginActivity$3;->this$0:Lcom/smalife/activity/LoginActivity;

    invoke-static {v1}, Lcom/smalife/activity/LoginActivity;->access$6(Lcom/smalife/activity/LoginActivity;)Lcom/smalife/ablecloud/DownloadDataManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smalife/ablecloud/DownloadDataManager;->downloadSport()V

    .line 611
    iget-object v1, p0, Lcom/smalife/activity/LoginActivity$3;->this$0:Lcom/smalife/activity/LoginActivity;

    invoke-static {v1}, Lcom/smalife/activity/LoginActivity;->access$6(Lcom/smalife/activity/LoginActivity;)Lcom/smalife/ablecloud/DownloadDataManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smalife/ablecloud/DownloadDataManager;->downloadSleep()V

    .line 612
    iget-object v1, p0, Lcom/smalife/activity/LoginActivity$3;->this$0:Lcom/smalife/activity/LoginActivity;

    invoke-static {v1}, Lcom/smalife/activity/LoginActivity;->access$6(Lcom/smalife/activity/LoginActivity;)Lcom/smalife/ablecloud/DownloadDataManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smalife/ablecloud/DownloadDataManager;->downloadClock()V

    .line 613
    iget-object v1, p0, Lcom/smalife/activity/LoginActivity$3;->this$0:Lcom/smalife/activity/LoginActivity;

    invoke-static {v1}, Lcom/smalife/activity/LoginActivity;->access$6(Lcom/smalife/activity/LoginActivity;)Lcom/smalife/ablecloud/DownloadDataManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smalife/ablecloud/DownloadDataManager;->downloadRate()V

    .line 615
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/smalife/activity/LoginActivity$3;->this$0:Lcom/smalife/activity/LoginActivity;

    .line 616
    const-class v2, Lcom/smalife/activity/InputActivity;

    .line 615
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 617
    .local v0, "inputIntent":Landroid/content/Intent;
    const-string v1, "nickName"

    iget-object v2, p0, Lcom/smalife/activity/LoginActivity$3;->val$nickName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 618
    const-string v1, "user_account"

    iget-object v2, p0, Lcom/smalife/activity/LoginActivity$3;->val$user_account:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 619
    iget-object v1, p0, Lcom/smalife/activity/LoginActivity$3;->this$0:Lcom/smalife/activity/LoginActivity;

    invoke-static {v1}, Lcom/smalife/activity/LoginActivity;->access$3(Lcom/smalife/activity/LoginActivity;)Lcom/smalife/MyApplication;

    move-result-object v1

    iget-object v2, p0, Lcom/smalife/activity/LoginActivity$3;->val$user_account:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/smalife/MyApplication;->editAccount(Ljava/lang/String;)V

    .line 620
    iget-object v1, p0, Lcom/smalife/activity/LoginActivity$3;->this$0:Lcom/smalife/activity/LoginActivity;

    invoke-static {v1}, Lcom/smalife/activity/LoginActivity;->access$3(Lcom/smalife/activity/LoginActivity;)Lcom/smalife/MyApplication;

    move-result-object v1

    iget-object v2, p0, Lcom/smalife/activity/LoginActivity$3;->val$nickName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/smalife/MyApplication;->editNickName(Ljava/lang/String;)V

    .line 621
    iget-object v1, p0, Lcom/smalife/activity/LoginActivity$3;->this$0:Lcom/smalife/activity/LoginActivity;

    invoke-static {v1}, Lcom/smalife/activity/LoginActivity;->access$3(Lcom/smalife/activity/LoginActivity;)Lcom/smalife/MyApplication;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/smalife/MyApplication;->editThridLogin(Z)V

    .line 622
    iget-object v1, p0, Lcom/smalife/activity/LoginActivity$3;->this$0:Lcom/smalife/activity/LoginActivity;

    invoke-virtual {v1, v0}, Lcom/smalife/activity/LoginActivity;->startActivity(Landroid/content/Intent;)V

    .line 623
    iget-object v1, p0, Lcom/smalife/activity/LoginActivity$3;->this$0:Lcom/smalife/activity/LoginActivity;

    invoke-virtual {v1}, Lcom/smalife/activity/LoginActivity;->finish()V

    .line 624
    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/accloud/service/ACUserInfo;

    invoke-virtual {p0, p1}, Lcom/smalife/activity/LoginActivity$3;->success(Lcom/accloud/service/ACUserInfo;)V

    return-void
.end method
