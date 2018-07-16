.class Lorg/android/agoo/client/MessageReceiverService$1;
.super Lorg/android/agoo/service/SendMessage$Stub;
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
    .line 19
    iput-object p1, p0, Lorg/android/agoo/client/MessageReceiverService$1;->a:Lorg/android/agoo/client/MessageReceiverService;

    invoke-direct {p0}, Lorg/android/agoo/service/SendMessage$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public doSend(Landroid/content/Intent;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 23
    iget-object v0, p0, Lorg/android/agoo/client/MessageReceiverService$1;->a:Lorg/android/agoo/client/MessageReceiverService;

    invoke-virtual {v0}, Lorg/android/agoo/client/MessageReceiverService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lorg/android/agoo/client/MessageReceiverService$1;->a:Lorg/android/agoo/client/MessageReceiverService;

    iget-object v2, p0, Lorg/android/agoo/client/MessageReceiverService$1;->a:Lorg/android/agoo/client/MessageReceiverService;

    invoke-virtual {v2}, Lorg/android/agoo/client/MessageReceiverService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/android/agoo/client/MessageReceiverService;->getIntentServiceClassName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lorg/android/agoo/client/BaseIntentService;->runIntentInService(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    .line 24
    const/4 v0, 0x0

    return v0
.end method
