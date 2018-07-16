.class Lcom/smalife/activity/SetSmaQActivity$8;
.super Ljava/lang/Object;
.source "SetSmaQActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smalife/activity/SetSmaQActivity;->handleMessage(Landroid/os/Message;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smalife/activity/SetSmaQActivity;

.field private final synthetic val$msg:Landroid/os/Message;


# direct methods
.method constructor <init>(Lcom/smalife/activity/SetSmaQActivity;Landroid/os/Message;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/smalife/activity/SetSmaQActivity$8;->this$0:Lcom/smalife/activity/SetSmaQActivity;

    iput-object p2, p0, Lcom/smalife/activity/SetSmaQActivity$8;->val$msg:Landroid/os/Message;

    .line 466
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 470
    iget-object v1, p0, Lcom/smalife/activity/SetSmaQActivity$8;->this$0:Lcom/smalife/activity/SetSmaQActivity;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/smalife/activity/SetSmaQActivity$8;->this$0:Lcom/smalife/activity/SetSmaQActivity;

    .line 471
    const-class v4, Lcom/smalife/ble/BlueToothService;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 470
    invoke-virtual {v1, v2}, Lcom/smalife/activity/SetSmaQActivity;->stopService(Landroid/content/Intent;)Z

    .line 472
    iget-object v1, p0, Lcom/smalife/activity/SetSmaQActivity$8;->val$msg:Landroid/os/Message;

    invoke-virtual {v1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 473
    .local v0, "bundle":Landroid/os/Bundle;
    iget-object v1, p0, Lcom/smalife/activity/SetSmaQActivity$8;->this$0:Lcom/smalife/activity/SetSmaQActivity;

    invoke-static {v1, v0}, Lcom/smalife/activity/SetSmaQActivity;->access$17(Lcom/smalife/activity/SetSmaQActivity;Landroid/os/Bundle;)V

    .line 474
    return-void
.end method
