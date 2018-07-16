.class Lcom/smalife/activity/HeaderSettingActivity$1$1;
.super Ljava/lang/Object;
.source "HeaderSettingActivity.java"

# interfaces
.implements Lcom/accloud/cloudservice/PayloadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smalife/activity/HeaderSettingActivity$1;->success()V
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
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/smalife/activity/HeaderSettingActivity$1;


# direct methods
.method constructor <init>(Lcom/smalife/activity/HeaderSettingActivity$1;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/smalife/activity/HeaderSettingActivity$1$1;->this$1:Lcom/smalife/activity/HeaderSettingActivity$1;

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$1(Lcom/smalife/activity/HeaderSettingActivity$1$1;)Lcom/smalife/activity/HeaderSettingActivity$1;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/smalife/activity/HeaderSettingActivity$1$1;->this$1:Lcom/smalife/activity/HeaderSettingActivity$1;

    return-object v0
.end method


# virtual methods
.method public error(Lcom/accloud/service/ACException;)V
    .locals 0
    .param p1, "arg0"    # Lcom/accloud/service/ACException;

    .prologue
    .line 193
    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/smalife/activity/HeaderSettingActivity$1$1;->success(Ljava/lang/String;)V

    return-void
.end method

.method public success(Ljava/lang/String;)V
    .locals 3
    .param p1, "arg0"    # Ljava/lang/String;

    .prologue
    .line 164
    new-instance v0, Lcom/accloud/service/ACObject;

    invoke-direct {v0}, Lcom/accloud/service/ACObject;-><init>()V

    .line 165
    .local v0, "ac":Lcom/accloud/service/ACObject;
    const-string v1, "header_icon_url"

    invoke-virtual {v0, v1, p1}, Lcom/accloud/service/ACObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 166
    invoke-static {}, Lcom/accloud/cloudservice/AC;->accountMgr()Lcom/accloud/service/ACAccountMgr;

    move-result-object v1

    .line 167
    new-instance v2, Lcom/smalife/activity/HeaderSettingActivity$1$1$1;

    invoke-direct {v2, p0}, Lcom/smalife/activity/HeaderSettingActivity$1$1$1;-><init>(Lcom/smalife/activity/HeaderSettingActivity$1$1;)V

    .line 166
    invoke-interface {v1, v0, v2}, Lcom/accloud/service/ACAccountMgr;->setUserProfile(Lcom/accloud/service/ACObject;Lcom/accloud/cloudservice/VoidCallback;)V

    .line 187
    return-void
.end method
