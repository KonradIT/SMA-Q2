.class Lcom/smalife/activity/SetSmaQActivity$17;
.super Ljava/lang/Object;
.source "SetSmaQActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smalife/activity/SetSmaQActivity;->showProgressBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smalife/activity/SetSmaQActivity;


# direct methods
.method constructor <init>(Lcom/smalife/activity/SetSmaQActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/smalife/activity/SetSmaQActivity$17;->this$0:Lcom/smalife/activity/SetSmaQActivity;

    .line 848
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 851
    iget-object v0, p0, Lcom/smalife/activity/SetSmaQActivity$17;->this$0:Lcom/smalife/activity/SetSmaQActivity;

    new-instance v1, Lcom/smalife/activity/MyProgressDialog;

    .line 852
    iget-object v2, p0, Lcom/smalife/activity/SetSmaQActivity$17;->this$0:Lcom/smalife/activity/SetSmaQActivity;

    invoke-direct {v1, v2}, Lcom/smalife/activity/MyProgressDialog;-><init>(Landroid/content/Context;)V

    .line 851
    invoke-static {v0, v1}, Lcom/smalife/activity/SetSmaQActivity;->access$31(Lcom/smalife/activity/SetSmaQActivity;Lcom/smalife/activity/MyProgressDialog;)V

    .line 853
    iget-object v0, p0, Lcom/smalife/activity/SetSmaQActivity$17;->this$0:Lcom/smalife/activity/SetSmaQActivity;

    invoke-static {v0}, Lcom/smalife/activity/SetSmaQActivity;->access$8(Lcom/smalife/activity/SetSmaQActivity;)Lcom/smalife/activity/MyProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smalife/activity/MyProgressDialog;->initDialog()V

    .line 854
    return-void
.end method
