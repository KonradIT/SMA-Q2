.class Lcom/smalife/activity/HeaderSettingActivity$1;
.super Ljava/lang/Object;
.source "HeaderSettingActivity.java"

# interfaces
.implements Lcom/accloud/cloudservice/VoidCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smalife/activity/HeaderSettingActivity;->updateHeaderIcon(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smalife/activity/HeaderSettingActivity;


# direct methods
.method constructor <init>(Lcom/smalife/activity/HeaderSettingActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/smalife/activity/HeaderSettingActivity$1;->this$0:Lcom/smalife/activity/HeaderSettingActivity;

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/smalife/activity/HeaderSettingActivity$1;)Lcom/smalife/activity/HeaderSettingActivity;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/smalife/activity/HeaderSettingActivity$1;->this$0:Lcom/smalife/activity/HeaderSettingActivity;

    return-object v0
.end method


# virtual methods
.method public error(Lcom/accloud/service/ACException;)V
    .locals 0
    .param p1, "e"    # Lcom/accloud/service/ACException;

    .prologue
    .line 151
    return-void
.end method

.method public success()V
    .locals 6

    .prologue
    .line 155
    iget-object v1, p0, Lcom/smalife/activity/HeaderSettingActivity$1;->this$0:Lcom/smalife/activity/HeaderSettingActivity;

    invoke-static {v1}, Lcom/smalife/activity/HeaderSettingActivity;->access$0(Lcom/smalife/activity/HeaderSettingActivity;)Lcom/smalife/MyApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smalife/MyApplication;->getHasLogin()Z

    move-result v0

    .line 156
    .local v0, "hasLogin":Z
    if-eqz v0, :cond_0

    .line 157
    invoke-static {}, Lcom/accloud/cloudservice/AC;->fileMgr()Lcom/accloud/service/ACFileMgr;

    move-result-object v1

    .line 158
    new-instance v2, Lcom/accloud/service/ACFileInfo;

    sget-object v3, Lcom/smalife/ablecloud/Config;->header_dir:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/smalife/activity/HeaderSettingActivity$1;->this$0:Lcom/smalife/activity/HeaderSettingActivity;

    invoke-static {v5}, Lcom/smalife/activity/HeaderSettingActivity;->access$0(Lcom/smalife/activity/HeaderSettingActivity;)Lcom/smalife/MyApplication;

    move-result-object v5

    .line 159
    invoke-virtual {v5}, Lcom/smalife/MyApplication;->getAccount()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ".jpg"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 158
    invoke-direct {v2, v3, v4}, Lcom/accloud/service/ACFileInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    const-wide/16 v4, 0x0

    .line 160
    new-instance v3, Lcom/smalife/activity/HeaderSettingActivity$1$1;

    invoke-direct {v3, p0}, Lcom/smalife/activity/HeaderSettingActivity$1$1;-><init>(Lcom/smalife/activity/HeaderSettingActivity$1;)V

    .line 157
    invoke-interface {v1, v2, v4, v5, v3}, Lcom/accloud/service/ACFileMgr;->getDownloadUrl(Lcom/accloud/service/ACFileInfo;JLcom/accloud/cloudservice/PayloadCallback;)V

    .line 232
    :cond_0
    return-void
.end method
