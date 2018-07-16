.class Lcom/smalife/activity/ClockSettingActivity$2;
.super Ljava/lang/Object;
.source "ClockSettingActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smalife/activity/ClockSettingActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smalife/activity/ClockSettingActivity;


# direct methods
.method constructor <init>(Lcom/smalife/activity/ClockSettingActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/smalife/activity/ClockSettingActivity$2;->this$0:Lcom/smalife/activity/ClockSettingActivity;

    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 233
    iget-object v0, p0, Lcom/smalife/activity/ClockSettingActivity$2;->this$0:Lcom/smalife/activity/ClockSettingActivity;

    invoke-static {v0}, Lcom/smalife/activity/ClockSettingActivity;->access$2(Lcom/smalife/activity/ClockSettingActivity;)Lcom/smalife/db/SmaDao;

    move-result-object v0

    iget-object v1, p0, Lcom/smalife/activity/ClockSettingActivity$2;->this$0:Lcom/smalife/activity/ClockSettingActivity;

    invoke-static {v1}, Lcom/smalife/activity/ClockSettingActivity;->access$3(Lcom/smalife/activity/ClockSettingActivity;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/smalife/activity/ClockSettingActivity$2;->this$0:Lcom/smalife/activity/ClockSettingActivity;

    invoke-static {v2}, Lcom/smalife/activity/ClockSettingActivity;->access$4(Lcom/smalife/activity/ClockSettingActivity;)Lcom/smalife/entity/ClockEntity;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/smalife/db/SmaDao;->addNewClock(Ljava/lang/String;Lcom/smalife/entity/ClockEntity;)V

    .line 234
    return-void
.end method
