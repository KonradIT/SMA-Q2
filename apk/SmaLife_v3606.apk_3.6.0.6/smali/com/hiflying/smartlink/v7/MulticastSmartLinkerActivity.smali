.class public Lcom/hiflying/smartlink/v7/MulticastSmartLinkerActivity;
.super Lcom/hiflying/smartlink/AbstractSmartLinkerActivity;
.source "MulticastSmartLinkerActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/hiflying/smartlink/AbstractSmartLinkerActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public setupSmartLinker()Lcom/hiflying/smartlink/ISmartLinker;
    .locals 1

    .prologue
    .line 10
    invoke-static {}, Lcom/hiflying/smartlink/v7/MulticastSmartLinker;->getInstance()Lcom/hiflying/smartlink/v7/MulticastSmartLinker;

    move-result-object v0

    return-object v0
.end method
