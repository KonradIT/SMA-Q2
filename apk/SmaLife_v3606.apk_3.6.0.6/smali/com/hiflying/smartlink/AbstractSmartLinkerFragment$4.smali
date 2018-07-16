.class Lcom/hiflying/smartlink/AbstractSmartLinkerFragment$4;
.super Landroid/content/BroadcastReceiver;
.source "AbstractSmartLinkerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiflying/smartlink/AbstractSmartLinkerFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hiflying/smartlink/AbstractSmartLinkerFragment;


# direct methods
.method constructor <init>(Lcom/hiflying/smartlink/AbstractSmartLinkerFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/hiflying/smartlink/AbstractSmartLinkerFragment$4;->this$0:Lcom/hiflying/smartlink/AbstractSmartLinkerFragment;

    .line 122
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x1

    .line 126
    iget-object v2, p0, Lcom/hiflying/smartlink/AbstractSmartLinkerFragment$4;->this$0:Lcom/hiflying/smartlink/AbstractSmartLinkerFragment;

    invoke-static {v2}, Lcom/hiflying/smartlink/AbstractSmartLinkerFragment;->access$2(Lcom/hiflying/smartlink/AbstractSmartLinkerFragment;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 127
    .local v0, "connectivityManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 128
    .local v1, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 129
    iget-object v2, p0, Lcom/hiflying/smartlink/AbstractSmartLinkerFragment$4;->this$0:Lcom/hiflying/smartlink/AbstractSmartLinkerFragment;

    iget-object v2, v2, Lcom/hiflying/smartlink/AbstractSmartLinkerFragment;->mSsidEditText:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/hiflying/smartlink/AbstractSmartLinkerFragment$4;->this$0:Lcom/hiflying/smartlink/AbstractSmartLinkerFragment;

    invoke-static {v3}, Lcom/hiflying/smartlink/AbstractSmartLinkerFragment;->access$3(Lcom/hiflying/smartlink/AbstractSmartLinkerFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 130
    iget-object v2, p0, Lcom/hiflying/smartlink/AbstractSmartLinkerFragment$4;->this$0:Lcom/hiflying/smartlink/AbstractSmartLinkerFragment;

    iget-object v2, v2, Lcom/hiflying/smartlink/AbstractSmartLinkerFragment;->mPasswordEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    .line 131
    iget-object v2, p0, Lcom/hiflying/smartlink/AbstractSmartLinkerFragment$4;->this$0:Lcom/hiflying/smartlink/AbstractSmartLinkerFragment;

    iget-object v2, v2, Lcom/hiflying/smartlink/AbstractSmartLinkerFragment;->mStartButton:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 140
    :cond_0
    :goto_0
    return-void

    .line 133
    :cond_1
    iget-object v2, p0, Lcom/hiflying/smartlink/AbstractSmartLinkerFragment$4;->this$0:Lcom/hiflying/smartlink/AbstractSmartLinkerFragment;

    iget-object v2, v2, Lcom/hiflying/smartlink/AbstractSmartLinkerFragment;->mSsidEditText:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/hiflying/smartlink/AbstractSmartLinkerFragment$4;->this$0:Lcom/hiflying/smartlink/AbstractSmartLinkerFragment;

    const-string v4, "hiflying_smartlinker_no_wifi_connectivity"

    invoke-static {v4}, Lcom/hiflying/smartlink/R1;->string(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/hiflying/smartlink/AbstractSmartLinkerFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 134
    iget-object v2, p0, Lcom/hiflying/smartlink/AbstractSmartLinkerFragment$4;->this$0:Lcom/hiflying/smartlink/AbstractSmartLinkerFragment;

    iget-object v2, v2, Lcom/hiflying/smartlink/AbstractSmartLinkerFragment;->mSsidEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    .line 135
    iget-object v2, p0, Lcom/hiflying/smartlink/AbstractSmartLinkerFragment$4;->this$0:Lcom/hiflying/smartlink/AbstractSmartLinkerFragment;

    iget-object v2, v2, Lcom/hiflying/smartlink/AbstractSmartLinkerFragment;->mStartButton:Landroid/widget/Button;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 136
    iget-object v2, p0, Lcom/hiflying/smartlink/AbstractSmartLinkerFragment$4;->this$0:Lcom/hiflying/smartlink/AbstractSmartLinkerFragment;

    iget-object v2, v2, Lcom/hiflying/smartlink/AbstractSmartLinkerFragment;->mWaitingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 137
    iget-object v2, p0, Lcom/hiflying/smartlink/AbstractSmartLinkerFragment$4;->this$0:Lcom/hiflying/smartlink/AbstractSmartLinkerFragment;

    iget-object v2, v2, Lcom/hiflying/smartlink/AbstractSmartLinkerFragment;->mWaitingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    goto :goto_0
.end method
