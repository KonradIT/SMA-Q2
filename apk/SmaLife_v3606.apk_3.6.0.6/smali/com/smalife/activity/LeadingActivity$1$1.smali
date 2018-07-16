.class Lcom/smalife/activity/LeadingActivity$1$1;
.super Ljava/lang/Object;
.source "LeadingActivity.java"

# interfaces
.implements Lcom/accloud/cloudservice/PayloadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smalife/activity/LeadingActivity$1;->goOtherActivity()V
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
.field final synthetic this$1:Lcom/smalife/activity/LeadingActivity$1;


# direct methods
.method constructor <init>(Lcom/smalife/activity/LeadingActivity$1;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/smalife/activity/LeadingActivity$1$1;->this$1:Lcom/smalife/activity/LeadingActivity$1;

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$1(Lcom/smalife/activity/LeadingActivity$1$1;)Lcom/smalife/activity/LeadingActivity$1;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/smalife/activity/LeadingActivity$1$1;->this$1:Lcom/smalife/activity/LeadingActivity$1;

    return-object v0
.end method


# virtual methods
.method public error(Lcom/accloud/service/ACException;)V
    .locals 4
    .param p1, "e"    # Lcom/accloud/service/ACException;

    .prologue
    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LeadingActivity login >>>> error = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 176
    invoke-virtual {p1}, Lcom/accloud/service/ACException;->getErrorCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",message = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 177
    invoke-virtual {p1}, Lcom/accloud/service/ACException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 175
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bestmafen/utils/L;->e(Ljava/lang/String;)V

    .line 178
    iget-object v0, p0, Lcom/smalife/activity/LeadingActivity$1$1;->this$1:Lcom/smalife/activity/LeadingActivity$1;

    invoke-static {v0}, Lcom/smalife/activity/LeadingActivity$1;->access$0(Lcom/smalife/activity/LeadingActivity$1;)Lcom/smalife/activity/LeadingActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/smalife/activity/LeadingActivity;->access$0(Lcom/smalife/activity/LeadingActivity;)Lcom/smalife/MyApplication;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/smalife/MyApplication;->editHasLogin(Z)V

    .line 179
    iget-object v0, p0, Lcom/smalife/activity/LeadingActivity$1$1;->this$1:Lcom/smalife/activity/LeadingActivity$1;

    invoke-static {v0}, Lcom/smalife/activity/LeadingActivity$1;->access$0(Lcom/smalife/activity/LeadingActivity$1;)Lcom/smalife/activity/LeadingActivity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/smalife/activity/LeadingActivity$1$1;->this$1:Lcom/smalife/activity/LeadingActivity$1;

    invoke-static {v2}, Lcom/smalife/activity/LeadingActivity$1;->access$0(Lcom/smalife/activity/LeadingActivity$1;)Lcom/smalife/activity/LeadingActivity;

    move-result-object v2

    .line 180
    const-class v3, Lcom/smalife/activity/LoginActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 179
    invoke-virtual {v0, v1}, Lcom/smalife/activity/LeadingActivity;->startActivity(Landroid/content/Intent;)V

    .line 181
    iget-object v0, p0, Lcom/smalife/activity/LeadingActivity$1$1;->this$1:Lcom/smalife/activity/LeadingActivity$1;

    invoke-static {v0}, Lcom/smalife/activity/LeadingActivity$1;->access$0(Lcom/smalife/activity/LeadingActivity$1;)Lcom/smalife/activity/LeadingActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smalife/activity/LeadingActivity;->finish()V

    .line 182
    return-void
.end method

.method public success(Lcom/accloud/service/ACUserInfo;)V
    .locals 4
    .param p1, "user"    # Lcom/accloud/service/ACUserInfo;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/smalife/activity/LeadingActivity$1$1;->this$1:Lcom/smalife/activity/LeadingActivity$1;

    invoke-static {v0}, Lcom/smalife/activity/LeadingActivity$1;->access$0(Lcom/smalife/activity/LeadingActivity$1;)Lcom/smalife/activity/LeadingActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/smalife/activity/LeadingActivity;->access$0(Lcom/smalife/activity/LeadingActivity;)Lcom/smalife/MyApplication;

    move-result-object v0

    iget-object v1, p0, Lcom/smalife/activity/LeadingActivity$1$1;->this$1:Lcom/smalife/activity/LeadingActivity$1;

    invoke-static {v1}, Lcom/smalife/activity/LeadingActivity$1;->access$0(Lcom/smalife/activity/LeadingActivity$1;)Lcom/smalife/activity/LeadingActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/smalife/activity/LeadingActivity;->access$1(Lcom/smalife/activity/LeadingActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smalife/MyApplication;->editAccount(Ljava/lang/String;)V

    .line 118
    invoke-static {}, Lcom/accloud/cloudservice/AC;->accountMgr()Lcom/accloud/service/ACAccountMgr;

    move-result-object v0

    .line 119
    new-instance v1, Lcom/smalife/activity/LeadingActivity$1$1$1;

    invoke-direct {v1, p0}, Lcom/smalife/activity/LeadingActivity$1$1$1;-><init>(Lcom/smalife/activity/LeadingActivity$1$1;)V

    .line 118
    invoke-interface {v0, v1}, Lcom/accloud/service/ACAccountMgr;->getUserProfile(Lcom/accloud/cloudservice/PayloadCallback;)V

    .line 168
    iget-object v0, p0, Lcom/smalife/activity/LeadingActivity$1$1;->this$1:Lcom/smalife/activity/LeadingActivity$1;

    invoke-static {v0}, Lcom/smalife/activity/LeadingActivity$1;->access$0(Lcom/smalife/activity/LeadingActivity$1;)Lcom/smalife/activity/LeadingActivity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/smalife/activity/LeadingActivity$1$1;->this$1:Lcom/smalife/activity/LeadingActivity$1;

    invoke-static {v2}, Lcom/smalife/activity/LeadingActivity$1;->access$0(Lcom/smalife/activity/LeadingActivity$1;)Lcom/smalife/activity/LeadingActivity;

    move-result-object v2

    .line 169
    const-class v3, Lcom/smalife/activity/MainActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 168
    invoke-virtual {v0, v1}, Lcom/smalife/activity/LeadingActivity;->startActivity(Landroid/content/Intent;)V

    .line 170
    iget-object v0, p0, Lcom/smalife/activity/LeadingActivity$1$1;->this$1:Lcom/smalife/activity/LeadingActivity$1;

    invoke-static {v0}, Lcom/smalife/activity/LeadingActivity$1;->access$0(Lcom/smalife/activity/LeadingActivity$1;)Lcom/smalife/activity/LeadingActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smalife/activity/LeadingActivity;->finish()V

    .line 171
    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/accloud/service/ACUserInfo;

    invoke-virtual {p0, p1}, Lcom/smalife/activity/LeadingActivity$1$1;->success(Lcom/accloud/service/ACUserInfo;)V

    return-void
.end method
