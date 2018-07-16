.class Lcom/smalife/activity/RegisterActivity$5;
.super Ljava/lang/Object;
.source "RegisterActivity.java"

# interfaces
.implements Lcom/accloud/cloudservice/PayloadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smalife/activity/RegisterActivity;->register(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
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


# direct methods
.method constructor <init>(Lcom/smalife/activity/RegisterActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/smalife/activity/RegisterActivity$5;->this$0:Lcom/smalife/activity/RegisterActivity;

    .line 321
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public error(Lcom/accloud/service/ACException;)V
    .locals 2
    .param p1, "e"    # Lcom/accloud/service/ACException;

    .prologue
    .line 350
    iget-object v0, p0, Lcom/smalife/activity/RegisterActivity$5;->this$0:Lcom/smalife/activity/RegisterActivity;

    .line 351
    invoke-virtual {p1}, Lcom/accloud/service/ACException;->getErrorCode()I

    move-result v1

    .line 350
    invoke-static {v0, v1}, Lcom/smalife/tools/ShowErrorToast;->showToast(Landroid/content/Context;I)V

    .line 352
    return-void
.end method

.method public success(Lcom/accloud/service/ACUserInfo;)V
    .locals 4
    .param p1, "userInfo"    # Lcom/accloud/service/ACUserInfo;

    .prologue
    const/4 v3, 0x0

    .line 325
    iget-object v0, p0, Lcom/smalife/activity/RegisterActivity$5;->this$0:Lcom/smalife/activity/RegisterActivity;

    .line 326
    iget-object v1, p0, Lcom/smalife/activity/RegisterActivity$5;->this$0:Lcom/smalife/activity/RegisterActivity;

    invoke-virtual {v1}, Lcom/smalife/activity/RegisterActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 327
    const v2, 0x7f0900d0

    .line 326
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 324
    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 328
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 329
    iget-object v0, p0, Lcom/smalife/activity/RegisterActivity$5;->this$0:Lcom/smalife/activity/RegisterActivity;

    invoke-static {v0}, Lcom/smalife/activity/RegisterActivity;->access$9(Lcom/smalife/activity/RegisterActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 330
    iget-object v0, p0, Lcom/smalife/activity/RegisterActivity$5;->this$0:Lcom/smalife/activity/RegisterActivity;

    invoke-static {v0}, Lcom/smalife/activity/RegisterActivity;->access$10(Lcom/smalife/activity/RegisterActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 331
    :cond_0
    iget-object v0, p0, Lcom/smalife/activity/RegisterActivity$5;->this$0:Lcom/smalife/activity/RegisterActivity;

    .line 332
    const v1, 0x7f0900b6

    .line 331
    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 333
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 346
    :goto_0
    return-void

    .line 337
    :cond_1
    iget-object v0, p0, Lcom/smalife/activity/RegisterActivity$5;->this$0:Lcom/smalife/activity/RegisterActivity;

    invoke-static {v0}, Lcom/smalife/tools/NetWorkHelper;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 338
    invoke-static {}, Lcom/accloud/cloudservice/AC;->notificationMgr()Lcom/accloud/service/ACNotificationMgr;

    move-result-object v0

    .line 339
    iget-object v1, p0, Lcom/smalife/activity/RegisterActivity$5;->this$0:Lcom/smalife/activity/RegisterActivity;

    iget-object v1, v1, Lcom/smalife/activity/RegisterActivity;->application:Lcom/smalife/MyApplication;

    invoke-virtual {v1}, Lcom/smalife/MyApplication;->getAliasID()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-object v2, p0, Lcom/smalife/activity/RegisterActivity$5;->this$0:Lcom/smalife/activity/RegisterActivity;

    invoke-static {v2}, Lcom/smalife/activity/RegisterActivity;->access$12(Lcom/smalife/activity/RegisterActivity;)Lcom/accloud/cloudservice/VoidCallback;

    move-result-object v2

    .line 338
    invoke-interface {v0, v1, v2}, Lcom/accloud/service/ACNotificationMgr;->removeAlias(Ljava/lang/Long;Lcom/accloud/cloudservice/VoidCallback;)V

    .line 340
    iget-object v0, p0, Lcom/smalife/activity/RegisterActivity$5;->this$0:Lcom/smalife/activity/RegisterActivity;

    iget-object v1, p0, Lcom/smalife/activity/RegisterActivity$5;->this$0:Lcom/smalife/activity/RegisterActivity;

    invoke-static {v1}, Lcom/smalife/activity/RegisterActivity;->access$9(Lcom/smalife/activity/RegisterActivity;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/smalife/activity/RegisterActivity$5;->this$0:Lcom/smalife/activity/RegisterActivity;

    invoke-static {v2}, Lcom/smalife/activity/RegisterActivity;->access$10(Lcom/smalife/activity/RegisterActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/smalife/activity/RegisterActivity;->login(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 342
    :cond_2
    iget-object v0, p0, Lcom/smalife/activity/RegisterActivity$5;->this$0:Lcom/smalife/activity/RegisterActivity;

    .line 343
    const v1, 0x7f0900b5

    .line 342
    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 344
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/accloud/service/ACUserInfo;

    invoke-virtual {p0, p1}, Lcom/smalife/activity/RegisterActivity$5;->success(Lcom/accloud/service/ACUserInfo;)V

    return-void
.end method
