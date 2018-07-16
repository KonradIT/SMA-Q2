.class Lcom/xlwtech/util/XlwDevice$3;
.super Ljava/lang/Object;
.source "XlwDevice.java"

# interfaces
.implements Lcom/xlwtech/util/XlwDeviceCheck$DeviceCheckListener;


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
    iput-object p1, p0, Lcom/xlwtech/util/XlwDevice$3;->this$0:Lcom/xlwtech/util/XlwDevice;

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStatusChange(Ljava/lang/String;I)V
    .locals 1
    .param p1, "mac"    # Ljava/lang/String;
    .param p2, "status"    # I

    .prologue
    .line 83
    const/16 v0, 0xa

    if-ne p2, v0, :cond_0

    invoke-static {}, Lcom/xlwtech/util/XlwClientLocal;->getInstance()Lcom/xlwtech/util/XlwClientLocal;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xlwtech/util/XlwClientLocal;->DoClose(Ljava/lang/String;)V

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/xlwtech/util/XlwDevice$3;->this$0:Lcom/xlwtech/util/XlwDevice;

    invoke-static {v0}, Lcom/xlwtech/util/XlwDevice;->access$0(Lcom/xlwtech/util/XlwDevice;)Lcom/xlwtech/util/XlwDevice$XlwDeviceListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xlwtech/util/XlwDevice$3;->this$0:Lcom/xlwtech/util/XlwDevice;

    invoke-static {v0}, Lcom/xlwtech/util/XlwDevice;->access$0(Lcom/xlwtech/util/XlwDevice;)Lcom/xlwtech/util/XlwDevice$XlwDeviceListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/xlwtech/util/XlwDevice$XlwDeviceListener;->onStatusChange(Ljava/lang/String;I)V

    .line 85
    :cond_1
    return-void
.end method
