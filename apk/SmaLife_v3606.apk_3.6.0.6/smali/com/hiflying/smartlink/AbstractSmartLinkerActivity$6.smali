.class Lcom/hiflying/smartlink/AbstractSmartLinkerActivity$6;
.super Ljava/lang/Object;
.source "AbstractSmartLinkerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiflying/smartlink/AbstractSmartLinkerActivity;->onCompleted()V
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
    iput-object p1, p0, Lcom/hiflying/smartlink/AbstractSmartLinkerActivity$6;->this$0:Lcom/hiflying/smartlink/AbstractSmartLinkerActivity;

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 157
    iget-object v0, p0, Lcom/hiflying/smartlink/AbstractSmartLinkerActivity$6;->this$0:Lcom/hiflying/smartlink/AbstractSmartLinkerActivity;

    invoke-virtual {v0}, Lcom/hiflying/smartlink/AbstractSmartLinkerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/hiflying/smartlink/AbstractSmartLinkerActivity$6;->this$0:Lcom/hiflying/smartlink/AbstractSmartLinkerActivity;

    const-string v2, "hiflying_smartlinker_completed"

    invoke-static {v2}, Lcom/hiflying/smartlink/R1;->string(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/hiflying/smartlink/AbstractSmartLinkerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 158
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 159
    iget-object v0, p0, Lcom/hiflying/smartlink/AbstractSmartLinkerActivity$6;->this$0:Lcom/hiflying/smartlink/AbstractSmartLinkerActivity;

    iget-object v0, v0, Lcom/hiflying/smartlink/AbstractSmartLinkerActivity;->mWaitingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 160
    iget-object v0, p0, Lcom/hiflying/smartlink/AbstractSmartLinkerActivity$6;->this$0:Lcom/hiflying/smartlink/AbstractSmartLinkerActivity;

    invoke-static {v0, v3}, Lcom/hiflying/smartlink/AbstractSmartLinkerActivity;->access$0(Lcom/hiflying/smartlink/AbstractSmartLinkerActivity;Z)V

    .line 161
    return-void
.end method
