.class Lcom/smalife/activity/MyProgressDialog$3;
.super Ljava/lang/Object;
.source "MyProgressDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smalife/activity/MyProgressDialog;->initDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smalife/activity/MyProgressDialog;


# direct methods
.method constructor <init>(Lcom/smalife/activity/MyProgressDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/smalife/activity/MyProgressDialog$3;->this$0:Lcom/smalife/activity/MyProgressDialog;

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 62
    const-wide/16 v2, 0xc8

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    :goto_0
    iget-object v1, p0, Lcom/smalife/activity/MyProgressDialog$3;->this$0:Lcom/smalife/activity/MyProgressDialog;

    iget-boolean v1, v1, Lcom/smalife/activity/MyProgressDialog;->flags:Z

    if-nez v1, :cond_0

    .line 74
    iget-object v1, p0, Lcom/smalife/activity/MyProgressDialog$3;->this$0:Lcom/smalife/activity/MyProgressDialog;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/smalife/activity/MyProgressDialog;->flags:Z

    .line 75
    return-void

    .line 63
    :catch_0
    move-exception v0

    .line 64
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 67
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_0
    iget-object v1, p0, Lcom/smalife/activity/MyProgressDialog$3;->this$0:Lcom/smalife/activity/MyProgressDialog;

    iget-object v1, v1, Lcom/smalife/activity/MyProgressDialog;->handler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 69
    const-wide/16 v2, 0x12c

    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 70
    :catch_1
    move-exception v0

    .line 71
    .restart local v0    # "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
