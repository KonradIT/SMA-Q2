.class Lcom/smalife/activity/SetSmaQActivity$BLEVersionReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SetSmaQActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smalife/activity/SetSmaQActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BLEVersionReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smalife/activity/SetSmaQActivity;


# direct methods
.method private constructor <init>(Lcom/smalife/activity/SetSmaQActivity;)V
    .locals 0

    .prologue
    .line 822
    iput-object p1, p0, Lcom/smalife/activity/SetSmaQActivity$BLEVersionReceiver;->this$0:Lcom/smalife/activity/SetSmaQActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/smalife/activity/SetSmaQActivity;Lcom/smalife/activity/SetSmaQActivity$BLEVersionReceiver;)V
    .locals 0

    .prologue
    .line 822
    invoke-direct {p0, p1}, Lcom/smalife/activity/SetSmaQActivity$BLEVersionReceiver;-><init>(Lcom/smalife/activity/SetSmaQActivity;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 825
    iget-object v0, p0, Lcom/smalife/activity/SetSmaQActivity$BLEVersionReceiver;->this$0:Lcom/smalife/activity/SetSmaQActivity;

    invoke-virtual {v0}, Lcom/smalife/activity/SetSmaQActivity;->setBLEVersion()V

    .line 826
    return-void
.end method
