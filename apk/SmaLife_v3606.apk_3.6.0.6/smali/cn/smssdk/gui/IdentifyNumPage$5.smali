.class Lcn/smssdk/gui/IdentifyNumPage$5;
.super Ljava/lang/Object;
.source "IdentifyNumPage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/smssdk/gui/IdentifyNumPage;->showDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/smssdk/gui/IdentifyNumPage;

.field private final synthetic val$dialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcn/smssdk/gui/IdentifyNumPage;Landroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcn/smssdk/gui/IdentifyNumPage$5;->this$0:Lcn/smssdk/gui/IdentifyNumPage;

    iput-object p2, p0, Lcn/smssdk/gui/IdentifyNumPage$5;->val$dialog:Landroid/app/Dialog;

    .line 300
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 302
    iget-object v0, p0, Lcn/smssdk/gui/IdentifyNumPage$5;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 303
    iget-object v0, p0, Lcn/smssdk/gui/IdentifyNumPage$5;->this$0:Lcn/smssdk/gui/IdentifyNumPage;

    invoke-static {v0}, Lcn/smssdk/gui/IdentifyNumPage;->access$7(Lcn/smssdk/gui/IdentifyNumPage;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 305
    iget-object v0, p0, Lcn/smssdk/gui/IdentifyNumPage$5;->this$0:Lcn/smssdk/gui/IdentifyNumPage;

    invoke-static {v0}, Lcn/smssdk/gui/IdentifyNumPage;->access$10(Lcn/smssdk/gui/IdentifyNumPage;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/smssdk/gui/IdentifyNumPage$5;->this$0:Lcn/smssdk/gui/IdentifyNumPage;

    invoke-static {v0}, Lcn/smssdk/gui/IdentifyNumPage;->access$10(Lcn/smssdk/gui/IdentifyNumPage;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 306
    iget-object v0, p0, Lcn/smssdk/gui/IdentifyNumPage$5;->this$0:Lcn/smssdk/gui/IdentifyNumPage;

    invoke-static {v0}, Lcn/smssdk/gui/IdentifyNumPage;->access$10(Lcn/smssdk/gui/IdentifyNumPage;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 308
    :cond_0
    iget-object v0, p0, Lcn/smssdk/gui/IdentifyNumPage$5;->this$0:Lcn/smssdk/gui/IdentifyNumPage;

    iget-object v1, p0, Lcn/smssdk/gui/IdentifyNumPage$5;->this$0:Lcn/smssdk/gui/IdentifyNumPage;

    invoke-static {v1}, Lcn/smssdk/gui/IdentifyNumPage;->access$6(Lcn/smssdk/gui/IdentifyNumPage;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcn/smssdk/gui/CommonDialog;->ProgressDialog(Landroid/content/Context;)Landroid/app/Dialog;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/smssdk/gui/IdentifyNumPage;->access$11(Lcn/smssdk/gui/IdentifyNumPage;Landroid/app/Dialog;)V

    .line 309
    iget-object v0, p0, Lcn/smssdk/gui/IdentifyNumPage$5;->this$0:Lcn/smssdk/gui/IdentifyNumPage;

    invoke-static {v0}, Lcn/smssdk/gui/IdentifyNumPage;->access$10(Lcn/smssdk/gui/IdentifyNumPage;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 310
    iget-object v0, p0, Lcn/smssdk/gui/IdentifyNumPage$5;->this$0:Lcn/smssdk/gui/IdentifyNumPage;

    invoke-static {v0}, Lcn/smssdk/gui/IdentifyNumPage;->access$10(Lcn/smssdk/gui/IdentifyNumPage;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 313
    :cond_1
    iget-object v0, p0, Lcn/smssdk/gui/IdentifyNumPage$5;->this$0:Lcn/smssdk/gui/IdentifyNumPage;

    invoke-static {v0}, Lcn/smssdk/gui/IdentifyNumPage;->access$12(Lcn/smssdk/gui/IdentifyNumPage;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcn/smssdk/gui/IdentifyNumPage$5;->this$0:Lcn/smssdk/gui/IdentifyNumPage;

    invoke-static {v1}, Lcn/smssdk/gui/IdentifyNumPage;->access$13(Lcn/smssdk/gui/IdentifyNumPage;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcn/smssdk/SMSSDK;->getVerificationCode(Ljava/lang/String;Ljava/lang/String;Lcn/smssdk/OnSendMessageHandler;)V

    .line 314
    return-void
.end method
