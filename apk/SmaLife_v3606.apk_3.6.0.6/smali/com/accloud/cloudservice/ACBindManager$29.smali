.class Lcom/accloud/cloudservice/ACBindManager$29;
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


# direct methods
.method constructor <init>(Lcom/accloud/cloudservice/ACBindManager;Lcom/accloud/cloudservice/PayloadCallback;)V
    .locals 0

    .prologue
    .line 1326
    iput-object p1, p0, Lcom/accloud/cloudservice/ACBindManager$29;->this$0:Lcom/accloud/cloudservice/ACBindManager;

    iput-object p2, p0, Lcom/accloud/cloudservice/ACBindManager$29;->val$callback:Lcom/accloud/cloudservice/PayloadCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public error(Lcom/accloud/service/ACException;)V
    .locals 1
    .param p1, "e"    # Lcom/accloud/service/ACException;

    .prologue
    .line 1334
    iget-object v0, p0, Lcom/accloud/cloudservice/ACBindManager$29;->val$callback:Lcom/accloud/cloudservice/PayloadCallback;

    invoke-interface {v0, p1}, Lcom/accloud/cloudservice/PayloadCallback;->error(Lcom/accloud/service/ACException;)V

    .line 1335
    return-void
.end method

.method public success(Lcom/accloud/service/ACDeviceMsg;)V
    .locals 1
    .param p1, "deviceMsg"    # Lcom/accloud/service/ACDeviceMsg;

    .prologue
    .line 1329
    iget-object v0, p0, Lcom/accloud/cloudservice/ACBindManager$29;->val$callback:Lcom/accloud/cloudservice/PayloadCallback;

    invoke-interface {v0, p1}, Lcom/accloud/cloudservice/PayloadCallback;->success(Ljava/lang/Object;)V

    .line 1330
    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1326
    check-cast p1, Lcom/accloud/service/ACDeviceMsg;

    invoke-virtual {p0, p1}, Lcom/accloud/cloudservice/ACBindManager$29;->success(Lcom/accloud/service/ACDeviceMsg;)V

    return-void
.end method
