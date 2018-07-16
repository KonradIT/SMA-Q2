.class public abstract Lorg/android/agoo/service/AgooService;
.super Landroid/app/Service;
.source "AgooService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AgooService"


# instance fields
.field private mContext:Landroid/content/Context;

.field private volatile pushService:Lorg/android/agoo/IPushService;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/android/agoo/service/AgooService;->pushService:Lorg/android/agoo/IPushService;

    .line 20
    iput-object p0, p0, Lorg/android/agoo/service/AgooService;->mContext:Landroid/content/Context;

    .line 17
    return-void
.end method


# virtual methods
.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    .prologue
    .line 25
    :try_start_0
    iget-object v0, p0, Lorg/android/agoo/service/AgooService;->pushService:Lorg/android/agoo/IPushService;

    if-eqz v0, :cond_0

    .line 26
    iget-object v0, p0, Lorg/android/agoo/service/AgooService;->pushService:Lorg/android/agoo/IPushService;

    invoke-interface {v0, p1}, Lorg/android/agoo/IPushService;->bind(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object v0

    .line 35
    :goto_0
    return-object v0

    .line 28
    :cond_0
    const-string v0, "AgooService"

    const-string v1, "onBind[pushService==null]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 32
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public final onCreate()V
    .locals 3

    .prologue
    .line 56
    :try_start_0
    const-string v0, "org.android.agoo.impl.PushService"

    invoke-static {p0, v0}, Lorg/android/agoo/proxy/ProxyFactroy;->getInstance(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/android/agoo/IPushService;

    iput-object v0, p0, Lorg/android/agoo/service/AgooService;->pushService:Lorg/android/agoo/IPushService;

    .line 58
    const-string v0, "AgooService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pushService==["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/android/agoo/service/AgooService;->pushService:Lorg/android/agoo/IPushService;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    iget-object v0, p0, Lorg/android/agoo/service/AgooService;->pushService:Lorg/android/agoo/IPushService;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lorg/android/agoo/service/AgooService;->pushService:Lorg/android/agoo/IPushService;

    new-instance v1, Lorg/android/agoo/service/AgooService$1;

    invoke-direct {v1, p0}, Lorg/android/agoo/service/AgooService$1;-><init>(Lorg/android/agoo/service/AgooService;)V

    invoke-interface {v0, p0, v1}, Lorg/android/agoo/IPushService;->create(Landroid/content/Context;Lorg/android/agoo/callback/IServiceCallBack;)V

    .line 70
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-ge v0, v1, :cond_1

    .line 71
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    .line 72
    const/16 v1, -0x5bd

    invoke-virtual {p0, v1, v0}, Lorg/android/agoo/service/AgooService;->startForeground(ILandroid/app/Notification;)V

    .line 74
    :cond_1
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    :goto_0
    return-void

    .line 75
    :catch_0
    move-exception v0

    .line 76
    const-string v1, "AgooService"

    const-string v2, "onCreate"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public final onDestroy()V
    .locals 2

    .prologue
    .line 98
    :try_start_0
    iget-object v0, p0, Lorg/android/agoo/service/AgooService;->pushService:Lorg/android/agoo/IPushService;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lorg/android/agoo/service/AgooService;->pushService:Lorg/android/agoo/IPushService;

    iget-object v1, p0, Lorg/android/agoo/service/AgooService;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1}, Lorg/android/agoo/IPushService;->destroy(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    :cond_0
    :goto_0
    return-void

    .line 101
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final onStartCommand(Landroid/content/Intent;II)I
    .locals 3

    .prologue
    .line 83
    :try_start_0
    iget-object v0, p0, Lorg/android/agoo/service/AgooService;->pushService:Lorg/android/agoo/IPushService;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lorg/android/agoo/service/AgooService;->pushService:Lorg/android/agoo/IPushService;

    invoke-interface {v0, p1, p2, p3}, Lorg/android/agoo/IPushService;->startCommand(Landroid/content/Intent;II)I

    move-result v0

    .line 92
    :goto_0
    return v0

    .line 86
    :cond_0
    const-string v0, "AgooService"

    const-string v1, "onStartCommand[pushService==null]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    :goto_1
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    goto :goto_0

    .line 88
    :catch_0
    move-exception v0

    .line 89
    const-string v1, "AgooService"

    const-string v2, "onStartCommand"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public final onUnbind(Landroid/content/Intent;)Z
    .locals 2

    .prologue
    .line 41
    :try_start_0
    iget-object v0, p0, Lorg/android/agoo/service/AgooService;->pushService:Lorg/android/agoo/IPushService;

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lorg/android/agoo/service/AgooService;->pushService:Lorg/android/agoo/IPushService;

    invoke-interface {v0, p1}, Lorg/android/agoo/IPushService;->unbind(Landroid/content/Intent;)Z

    move-result v0

    .line 50
    :goto_0
    return v0

    .line 44
    :cond_0
    const-string v0, "AgooService"

    const-string v1, "onBind[pushService==null]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 47
    :catch_0
    move-exception v0

    goto :goto_1
.end method
