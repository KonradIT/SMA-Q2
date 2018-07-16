.class Lcom/smalife/activity/MainActivity$BleListener;
.super Landroid/content/BroadcastReceiver;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smalife/activity/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BleListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smalife/activity/MainActivity;


# direct methods
.method private constructor <init>(Lcom/smalife/activity/MainActivity;)V
    .locals 0

    .prologue
    .line 573
    iput-object p1, p0, Lcom/smalife/activity/MainActivity$BleListener;->this$0:Lcom/smalife/activity/MainActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/smalife/activity/MainActivity;Lcom/smalife/activity/MainActivity$BleListener;)V
    .locals 0

    .prologue
    .line 573
    invoke-direct {p0, p1}, Lcom/smalife/activity/MainActivity$BleListener;-><init>(Lcom/smalife/activity/MainActivity;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 576
    iget-object v0, p0, Lcom/smalife/activity/MainActivity$BleListener;->this$0:Lcom/smalife/activity/MainActivity;

    invoke-static {v0}, Lcom/smalife/activity/MainActivity;->access$3(Lcom/smalife/activity/MainActivity;)Lcom/smalife/MyApplication;

    move-result-object v0

    iget-boolean v0, v0, Lcom/smalife/MyApplication;->isConnected:Z

    if-eqz v0, :cond_0

    .line 577
    iget-object v0, p0, Lcom/smalife/activity/MainActivity$BleListener;->this$0:Lcom/smalife/activity/MainActivity;

    .line 578
    iget-object v1, p0, Lcom/smalife/activity/MainActivity$BleListener;->this$0:Lcom/smalife/activity/MainActivity;

    invoke-virtual {v1}, Lcom/smalife/activity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0901a8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 577
    invoke-static {v0, v1}, Lcom/smalife/tools/ShowToast;->show(Landroid/content/Context;Ljava/lang/String;)V

    .line 580
    :cond_0
    return-void
.end method
