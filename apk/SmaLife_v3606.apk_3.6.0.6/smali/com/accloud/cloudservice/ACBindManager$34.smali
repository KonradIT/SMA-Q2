.class Lcom/accloud/cloudservice/ACBindManager$34;
.super Ljava/lang/Object;
.source "ACBindManager.java"

# interfaces
.implements Lcom/accloud/cloudservice/PayloadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/accloud/cloudservice/ACBindManager;->sendToDeviceWithOption(Ljava/lang/String;Ljava/lang/String;Lcom/accloud/service/ACDeviceMsg;ILcom/accloud/cloudservice/PayloadCallback;)V
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
        "Lcom/accloud/service/ACDeviceMsg;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/accloud/cloudservice/ACBindManager;

.field final synthetic val$callback:Lcom/accloud/cloudservice/PayloadCallback;

.field final synthetic val$msg:Lcom/accloud/service/ACDeviceMsg;

.field final synthetic val$physicalDeviceId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/accloud/cloudservice/ACBindManager;Lcom/accloud/cloudservice/PayloadCallback;Ljava/lang/String;Lcom/accloud/service/ACDeviceMsg;)V
    .locals 0

    .prologue
    .line 1423
    iput-object p1, p0, Lcom/accloud/cloudservice/ACBindManager$34;->this$0:Lcom/accloud/cloudservice/ACBindManager;

    iput-object p2, p0, Lcom/accloud/cloudservice/ACBindManager$34;->val$callback:Lcom/accloud/cloudservice/PayloadCallback;

    iput-object p3, p0, Lcom/accloud/cloudservice/ACBindManager$34;->val$physicalDeviceId:Ljava/lang/String;

    iput-object p4, p0, Lcom/accloud/cloudservice/ACBindManager$34;->val$msg:Lcom/accloud/service/ACDeviceMsg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public error(Lcom/accloud/service/ACException;)V
    .locals 8
    .param p1, "ex"    # Lcom/accloud/service/ACException;

    .prologue
    .line 1431
    iget-object v1, p0, Lcom/accloud/cloudservice/ACBindManager$34;->this$0:Lcom/accloud/cloudservice/ACBindManager;

    const-wide/16 v2, 0x0

    iget-object v4, p0, Lcom/accloud/cloudservice/ACBindManager$34;->val$physicalDeviceId:Ljava/lang/String;

    iget-object v5, p0, Lcom/accloud/cloudservice/ACBindManager$34;->val$msg:Lcom/accloud/service/ACDeviceMsg;

    sget v6, Lcom/accloud/cloudservice/AC;->SEND_TO_LOCAL_DEVICE_DEFAULT_TIMEOUT:I

    new-instance v7, Lcom/accloud/cloudservice/ACBindManager$34$1;

    invoke-direct {v7, p0, p1}, Lcom/accloud/cloudservice/ACBindManager$34$1;-><init>(Lcom/accloud/cloudservice/ACBindManager$34;Lcom/accloud/service/ACException;)V

    invoke-virtual/range {v1 .. v7}, Lcom/accloud/cloudservice/ACBindManager;->sendToLocalDevice(JLjava/lang/String;Lcom/accloud/service/ACDeviceMsg;ILcom/accloud/cloudservice/PayloadCallback;)V

    .line 1442
    return-void
.end method

.method public success(Lcom/accloud/service/ACDeviceMsg;)V
    .locals 1
    .param p1, "deviceMsg"    # Lcom/accloud/service/ACDeviceMsg;

    .prologue
    .line 1426
    iget-object v0, p0, Lcom/accloud/cloudservice/ACBindManager$34;->val$callback:Lcom/accloud/cloudservice/PayloadCallback;

    invoke-interface {v0, p1}, Lcom/accloud/cloudservice/PayloadCallback;->success(Ljava/lang/Object;)V

    .line 1427
    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1423
    check-cast p1, Lcom/accloud/service/ACDeviceMsg;

    invoke-virtual {p0, p1}, Lcom/accloud/cloudservice/ACBindManager$34;->success(Lcom/accloud/service/ACDeviceMsg;)V

    return-void
.end method
