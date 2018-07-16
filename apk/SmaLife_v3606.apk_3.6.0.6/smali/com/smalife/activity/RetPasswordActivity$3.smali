.class Lcom/smalife/activity/RetPasswordActivity$3;
.super Ljava/lang/Object;
.source "RetPasswordActivity.java"

# interfaces
.implements Lcom/accloud/cloudservice/PayloadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smalife/activity/RetPasswordActivity;->ModifyPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
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
.field final synthetic this$0:Lcom/smalife/activity/RetPasswordActivity;


# direct methods
.method constructor <init>(Lcom/smalife/activity/RetPasswordActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/smalife/activity/RetPasswordActivity$3;->this$0:Lcom/smalife/activity/RetPasswordActivity;

    .line 252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public error(Lcom/accloud/service/ACException;)V
    .locals 2
    .param p1, "e"    # Lcom/accloud/service/ACException;

    .prologue
    .line 265
    iget-object v0, p0, Lcom/smalife/activity/RetPasswordActivity$3;->this$0:Lcom/smalife/activity/RetPasswordActivity;

    .line 266
    invoke-virtual {p1}, Lcom/accloud/service/ACException;->getErrorCode()I

    move-result v1

    .line 265
    invoke-static {v0, v1}, Lcom/smalife/tools/ShowErrorToast;->showToast(Landroid/content/Context;I)V

    .line 267
    return-void
.end method

.method public success(Lcom/accloud/service/ACUserInfo;)V
    .locals 3
    .param p1, "user"    # Lcom/accloud/service/ACUserInfo;

    .prologue
    .line 256
    iget-object v0, p0, Lcom/smalife/activity/RetPasswordActivity$3;->this$0:Lcom/smalife/activity/RetPasswordActivity;

    iget-object v0, v0, Lcom/smalife/activity/RetPasswordActivity;->context:Landroid/content/Context;

    .line 257
    iget-object v1, p0, Lcom/smalife/activity/RetPasswordActivity$3;->this$0:Lcom/smalife/activity/RetPasswordActivity;

    invoke-virtual {v1}, Lcom/smalife/activity/RetPasswordActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 258
    const v2, 0x7f0900d3

    .line 257
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 259
    const/4 v2, 0x1

    .line 255
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 259
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 260
    iget-object v0, p0, Lcom/smalife/activity/RetPasswordActivity$3;->this$0:Lcom/smalife/activity/RetPasswordActivity;

    invoke-virtual {v0}, Lcom/smalife/activity/RetPasswordActivity;->finish()V

    .line 261
    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/accloud/service/ACUserInfo;

    invoke-virtual {p0, p1}, Lcom/smalife/activity/RetPasswordActivity$3;->success(Lcom/accloud/service/ACUserInfo;)V

    return-void
.end method
