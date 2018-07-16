.class public Lcom/hiflying/smartlink/v3/SnifferSmartLinkerFragment;
.super Lcom/hiflying/smartlink/AbstractSmartLinkerFragment;
.source "SnifferSmartLinkerFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/hiflying/smartlink/AbstractSmartLinkerFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public setupSmartLinker()Lcom/hiflying/smartlink/ISmartLinker;
    .locals 1

    .prologue
    .line 12
    invoke-static {}, Lcom/hiflying/smartlink/v3/SnifferSmartLinker;->getInstance()Lcom/hiflying/smartlink/v3/SnifferSmartLinker;

    move-result-object v0

    return-object v0
.end method
