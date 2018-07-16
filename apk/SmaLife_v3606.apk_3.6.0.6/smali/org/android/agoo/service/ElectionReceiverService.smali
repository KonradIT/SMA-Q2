.class public interface abstract Lorg/android/agoo/service/ElectionReceiverService;
.super Ljava/lang/Object;
.source "ElectionReceiverService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/android/agoo/service/ElectionReceiverService$Stub;
    }
.end annotation


# virtual methods
.method public abstract sendElectionResult(Landroid/content/Intent;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
