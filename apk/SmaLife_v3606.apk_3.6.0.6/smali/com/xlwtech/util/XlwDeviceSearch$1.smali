.class Lcom/xlwtech/util/XlwDeviceSearch$1;
.super Landroid/os/Handler;
.source "XlwDeviceSearch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xlwtech/util/XlwDeviceSearch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xlwtech/util/XlwDeviceSearch;


# direct methods
.method constructor <init>(Lcom/xlwtech/util/XlwDeviceSearch;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/xlwtech/util/XlwDeviceSearch$1;->this$0:Lcom/xlwtech/util/XlwDeviceSearch;

    .line 44
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 48
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 50
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v6, 0x622a

    if-ne v0, v6, :cond_0

    .line 52
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v6, "ip"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 53
    .local v2, "ip":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v6, "mac"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 54
    .local v1, "mac":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v6, "ver"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 55
    .local v3, "ver":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v6, "cap"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 56
    .local v4, "cap":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v6, "ext"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 57
    .local v5, "ext":Ljava/lang/String;
    iget-object v0, p0, Lcom/xlwtech/util/XlwDeviceSearch$1;->this$0:Lcom/xlwtech/util/XlwDeviceSearch;

    invoke-static {v0}, Lcom/xlwtech/util/XlwDeviceSearch;->access$0(Lcom/xlwtech/util/XlwDeviceSearch;)Lcom/xlwtech/util/XlwDeviceSearch$DeviceSearchListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xlwtech/util/XlwDeviceSearch$1;->this$0:Lcom/xlwtech/util/XlwDeviceSearch;

    invoke-static {v0}, Lcom/xlwtech/util/XlwDeviceSearch;->access$0(Lcom/xlwtech/util/XlwDeviceSearch;)Lcom/xlwtech/util/XlwDeviceSearch$DeviceSearchListener;

    move-result-object v0

    invoke-interface/range {v0 .. v5}, Lcom/xlwtech/util/XlwDeviceSearch$DeviceSearchListener;->onSearchFound(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .end local v1    # "mac":Ljava/lang/String;
    .end local v2    # "ip":Ljava/lang/String;
    .end local v3    # "ver":Ljava/lang/String;
    .end local v4    # "cap":Ljava/lang/String;
    .end local v5    # "ext":Ljava/lang/String;
    :cond_0
    return-void
.end method
