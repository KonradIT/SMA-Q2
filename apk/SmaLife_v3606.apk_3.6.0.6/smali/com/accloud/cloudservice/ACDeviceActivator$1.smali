.class Lcom/accloud/cloudservice/ACDeviceActivator$1;
.super Landroid/os/Handler;
.source "ACDeviceActivator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/accloud/cloudservice/ACDeviceActivator;-><init>(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/accloud/cloudservice/ACDeviceActivator;


# direct methods
.method constructor <init>(Lcom/accloud/cloudservice/ACDeviceActivator;)V
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Lcom/accloud/cloudservice/ACDeviceActivator$1;->this$0:Lcom/accloud/cloudservice/ACDeviceActivator;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 132
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 155
    :goto_0
    :pswitch_0
    return-void

    .line 134
    :pswitch_1
    iget-object v0, p0, Lcom/accloud/cloudservice/ACDeviceActivator$1;->this$0:Lcom/accloud/cloudservice/ACDeviceActivator;

    iget-object v0, v0, Lcom/accloud/cloudservice/ACDeviceActivator;->SCLib:Lcom/realtek/simpleconfiglib/SCLibrary;

    invoke-virtual {v0}, Lcom/realtek/simpleconfiglib/SCLibrary;->rtk_sc_stop()V

    goto :goto_0

    .line 137
    :pswitch_2
    iget-object v0, p0, Lcom/accloud/cloudservice/ACDeviceActivator$1;->this$0:Lcom/accloud/cloudservice/ACDeviceActivator;

    iget-object v0, v0, Lcom/accloud/cloudservice/ACDeviceActivator;->SCLib:Lcom/realtek/simpleconfiglib/SCLibrary;

    invoke-virtual {v0}, Lcom/realtek/simpleconfiglib/SCLibrary;->rtk_sc_stop()V

    .line 138
    iget-object v0, p0, Lcom/accloud/cloudservice/ACDeviceActivator$1;->this$0:Lcom/accloud/cloudservice/ACDeviceActivator;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/accloud/cloudservice/ACDeviceActivator;->TimesupFlag_cfg:Z

    goto :goto_0

    .line 141
    :pswitch_3
    const-string v0, "ACDeviceActivator"

    const-string v1, "DiscoverACK"

    invoke-static {v0, v1}, Lcom/accloud/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 144
    :pswitch_4
    const-string v0, "ACDeviceActivator"

    const-string v1, "Discovery timeout."

    invoke-static {v0, v1}, Lcom/accloud/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 147
    :pswitch_5
    const-string v0, "ACDeviceActivator"

    const-string v1, "Del Profile ACK"

    invoke-static {v0, v1}, Lcom/accloud/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 150
    :pswitch_6
    const-string v0, "ACDeviceActivator"

    const-string v1, "Rename Device ACK"

    invoke-static {v0, v1}, Lcom/accloud/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 132
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_4
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
