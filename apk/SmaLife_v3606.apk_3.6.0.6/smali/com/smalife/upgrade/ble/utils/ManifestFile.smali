.class public Lcom/smalife/upgrade/ble/utils/ManifestFile;
.super Ljava/lang/Object;
.source "ManifestFile.java"


# instance fields
.field protected manifest:Lcom/smalife/upgrade/ble/utils/Manifest;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getManifest()Lcom/smalife/upgrade/ble/utils/Manifest;
    .locals 1

    .prologue
    .line 7
    iget-object v0, p0, Lcom/smalife/upgrade/ble/utils/ManifestFile;->manifest:Lcom/smalife/upgrade/ble/utils/Manifest;

    return-object v0
.end method
