.class Lcom/hiflying/smartlink/AbstractSmartLinkerActivity$3;
.super Ljava/lang/Object;
.source "AbstractSmartLinkerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiflying/smartlink/AbstractSmartLinkerActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hiflying/smartlink/AbstractSmartLinkerActivity;


# direct methods
.method constructor <init>(Lcom/hiflying/smartlink/AbstractSmartLinkerActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/hiflying/smartlink/AbstractSmartLinkerActivity$3;->this$0:Lcom/hiflying/smartlink/AbstractSmartLinkerActivity;

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 78
    iget-object v1, p0, Lcom/hiflying/smartlink/AbstractSmartLinkerActivity$3;->this$0:Lcom/hiflying/smartlink/AbstractSmartLinkerActivity;

    invoke-static {v1}, Lcom/hiflying/smartlink/AbstractSmartLinkerActivity;->access$1(Lcom/hiflying/smartlink/AbstractSmartLinkerActivity;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 82
    :try_start_0
    iget-object v1, p0, Lcom/hiflying/smartlink/AbstractSmartLinkerActivity$3;->this$0:Lcom/hiflying/smartlink/AbstractSmartLinkerActivity;

    iget-object v1, v1, Lcom/hiflying/smartlink/AbstractSmartLinkerActivity;->mSmartLinker:Lcom/hiflying/smartlink/ISmartLinker;

    iget-object v2, p0, Lcom/hiflying/smartlink/AbstractSmartLinkerActivity$3;->this$0:Lcom/hiflying/smartlink/AbstractSmartLinkerActivity;

    invoke-interface {v1, v2}, Lcom/hiflying/smartlink/ISmartLinker;->setOnSmartLinkListener(Lcom/hiflying/smartlink/OnSmartLinkListener;)V

    .line 84
    iget-object v1, p0, Lcom/hiflying/smartlink/AbstractSmartLinkerActivity$3;->this$0:Lcom/hiflying/smartlink/AbstractSmartLinkerActivity;

    iget-object v1, v1, Lcom/hiflying/smartlink/AbstractSmartLinkerActivity;->mSmartLinker:Lcom/hiflying/smartlink/ISmartLinker;

    iget-object v2, p0, Lcom/hiflying/smartlink/AbstractSmartLinkerActivity$3;->this$0:Lcom/hiflying/smartlink/AbstractSmartLinkerActivity;

    invoke-virtual {v2}, Lcom/hiflying/smartlink/AbstractSmartLinkerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/hiflying/smartlink/AbstractSmartLinkerActivity$3;->this$0:Lcom/hiflying/smartlink/AbstractSmartLinkerActivity;

    iget-object v3, v3, Lcom/hiflying/smartlink/AbstractSmartLinkerActivity;->mPasswordEditText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 85
    iget-object v6, p0, Lcom/hiflying/smartlink/AbstractSmartLinkerActivity$3;->this$0:Lcom/hiflying/smartlink/AbstractSmartLinkerActivity;

    iget-object v6, v6, Lcom/hiflying/smartlink/AbstractSmartLinkerActivity;->mSsidEditText:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 84
    invoke-interface {v1, v2, v3, v4}, Lcom/hiflying/smartlink/ISmartLinker;->start(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V

    .line 86
    iget-object v1, p0, Lcom/hiflying/smartlink/AbstractSmartLinkerActivity$3;->this$0:Lcom/hiflying/smartlink/AbstractSmartLinkerActivity;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/hiflying/smartlink/AbstractSmartLinkerActivity;->access$0(Lcom/hiflying/smartlink/AbstractSmartLinkerActivity;Z)V

    .line 87
    iget-object v1, p0, Lcom/hiflying/smartlink/AbstractSmartLinkerActivity$3;->this$0:Lcom/hiflying/smartlink/AbstractSmartLinkerActivity;

    iget-object v1, v1, Lcom/hiflying/smartlink/AbstractSmartLinkerActivity;->mWaitingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    :cond_0
    :goto_0
    return-void

    .line 88
    :catch_0
    move-exception v0

    .line 90
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
