.class Lcom/smalife/activity/HeartActivity$1;
.super Landroid/os/Handler;
.source "HeartActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smalife/activity/HeartActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smalife/activity/HeartActivity;


# direct methods
.method constructor <init>(Lcom/smalife/activity/HeartActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/smalife/activity/HeartActivity$1;->this$0:Lcom/smalife/activity/HeartActivity;

    .line 208
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 211
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 212
    iget v0, p1, Landroid/os/Message;->what:I

    .line 217
    return-void
.end method
