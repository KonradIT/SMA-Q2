.class Lcom/hiflying/smartlink/AbstractSmartLinkerFragment$3;
.super Ljava/lang/Object;
.source "AbstractSmartLinkerFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    iput-object p1, p0, Lcom/hiflying/smartlink/AbstractSmartLinkerFragment$3;->this$0:Lcom/hiflying/smartlink/AbstractSmartLinkerFragment;

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 104
    iget-object v1, p0, Lcom/hiflying/smartlink/AbstractSmartLinkerFragment$3;->this$0:Lcom/hiflying/smartlink/AbstractSmartLinkerFragment;

    invoke-static {v1}, Lcom/hiflying/smartlink/AbstractSmartLinkerFragment;->access$1(Lcom/hiflying/smartlink/AbstractSmartLinkerFragment;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 108
    :try_start_0
    iget-object v1, p0, Lcom/hiflying/smartlink/AbstractSmartLinkerFragment$3;->this$0:Lcom/hiflying/smartlink/AbstractSmartLinkerFragment;

    iget-object v1, v1, Lcom/hiflying/smartlink/AbstractSmartLinkerFragment;->mSmartLinker:Lcom/hiflying/smartlink/ISmartLinker;

    iget-object v2, p0, Lcom/hiflying/smartlink/AbstractSmartLinkerFragment$3;->this$0:Lcom/hiflying/smartlink/AbstractSmartLinkerFragment;

    invoke-interface {v1, v2}, Lcom/hiflying/smartlink/ISmartLinker;->setOnSmartLinkListener(Lcom/hiflying/smartlink/OnSmartLinkListener;)V

    .line 110
    iget-object v1, p0, Lcom/hiflying/smartlink/AbstractSmartLinkerFragment$3;->this$0:Lcom/hiflying/smartlink/AbstractSmartLinkerFragment;

    iget-object v1, v1, Lcom/hiflying/smartlink/AbstractSmartLinkerFragment;->mSmartLinker:Lcom/hiflying/smartlink/ISmartLinker;

    iget-object v2, p0, Lcom/hiflying/smartlink/AbstractSmartLinkerFragment$3;->this$0:Lcom/hiflying/smartlink/AbstractSmartLinkerFragment;

    invoke-static {v2}, Lcom/hiflying/smartlink/AbstractSmartLinkerFragment;->access$2(Lcom/hiflying/smartlink/AbstractSmartLinkerFragment;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/hiflying/smartlink/AbstractSmartLinkerFragment$3;->this$0:Lcom/hiflying/smartlink/AbstractSmartLinkerFragment;

    iget-object v3, v3, Lcom/hiflying/smartlink/AbstractSmartLinkerFragment;->mPasswordEditText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 111
    iget-object v6, p0, Lcom/hiflying/smartlink/AbstractSmartLinkerFragment$3;->this$0:Lcom/hiflying/smartlink/AbstractSmartLinkerFragment;

    iget-object v6, v6, Lcom/hiflying/smartlink/AbstractSmartLinkerFragment;->mSsidEditText:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 110
    invoke-interface {v1, v2, v3, v4}, Lcom/hiflying/smartlink/ISmartLinker;->start(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V

    .line 112
    iget-object v1, p0, Lcom/hiflying/smartlink/AbstractSmartLinkerFragment$3;->this$0:Lcom/hiflying/smartlink/AbstractSmartLinkerFragment;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/hiflying/smartlink/AbstractSmartLinkerFragment;->access$0(Lcom/hiflying/smartlink/AbstractSmartLinkerFragment;Z)V

    .line 113
    iget-object v1, p0, Lcom/hiflying/smartlink/AbstractSmartLinkerFragment$3;->this$0:Lcom/hiflying/smartlink/AbstractSmartLinkerFragment;

    iget-object v1, v1, Lcom/hiflying/smartlink/AbstractSmartLinkerFragment;->mWaitingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    :cond_0
    :goto_0
    return-void

    .line 114
    :catch_0
    move-exception v0

    .line 116
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
