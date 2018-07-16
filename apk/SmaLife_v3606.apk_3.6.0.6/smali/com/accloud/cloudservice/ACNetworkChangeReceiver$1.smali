.class Lcom/accloud/cloudservice/ACNetworkChangeReceiver$1;
.super Ljava/lang/Object;
.source "ACNetworkChangeReceiver.java"

# interfaces
.implements Lcom/accloud/cloudservice/PayloadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/accloud/cloudservice/ACNetworkChangeReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
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
        "Ljava/util/List",
        "<",
        "Lcom/accloud/service/ACDeviceFind;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/accloud/cloudservice/ACNetworkChangeReceiver;


# direct methods
.method constructor <init>(Lcom/accloud/cloudservice/ACNetworkChangeReceiver;)V
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lcom/accloud/cloudservice/ACNetworkChangeReceiver$1;->this$0:Lcom/accloud/cloudservice/ACNetworkChangeReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public error(Lcom/accloud/service/ACException;)V
    .locals 3
    .param p1, "e"    # Lcom/accloud/service/ACException;

    .prologue
    .line 39
    invoke-static {}, Lcom/accloud/cloudservice/ACNetworkChangeReceiver;->access$000()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/accloud/cloudservice/NetEventHandler;

    .line 40
    .local v0, "handler":Lcom/accloud/cloudservice/NetEventHandler;
    invoke-interface {v0}, Lcom/accloud/cloudservice/NetEventHandler;->onNetChange()V

    goto :goto_0

    .line 42
    .end local v0    # "handler":Lcom/accloud/cloudservice/NetEventHandler;
    :cond_0
    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 29
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/accloud/cloudservice/ACNetworkChangeReceiver$1;->success(Ljava/util/List;)V

    return-void
.end method

.method public success(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/accloud/service/ACDeviceFind;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 32
    .local p1, "deviceFinds":Ljava/util/List;, "Ljava/util/List<Lcom/accloud/service/ACDeviceFind;>;"
    invoke-static {}, Lcom/accloud/cloudservice/ACNetworkChangeReceiver;->access$000()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/accloud/cloudservice/NetEventHandler;

    .line 33
    .local v0, "handler":Lcom/accloud/cloudservice/NetEventHandler;
    invoke-interface {v0}, Lcom/accloud/cloudservice/NetEventHandler;->onNetChange()V

    goto :goto_0

    .line 35
    .end local v0    # "handler":Lcom/accloud/cloudservice/NetEventHandler;
    :cond_0
    return-void
.end method
