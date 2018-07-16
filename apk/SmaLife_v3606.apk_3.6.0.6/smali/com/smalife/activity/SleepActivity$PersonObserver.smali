.class Lcom/smalife/activity/SleepActivity$PersonObserver;
.super Landroid/database/ContentObserver;
.source "SleepActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smalife/activity/SleepActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PersonObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smalife/activity/SleepActivity;


# direct methods
.method public constructor <init>(Lcom/smalife/activity/SleepActivity;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 401
    iput-object p1, p0, Lcom/smalife/activity/SleepActivity$PersonObserver;->this$0:Lcom/smalife/activity/SleepActivity;

    .line 402
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 403
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .prologue
    .line 408
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 409
    iget-object v0, p0, Lcom/smalife/activity/SleepActivity$PersonObserver;->this$0:Lcom/smalife/activity/SleepActivity;

    iget-object v1, p0, Lcom/smalife/activity/SleepActivity$PersonObserver;->this$0:Lcom/smalife/activity/SleepActivity;

    invoke-static {v1}, Lcom/smalife/activity/SleepActivity;->access$0(Lcom/smalife/activity/SleepActivity;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/smalife/activity/SleepActivity;->access$1(Lcom/smalife/activity/SleepActivity;I)V

    .line 410
    return-void
.end method
