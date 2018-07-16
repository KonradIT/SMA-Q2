.class Lcom/example/smartlinklib/SmartLinkManipulator$2;
.super Ljava/lang/Object;
.source "SmartLinkManipulator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/smartlinklib/SmartLinkManipulator;->Startconnection(Lcom/example/smartlinklib/SmartLinkManipulator$ConnectCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/example/smartlinklib/SmartLinkManipulator;


# direct methods
.method constructor <init>(Lcom/example/smartlinklib/SmartLinkManipulator;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/example/smartlinklib/SmartLinkManipulator$2;->this$0:Lcom/example/smartlinklib/SmartLinkManipulator;

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 129
    :goto_0
    iget-object v0, p0, Lcom/example/smartlinklib/SmartLinkManipulator$2;->this$0:Lcom/example/smartlinklib/SmartLinkManipulator;

    iget-boolean v0, v0, Lcom/example/smartlinklib/SmartLinkManipulator;->isConnecting:Z

    if-nez v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/example/smartlinklib/SmartLinkManipulator$2;->this$0:Lcom/example/smartlinklib/SmartLinkManipulator;

    invoke-static {v0}, Lcom/example/smartlinklib/SmartLinkManipulator;->access$2(Lcom/example/smartlinklib/SmartLinkManipulator;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "StopConnet"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    iget-object v0, p0, Lcom/example/smartlinklib/SmartLinkManipulator$2;->this$0:Lcom/example/smartlinklib/SmartLinkManipulator;

    invoke-virtual {v0}, Lcom/example/smartlinklib/SmartLinkManipulator;->StopConnection()V

    .line 134
    return-void

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/example/smartlinklib/SmartLinkManipulator$2;->this$0:Lcom/example/smartlinklib/SmartLinkManipulator;

    invoke-static {v0}, Lcom/example/smartlinklib/SmartLinkManipulator;->access$4(Lcom/example/smartlinklib/SmartLinkManipulator;)V

    goto :goto_0
.end method
