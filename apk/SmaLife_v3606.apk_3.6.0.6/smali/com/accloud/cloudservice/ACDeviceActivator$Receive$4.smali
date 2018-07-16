.class Lcom/accloud/cloudservice/ACDeviceActivator$Receive$4;
.super Ljava/lang/Object;
.source "ACDeviceActivator.java"

# interfaces
.implements Lcom/integrity_project/smartconfiglib/SmartConfigListener;


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
    .line 594
    iput-object p1, p0, Lcom/accloud/cloudservice/ACDeviceActivator$Receive$4;->this$1:Lcom/accloud/cloudservice/ACDeviceActivator$Receive;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSmartConfigEvent(Lcom/integrity_project/smartconfiglib/SmartConfigListener$SmtCfgEvent;Ljava/lang/Exception;)V
    .locals 0
    .param p1, "event"    # Lcom/integrity_project/smartconfiglib/SmartConfigListener$SmtCfgEvent;
    .param p2, "e"    # Ljava/lang/Exception;

    .prologue
    .line 597
    return-void
.end method
