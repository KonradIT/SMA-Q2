.class Lcom/xlwtech/util/XlwDevice$1;
.super Ljava/lang/Object;
.source "XlwDevice.java"

# interfaces
.implements Lcom/xlwtech/util/XlwSmartResponse$XlwSmartResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xlwtech/util/XlwDevice;->LibraryInit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xlwtech/util/XlwDevice;


# direct methods
.method constructor <init>(Lcom/xlwtech/util/XlwDevice;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/xlwtech/util/XlwDevice$1;->this$0:Lcom/xlwtech/util/XlwDevice;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSmartFound(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "mac"    # Ljava/lang/String;
    .param p2, "ip"    # Ljava/lang/String;
    .param p3, "ver"    # Ljava/lang/String;
    .param p4, "cap"    # Ljava/lang/String;
    .param p5, "ext"    # Ljava/lang/String;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/xlwtech/util/XlwDevice$1;->this$0:Lcom/xlwtech/util/XlwDevice;

    invoke-static {v0}, Lcom/xlwtech/util/XlwDevice;->access$0(Lcom/xlwtech/util/XlwDevice;)Lcom/xlwtech/util/XlwDevice$XlwDeviceListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 55
    invoke-static {}, Lcom/xlwtech/util/XlwClientLocal;->getInstance()Lcom/xlwtech/util/XlwClientLocal;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xlwtech/util/XlwClientLocal;->DoClose(Ljava/lang/String;)V

    .line 56
    invoke-static {}, Lcom/xlwtech/util/XlwDeviceCheck;->getInstance()Lcom/xlwtech/util/XlwDeviceCheck;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/xlwtech/util/XlwDeviceCheck;->DeviceUpdate(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    iget-object v0, p0, Lcom/xlwtech/util/XlwDevice$1;->this$0:Lcom/xlwtech/util/XlwDevice;

    invoke-static {v0}, Lcom/xlwtech/util/XlwDevice;->access$0(Lcom/xlwtech/util/XlwDevice;)Lcom/xlwtech/util/XlwDevice$XlwDeviceListener;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/xlwtech/util/XlwDevice$XlwDeviceListener;->onSmartFound(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 59
    invoke-static {}, Lcom/xlwtech/util/XlwDeviceCheck;->getInstance()Lcom/xlwtech/util/XlwDeviceCheck;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xlwtech/util/XlwDeviceCheck;->DeviceDel(Ljava/lang/String;)V

    .line 63
    :cond_0
    :goto_0
    return-void

    .line 61
    :cond_1
    invoke-static {}, Lcom/xlwtech/util/XlwSmartResponse;->getInstance()Lcom/xlwtech/util/XlwSmartResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xlwtech/util/XlwSmartResponse;->cancel()V

    goto :goto_0
.end method
