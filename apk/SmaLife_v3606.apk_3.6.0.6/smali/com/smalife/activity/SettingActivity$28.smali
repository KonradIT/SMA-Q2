.class Lcom/smalife/activity/SettingActivity$28;
.super Ljava/lang/Object;
.source "SettingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smalife/activity/SettingActivity;->showAttentionDialog(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smalife/activity/SettingActivity;

.field private final synthetic val$dialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/smalife/activity/SettingActivity;Landroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/smalife/activity/SettingActivity$28;->this$0:Lcom/smalife/activity/SettingActivity;

    iput-object p2, p0, Lcom/smalife/activity/SettingActivity$28;->val$dialog:Landroid/app/Dialog;

    .line 1413
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1416
    sget-object v1, Lcom/smalife/MyApplication;->atyList:Ljava/util/ArrayList;

    .line 1417
    .local v1, "actlist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/Activity;>;"
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 1418
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1422
    :cond_0
    iget-object v2, p0, Lcom/smalife/activity/SettingActivity$28;->this$0:Lcom/smalife/activity/SettingActivity;

    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/smalife/activity/SettingActivity$28;->this$0:Lcom/smalife/activity/SettingActivity;

    const-class v5, Lcom/smalife/upgrade/ble/service/DFUService;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v2, v3}, Lcom/smalife/activity/SettingActivity;->stopService(Landroid/content/Intent;)Z

    .line 1423
    iget-object v2, p0, Lcom/smalife/activity/SettingActivity$28;->this$0:Lcom/smalife/activity/SettingActivity;

    invoke-virtual {v2}, Lcom/smalife/activity/SettingActivity;->finish()V

    .line 1424
    iget-object v2, p0, Lcom/smalife/activity/SettingActivity$28;->this$0:Lcom/smalife/activity/SettingActivity;

    invoke-static {v2}, Lcom/smalife/activity/SettingActivity;->access$26(Lcom/smalife/activity/SettingActivity;)V

    .line 1425
    iget-object v2, p0, Lcom/smalife/activity/SettingActivity$28;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    .line 1426
    return-void

    .line 1418
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 1419
    .local v0, "ac":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method
