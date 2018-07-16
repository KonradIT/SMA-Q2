.class Lcom/xlwtech/util/XlwDevice$4;
.super Ljava/lang/Object;
.source "XlwDevice.java"

# interfaces
.implements Lcom/xlwtech/util/XlwClientLocal$XlwClientLocalListener;


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
    iput-object p1, p0, Lcom/xlwtech/util/XlwDevice$4;->this$0:Lcom/xlwtech/util/XlwDevice;

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Ljava/lang/String;[BI)V
    .locals 1
    .param p1, "mac"    # Ljava/lang/String;
    .param p2, "data"    # [B
    .param p3, "length"    # I

    .prologue
    .line 100
    iget-object v0, p0, Lcom/xlwtech/util/XlwDevice$4;->this$0:Lcom/xlwtech/util/XlwDevice;

    invoke-static {v0}, Lcom/xlwtech/util/XlwDevice;->access$0(Lcom/xlwtech/util/XlwDevice;)Lcom/xlwtech/util/XlwDevice$XlwDeviceListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xlwtech/util/XlwDevice$4;->this$0:Lcom/xlwtech/util/XlwDevice;

    invoke-static {v0}, Lcom/xlwtech/util/XlwDevice;->access$0(Lcom/xlwtech/util/XlwDevice;)Lcom/xlwtech/util/XlwDevice$XlwDeviceListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/xlwtech/util/XlwDevice$XlwDeviceListener;->onReceive(Ljava/lang/String;[BI)V

    .line 101
    :cond_0
    return-void
.end method

.method public onSendError(Ljava/lang/String;I)V
    .locals 2
    .param p1, "mac"    # Ljava/lang/String;
    .param p2, "err"    # I

    .prologue
    .line 96
    iget-object v0, p0, Lcom/xlwtech/util/XlwDevice$4;->this$0:Lcom/xlwtech/util/XlwDevice;

    invoke-static {v0}, Lcom/xlwtech/util/XlwDevice;->access$0(Lcom/xlwtech/util/XlwDevice;)Lcom/xlwtech/util/XlwDevice$XlwDeviceListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xlwtech/util/XlwDevice$4;->this$0:Lcom/xlwtech/util/XlwDevice;

    invoke-static {v0}, Lcom/xlwtech/util/XlwDevice;->access$0(Lcom/xlwtech/util/XlwDevice;)Lcom/xlwtech/util/XlwDevice$XlwDeviceListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1, p2}, Lcom/xlwtech/util/XlwDevice$XlwDeviceListener;->onSendError(Ljava/lang/String;II)V

    .line 97
    :cond_0
    return-void
.end method
