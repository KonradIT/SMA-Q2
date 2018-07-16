.class Lcom/smalife/activity/SettingActivity$17;
.super Ljava/lang/Object;
.source "SettingActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smalife/activity/SettingActivity;->closeProgressBar()V
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
    iput-object p1, p0, Lcom/smalife/activity/SettingActivity$17;->this$0:Lcom/smalife/activity/SettingActivity;

    .line 1097
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1100
    iget-object v0, p0, Lcom/smalife/activity/SettingActivity$17;->this$0:Lcom/smalife/activity/SettingActivity;

    invoke-static {v0}, Lcom/smalife/activity/SettingActivity;->access$7(Lcom/smalife/activity/SettingActivity;)Lcom/smalife/activity/MyProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1101
    iget-object v0, p0, Lcom/smalife/activity/SettingActivity$17;->this$0:Lcom/smalife/activity/SettingActivity;

    invoke-static {v0}, Lcom/smalife/activity/SettingActivity;->access$7(Lcom/smalife/activity/SettingActivity;)Lcom/smalife/activity/MyProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smalife/activity/MyProgressDialog;->colseDialog()V

    .line 1103
    :cond_0
    return-void
.end method
