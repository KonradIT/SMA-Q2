.class public interface abstract Lcom/hiflying/smartlink/ISmartLinker;
.super Ljava/lang/Object;
.source "ISmartLinker.java"


# static fields
.field public static final DEFAULT_TIMEOUT_PERIOD:I = 0xea60

.field public static final V3:I = 0x3

.field public static final V7:I = 0x7


# virtual methods
.method public abstract isSmartLinking()Z
.end method

.method public abstract setOnSmartLinkListener(Lcom/hiflying/smartlink/OnSmartLinkListener;)V
.end method

.method public abstract setTimeoutPeriod(I)V
.end method

.method public varargs abstract start(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract stop()V
.end method
