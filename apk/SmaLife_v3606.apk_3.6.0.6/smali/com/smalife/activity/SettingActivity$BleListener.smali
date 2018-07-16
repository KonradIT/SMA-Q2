.class Lcom/smalife/activity/SettingActivity$BleListener;
.super Landroid/content/BroadcastReceiver;
.source "SettingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smalife/activity/SettingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BleListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smalife/activity/SettingActivity;


# direct methods
.method private constructor <init>(Lcom/smalife/activity/SettingActivity;)V
    .locals 0

    .prologue
    .line 1306
    iput-object p1, p0, Lcom/smalife/activity/SettingActivity$BleListener;->this$0:Lcom/smalife/activity/SettingActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/smalife/activity/SettingActivity;Lcom/smalife/activity/SettingActivity$BleListener;)V
    .locals 0

    .prologue
    .line 1306
    invoke-direct {p0, p1}, Lcom/smalife/activity/SettingActivity$BleListener;-><init>(Lcom/smalife/activity/SettingActivity;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1309
    iget-object v0, p0, Lcom/smalife/activity/SettingActivity$BleListener;->this$0:Lcom/smalife/activity/SettingActivity;

    invoke-virtual {v0}, Lcom/smalife/activity/SettingActivity;->updateBlueStutus()V

    .line 1312
    return-void
.end method
