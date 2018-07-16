.class Lcom/smalife/activity/HeaderSettingActivity$1$1$1;
.super Ljava/lang/Object;
.source "HeaderSettingActivity.java"

# interfaces
.implements Lcom/accloud/cloudservice/VoidCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smalife/activity/HeaderSettingActivity$1$1;->success(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/smalife/activity/HeaderSettingActivity$1$1;


# direct methods
.method constructor <init>(Lcom/smalife/activity/HeaderSettingActivity$1$1;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/smalife/activity/HeaderSettingActivity$1$1$1;->this$2:Lcom/smalife/activity/HeaderSettingActivity$1$1;

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public error(Lcom/accloud/service/ACException;)V
    .locals 0
    .param p1, "arg0"    # Lcom/accloud/service/ACException;

    .prologue
    .line 184
    return-void
.end method

.method public success()V
    .locals 3

    .prologue
    .line 172
    iget-object v0, p0, Lcom/smalife/activity/HeaderSettingActivity$1$1$1;->this$2:Lcom/smalife/activity/HeaderSettingActivity$1$1;

    invoke-static {v0}, Lcom/smalife/activity/HeaderSettingActivity$1$1;->access$1(Lcom/smalife/activity/HeaderSettingActivity$1$1;)Lcom/smalife/activity/HeaderSettingActivity$1;

    move-result-object v0

    invoke-static {v0}, Lcom/smalife/activity/HeaderSettingActivity$1;->access$0(Lcom/smalife/activity/HeaderSettingActivity$1;)Lcom/smalife/activity/HeaderSettingActivity;

    move-result-object v0

    .line 173
    iget-object v1, p0, Lcom/smalife/activity/HeaderSettingActivity$1$1$1;->this$2:Lcom/smalife/activity/HeaderSettingActivity$1$1;

    invoke-static {v1}, Lcom/smalife/activity/HeaderSettingActivity$1$1;->access$1(Lcom/smalife/activity/HeaderSettingActivity$1$1;)Lcom/smalife/activity/HeaderSettingActivity$1;

    move-result-object v1

    invoke-static {v1}, Lcom/smalife/activity/HeaderSettingActivity$1;->access$0(Lcom/smalife/activity/HeaderSettingActivity$1;)Lcom/smalife/activity/HeaderSettingActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smalife/activity/HeaderSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 175
    const v2, 0x7f0901d6

    .line 174
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 176
    const/4 v2, 0x0

    .line 171
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 177
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 178
    return-void
.end method
