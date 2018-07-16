.class Lcom/accloud/cloudservice/ACDeviceActivator$Receive$2;
.super Ljava/lang/Object;
.source "ACDeviceActivator.java"

# interfaces
.implements Lcom/mxchip/easylink/FTCListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/accloud/cloudservice/ACDeviceActivator$Receive;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/accloud/cloudservice/ACDeviceActivator$Receive;


# direct methods
.method constructor <init>(Lcom/accloud/cloudservice/ACDeviceActivator$Receive;)V
    .locals 0

    .prologue
    .line 499
    iput-object p1, p0, Lcom/accloud/cloudservice/ACDeviceActivator$Receive$2;->this$1:Lcom/accloud/cloudservice/ACDeviceActivator$Receive;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isSmallMTU(I)V
    .locals 0
    .param p1, "MTU"    # I

    .prologue
    .line 508
    return-void
.end method

.method public onFTCfinished(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "ip"    # Ljava/lang/String;
    .param p2, "jsonString"    # Ljava/lang/String;

    .prologue
    .line 503
    const-string v0, "ACDeviceActivator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/accloud/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    return-void
.end method
