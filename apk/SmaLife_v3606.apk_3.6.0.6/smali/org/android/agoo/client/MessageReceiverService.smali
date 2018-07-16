.class public abstract Lorg/android/agoo/client/MessageReceiverService;
.super Landroid/app/Service;
.source "MessageReceiverService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MessageReceiverService"


# instance fields
.field binderElecRecv:Lorg/android/agoo/service/ElectionReceiverService$Stub;

.field binderMsgRecv:Lorg/android/agoo/service/SendMessage$Stub;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 19
    new-instance v0, Lorg/android/agoo/client/MessageReceiverService$1;

    invoke-direct {v0, p0}, Lorg/android/agoo/client/MessageReceiverService$1;-><init>(Lorg/android/agoo/client/MessageReceiverService;)V

    iput-object v0, p0, Lorg/android/agoo/client/MessageReceiverService;->binderMsgRecv:Lorg/android/agoo/service/SendMessage$Stub;

    .line 28
    new-instance v0, Lorg/android/agoo/client/MessageReceiverService$2;

    invoke-direct {v0, p0}, Lorg/android/agoo/client/MessageReceiverService$2;-><init>(Lorg/android/agoo/client/MessageReceiverService;)V

    iput-object v0, p0, Lorg/android/agoo/client/MessageReceiverService;->binderElecRecv:Lorg/android/agoo/service/ElectionReceiverService$Stub;

    return-void
.end method


# virtual methods
.method public abstract getIntentServiceClassName(Landroid/content/Context;)Ljava/lang/String;
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 4

    .prologue
    .line 41
    const-string v0, "MessageReceiverService"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "Message receiver aidl was binded {}"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/umeng/message/proguard/aK;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 42
    const-string v0, "org.android.agoo.client.ElectionReceiverService"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lorg/android/agoo/client/MessageReceiverService;->binderElecRecv:Lorg/android/agoo/service/ElectionReceiverService$Stub;

    .line 47
    :goto_0
    return-object v0

    .line 44
    :cond_0
    const-string v0, "org.android.agoo.client.MessageReceiverService"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 45
    iget-object v0, p0, Lorg/android/agoo/client/MessageReceiverService;->binderMsgRecv:Lorg/android/agoo/service/SendMessage$Stub;

    goto :goto_0

    .line 47
    :cond_1
    iget-object v0, p0, Lorg/android/agoo/client/MessageReceiverService;->binderMsgRecv:Lorg/android/agoo/service/SendMessage$Stub;

    goto :goto_0
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 52
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 53
    return-void
.end method
