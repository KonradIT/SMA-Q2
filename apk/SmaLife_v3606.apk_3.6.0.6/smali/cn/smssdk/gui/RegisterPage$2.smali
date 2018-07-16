.class Lcn/smssdk/gui/RegisterPage$2;
.super Ljava/lang/Object;
.source "RegisterPage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/smssdk/gui/RegisterPage;->showDialog(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/smssdk/gui/RegisterPage;

.field private final synthetic val$code:Ljava/lang/String;

.field private final synthetic val$dialog:Landroid/app/Dialog;

.field private final synthetic val$phone:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcn/smssdk/gui/RegisterPage;Landroid/app/Dialog;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcn/smssdk/gui/RegisterPage$2;->this$0:Lcn/smssdk/gui/RegisterPage;

    iput-object p2, p0, Lcn/smssdk/gui/RegisterPage$2;->val$dialog:Landroid/app/Dialog;

    iput-object p3, p0, Lcn/smssdk/gui/RegisterPage$2;->val$phone:Ljava/lang/String;

    iput-object p4, p0, Lcn/smssdk/gui/RegisterPage$2;->val$code:Ljava/lang/String;

    .line 420
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 423
    iget-object v0, p0, Lcn/smssdk/gui/RegisterPage$2;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 425
    iget-object v0, p0, Lcn/smssdk/gui/RegisterPage$2;->this$0:Lcn/smssdk/gui/RegisterPage;

    invoke-static {v0}, Lcn/smssdk/gui/RegisterPage;->access$0(Lcn/smssdk/gui/RegisterPage;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/smssdk/gui/RegisterPage$2;->this$0:Lcn/smssdk/gui/RegisterPage;

    invoke-static {v0}, Lcn/smssdk/gui/RegisterPage;->access$0(Lcn/smssdk/gui/RegisterPage;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 426
    iget-object v0, p0, Lcn/smssdk/gui/RegisterPage$2;->this$0:Lcn/smssdk/gui/RegisterPage;

    invoke-static {v0}, Lcn/smssdk/gui/RegisterPage;->access$0(Lcn/smssdk/gui/RegisterPage;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 428
    :cond_0
    iget-object v0, p0, Lcn/smssdk/gui/RegisterPage$2;->this$0:Lcn/smssdk/gui/RegisterPage;

    iget-object v1, p0, Lcn/smssdk/gui/RegisterPage$2;->this$0:Lcn/smssdk/gui/RegisterPage;

    invoke-static {v1}, Lcn/smssdk/gui/RegisterPage;->access$2(Lcn/smssdk/gui/RegisterPage;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcn/smssdk/gui/CommonDialog;->ProgressDialog(Landroid/content/Context;)Landroid/app/Dialog;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/smssdk/gui/RegisterPage;->access$3(Lcn/smssdk/gui/RegisterPage;Landroid/app/Dialog;)V

    .line 429
    iget-object v0, p0, Lcn/smssdk/gui/RegisterPage$2;->this$0:Lcn/smssdk/gui/RegisterPage;

    invoke-static {v0}, Lcn/smssdk/gui/RegisterPage;->access$0(Lcn/smssdk/gui/RegisterPage;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 430
    iget-object v0, p0, Lcn/smssdk/gui/RegisterPage$2;->this$0:Lcn/smssdk/gui/RegisterPage;

    invoke-static {v0}, Lcn/smssdk/gui/RegisterPage;->access$0(Lcn/smssdk/gui/RegisterPage;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 432
    :cond_1
    const-string v0, "verification phone ==>>"

    iget-object v1, p0, Lcn/smssdk/gui/RegisterPage$2;->val$phone:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    iget-object v0, p0, Lcn/smssdk/gui/RegisterPage$2;->val$code:Ljava/lang/String;

    .line 434
    iget-object v1, p0, Lcn/smssdk/gui/RegisterPage$2;->val$phone:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcn/smssdk/gui/RegisterPage$2;->this$0:Lcn/smssdk/gui/RegisterPage;

    invoke-static {v2}, Lcn/smssdk/gui/RegisterPage;->access$4(Lcn/smssdk/gui/RegisterPage;)Lcn/smssdk/OnSendMessageHandler;

    move-result-object v2

    .line 433
    invoke-static {v0, v1, v2}, Lcn/smssdk/SMSSDK;->getVerificationCode(Ljava/lang/String;Ljava/lang/String;Lcn/smssdk/OnSendMessageHandler;)V

    .line 435
    return-void
.end method
