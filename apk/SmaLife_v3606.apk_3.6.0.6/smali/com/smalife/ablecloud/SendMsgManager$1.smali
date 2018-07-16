.class Lcom/smalife/ablecloud/SendMsgManager$1;
.super Ljava/lang/Object;
.source "SendMsgManager.java"

# interfaces
.implements Lcom/accloud/cloudservice/PayloadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smalife/ablecloud/SendMsgManager;->sendToDevice(Ljava/lang/String;Ljava/lang/Long;Lcom/accloud/service/ACDeviceMsg;)V
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
.field final synthetic this$0:Lcom/smalife/ablecloud/SendMsgManager;


# direct methods
.method constructor <init>(Lcom/smalife/ablecloud/SendMsgManager;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/smalife/ablecloud/SendMsgManager$1;->this$0:Lcom/smalife/ablecloud/SendMsgManager;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public error(Lcom/accloud/service/ACException;)V
    .locals 0
    .param p1, "e"    # Lcom/accloud/service/ACException;

    .prologue
    .line 56
    return-void
.end method

.method public success(Lcom/accloud/service/ACDeviceMsg;)V
    .locals 0
    .param p1, "msg"    # Lcom/accloud/service/ACDeviceMsg;

    .prologue
    .line 61
    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/accloud/service/ACDeviceMsg;

    invoke-virtual {p0, p1}, Lcom/smalife/ablecloud/SendMsgManager$1;->success(Lcom/accloud/service/ACDeviceMsg;)V

    return-void
.end method
