.class public Lcom/smalife/upgrade/ble/utils/DfuServiceListenerHelper;
.super Ljava/lang/Object;
.source "DfuServiceListenerHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smalife/upgrade/ble/utils/DfuServiceListenerHelper$LogBroadcastReceiver;,
        Lcom/smalife/upgrade/ble/utils/DfuServiceListenerHelper$ProgressBroadcastsReceiver;
    }
.end annotation


# static fields
.field private static mLogBroadcastReceiver:Lcom/smalife/upgrade/ble/utils/DfuServiceListenerHelper$LogBroadcastReceiver;

.field private static mProgressBroadcastReceiver:Lcom/smalife/upgrade/ble/utils/DfuServiceListenerHelper$ProgressBroadcastsReceiver;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 329
    invoke-static {p0}, Lcom/smalife/upgrade/ble/utils/DfuServiceListenerHelper;->getIncrementedAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getIncrementedAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "deviceAddress"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0xf

    const/4 v6, 0x0

    .line 330
    invoke-virtual {p0, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 331
    .local v0, "firstBytes":Ljava/lang/String;
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 332
    .local v1, "lastByte":Ljava/lang/String;
    const-string v3, "%02X"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/16 v5, 0x10

    invoke-static {v1, v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    and-int/lit16 v5, v5, 0xff

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 333
    .local v2, "lastByteIncremented":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static registerLogListener(Landroid/content/Context;Lcom/smalife/upgrade/ble/utils/DfuLogListener;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "listener"    # Lcom/smalife/upgrade/ble/utils/DfuLogListener;

    .prologue
    .line 286
    sget-object v1, Lcom/smalife/upgrade/ble/utils/DfuServiceListenerHelper;->mLogBroadcastReceiver:Lcom/smalife/upgrade/ble/utils/DfuServiceListenerHelper$LogBroadcastReceiver;

    if-nez v1, :cond_0

    .line 287
    new-instance v1, Lcom/smalife/upgrade/ble/utils/DfuServiceListenerHelper$LogBroadcastReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/smalife/upgrade/ble/utils/DfuServiceListenerHelper$LogBroadcastReceiver;-><init>(Lcom/smalife/upgrade/ble/utils/DfuServiceListenerHelper$LogBroadcastReceiver;)V

    sput-object v1, Lcom/smalife/upgrade/ble/utils/DfuServiceListenerHelper;->mLogBroadcastReceiver:Lcom/smalife/upgrade/ble/utils/DfuServiceListenerHelper$LogBroadcastReceiver;

    .line 289
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 290
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "no.nordicsemi.android.dfu.broadcast.BROADCAST_LOG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 291
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    sget-object v2, Lcom/smalife/upgrade/ble/utils/DfuServiceListenerHelper;->mLogBroadcastReceiver:Lcom/smalife/upgrade/ble/utils/DfuServiceListenerHelper$LogBroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 293
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_0
    sget-object v1, Lcom/smalife/upgrade/ble/utils/DfuServiceListenerHelper;->mLogBroadcastReceiver:Lcom/smalife/upgrade/ble/utils/DfuServiceListenerHelper$LogBroadcastReceiver;

    invoke-static {v1, p1}, Lcom/smalife/upgrade/ble/utils/DfuServiceListenerHelper$LogBroadcastReceiver;->access$1(Lcom/smalife/upgrade/ble/utils/DfuServiceListenerHelper$LogBroadcastReceiver;Lcom/smalife/upgrade/ble/utils/DfuLogListener;)V

    .line 294
    return-void
.end method

.method public static registerLogListener(Landroid/content/Context;Lcom/smalife/upgrade/ble/utils/DfuLogListener;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "listener"    # Lcom/smalife/upgrade/ble/utils/DfuLogListener;
    .param p2, "deviceAddress"    # Ljava/lang/String;

    .prologue
    .line 303
    sget-object v1, Lcom/smalife/upgrade/ble/utils/DfuServiceListenerHelper;->mLogBroadcastReceiver:Lcom/smalife/upgrade/ble/utils/DfuServiceListenerHelper$LogBroadcastReceiver;

    if-nez v1, :cond_0

    .line 304
    new-instance v1, Lcom/smalife/upgrade/ble/utils/DfuServiceListenerHelper$LogBroadcastReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/smalife/upgrade/ble/utils/DfuServiceListenerHelper$LogBroadcastReceiver;-><init>(Lcom/smalife/upgrade/ble/utils/DfuServiceListenerHelper$LogBroadcastReceiver;)V

    sput-object v1, Lcom/smalife/upgrade/ble/utils/DfuServiceListenerHelper;->mLogBroadcastReceiver:Lcom/smalife/upgrade/ble/utils/DfuServiceListenerHelper$LogBroadcastReceiver;

    .line 306
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 307
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "no.nordicsemi.android.dfu.broadcast.BROADCAST_LOG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 308
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    sget-object v2, Lcom/smalife/upgrade/ble/utils/DfuServiceListenerHelper;->mLogBroadcastReceiver:Lcom/smalife/upgrade/ble/utils/DfuServiceListenerHelper$LogBroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 310
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_0
    sget-object v1, Lcom/smalife/upgrade/ble/utils/DfuServiceListenerHelper;->mLogBroadcastReceiver:Lcom/smalife/upgrade/ble/utils/DfuServiceListenerHelper$LogBroadcastReceiver;

    invoke-static {v1, p2, p1}, Lcom/smalife/upgrade/ble/utils/DfuServiceListenerHelper$LogBroadcastReceiver;->access$2(Lcom/smalife/upgrade/ble/utils/DfuServiceListenerHelper$LogBroadcastReceiver;Ljava/lang/String;Lcom/smalife/upgrade/ble/utils/DfuLogListener;)V

    .line 311
    return-void
.end method

.method public static registerProgressListener(Landroid/content/Context;Lcom/smalife/upgrade/ble/utils/DfuProgressListener;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "listener"    # Lcom/smalife/upgrade/ble/utils/DfuProgressListener;

    .prologue
    .line 235
    sget-object v1, Lcom/smalife/upgrade/ble/utils/DfuServiceListenerHelper;->mProgressBroadcastReceiver:Lcom/smalife/upgrade/ble/utils/DfuServiceListenerHelper$ProgressBroadcastsReceiver;

    if-nez v1, :cond_0

    .line 236
    new-instance v1, Lcom/smalife/upgrade/ble/utils/DfuServiceListenerHelper$ProgressBroadcastsReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/smalife/upgrade/ble/utils/DfuServiceListenerHelper$ProgressBroadcastsReceiver;-><init>(Lcom/smalife/upgrade/ble/utils/DfuServiceListenerHelper$ProgressBroadcastsReceiver;)V

    sput-object v1, Lcom/smalife/upgrade/ble/utils/DfuServiceListenerHelper;->mProgressBroadcastReceiver:Lcom/smalife/upgrade/ble/utils/DfuServiceListenerHelper$ProgressBroadcastsReceiver;

    .line 238
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 239
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "no.nordicsemi.android.dfu.broadcast.BROADCAST_PROGRESS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 240
    const-string v1, "no.nordicsemi.android.dfu.broadcast.BROADCAST_ERROR"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 241
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    sget-object v2, Lcom/smalife/upgrade/ble/utils/DfuServiceListenerHelper;->mProgressBroadcastReceiver:Lcom/smalife/upgrade/ble/utils/DfuServiceListenerHelper$ProgressBroadcastsReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 243
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_0
    sget-object v1, Lcom/smalife/upgrade/ble/utils/DfuServiceListenerHelper;->mProgressBroadcastReceiver:Lcom/smalife/upgrade/ble/utils/DfuServiceListenerHelper$ProgressBroadcastsReceiver;

    invoke-static {v1, p1}, Lcom/smalife/upgrade/ble/utils/DfuServiceListenerHelper$ProgressBroadcastsReceiver;->access$1(Lcom/smalife/upgrade/ble/utils/DfuServiceListenerHelper$ProgressBroadcastsReceiver;Lcom/smalife/upgrade/ble/utils/DfuProgressListener;)V

    .line 244
    return-void
.end method

.method public static registerProgressListener(Landroid/content/Context;Lcom/smalife/upgrade/ble/utils/DfuProgressListener;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "listener"    # Lcom/smalife/upgrade/ble/utils/DfuProgressListener;
    .param p2, "deviceAddress"    # Ljava/lang/String;

    .prologue
    .line 253
    sget-object v1, Lcom/smalife/upgrade/ble/utils/DfuServiceListenerHelper;->mProgressBroadcastReceiver:Lcom/smalife/upgrade/ble/utils/DfuServiceListenerHelper$ProgressBroadcastsReceiver;

    if-nez v1, :cond_0

    .line 254
    new-instance v1, Lcom/smalife/upgrade/ble/utils/DfuServiceListenerHelper$ProgressBroadcastsReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/smalife/upgrade/ble/utils/DfuServiceListenerHelper$ProgressBroadcastsReceiver;-><init>(Lcom/smalife/upgrade/ble/utils/DfuServiceListenerHelper$ProgressBroadcastsReceiver;)V

    sput-object v1, Lcom/smalife/upgrade/ble/utils/DfuServiceListenerHelper;->mProgressBroadcastReceiver:Lcom/smalife/upgrade/ble/utils/DfuServiceListenerHelper$ProgressBroadcastsReceiver;

    .line 256
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 257
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "no.nordicsemi.android.dfu.broadcast.BROADCAST_PROGRESS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 258
    const-string v1, "no.nordicsemi.android.dfu.broadcast.BROADCAST_ERROR"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 259
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    sget-object v2, Lcom/smalife/upgrade/ble/utils/DfuServiceListenerHelper;->mProgressBroadcastReceiver:Lcom/smalife/upgrade/ble/utils/DfuServiceListenerHelper$ProgressBroadcastsReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 261
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_0
    sget-object v1, Lcom/smalife/upgrade/ble/utils/DfuServiceListenerHelper;->mProgressBroadcastReceiver:Lcom/smalife/upgrade/ble/utils/DfuServiceListenerHelper$ProgressBroadcastsReceiver;

    invoke-static {v1, p2, p1}, Lcom/smalife/upgrade/ble/utils/DfuServiceListenerHelper$ProgressBroadcastsReceiver;->access$2(Lcom/smalife/upgrade/ble/utils/DfuServiceListenerHelper$ProgressBroadcastsReceiver;Ljava/lang/String;Lcom/smalife/upgrade/ble/utils/DfuProgressListener;)V

    .line 262
    return-void
.end method

.method public static unregisterLogListener(Landroid/content/Context;Lcom/smalife/upgrade/ble/utils/DfuLogListener;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "listener"    # Lcom/smalife/upgrade/ble/utils/DfuLogListener;

    .prologue
    .line 319
    sget-object v1, Lcom/smalife/upgrade/ble/utils/DfuServiceListenerHelper;->mLogBroadcastReceiver:Lcom/smalife/upgrade/ble/utils/DfuServiceListenerHelper$LogBroadcastReceiver;

    if-eqz v1, :cond_0

    .line 320
    sget-object v1, Lcom/smalife/upgrade/ble/utils/DfuServiceListenerHelper;->mLogBroadcastReceiver:Lcom/smalife/upgrade/ble/utils/DfuServiceListenerHelper$LogBroadcastReceiver;

    invoke-static {v1, p1}, Lcom/smalife/upgrade/ble/utils/DfuServiceListenerHelper$LogBroadcastReceiver;->access$3(Lcom/smalife/upgrade/ble/utils/DfuServiceListenerHelper$LogBroadcastReceiver;Lcom/smalife/upgrade/ble/utils/DfuLogListener;)Z

    move-result v0

    .line 322
    .local v0, "empty":Z
    if-eqz v0, :cond_0

    .line 323
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    sget-object v2, Lcom/smalife/upgrade/ble/utils/DfuServiceListenerHelper;->mLogBroadcastReceiver:Lcom/smalife/upgrade/ble/utils/DfuServiceListenerHelper$LogBroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 324
    const/4 v1, 0x0

    sput-object v1, Lcom/smalife/upgrade/ble/utils/DfuServiceListenerHelper;->mLogBroadcastReceiver:Lcom/smalife/upgrade/ble/utils/DfuServiceListenerHelper$LogBroadcastReceiver;

    .line 327
    .end local v0    # "empty":Z
    :cond_0
    return-void
.end method

.method public static unregisterProgressListener(Landroid/content/Context;Lcom/smalife/upgrade/ble/utils/DfuProgressListener;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "listener"    # Lcom/smalife/upgrade/ble/utils/DfuProgressListener;

    .prologue
    .line 270
    sget-object v1, Lcom/smalife/upgrade/ble/utils/DfuServiceListenerHelper;->mProgressBroadcastReceiver:Lcom/smalife/upgrade/ble/utils/DfuServiceListenerHelper$ProgressBroadcastsReceiver;

    if-eqz v1, :cond_0

    .line 271
    sget-object v1, Lcom/smalife/upgrade/ble/utils/DfuServiceListenerHelper;->mProgressBroadcastReceiver:Lcom/smalife/upgrade/ble/utils/DfuServiceListenerHelper$ProgressBroadcastsReceiver;

    invoke-static {v1, p1}, Lcom/smalife/upgrade/ble/utils/DfuServiceListenerHelper$ProgressBroadcastsReceiver;->access$3(Lcom/smalife/upgrade/ble/utils/DfuServiceListenerHelper$ProgressBroadcastsReceiver;Lcom/smalife/upgrade/ble/utils/DfuProgressListener;)Z

    move-result v0

    .line 273
    .local v0, "empty":Z
    if-eqz v0, :cond_0

    .line 274
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    sget-object v2, Lcom/smalife/upgrade/ble/utils/DfuServiceListenerHelper;->mProgressBroadcastReceiver:Lcom/smalife/upgrade/ble/utils/DfuServiceListenerHelper$ProgressBroadcastsReceiver;

    invoke-virtual {v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 275
    const/4 v1, 0x0

    sput-object v1, Lcom/smalife/upgrade/ble/utils/DfuServiceListenerHelper;->mProgressBroadcastReceiver:Lcom/smalife/upgrade/ble/utils/DfuServiceListenerHelper$ProgressBroadcastsReceiver;

    .line 278
    .end local v0    # "empty":Z
    :cond_0
    return-void
.end method
