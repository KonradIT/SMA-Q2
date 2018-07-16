.class Lcom/smalife/activity/SetSmaQActivity$19;
.super Ljava/lang/Object;
.source "SetSmaQActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smalife/activity/SetSmaQActivity;->showAttentionDialog(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smalife/activity/SetSmaQActivity;

.field private final synthetic val$dialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/smalife/activity/SetSmaQActivity;Landroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/smalife/activity/SetSmaQActivity$19;->this$0:Lcom/smalife/activity/SetSmaQActivity;

    iput-object p2, p0, Lcom/smalife/activity/SetSmaQActivity$19;->val$dialog:Landroid/app/Dialog;

    .line 899
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 903
    sget-object v1, Lcom/smalife/MyApplication;->atyList:Ljava/util/ArrayList;

    .line 904
    .local v1, "actlist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/Activity;>;"
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 905
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 909
    :cond_0
    iget-object v2, p0, Lcom/smalife/activity/SetSmaQActivity$19;->this$0:Lcom/smalife/activity/SetSmaQActivity;

    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/smalife/activity/SetSmaQActivity$19;->this$0:Lcom/smalife/activity/SetSmaQActivity;

    const-class v5, Lcom/smalife/upgrade/ble/service/DFUService;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v2, v3}, Lcom/smalife/activity/SetSmaQActivity;->stopService(Landroid/content/Intent;)Z

    .line 910
    iget-object v2, p0, Lcom/smalife/activity/SetSmaQActivity$19;->this$0:Lcom/smalife/activity/SetSmaQActivity;

    invoke-virtual {v2}, Lcom/smalife/activity/SetSmaQActivity;->finish()V

    .line 911
    iget-object v2, p0, Lcom/smalife/activity/SetSmaQActivity$19;->this$0:Lcom/smalife/activity/SetSmaQActivity;

    invoke-static {v2}, Lcom/smalife/activity/SetSmaQActivity;->access$32(Lcom/smalife/activity/SetSmaQActivity;)V

    .line 912
    iget-object v2, p0, Lcom/smalife/activity/SetSmaQActivity$19;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    .line 913
    return-void

    .line 905
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 906
    .local v0, "ac":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method
