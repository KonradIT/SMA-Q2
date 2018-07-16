.class Lcom/smalife/activity/PairedActivity$1;
.super Ljava/lang/Object;
.source "PairedActivity.java"

# interfaces
.implements Lcom/accloud/cloudservice/PayloadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smalife/activity/PairedActivity;->unBondFriend()V
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
        "Lcom/accloud/service/ACMsg;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smalife/activity/PairedActivity;


# direct methods
.method constructor <init>(Lcom/smalife/activity/PairedActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/smalife/activity/PairedActivity$1;->this$0:Lcom/smalife/activity/PairedActivity;

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public error(Lcom/accloud/service/ACException;)V
    .locals 3
    .param p1, "e"    # Lcom/accloud/service/ACException;

    .prologue
    .line 132
    const-string v0, "ljh"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unbondfriend error:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/accloud/service/ACException;->getErrorCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 133
    const-string v2, "/error message :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/accloud/service/ACException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 132
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    return-void
.end method

.method public success(Lcom/accloud/service/ACMsg;)V
    .locals 3
    .param p1, "msg"    # Lcom/accloud/service/ACMsg;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/smalife/activity/PairedActivity$1;->this$0:Lcom/smalife/activity/PairedActivity;

    iget-object v0, v0, Lcom/smalife/activity/PairedActivity;->application:Lcom/smalife/MyApplication;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/smalife/MyApplication;->editFriendAccount(Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lcom/smalife/activity/PairedActivity$1;->this$0:Lcom/smalife/activity/PairedActivity;

    iget-object v0, v0, Lcom/smalife/activity/PairedActivity;->application:Lcom/smalife/MyApplication;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/smalife/MyApplication;->editFriendName(Ljava/lang/String;)V

    .line 124
    iget-object v0, p0, Lcom/smalife/activity/PairedActivity$1;->this$0:Lcom/smalife/activity/PairedActivity;

    .line 125
    iget-object v1, p0, Lcom/smalife/activity/PairedActivity$1;->this$0:Lcom/smalife/activity/PairedActivity;

    invoke-virtual {v1}, Lcom/smalife/activity/PairedActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0901a7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x32

    .line 124
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 126
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 127
    iget-object v0, p0, Lcom/smalife/activity/PairedActivity$1;->this$0:Lcom/smalife/activity/PairedActivity;

    invoke-virtual {v0}, Lcom/smalife/activity/PairedActivity;->finish()V

    .line 128
    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/accloud/service/ACMsg;

    invoke-virtual {p0, p1}, Lcom/smalife/activity/PairedActivity$1;->success(Lcom/accloud/service/ACMsg;)V

    return-void
.end method
