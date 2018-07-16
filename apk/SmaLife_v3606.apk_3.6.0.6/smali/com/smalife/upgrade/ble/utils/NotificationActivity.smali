.class public Lcom/smalife/upgrade/ble/utils/NotificationActivity;
.super Landroid/app/Activity;
.source "NotificationActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 9
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 13
    invoke-virtual {p0}, Lcom/smalife/upgrade/ble/utils/NotificationActivity;->isTaskRoot()Z

    .line 27
    invoke-virtual {p0}, Lcom/smalife/upgrade/ble/utils/NotificationActivity;->finish()V

    .line 28
    return-void
.end method
