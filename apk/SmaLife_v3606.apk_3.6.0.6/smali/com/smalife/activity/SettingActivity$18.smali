.class Lcom/smalife/activity/SettingActivity$18;
.super Ljava/lang/Object;
.source "SettingActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smalife/activity/SettingActivity;->onFileTransferCompleted()V
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
    iput-object p1, p0, Lcom/smalife/activity/SettingActivity$18;->this$0:Lcom/smalife/activity/SettingActivity;

    .line 1122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1126
    iget-object v0, p0, Lcom/smalife/activity/SettingActivity$18;->this$0:Lcom/smalife/activity/SettingActivity;

    invoke-static {v0}, Lcom/smalife/activity/SettingActivity;->access$18(Lcom/smalife/activity/SettingActivity;)Landroid/content/Context;

    move-result-object v0

    .line 1127
    iget-object v1, p0, Lcom/smalife/activity/SettingActivity$18;->this$0:Lcom/smalife/activity/SettingActivity;

    invoke-virtual {v1}, Lcom/smalife/activity/SettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1128
    const v2, 0x7f0901b1

    .line 1127
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1125
    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 1129
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1130
    iget-object v0, p0, Lcom/smalife/activity/SettingActivity$18;->this$0:Lcom/smalife/activity/SettingActivity;

    invoke-static {v0, v3}, Lcom/smalife/activity/SettingActivity;->access$25(Lcom/smalife/activity/SettingActivity;I)V

    .line 1131
    return-void
.end method
