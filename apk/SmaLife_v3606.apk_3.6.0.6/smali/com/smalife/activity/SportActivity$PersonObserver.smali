.class Lcom/smalife/activity/SportActivity$PersonObserver;
.super Landroid/database/ContentObserver;
.source "SportActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smalife/activity/SportActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PersonObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smalife/activity/SportActivity;


# direct methods
.method public constructor <init>(Lcom/smalife/activity/SportActivity;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 355
    iput-object p1, p0, Lcom/smalife/activity/SportActivity$PersonObserver;->this$0:Lcom/smalife/activity/SportActivity;

    .line 356
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 357
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .prologue
    .line 362
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 364
    iget-object v0, p0, Lcom/smalife/activity/SportActivity$PersonObserver;->this$0:Lcom/smalife/activity/SportActivity;

    iget-object v1, p0, Lcom/smalife/activity/SportActivity$PersonObserver;->this$0:Lcom/smalife/activity/SportActivity;

    invoke-static {v1}, Lcom/smalife/activity/SportActivity;->access$11(Lcom/smalife/activity/SportActivity;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/smalife/activity/SportActivity;->access$12(Lcom/smalife/activity/SportActivity;I)V

    .line 365
    return-void
.end method
