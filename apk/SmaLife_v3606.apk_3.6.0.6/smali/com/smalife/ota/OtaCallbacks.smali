.class public interface abstract Lcom/smalife/ota/OtaCallbacks;
.super Ljava/lang/Object;
.source "OtaCallbacks.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final serialVersionUID:J = 0x1L


# virtual methods
.method public abstract onOTAError(I)V
.end method

.method public abstract onOTATranfering(I)V
.end method

.method public abstract onOTATransferCompleted()V
.end method

.method public abstract onOTATransferStarted(I)V
.end method
