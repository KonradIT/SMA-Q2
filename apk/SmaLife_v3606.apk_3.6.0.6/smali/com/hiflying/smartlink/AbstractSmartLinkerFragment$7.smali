.class Lcom/hiflying/smartlink/AbstractSmartLinkerFragment$7;
.super Ljava/lang/Object;
.source "AbstractSmartLinkerFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiflying/smartlink/AbstractSmartLinkerFragment;->onTimeOut()V
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
    iput-object p1, p0, Lcom/hiflying/smartlink/AbstractSmartLinkerFragment$7;->this$0:Lcom/hiflying/smartlink/AbstractSmartLinkerFragment;

    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 198
    iget-object v0, p0, Lcom/hiflying/smartlink/AbstractSmartLinkerFragment$7;->this$0:Lcom/hiflying/smartlink/AbstractSmartLinkerFragment;

    invoke-static {v0}, Lcom/hiflying/smartlink/AbstractSmartLinkerFragment;->access$2(Lcom/hiflying/smartlink/AbstractSmartLinkerFragment;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/hiflying/smartlink/AbstractSmartLinkerFragment$7;->this$0:Lcom/hiflying/smartlink/AbstractSmartLinkerFragment;

    const-string v2, "hiflying_smartlinker_timeout"

    invoke-static {v2}, Lcom/hiflying/smartlink/R1;->string(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/hiflying/smartlink/AbstractSmartLinkerFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 199
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 200
    iget-object v0, p0, Lcom/hiflying/smartlink/AbstractSmartLinkerFragment$7;->this$0:Lcom/hiflying/smartlink/AbstractSmartLinkerFragment;

    iget-object v0, v0, Lcom/hiflying/smartlink/AbstractSmartLinkerFragment;->mWaitingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 201
    iget-object v0, p0, Lcom/hiflying/smartlink/AbstractSmartLinkerFragment$7;->this$0:Lcom/hiflying/smartlink/AbstractSmartLinkerFragment;

    invoke-static {v0, v3}, Lcom/hiflying/smartlink/AbstractSmartLinkerFragment;->access$0(Lcom/hiflying/smartlink/AbstractSmartLinkerFragment;Z)V

    .line 202
    return-void
.end method
