.class Lcom/accloud/cloudservice/ACDeviceActivator$Receive$6;
.super Ljava/lang/Object;
.source "ACDeviceActivator.java"

# interfaces
.implements Lcom/xlwtech/util/XlwDevice$XlwDeviceListener;


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
    .line 689
    iput-object p1, p0, Lcom/accloud/cloudservice/ACDeviceActivator$Receive$6;->this$1:Lcom/accloud/cloudservice/ACDeviceActivator$Receive;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Ljava/lang/String;[BI)V
    .locals 6
    .param p1, "mac"    # Ljava/lang/String;
    .param p2, "data"    # [B
    .param p3, "length"    # I

    .prologue
    const/4 v4, 0x0

    .line 710
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p2, v4, p3}, Ljava/lang/String;-><init>([BII)V

    .line 711
    .local v0, "rsp":Ljava/lang/String;
    const-string v1, "ACDeviceActivatorMILL"

    const-string v2, "Main onReceive(): mac=%s, length=%d, rsp=%s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v4

    const/4 v4, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/accloud/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 712
    return-void
.end method

.method public onSearchFound(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "mac"    # Ljava/lang/String;
    .param p2, "ip"    # Ljava/lang/String;
    .param p3, "version"    # Ljava/lang/String;
    .param p4, "capability"    # Ljava/lang/String;
    .param p5, "ext"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 699
    const-string v0, "ACDeviceActivatorMILL"

    const-string v1, "onSearchFound(), mac=%s, ip=%s, version=%s, capability=%s, ext=%s"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    aput-object p2, v2, v4

    const/4 v3, 0x2

    aput-object p3, v2, v3

    const/4 v3, 0x3

    aput-object p4, v2, v3

    const/4 v3, 0x4

    aput-object p5, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/accloud/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 700
    return v4
.end method

.method public onSendError(Ljava/lang/String;II)V
    .locals 6
    .param p1, "mac"    # Ljava/lang/String;
    .param p2, "sn"    # I
    .param p3, "err"    # I

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 716
    const/4 v0, -0x1

    if-ne p3, v0, :cond_0

    .line 717
    const-string v0, "ACDeviceActivatorMILL"

    const-string v1, "onSendError(): mac=%s, sn=%d, send busy"

    new-array v2, v5, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/accloud/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 730
    :goto_0
    return-void

    .line 718
    :cond_0
    const/16 v0, -0xa

    if-ne p3, v0, :cond_1

    .line 719
    const-string v0, "ACDeviceActivatorMILL"

    const-string v1, "onSendError(): mac=%s, sn=%d, send time out"

    new-array v2, v5, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/accloud/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 720
    :cond_1
    const/4 v0, -0x2

    if-ne p3, v0, :cond_2

    .line 721
    const-string v0, "ACDeviceActivatorMILL"

    const-string v1, "onSendError(): mac=%s, sn=%d, device mac invalid"

    new-array v2, v5, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/accloud/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 722
    :cond_2
    const/16 v0, -0xb

    if-ne p3, v0, :cond_3

    .line 723
    const-string v0, "ACDeviceActivatorMILL"

    const-string v1, "onSendError(): mac=%s, sn=%d, device offline"

    new-array v2, v5, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/accloud/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 724
    :cond_3
    const/4 v0, -0x3

    if-ne p3, v0, :cond_4

    .line 725
    const-string v0, "ACDeviceActivatorMILL"

    const-string v1, "onSendError(): mac=%s, sn=%d, device not in local network"

    new-array v2, v5, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/accloud/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 726
    :cond_4
    const/4 v0, -0x4

    if-ne p3, v0, :cond_5

    .line 727
    const-string v0, "ACDeviceActivatorMILL"

    const-string v1, "onSendError(): mac=%s, sn=%d, device not in local network"

    new-array v2, v5, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/accloud/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 729
    :cond_5
    const-string v0, "ACDeviceActivatorMILL"

    const-string v1, "onSendError(): mac=%s, sn=%d, err=%d"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/accloud/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public onSmartFound(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "mac"    # Ljava/lang/String;
    .param p2, "ip"    # Ljava/lang/String;
    .param p3, "version"    # Ljava/lang/String;
    .param p4, "capability"    # Ljava/lang/String;
    .param p5, "ext"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 692
    const-string v0, "ACDeviceActivatorMILL"

    const-string v1, "onSmartFound(),mac=%s, ip=%s, ver=%s, cap=%s, ext=%s"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    aput-object p2, v2, v4

    const/4 v3, 0x2

    aput-object p3, v2, v3

    const/4 v3, 0x3

    aput-object p4, v2, v3

    const/4 v3, 0x4

    aput-object p5, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/accloud/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 694
    return v4
.end method

.method public onStatusChange(Ljava/lang/String;I)V
    .locals 0
    .param p1, "mac"    # Ljava/lang/String;
    .param p2, "status"    # I

    .prologue
    .line 706
    return-void
.end method
