.class public Lcom/smalife/upgrade/ble/utils/DfuServiceInitiator;
.super Ljava/lang/Object;
.source "DfuServiceInitiator.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BLE_OTA"


# instance fields
.field private final deviceAddress:Ljava/lang/String;

.field private deviceName:Ljava/lang/String;

.field private disableNotification:Z

.field private filePath:Ljava/lang/String;

.field private fileResId:I

.field private fileType:I

.field private fileUri:Landroid/net/Uri;

.field private initFilePath:Ljava/lang/String;

.field private initFileResId:I

.field private initFileUri:Landroid/net/Uri;

.field private keepBond:Z

.field private mimeType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "deviceAddress"    # Ljava/lang/String;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, -0x1

    iput v0, p0, Lcom/smalife/upgrade/ble/utils/DfuServiceInitiator;->fileType:I

    .line 34
    iput-object p1, p0, Lcom/smalife/upgrade/ble/utils/DfuServiceInitiator;->deviceAddress:Ljava/lang/String;

    .line 35
    return-void
.end method

.method private init(Landroid/net/Uri;Ljava/lang/String;I)Lcom/smalife/upgrade/ble/utils/DfuServiceInitiator;
    .locals 2
    .param p1, "initFileUri"    # Landroid/net/Uri;
    .param p2, "initFilePath"    # Ljava/lang/String;
    .param p3, "initFileResId"    # I

    .prologue
    .line 144
    const-string v0, "application/zip"

    iget-object v1, p0, Lcom/smalife/upgrade/ble/utils/DfuServiceInitiator;->mimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "Init file must be located inside the ZIP"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 147
    :cond_0
    iput-object p1, p0, Lcom/smalife/upgrade/ble/utils/DfuServiceInitiator;->initFileUri:Landroid/net/Uri;

    .line 148
    iput-object p2, p0, Lcom/smalife/upgrade/ble/utils/DfuServiceInitiator;->initFilePath:Ljava/lang/String;

    .line 149
    iput p3, p0, Lcom/smalife/upgrade/ble/utils/DfuServiceInitiator;->initFileResId:I

    .line 150
    return-object p0
.end method

