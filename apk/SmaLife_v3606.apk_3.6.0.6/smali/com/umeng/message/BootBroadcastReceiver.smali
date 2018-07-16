.class public Lcom/umeng/message/BootBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BootBroadcastReceiver.java"


# static fields
.field private static final b:Ljava/lang/String; = "BootBroadcastReceiver"

.field private static final c:Ljava/lang/String; = "android.intent.action.BOOT_COMPLETED"


# instance fields
.field a:Ljava/lang/Runnable;

.field private d:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 33
    new-instance v0, Lcom/umeng/message/BootBroadcastReceiver$1;

    invoke-direct {v0, p0}, Lcom/umeng/message/BootBroadcastReceiver$1;-><init>(Lcom/umeng/message/BootBroadcastReceiver;)V

    iput-object v0, p0, Lcom/umeng/message/BootBroadcastReceiver;->a:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic a(Lcom/umeng/message/BootBroadcastReceiver;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/umeng/message/BootBroadcastReceiver;->d:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 25
    const-string v0, "BootBroadcastReceiver"

    const-string v1, "Boot this system , BootBroadcastReceiver onReceive()"

    invoke-static {v0, v1}, Lcom/umeng/common/message/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    iput-object p1, p0, Lcom/umeng/message/BootBroadcastReceiver;->d:Landroid/content/Context;

    .line 29
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/umeng/message/BootBroadcastReceiver;->a:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 31
    :cond_0
    return-void
.end method
