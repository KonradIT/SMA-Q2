.class public interface abstract Lorg/android/agoo/IService;
.super Ljava/lang/Object;
.source "IService.java"


# virtual methods
.method public abstract bind(Landroid/content/Intent;)Landroid/os/IBinder;
.end method

.method public abstract create(Landroid/content/Context;Lorg/android/agoo/callback/IServiceCallBack;)V
.end method

.method public abstract destroy(Landroid/content/Context;)V
.end method

.method public abstract startCommand(Landroid/content/Intent;II)I
.end method

.method public abstract unbind(Landroid/content/Intent;)Z
.end method
