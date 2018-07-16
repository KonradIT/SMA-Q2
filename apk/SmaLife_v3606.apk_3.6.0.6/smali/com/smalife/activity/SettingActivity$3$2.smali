.class Lcom/smalife/activity/SettingActivity$3$2;
.super Ljava/lang/Object;
.source "SettingActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smalife/activity/SettingActivity$3;->onDfuAborted(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/smalife/activity/SettingActivity$3;


# direct methods
.method constructor <init>(Lcom/smalife/activity/SettingActivity$3;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/smalife/activity/SettingActivity$3$2;->this$1:Lcom/smalife/activity/SettingActivity$3;

    .line 1556
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1559
    iget-object v0, p0, Lcom/smalife/activity/SettingActivity$3$2;->this$1:Lcom/smalife/activity/SettingActivity$3;

    invoke-static {v0}, Lcom/smalife/activity/SettingActivity$3;->access$0(Lcom/smalife/activity/SettingActivity$3;)Lcom/smalife/activity/SettingActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/smalife/activity/SettingActivity;->access$7(Lcom/smalife/activity/SettingActivity;)Lcom/smalife/activity/MyProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1560
    iget-object v0, p0, Lcom/smalife/activity/SettingActivity$3$2;->this$1:Lcom/smalife/activity/SettingActivity$3;

    invoke-static {v0}, Lcom/smalife/activity/SettingActivity$3;->access$0(Lcom/smalife/activity/SettingActivity$3;)Lcom/smalife/activity/SettingActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/smalife/activity/SettingActivity;->access$7(Lcom/smalife/activity/SettingActivity;)Lcom/smalife/activity/MyProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smalife/activity/MyProgressDialog;->colseDialog()V

    .line 1562
    :cond_0
    return-void
.end method
