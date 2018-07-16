.class Lcom/smalife/activity/RegisterActivity$7;
.super Ljava/lang/Object;
.source "RegisterActivity.java"

# interfaces
.implements Lcom/accloud/cloudservice/VoidCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smalife/activity/RegisterActivity;->sendVerifyCode(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smalife/activity/RegisterActivity;


# direct methods
.method constructor <init>(Lcom/smalife/activity/RegisterActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/smalife/activity/RegisterActivity$7;->this$0:Lcom/smalife/activity/RegisterActivity;

    .line 469
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public error(Lcom/accloud/service/ACException;)V
    .locals 3
    .param p1, "e"    # Lcom/accloud/service/ACException;

    .prologue
    .line 481
    iget-object v0, p0, Lcom/smalife/activity/RegisterActivity$7;->this$0:Lcom/smalife/activity/RegisterActivity;

    .line 482
    iget-object v1, p0, Lcom/smalife/activity/RegisterActivity$7;->this$0:Lcom/smalife/activity/RegisterActivity;

    invoke-virtual {v1}, Lcom/smalife/activity/RegisterActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0901ce

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 483
    const/4 v2, 0x0

    .line 481
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 483
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 484
    return-void
.end method

.method public success()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 472
    iget-object v0, p0, Lcom/smalife/activity/RegisterActivity$7;->this$0:Lcom/smalife/activity/RegisterActivity;

    .line 473
    iget-object v1, p0, Lcom/smalife/activity/RegisterActivity$7;->this$0:Lcom/smalife/activity/RegisterActivity;

    invoke-virtual {v1}, Lcom/smalife/activity/RegisterActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900c4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 474
    const/4 v2, 0x0

    .line 472
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 474
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 475
    iget-object v0, p0, Lcom/smalife/activity/RegisterActivity$7;->this$0:Lcom/smalife/activity/RegisterActivity;

    invoke-static {v0}, Lcom/smalife/activity/RegisterActivity;->access$15(Lcom/smalife/activity/RegisterActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 476
    iget-object v0, p0, Lcom/smalife/activity/RegisterActivity$7;->this$0:Lcom/smalife/activity/RegisterActivity;

    invoke-static {v0}, Lcom/smalife/activity/RegisterActivity;->access$15(Lcom/smalife/activity/RegisterActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 477
    return-void
.end method
