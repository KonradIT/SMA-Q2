.class Lorg/android/agoo/client/MessageReceiverService$2;
.super Lorg/android/agoo/service/ElectionReceiverService$Stub;
.source "MessageReceiverService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/android/agoo/client/MessageReceiverService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/android/agoo/client/MessageReceiverService;


# direct methods
.method constructor <init>(Lorg/android/agoo/client/MessageReceiverService;)V
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lorg/android/agoo/client/MessageReceiverService$2;->a:Lorg/android/agoo/client/MessageReceiverService;

    invoke-direct {p0}, Lorg/android/agoo/service/ElectionReceiverService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public sendElectionResult(Landroid/content/Intent;)Z
    .locals 3

    .prologue
    .line 31
    :try_start_0
    iget-object v0, p0, Lorg/android/agoo/client/MessageReceiverService$2;->a:Lorg/android/agoo/client/MessageReceiverService;

    invoke-virtual {v0}, Lorg/android/agoo/client/MessageReceiverService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lorg/android/agoo/client/MessageReceiverService$2;->a:Lorg/android/agoo/client/MessageReceiverService;

    iget-object v2, p0, Lorg/android/agoo/client/MessageReceiverService$2;->a:Lorg/android/agoo/client/MessageReceiverService;

    invoke-virtual {v2}, Lorg/android/agoo/client/MessageReceiverService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/android/agoo/client/MessageReceiverService;->getIntentServiceClassName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lorg/android/agoo/client/BaseIntentService;->runIntentInService(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    const/4 v0, 0x1

    .line 35
    :goto_0
    return v0

    .line 33
    :catch_0
    move-exception v0

    .line 35
    const/4 v0, 0x0

    goto :goto_0
.end method
