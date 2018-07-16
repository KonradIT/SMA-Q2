.class Lcom/smalife/wx/receiver/UploadMacToWXReceiver$MacAddressAsync;
.super Landroid/os/AsyncTask;
.source "UploadMacToWXReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smalife/wx/receiver/UploadMacToWXReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MacAddressAsync"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smalife/wx/receiver/UploadMacToWXReceiver;


# direct methods
.method constructor <init>(Lcom/smalife/wx/receiver/UploadMacToWXReceiver;)V
    .locals 0

    .prologue
    .line 239
    iput-object p1, p0, Lcom/smalife/wx/receiver/UploadMacToWXReceiver$MacAddressAsync;->this$0:Lcom/smalife/wx/receiver/UploadMacToWXReceiver;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/smalife/wx/receiver/UploadMacToWXReceiver$MacAddressAsync;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 7
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 242
    iget-object v3, p0, Lcom/smalife/wx/receiver/UploadMacToWXReceiver$MacAddressAsync;->this$0:Lcom/smalife/wx/receiver/UploadMacToWXReceiver;

    invoke-static {v3}, Lcom/smalife/wx/receiver/UploadMacToWXReceiver;->access$0(Lcom/smalife/wx/receiver/UploadMacToWXReceiver;)Lcom/smalife/wx/bean/TokenBean;

    move-result-object v2

    .line 243
    .local v2, "tokenBean":Lcom/smalife/wx/bean/TokenBean;
    if-eqz v2, :cond_1

    .line 244
    iget-object v3, p0, Lcom/smalife/wx/receiver/UploadMacToWXReceiver$MacAddressAsync;->this$0:Lcom/smalife/wx/receiver/UploadMacToWXReceiver;

    invoke-virtual {v2}, Lcom/smalife/wx/bean/TokenBean;->getAccess_token()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/smalife/wx/receiver/UploadMacToWXReceiver;->access$1(Lcom/smalife/wx/receiver/UploadMacToWXReceiver;Ljava/lang/String;)Lcom/smalife/wx/bean/DeviceIdBean;

    move-result-object v0

    .line 245
    .local v0, "bean":Lcom/smalife/wx/bean/DeviceIdBean;
    if-eqz v0, :cond_1

    .line 246
    iget-object v3, p0, Lcom/smalife/wx/receiver/UploadMacToWXReceiver$MacAddressAsync;->this$0:Lcom/smalife/wx/receiver/UploadMacToWXReceiver;

    invoke-virtual {v2}, Lcom/smalife/wx/bean/TokenBean;->getAccess_token()Ljava/lang/String;

    move-result-object v4

    .line 247
    invoke-virtual {v0}, Lcom/smalife/wx/bean/DeviceIdBean;->getDeviceid()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/smalife/wx/receiver/UploadMacToWXReceiver$MacAddressAsync;->this$0:Lcom/smalife/wx/receiver/UploadMacToWXReceiver;

    invoke-static {v6}, Lcom/smalife/wx/receiver/UploadMacToWXReceiver;->access$2(Lcom/smalife/wx/receiver/UploadMacToWXReceiver;)Ljava/lang/String;

    move-result-object v6

    .line 246
    invoke-static {v3, v4, v5, v6}, Lcom/smalife/wx/receiver/UploadMacToWXReceiver;->access$3(Lcom/smalife/wx/receiver/UploadMacToWXReceiver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 248
    .local v1, "result":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 249
    iget-object v3, p0, Lcom/smalife/wx/receiver/UploadMacToWXReceiver$MacAddressAsync;->this$0:Lcom/smalife/wx/receiver/UploadMacToWXReceiver;

    invoke-static {v3}, Lcom/smalife/wx/receiver/UploadMacToWXReceiver;->access$4(Lcom/smalife/wx/receiver/UploadMacToWXReceiver;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 250
    sget-object v3, Lcom/smalife/wx/receiver/UploadMacToWXReceiver;->TAG:Ljava/lang/String;

    const-string v4, "start postMac 2 ablecloud"

    invoke-static {v3, v4}, Lcom/bestmafen/utils/L;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    iget-object v3, p0, Lcom/smalife/wx/receiver/UploadMacToWXReceiver$MacAddressAsync;->this$0:Lcom/smalife/wx/receiver/UploadMacToWXReceiver;

    invoke-static {v3}, Lcom/smalife/wx/receiver/UploadMacToWXReceiver;->access$5(Lcom/smalife/wx/receiver/UploadMacToWXReceiver;)V

    .line 256
    .end local v0    # "bean":Lcom/smalife/wx/bean/DeviceIdBean;
    .end local v1    # "result":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/smalife/wx/receiver/UploadMacToWXReceiver$MacAddressAsync;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 261
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 262
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/smalife/wx/receiver/UploadMacToWXReceiver$MacAddressAsync;->this$0:Lcom/smalife/wx/receiver/UploadMacToWXReceiver;

    invoke-static {v0}, Lcom/smalife/wx/receiver/UploadMacToWXReceiver;->access$4(Lcom/smalife/wx/receiver/UploadMacToWXReceiver;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 264
    sget-object v0, Lcom/smalife/wx/receiver/UploadMacToWXReceiver;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "postMac2WX result = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bestmafen/utils/L;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    iget-object v0, p0, Lcom/smalife/wx/receiver/UploadMacToWXReceiver$MacAddressAsync;->this$0:Lcom/smalife/wx/receiver/UploadMacToWXReceiver;

    invoke-static {v0}, Lcom/smalife/wx/receiver/UploadMacToWXReceiver;->access$6(Lcom/smalife/wx/receiver/UploadMacToWXReceiver;)Lcom/smalife/MyApplication;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/smalife/MyApplication;->editHasUploadMAC2WX(Z)V

    .line 266
    iget-object v0, p0, Lcom/smalife/wx/receiver/UploadMacToWXReceiver$MacAddressAsync;->this$0:Lcom/smalife/wx/receiver/UploadMacToWXReceiver;

    invoke-static {v0}, Lcom/smalife/wx/receiver/UploadMacToWXReceiver;->access$7(Lcom/smalife/wx/receiver/UploadMacToWXReceiver;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f09023e

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 267
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 269
    :cond_0
    return-void
.end method
