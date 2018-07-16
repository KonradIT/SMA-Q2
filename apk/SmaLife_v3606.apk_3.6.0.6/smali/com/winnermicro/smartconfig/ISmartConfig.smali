.class public interface abstract Lcom/winnermicro/smartconfig/ISmartConfig;
.super Ljava/lang/Object;
.source "ISmartConfig.java"


# virtual methods
.method public abstract sendData(Ljava/lang/String;)Z
.end method

.method public abstract startConfig(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/winnermicro/smartconfig/OneShotException;
        }
    .end annotation
.end method

.method public abstract stopConfig()V
.end method
