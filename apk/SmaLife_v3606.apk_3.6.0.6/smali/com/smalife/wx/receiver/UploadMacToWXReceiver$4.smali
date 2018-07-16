.class Lcom/smalife/wx/receiver/UploadMacToWXReceiver$4;
.super Ljava/lang/Object;
.source "UploadMacToWXReceiver.java"

# interfaces
.implements Lcom/accloud/cloudservice/PayloadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smalife/wx/receiver/UploadMacToWXReceiver;->uploadMac2AC()V
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
    iput-object p1, p0, Lcom/smalife/wx/receiver/UploadMacToWXReceiver$4;->this$0:Lcom/smalife/wx/receiver/UploadMacToWXReceiver;

    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public error(Lcom/accloud/service/ACException;)V
    .locals 2
    .param p1, "e"    # Lcom/accloud/service/ACException;

    .prologue
    .line 234
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u540c\u6b65MAC\u5730\u5740\u6570\u636e\u5230\u670d\u52a1\u5668\u5931\u8d25 error = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/accloud/service/ACException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bestmafen/utils/L;->e(Ljava/lang/String;)V

    .line 235
    return-void
.end method

.method public success(Lcom/accloud/service/ACMsg;)V
    .locals 2
    .param p1, "e"    # Lcom/accloud/service/ACMsg;

    .prologue
    .line 229
    sget-object v0, Lcom/smalife/wx/receiver/UploadMacToWXReceiver;->TAG:Ljava/lang/String;

    const-string v1, "\u540c\u6b65MAC\u5730\u5740\u6570\u636e\u5230\u670d\u52a1\u5668\u6210\u529f"

    invoke-static {v0, v1}, Lcom/bestmafen/utils/L;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/accloud/service/ACMsg;

    invoke-virtual {p0, p1}, Lcom/smalife/wx/receiver/UploadMacToWXReceiver$4;->success(Lcom/accloud/service/ACMsg;)V

    return-void
.end method