.method private init(Landroid/net/Uri;Ljava/lang/String;IILjava/lang/String;)Lcom/smalife/upgrade/ble/utils/DfuServiceInitiator;
    .locals 2
    .param p1, "fileUri"    # Landroid/net/Uri;
    .param p2, "filePath"    # Ljava/lang/String;
    .param p3, "fileResId"    # I
    .param p4, "fileType"    # I
    .param p5, "mimeType"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 154
    iput-object p1, p0, Lcom/smalife/upgrade/ble/utils/DfuServiceInitiator;->fileUri:Landroid/net/Uri;

    .line 155
    iput-object p2, p0, Lcom/smalife/upgrade/ble/utils/DfuServiceInitiator;->filePath:Ljava/lang/String;

    .line 156
    iput p3, p0, Lcom/smalife/upgrade/ble/utils/DfuServiceInitiator;->fileResId:I

    .line 157
    iput p4, p0, Lcom/smalife/upgrade/ble/utils/DfuServiceInitiator;->fileType:I

    .line 158
    iput-object p5, p0, Lcom/smalife/upgrade/ble/utils/DfuServiceInitiator;->mimeType:Ljava/lang/String;

    .line 161
    const-string v0, "application/zip"

    invoke-virtual {v0, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    iput-object v1, p0, Lcom/smalife/upgrade/ble/utils/DfuServiceInitiator;->initFileUri:Landroid/net/Uri;

    .line 163
    iput-object v1, p0, Lcom/smalife/upgrade/ble/utils/DfuServiceInitiator;->initFilePath:Ljava/lang/String;

    .line 164
    const/4 v0, 0x0

    iput v0, p0, Lcom/smalife/upgrade/ble/utils/DfuServiceInitiator;->initFileResId:I

    .line 166
    :cond_0
    return-object p0
.end method


# virtual methods
.method public setBinOrHex(II)Lcom/smalife/upgrade/ble/utils/DfuServiceInitiator;
    .locals 6
    .param p1, "fileType"    # I
    .param p2, "rawResId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 91
    if-nez p1, :cond_0

    .line 92
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "You must specify the file type"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :cond_0
    const-string v5, "application/octet-stream"

    move-object v0, p0

    move-object v2, v1

    move v3, p2

    move v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/smalife/upgrade/ble/utils/DfuServiceInitiator;->init(Landroid/net/Uri;Ljava/lang/String;IILjava/lang/String;)Lcom/smalife/upgrade/ble/utils/DfuServiceInitiator;

    move-result-object v0

    return-object v0
.end method

.method public setBinOrHex(ILandroid/net/Uri;)Lcom/smalife/upgrade/ble/utils/DfuServiceInitiator;
    .locals 6
    .param p1, "fileType"    # I
    .param p2, "uri"    # Landroid/net/Uri;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 70
    if-nez p1, :cond_0

    .line 71
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "You must specify the file type"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v5, "application/octet-stream"

    move-object v0, p0

    move-object v1, p2

    move v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/smalife/upgrade/ble/utils/DfuServiceInitiator;->init(Landroid/net/Uri;Ljava/lang/String;IILjava/lang/String;)Lcom/smalife/upgrade/ble/utils/DfuServiceInitiator;

    move-result-object v0

    return-object v0
.end method

.method public setBinOrHex(ILandroid/net/Uri;Ljava/lang/String;)Lcom/smalife/upgrade/ble/utils/DfuServiceInitiator;
    .locals 6
    .param p1, "fileType"    # I
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "path"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 84
    if-nez p1, :cond_0

    .line 85
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "You must specify the file type"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 86
    :cond_0
    const/4 v3, 0x0

    const-string v5, "application/octet-stream"

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/smalife/upgrade/ble/utils/DfuServiceInitiator;->init(Landroid/net/Uri;Ljava/lang/String;IILjava/lang/String;)Lcom/smalife/upgrade/ble/utils/DfuServiceInitiator;

    move-result-object v0

    return-object v0
.end method

.method public setBinOrHex(ILjava/lang/String;)Lcom/smalife/upgrade/ble/utils/DfuServiceInitiator;
    .locals 6
    .param p1, "fileType"    # I
    .param p2, "path"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 77
    if-nez p1, :cond_0

    .line 78
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "You must specify the file type"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_0
    const/4 v1, 0x0

    const/4 v3, 0x0

    const-string v5, "application/octet-stream"

    move-object v0, p0

    move-object v2, p2

    move v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/smalife/upgrade/ble/utils/DfuServiceInitiator;->init(Landroid/net/Uri;Ljava/lang/String;IILjava/lang/String;)Lcom/smalife/upgrade/ble/utils/DfuServiceInitiator;

    move-result-object v0

    return-object v0
.end method

.method public setDeviceName(Ljava/lang/String;)Lcom/smalife/upgrade/ble/utils/DfuServiceInitiator;
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/smalife/upgrade/ble/utils/DfuServiceInitiator;->deviceName:Ljava/lang/String;

    .line 39
    return-object p0
.end method

.method public setDisableNotification(Z)Lcom/smalife/upgrade/ble/utils/DfuServiceInitiator;
    .locals 0
    .param p1, "disableNotification"    # Z

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/smalife/upgrade/ble/utils/DfuServiceInitiator;->disableNotification:Z

    .line 44
    return-object p0
.end method

.method public setInitFile(I)Lcom/smalife/upgrade/ble/utils/DfuServiceInitiator;
    .locals 1
    .param p1, "initFileResId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 108
    invoke-direct {p0, v0, v0, p1}, Lcom/smalife/upgrade/ble/utils/DfuServiceInitiator;->init(Landroid/net/Uri;Ljava/lang/String;I)Lcom/smalife/upgrade/ble/utils/DfuServiceInitiator;

    move-result-object v0

    return-object v0
.end method

.method public setInitFile(Landroid/net/Uri;)Lcom/smalife/upgrade/ble/utils/DfuServiceInitiator;
    .locals 2
    .param p1, "initFileUri"    # Landroid/net/Uri;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 98
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/smalife/upgrade/ble/utils/DfuServiceInitiator;->init(Landroid/net/Uri;Ljava/lang/String;I)Lcom/smalife/upgrade/ble/utils/DfuServiceInitiator;

    move-result-object v0

    return-object v0
.end method

.method public setInitFile(Landroid/net/Uri;Ljava/lang/String;)Lcom/smalife/upgrade/ble/utils/DfuServiceInitiator;
    .locals 1
    .param p1, "initFileUri"    # Landroid/net/Uri;
    .param p2, "initFilePath"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 113
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/smalife/upgrade/ble/utils/DfuServiceInitiator;->init(Landroid/net/Uri;Ljava/lang/String;I)Lcom/smalife/upgrade/ble/utils/DfuServiceInitiator;

    move-result-object v0

    return-object v0
.end method

.method public setInitFile(Ljava/lang/String;)Lcom/smalife/upgrade/ble/utils/DfuServiceInitiator;
    .locals 2
    .param p1, "initFilePath"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 103
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/smalife/upgrade/ble/utils/DfuServiceInitiator;->init(Landroid/net/Uri;Ljava/lang/String;I)Lcom/smalife/upgrade/ble/utils/DfuServiceInitiator;

    move-result-object v0

    return-object v0
.end method

.method public setKeepBond(Z)Lcom/smalife/upgrade/ble/utils/DfuServiceInitiator;
    .locals 0
    .param p1, "keepBond"    # Z

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/smalife/upgrade/ble/utils/DfuServiceInitiator;->keepBond:Z

    .line 49
    return-object p0
.end method

.method public setZip(I)Lcom/smalife/upgrade/ble/utils/DfuServiceInitiator;
    .locals 6
    .param p1, "rawResId"    # I

    .prologue
    const/4 v1, 0x0

    .line 61
    const/4 v4, 0x0

    const-string v5, "application/zip"

    move-object v0, p0

    move-object v2, v1

    move v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/smalife/upgrade/ble/utils/DfuServiceInitiator;->init(Landroid/net/Uri;Ljava/lang/String;IILjava/lang/String;)Lcom/smalife/upgrade/ble/utils/DfuServiceInitiator;

    move-result-object v0

    return-object v0
.end method

.method public setZip(Landroid/net/Uri;)Lcom/smalife/upgrade/ble/utils/DfuServiceInitiator;
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v3, 0x0

    .line 53
    const/4 v2, 0x0

    const-string v5, "application/zip"

    move-object v0, p0

    move-object v1, p1

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/smalife/upgrade/ble/utils/DfuServiceInitiator;->init(Landroid/net/Uri;Ljava/lang/String;IILjava/lang/String;)Lcom/smalife/upgrade/ble/utils/DfuServiceInitiator;

    move-result-object v0

    return-object v0
.end method

.method public setZip(Landroid/net/Uri;Ljava/lang/String;)Lcom/smalife/upgrade/ble/utils/DfuServiceInitiator;
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 65
    const-string v5, "application/zip"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/smalife/upgrade/ble/utils/DfuServiceInitiator;->init(Landroid/net/Uri;Ljava/lang/String;IILjava/lang/String;)Lcom/smalife/upgrade/ble/utils/DfuServiceInitiator;

    move-result-object v0

    return-object v0
.end method

.method public setZip(Ljava/lang/String;)Lcom/smalife/upgrade/ble/utils/DfuServiceInitiator;
    .locals 6
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 57
    const/4 v1, 0x0

    const-string v5, "application/zip"

    move-object v0, p0

    move-object v2, p1

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/smalife/upgrade/ble/utils/DfuServiceInitiator;->init(Landroid/net/Uri;Ljava/lang/String;IILjava/lang/String;)Lcom/smalife/upgrade/ble/utils/DfuServiceInitiator;

    move-result-object v0

    return-object v0
.end method

.method public start(Landroid/content/Context;Ljava/lang/Class;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/smalife/upgrade/ble/service/DFUBaseService;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 117
    .local p2, "service":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/smalife/upgrade/ble/service/DFUBaseService;>;"
    iget v1, p0, Lcom/smalife/upgrade/ble/utils/DfuServiceInitiator;->fileType:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 118
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "You must specify the firmware file before starting the service"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 120
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 122
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "BLE_OTA"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DfuServiceInitiator.java deviceAddress = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/smalife/upgrade/ble/utils/DfuServiceInitiator;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", deviceName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/smalife/upgrade/ble/utils/DfuServiceInitiator;->deviceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", disableNotification = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/smalife/upgrade/ble/utils/DfuServiceInitiator;->disableNotification:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 123
    const-string v3, ", mimeType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/smalife/upgrade/ble/utils/DfuServiceInitiator;->mimeType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", fileType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/smalife/upgrade/ble/utils/DfuServiceInitiator;->fileType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", fileUri = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/smalife/upgrade/ble/utils/DfuServiceInitiator;->fileUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 124
    const-string v3, ", filePath = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/smalife/upgrade/ble/utils/DfuServiceInitiator;->filePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", fileResId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/smalife/upgrade/ble/utils/DfuServiceInitiator;->fileResId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", initFileUri = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/smalife/upgrade/ble/utils/DfuServiceInitiator;->initFileUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 125
    const-string v3, ", initFilePath = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/smalife/upgrade/ble/utils/DfuServiceInitiator;->initFilePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", initFileResId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/smalife/upgrade/ble/utils/DfuServiceInitiator;->initFileResId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", keepBond = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/smalife/upgrade/ble/utils/DfuServiceInitiator;->keepBond:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 122
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    const-string v1, "no.nordicsemi.android.dfu.extra.EXTRA_DEVICE_ADDRESS"

    iget-object v2, p0, Lcom/smalife/upgrade/ble/utils/DfuServiceInitiator;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 128
    const-string v1, "no.nordicsemi.android.dfu.extra.EXTRA_DEVICE_NAME"

    iget-object v2, p0, Lcom/smalife/upgrade/ble/utils/DfuServiceInitiator;->deviceName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 129
    const-string v1, "no.nordicsemi.android.dfu.extra.EXTRA_DISABLE_NOTIFICATION"

    iget-boolean v2, p0, Lcom/smalife/upgrade/ble/utils/DfuServiceInitiator;->disableNotification:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 130
    const-string v1, "no.nordicsemi.android.dfu.extra.EXTRA_MIME_TYPE"

    iget-object v2, p0, Lcom/smalife/upgrade/ble/utils/DfuServiceInitiator;->mimeType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 131
    const-string v1, "no.nordicsemi.android.dfu.extra.EXTRA_FILE_TYPE"

    iget v2, p0, Lcom/smalife/upgrade/ble/utils/DfuServiceInitiator;->fileType:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 132
    const-string v1, "no.nordicsemi.android.dfu.extra.EXTRA_FILE_URI"

    iget-object v2, p0, Lcom/smalife/upgrade/ble/utils/DfuServiceInitiator;->fileUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 133
    const-string v1, "no.nordicsemi.android.dfu.extra.EXTRA_FILE_PATH"

    iget-object v2, p0, Lcom/smalife/upgrade/ble/utils/DfuServiceInitiator;->filePath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 134
    const-string v1, "no.nordicsemi.android.dfu.extra.EXTRA_FILE_RES_ID"

    iget v2, p0, Lcom/smalife/upgrade/ble/utils/DfuServiceInitiator;->fileResId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 135
    const-string v1, "no.nordicsemi.android.dfu.extra.EXTRA_INIT_FILE_URI"

    iget-object v2, p0, Lcom/smalife/upgrade/ble/utils/DfuServiceInitiator;->initFileUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 136
    const-string v1, "no.nordicsemi.android.dfu.extra.EXTRA_INIT_FILE_PATH"

    iget-object v2, p0, Lcom/smalife/upgrade/ble/utils/DfuServiceInitiator;->initFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 137
    const-string v1, "no.nordicsemi.android.dfu.extra.EXTRA_INIT_FILE_RES_ID"

    iget v2, p0, Lcom/smalife/upgrade/ble/utils/DfuServiceInitiator;->initFileResId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 138
    const-string v1, "no.nordicsemi.android.dfu.extra.EXTRA_KEEP_BOND"

    iget-boolean v2, p0, Lcom/smalife/upgrade/ble/utils/DfuServiceInitiator;->keepBond:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 140
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 141
    return-void
.end method
