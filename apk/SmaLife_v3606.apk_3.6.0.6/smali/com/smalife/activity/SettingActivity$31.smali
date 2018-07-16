.class Lcom/smalife/activity/SettingActivity$31;
.super Ljava/lang/Object;
.source "SettingActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smalife/activity/SettingActivity;->showProgressBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smalife/activity/SettingActivity;


# direct methods
.method constructor <init>(Lcom/smalife/activity/SettingActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/smalife/activity/SettingActivity$31;->this$0:Lcom/smalife/activity/SettingActivity;

    .line 1517
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1520
    iget-object v0, p0, Lcom/smalife/activity/SettingActivity$31;->this$0:Lcom/smalife/activity/SettingActivity;

    new-instance v1, Lcom/smalife/activity/MyProgressDialog;

    .line 1521
    iget-object v2, p0, Lcom/smalife/activity/SettingActivity$31;->this$0:Lcom/smalife/activity/SettingActivity;

    invoke-direct {v1, v2}, Lcom/smalife/activity/MyProgressDialog;-><init>(Landroid/content/Context;)V

    .line 1520
    invoke-static {v0, v1}, Lcom/smalife/activity/SettingActivity;->access$23(Lcom/smalife/activity/SettingActivity;Lcom/smalife/activity/MyProgressDialog;)V

    .line 1522
    iget-object v0, p0, Lcom/smalife/activity/SettingActivity$31;->this$0:Lcom/smalife/activity/SettingActivity;

    invoke-static {v0}, Lcom/smalife/activity/SettingActivity;->access$7(Lcom/smalife/activity/SettingActivity;)Lcom/smalife/activity/MyProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smalife/activity/MyProgressDialog;->initDialog()V

    .line 1523
    return-void
.end method
