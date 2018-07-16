.class Lcom/accloud/cloudservice/ACBindManager$31;
.super Ljava/lang/Object;
.source "ACBindManager.java"

# interfaces
.implements Lcom/accloud/cloudservice/PayloadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/accloud/cloudservice/ACBindManager;->sendToDeviceWithOption(Ljava/lang/String;JLcom/accloud/service/ACDeviceMsg;ILcom/accloud/cloudservice/PayloadCallback;)V
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

.field final synthetic val$deviceId:J

.field final synthetic val$msg:Lcom/accloud/service/ACDeviceMsg;

.field final synthetic val$subDomain:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/accloud/cloudservice/ACBindManager;Lcom/accloud/cloudservice/PayloadCallback;Ljava/lang/String;JLcom/accloud/service/ACDeviceMsg;)V
    .locals 0

    .prologue
    .line 1360
    iput-object p1, p0, Lcom/accloud/cloudservice/ACBindManager$31;->this$0:Lcom/accloud/cloudservice/ACBindManager;

    iput-object p2, p0, Lcom/accloud/cloudservice/ACBindManager$31;->val$callback:Lcom/accloud/cloudservice/PayloadCallback;

    iput-object p3, p0, Lcom/accloud/cloudservice/ACBindManager$31;->val$subDomain:Ljava/lang/String;

    iput-wide p4, p0, Lcom/accloud/cloudservice/ACBindManager$31;->val$deviceId:J

    iput-object p6, p0, Lcom/accloud/cloudservice/ACBindManager$31;->val$msg:Lcom/accloud/service/ACDeviceMsg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public error(Lcom/accloud/service/ACException;)V
    .locals 7
    .param p1, "e"    # Lcom/accloud/service/ACException;

    .prologue
    .line 1368
    invoke-static {}, Lcom/accloud/utils/ACUtils;->isNetworkConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1369
    iget-object v0, p0, Lcom/accloud/cloudservice/ACBindManager$31;->this$0:Lcom/accloud/cloudservice/ACBindManager;

    iget-object v1, p0, Lcom/accloud/cloudservice/ACBindManager$31;->val$subDomain:Ljava/lang/String;

    iget-wide v2, p0, Lcom/accloud/cloudservice/ACBindManager$31;->val$deviceId:J

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/accloud/cloudservice/ACBindManager$31;->val$msg:Lcom/accloud/service/ACDeviceMsg;

    iget-object v6, p0, Lcom/accloud/cloudservice/ACBindManager$31;->val$callback:Lcom/accloud/cloudservice/PayloadCallback;

    invoke-virtual/range {v0 .. v6}, Lcom/accloud/cloudservice/ACBindManager;->sendToDevice(Ljava/lang/String;JLjava/lang/String;Lcom/accloud/service/ACDeviceMsg;Lcom/accloud/cloudservice/PayloadCallback;)V

    .line 1372
    :goto_0
    return-void

    .line 1371
    :cond_0
    iget-object v0, p0, Lcom/accloud/cloudservice/ACBindManager$31;->val$callback:Lcom/accloud/cloudservice/PayloadCallback;

    invoke-interface {v0, p1}, Lcom/accloud/cloudservice/PayloadCallback;->error(Lcom/accloud/service/ACException;)V

    goto :goto_0
.end method

.method public success(Lcom/accloud/service/ACDeviceMsg;)V
    .locals 1
    .param p1, "deviceMsg"    # Lcom/accloud/service/ACDeviceMsg;

    .prologue
    .line 1363
    iget-object v0, p0, Lcom/accloud/cloudservice/ACBindManager$31;->val$callback:Lcom/accloud/cloudservice/PayloadCallback;

    invoke-interface {v0, p1}, Lcom/accloud/cloudservice/PayloadCallback;->success(Ljava/lang/Object;)V

    .line 1364
    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1360
    check-cast p1, Lcom/accloud/service/ACDeviceMsg;

    invoke-virtual {p0, p1}, Lcom/accloud/cloudservice/ACBindManager$31;->success(Lcom/accloud/service/ACDeviceMsg;)V

    return-void
.end method
