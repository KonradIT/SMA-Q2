.class public interface abstract Lorg/android/agoo/callback/IControlCallBack;
.super Ljava/lang/Object;
.source "IControlCallBack.java"


# virtual methods
.method public abstract callAgooElectionReceiver()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end method

.method public abstract callAgooMessageReceiver()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end method

.method public abstract callAgooRegistrationReceiver()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end method

.method public abstract callAgooService()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end method

.method public abstract callAgooSystemReceiver()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end method

.method public abstract callDeletedMessages(Landroid/content/Context;I)V
.end method

.method public abstract callError(Landroid/content/Context;Ljava/lang/String;)V
.end method

.method public abstract callMessage(Landroid/content/Context;Landroid/content/Intent;)V
.end method

.method public abstract callRecoverableError(Landroid/content/Context;Ljava/lang/String;)Z
.end method

.method public abstract callRegistered(Landroid/content/Context;Ljava/lang/String;)V
.end method

.method public abstract callShouldProcessMessage(Landroid/content/Context;Landroid/content/Intent;)Z
.end method

.method public abstract callUnregistered(Landroid/content/Context;Ljava/lang/String;)V
.end method

.method public abstract callUserCommand(Landroid/content/Context;Landroid/content/Intent;)V
.end method

.method public abstract callUserHandleIntent(Landroid/content/Context;Landroid/content/Intent;)V
.end method
