.class Lcom/smalife/activity/RetPasswordActivity$4;
.super Ljava/lang/Object;
.source "RetPasswordActivity.java"

# interfaces
.implements Lcom/accloud/cloudservice/VoidCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smalife/activity/RetPasswordActivity;->sendVerifyCode(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smalife/activity/RetPasswordActivity;


# direct methods
.method constructor <init>(Lcom/smalife/activity/RetPasswordActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/smalife/activity/RetPasswordActivity$4;->this$0:Lcom/smalife/activity/RetPasswordActivity;

    .line 287
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public error(Lcom/accloud/service/ACException;)V
    .locals 3
    .param p1, "e"    # Lcom/accloud/service/ACException;

    .prologue
    .line 300
    const-string v0, "error"

    invoke-static {v0}, Lcom/bestmafen/utils/L;->i(Ljava/lang/String;)V

    .line 301
    iget-object v0, p0, Lcom/smalife/activity/RetPasswordActivity$4;->this$0:Lcom/smalife/activity/RetPasswordActivity;

    .line 302
    iget-object v1, p0, Lcom/smalife/activity/RetPasswordActivity$4;->this$0:Lcom/smalife/activity/RetPasswordActivity;

    invoke-virtual {v1}, Lcom/smalife/activity/RetPasswordActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0901ce

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 303
    const/4 v2, 0x0

    .line 301
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 303
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 304
    return-void
.end method

.method public success()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 290
    const-string v0, "success"

    invoke-static {v0}, Lcom/bestmafen/utils/L;->i(Ljava/lang/String;)V

    .line 291
    iget-object v0, p0, Lcom/smalife/activity/RetPasswordActivity$4;->this$0:Lcom/smalife/activity/RetPasswordActivity;

    .line 292
    iget-object v1, p0, Lcom/smalife/activity/RetPasswordActivity$4;->this$0:Lcom/smalife/activity/RetPasswordActivity;

    invoke-virtual {v1}, Lcom/smalife/activity/RetPasswordActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900c4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 293
    const/4 v2, 0x0

    .line 291
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 293
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 294
    iget-object v0, p0, Lcom/smalife/activity/RetPasswordActivity$4;->this$0:Lcom/smalife/activity/RetPasswordActivity;

    invoke-static {v0}, Lcom/smalife/activity/RetPasswordActivity;->access$6(Lcom/smalife/activity/RetPasswordActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 295
    iget-object v0, p0, Lcom/smalife/activity/RetPasswordActivity$4;->this$0:Lcom/smalife/activity/RetPasswordActivity;

    invoke-static {v0}, Lcom/smalife/activity/RetPasswordActivity;->access$6(Lcom/smalife/activity/RetPasswordActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 296
    return-void
.end method
