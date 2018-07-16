.class public Lcn/smssdk/gui/DefaultOnSendMessageListener;
.super Ljava/lang/Object;
.source "DefaultOnSendMessageListener.java"

# interfaces
.implements Lcn/smssdk/OnSendMessageHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSendMessage(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "country"    # Ljava/lang/String;
    .param p2, "phone"    # Ljava/lang/String;

    .prologue
    .line 8
    const/4 v0, 0x0

    return v0
.end method
