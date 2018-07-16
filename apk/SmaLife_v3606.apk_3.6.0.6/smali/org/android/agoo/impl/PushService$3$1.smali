.class Lorg/android/agoo/impl/PushService$3$1;
.super Ljava/lang/Object;
.source "PushService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/android/agoo/impl/PushService$3;->probe()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/android/agoo/impl/PushService$3;


# direct methods
.method constructor <init>(Lorg/android/agoo/impl/PushService$3;)V
    .locals 0

    .prologue
    .line 663
    iput-object p1, p0, Lorg/android/agoo/impl/PushService$3$1;->a:Lorg/android/agoo/impl/PushService$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 668
    :try_start_0
    iget-object v0, p0, Lorg/android/agoo/impl/PushService$3$1;->a:Lorg/android/agoo/impl/PushService$3;

    iget-object v0, v0, Lorg/android/agoo/impl/PushService$3;->a:Lorg/android/agoo/impl/PushService;

    invoke-static {v0}, Lorg/android/agoo/impl/PushService;->a(Lorg/android/agoo/impl/PushService;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/android/agoo/a;->j(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 669
    const-string v0, "PushService"

    const-string v1, "messageServiceBinder [probe][deviceToken==null]"

    invoke-static {v0, v1}, Lcom/umeng/message/proguard/aK;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 693
    :goto_0
    return-void

    .line 673
    :cond_0
    iget-object v0, p0, Lorg/android/agoo/impl/PushService$3$1;->a:Lorg/android/agoo/impl/PushService$3;

    iget-object v0, v0, Lorg/android/agoo/impl/PushService$3;->a:Lorg/android/agoo/impl/PushService;

    invoke-static {v0}, Lorg/android/agoo/impl/PushService;->a(Lorg/android/agoo/impl/PushService;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/android/agoo/impl/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 675
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/android/agoo/impl/PushService$3$1;->a:Lorg/android/agoo/impl/PushService$3;

    iget-object v1, v1, Lorg/android/agoo/impl/PushService$3;->a:Lorg/android/agoo/impl/PushService;

    invoke-static {v1}, Lorg/android/agoo/impl/PushService;->a(Lorg/android/agoo/impl/PushService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 678
    iget-object v0, p0, Lorg/android/agoo/impl/PushService$3$1;->a:Lorg/android/agoo/impl/PushService$3;

    iget-object v0, v0, Lorg/android/agoo/impl/PushService$3;->a:Lorg/android/agoo/impl/PushService;

    const-string v1, "ERROR_NEED_ELECTION"

    invoke-virtual {v0, v1}, Lorg/android/agoo/impl/PushService;->onHandleError(Ljava/lang/String;)V

    .line 679
    const-string v0, "PushService"

    const-string v1, "messageServiceBinder [probe][need_election]"

    invoke-static {v0, v1}, Lcom/umeng/message/proguard/aK;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 690
    :catch_0
    move-exception v0

    goto :goto_0

    .line 681
    :cond_1
    iget-object v0, p0, Lorg/android/agoo/impl/PushService$3$1;->a:Lorg/android/agoo/impl/PushService$3;

    iget-object v0, v0, Lorg/android/agoo/impl/PushService$3;->a:Lorg/android/agoo/impl/PushService;

    invoke-static {v0}, Lorg/android/agoo/impl/PushService;->d(Lorg/android/agoo/impl/PushService;)Lcom/umeng/message/proguard/aR;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/android/agoo/impl/PushService$3$1;->a:Lorg/android/agoo/impl/PushService$3;

    iget-object v0, v0, Lorg/android/agoo/impl/PushService$3;->a:Lorg/android/agoo/impl/PushService;

    invoke-static {v0}, Lorg/android/agoo/impl/PushService;->d(Lorg/android/agoo/impl/PushService;)Lcom/umeng/message/proguard/aR;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/message/proguard/aR;->f()Z

    move-result v0

    if-nez v0, :cond_3

    .line 683
    :cond_2
    iget-object v0, p0, Lorg/android/agoo/impl/PushService$3$1;->a:Lorg/android/agoo/impl/PushService$3;

    iget-object v0, v0, Lorg/android/agoo/impl/PushService$3;->a:Lorg/android/agoo/impl/PushService;

    const-string v1, "command_restart_sudo"

    invoke-virtual {v0, v1}, Lorg/android/agoo/impl/PushService;->onHandleCommand(Ljava/lang/String;)V

    .line 684
    const-string v0, "PushService"

    const-string v1, "messageServiceBinder [probe][restart_sudo]"

    invoke-static {v0, v1}, Lcom/umeng/message/proguard/aK;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 687
    :cond_3
    const-string v0, "PushService"

    const-string v1, "messageServiceBinder [probe][successfully]"

    invoke-static {v0, v1}, Lcom/umeng/message/proguard/aK;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method
