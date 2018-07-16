.class Lcom/accloud/cloudservice/ACBindManager$30$1;
.super Ljava/lang/Object;
.source "ACBindManager.java"

# interfaces
.implements Lcom/accloud/cloudservice/PayloadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/accloud/cloudservice/ACBindManager$30;->error(Lcom/accloud/service/ACException;)V
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
.field final synthetic this$1:Lcom/accloud/cloudservice/ACBindManager$30;

.field final synthetic val$ex:Lcom/accloud/service/ACException;


# direct methods
.method constructor <init>(Lcom/accloud/cloudservice/ACBindManager$30;Lcom/accloud/service/ACException;)V
    .locals 0

    .prologue
    .line 1346
    iput-object p1, p0, Lcom/accloud/cloudservice/ACBindManager$30$1;->this$1:Lcom/accloud/cloudservice/ACBindManager$30;

    iput-object p2, p0, Lcom/accloud/cloudservice/ACBindManager$30$1;->val$ex:Lcom/accloud/service/ACException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public error(Lcom/accloud/service/ACException;)V
    .locals 2
    .param p1, "e"    # Lcom/accloud/service/ACException;

    .prologue
    .line 1354
    iget-object v0, p0, Lcom/accloud/cloudservice/ACBindManager$30$1;->this$1:Lcom/accloud/cloudservice/ACBindManager$30;

    iget-object v0, v0, Lcom/accloud/cloudservice/ACBindManager$30;->val$callback:Lcom/accloud/cloudservice/PayloadCallback;

    iget-object v1, p0, Lcom/accloud/cloudservice/ACBindManager$30$1;->val$ex:Lcom/accloud/service/ACException;

    invoke-interface {v0, v1}, Lcom/accloud/cloudservice/PayloadCallback;->error(Lcom/accloud/service/ACException;)V

    .line 1355
    return-void
.end method

.method public success(Lcom/accloud/service/ACDeviceMsg;)V
    .locals 1
    .param p1, "deviceMsg"    # Lcom/accloud/service/ACDeviceMsg;

    .prologue
    .line 1349
    iget-object v0, p0, Lcom/accloud/cloudservice/ACBindManager$30$1;->this$1:Lcom/accloud/cloudservice/ACBindManager$30;

    iget-object v0, v0, Lcom/accloud/cloudservice/ACBindManager$30;->val$callback:Lcom/accloud/cloudservice/PayloadCallback;

    invoke-interface {v0, p1}, Lcom/accloud/cloudservice/PayloadCallback;->success(Ljava/lang/Object;)V

    .line 1350
    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1346
    check-cast p1, Lcom/accloud/service/ACDeviceMsg;

    invoke-virtual {p0, p1}, Lcom/accloud/cloudservice/ACBindManager$30$1;->success(Lcom/accloud/service/ACDeviceMsg;)V

    return-void
.end method
