.class public final Lcom/smalife/upgrade/ble/exception/Manifests;
.super Ljava/lang/Object;
.source "Manifests.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smalife/upgrade/ble/exception/Manifests$permission;,
        Lcom/smalife/upgrade/ble/exception/Manifests$permission_group;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
