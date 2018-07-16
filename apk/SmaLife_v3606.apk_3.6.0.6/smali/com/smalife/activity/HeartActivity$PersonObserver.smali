.class Lcom/smalife/activity/HeartActivity$PersonObserver;
.super Landroid/database/ContentObserver;
.source "HeartActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smalife/activity/HeartActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PersonObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smalife/activity/HeartActivity;


# direct methods
.method public constructor <init>(Lcom/smalife/activity/HeartActivity;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 221
    iput-object p1, p0, Lcom/smalife/activity/HeartActivity$PersonObserver;->this$0:Lcom/smalife/activity/HeartActivity;

    .line 222
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 223
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .prologue
    .line 228
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 229
    iget-object v0, p0, Lcom/smalife/activity/HeartActivity$PersonObserver;->this$0:Lcom/smalife/activity/HeartActivity;

    iget-object v1, p0, Lcom/smalife/activity/HeartActivity$PersonObserver;->this$0:Lcom/smalife/activity/HeartActivity;

    invoke-static {v1}, Lcom/smalife/activity/HeartActivity;->access$0(Lcom/smalife/activity/HeartActivity;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/smalife/activity/HeartActivity;->access$1(Lcom/smalife/activity/HeartActivity;I)V

    .line 230
    return-void
.end method
