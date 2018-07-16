.class Lcom/smalife/wx/receiver/UploadMacToWXReceiver$1;
.super Ljava/lang/Object;
.source "UploadMacToWXReceiver.java"

# interfaces
.implements Lcom/accloud/cloudservice/PayloadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smalife/wx/receiver/UploadMacToWXReceiver;->checkIfAddressUpload2AC(Ljava/lang/String;)V
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
.field final synthetic this$0:Lcom/smalife/wx/receiver/UploadMacToWXReceiver;


# direct methods
.method constructor <init>(Lcom/smalife/wx/receiver/UploadMacToWXReceiver;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/smalife/wx/receiver/UploadMacToWXReceiver$1;->this$0:Lcom/smalife/wx/receiver/UploadMacToWXReceiver;

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public error(Lcom/accloud/service/ACException;)V
    .locals 3
    .param p1, "e"    # Lcom/accloud/service/ACException;

    .prologue
    .line 101
    sget-object v0, Lcom/smalife/wx/receiver/UploadMacToWXReceiver;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "find mac error "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/accloud/service/ACException;->getErrorCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 102
    const-string v2, "/errorMsg : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/accloud/service/ACException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 101
    invoke-static {v0, v1}, Lcom/bestmafen/utils/L;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    return-void
.end method

.method public success(Lcom/accloud/service/ACMsg;)V
    .locals 4
    .param p1, "msg"    # Lcom/accloud/service/ACMsg;

    .prologue
    .line 89
    const-string v2, "address"

    invoke-virtual {p1, v2}, Lcom/accloud/service/ACMsg;->getACObject(Ljava/lang/String;)Lcom/accloud/service/ACObject;

    move-result-object v1

    .line 90
    .local v1, "object":Lcom/accloud/service/ACObject;
    const-string v2, "address"

    invoke-virtual {v1, v2}, Lcom/accloud/service/ACObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 91
    .local v0, "address":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 92
    :cond_0
    sget-object v2, Lcom/smalife/wx/receiver/UploadMacToWXReceiver;->TAG:Ljava/lang/String;

    const-string v3, "\u672a\u4e0a\u4f20 "

    invoke-static {v2, v3}, Lcom/bestmafen/utils/L;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    new-instance v2, Lcom/smalife/wx/receiver/UploadMacToWXReceiver$MacAddressAsync;

    iget-object v3, p0, Lcom/smalife/wx/receiver/UploadMacToWXReceiver$1;->this$0:Lcom/smalife/wx/receiver/UploadMacToWXReceiver;

    invoke-direct {v2, v3}, Lcom/smalife/wx/receiver/UploadMacToWXReceiver$MacAddressAsync;-><init>(Lcom/smalife/wx/receiver/UploadMacToWXReceiver;)V

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/smalife/wx/receiver/UploadMacToWXReceiver$MacAddressAsync;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 97
    :goto_0
    return-void

    .line 95
    :cond_1
    sget-object v2, Lcom/smalife/wx/receiver/UploadMacToWXReceiver;->TAG:Ljava/lang/String;

    const-string v3, "\u5df2\u7ecf\u4e0a\u4f20 "

    invoke-static {v2, v3}, Lcom/bestmafen/utils/L;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/accloud/service/ACMsg;

    invoke-virtual {p0, p1}, Lcom/smalife/wx/receiver/UploadMacToWXReceiver$1;->success(Lcom/accloud/service/ACMsg;)V

    return-void
.end method
