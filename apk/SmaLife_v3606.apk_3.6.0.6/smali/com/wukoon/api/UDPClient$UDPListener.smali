.class public interface abstract Lcom/wukoon/api/UDPClient$UDPListener;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wukoon/api/UDPClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "UDPListener"
.end annotation


# virtual methods
.method public abstract onIOException()V
.end method

.method public abstract onMessage(Ljava/lang/String;)V
.end method

.method public abstract onTimeout()V
.end method
