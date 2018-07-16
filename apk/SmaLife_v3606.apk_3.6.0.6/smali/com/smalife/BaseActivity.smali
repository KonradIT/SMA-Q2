.class public Lcom/smalife/BaseActivity;
.super Landroid/app/Activity;
.source "BaseActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/os/Handler$Callback;


# static fields
.field private static final FILE_NAME:Ljava/lang/String; = "/share_pic.jpg"

.field public static SHARE_IMAGE:Ljava/lang/String;


# instance fields
.field private final appKey:Ljava/lang/String;

.field public application:Lcom/smalife/MyApplication;

.field private final cancel_code:I

.field private client_id:Ljava/lang/String;

.field private final complete_code:I

.field public context:Landroid/content/Context;

.field private final error_code:I

.field private filter:Landroid/content/IntentFilter;

.field protected isResume:Z

.field public mHandler:Landroid/os/Handler;

.field private msg:Landroid/os/Message;

.field private platformActionListener:Lcn/sharesdk/framework/PlatformActionListener;

.field private receiver:Lcom/smalife/ble/BLEBroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 132
    new-instance v0, Lcom/smalife/BaseActivity$1;

    invoke-direct {v0, p0}, Lcom/smalife/BaseActivity$1;-><init>(Lcom/smalife/BaseActivity;)V

    iput-object v0, p0, Lcom/smalife/BaseActivity;->mHandler:Landroid/os/Handler;

    .line 215
    const-string v0, "673013777a15"

    iput-object v0, p0, Lcom/smalife/BaseActivity;->appKey:Ljava/lang/String;

    .line 226
    const/4 v0, 0x0

    iput v0, p0, Lcom/smalife/BaseActivity;->error_code:I

    .line 227
    const/4 v0, 0x1

    iput v0, p0, Lcom/smalife/BaseActivity;->complete_code:I

    .line 228
    const/4 v0, 0x2

    iput v0, p0, Lcom/smalife/BaseActivity;->cancel_code:I

    .line 229
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iput-object v0, p0, Lcom/smalife/BaseActivity;->msg:Landroid/os/Message;

    .line 230
    new-instance v0, Lcom/smalife/BaseActivity$2;

    invoke-direct {v0, p0}, Lcom/smalife/BaseActivity$2;-><init>(Lcom/smalife/BaseActivity;)V

    iput-object v0, p0, Lcom/smalife/BaseActivity;->platformActionListener:Lcn/sharesdk/framework/PlatformActionListener;

    .line 43
    return-void
.end method

.method private GetandSaveCurrentImage()V
    .locals 13

    .prologue
    .line 274
    new-instance v9, Landroid/util/DisplayMetrics;

    invoke-direct {v9}, Landroid/util/DisplayMetrics;-><init>()V

    .line 275
    .local v9, "outMetrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/smalife/BaseActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v11

    invoke-interface {v11}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    .line 276
    .local v3, "display":Landroid/view/Display;
    invoke-virtual {v3, v9}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 277
    iget v10, v9, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 278
    .local v10, "w":I
    iget v7, v9, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 279
    .local v7, "h":I
    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v10, v7, v11}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 282
    .local v0, "Bmp":Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Lcom/smalife/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    .line 283
    .local v2, "decorview":Landroid/view/View;
    const/4 v11, 0x1

    invoke-virtual {v2, v11}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 284
    invoke-virtual {v2}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 285
    new-instance v8, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v8}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 286
    .local v8, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v11, 0x2

    iput v11, v8, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 287
    sget-object v1, Lcom/smalife/BaseActivity;->SHARE_IMAGE:Ljava/lang/String;

    .line 291
    .local v1, "SavePath":Ljava/lang/String;
    :try_start_0
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 292
    .local v5, "file":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_0

    .line 293
    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z

    .line 295
    :cond_0
    const/4 v6, 0x0

    .line 296
    .local v6, "fos":Ljava/io/FileOutputStream;
    new-instance v6, Ljava/io/FileOutputStream;

    .end local v6    # "fos":Ljava/io/FileOutputStream;
    invoke-direct {v6, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 297
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    if-eqz v6, :cond_1

    .line 298
    sget-object v11, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v12, 0x50

    invoke-virtual {v0, v11, v12, v6}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 299
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->flush()V

    .line 300
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 305
    .end local v5    # "file":Ljava/io/File;
    .end local v6    # "fos":Ljava/io/FileOutputStream;
    :cond_1
    :goto_0
    return-void

    .line 302
    :catch_0
    move-exception v4

    .line 303
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/smalife/BaseActivity;)Landroid/os/Message;
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/smalife/BaseActivity;->msg:Landroid/os/Message;

    return-object v0
.end method

.method private checkBleSupport()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 105
    invoke-virtual {p0}, Lcom/smalife/BaseActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 106
    const-string v2, "android.hardware.bluetooth_le"

    .line 105
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    .line 106
    if-nez v1, :cond_0

    .line 107
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {v1}, Landroid/os/Process;->killProcess(I)V

    .line 108
    invoke-static {v3}, Ljava/lang/System;->exit(I)V

    .line 118
    :goto_0
    return-void

    .line 111
    :cond_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 112
    .local v0, "bluetoothAdapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 113
    sput-boolean v3, Lcom/smalife/ble/CmdKeyValue$BLE;->ble_hasOpen:Z

    goto :goto_0

    .line 115
    :cond_1
    const/4 v1, 0x1

    sput-boolean v1, Lcom/smalife/ble/CmdKeyValue$BLE;->ble_hasOpen:Z

    goto :goto_0
.end method

.method private initImagePath()V
    .locals 2

    .prologue
    .line 258
    const-string v0, "mounted"

    .line 259
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    .line 258
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 259
    if-eqz v0, :cond_0

    .line 260
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 261
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    .line 262
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/share_pic.jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 261
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/smalife/BaseActivity;->SHARE_IMAGE:Ljava/lang/String;

    .line 267
    :goto_0
    return-void

    .line 264
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/smalife/BaseActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 265
    const-string v1, "/share_pic.jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 264
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/smalife/BaseActivity;->SHARE_IMAGE:Ljava/lang/String;

    goto :goto_0
.end method

.method private isZh()Z
    .locals 3

    .prologue
    .line 352
    invoke-virtual {p0}, Lcom/smalife/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v1, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 353
    .local v1, "locale":Ljava/util/Locale;
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 354
    .local v0, "language":Ljava/lang/String;
    const-string v2, "zh"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 355
    const/4 v2, 0x1

    .line 357
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getClient_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/smalife/BaseActivity;->client_id:Ljava/lang/String;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 309
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 320
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 309
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 123
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 58
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 59
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/smalife/BaseActivity;->requestWindowFeature(I)Z

    .line 60
    iput-object p0, p0, Lcom/smalife/BaseActivity;->context:Landroid/content/Context;

    .line 61
    invoke-virtual {p0}, Lcom/smalife/BaseActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/smalife/MyApplication;

    iput-object v1, p0, Lcom/smalife/BaseActivity;->application:Lcom/smalife/MyApplication;

    .line 62
    iget-object v1, p0, Lcom/smalife/BaseActivity;->application:Lcom/smalife/MyApplication;

    invoke-direct {p0}, Lcom/smalife/BaseActivity;->isZh()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/smalife/MyApplication;->editLanguage(Z)V

    .line 64
    invoke-static {}, Lcom/igexin/sdk/PushManager;->getInstance()Lcom/igexin/sdk/PushManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/smalife/BaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/igexin/sdk/PushManager;->initialize(Landroid/content/Context;)V

    .line 65
    invoke-static {}, Lcom/igexin/sdk/PushManager;->getInstance()Lcom/igexin/sdk/PushManager;

    move-result-object v1

    .line 66
    invoke-virtual {p0}, Lcom/smalife/BaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 65
    invoke-virtual {v1, v2}, Lcom/igexin/sdk/PushManager;->getClientid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/smalife/BaseActivity;->client_id:Ljava/lang/String;

    .line 67
    iget-object v1, p0, Lcom/smalife/BaseActivity;->client_id:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/smalife/BaseActivity;->client_id:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 68
    iget-object v1, p0, Lcom/smalife/BaseActivity;->application:Lcom/smalife/MyApplication;

    iget-object v2, p0, Lcom/smalife/BaseActivity;->client_id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/smalife/MyApplication;->editClientID(Ljava/lang/String;)V

    .line 70
    :cond_0
    new-instance v1, Lcom/smalife/ble/BLEBroadcastReceiver;

    invoke-direct {v1}, Lcom/smalife/ble/BLEBroadcastReceiver;-><init>()V

    iput-object v1, p0, Lcom/smalife/BaseActivity;->receiver:Lcom/smalife/ble/BLEBroadcastReceiver;

    .line 71
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    iput-object v1, p0, Lcom/smalife/BaseActivity;->filter:Landroid/content/IntentFilter;

    .line 72
    iget-object v1, p0, Lcom/smalife/BaseActivity;->filter:Landroid/content/IntentFilter;

    const-string v2, "BondingActionResult"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 73
    iget-object v1, p0, Lcom/smalife/BaseActivity;->filter:Landroid/content/IntentFilter;

    const-string v2, "UnBondingActionResult"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 74
    iget-object v1, p0, Lcom/smalife/BaseActivity;->filter:Landroid/content/IntentFilter;

    const-string v2, "LoginActionResult"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 75
    iget-object v1, p0, Lcom/smalife/BaseActivity;->filter:Landroid/content/IntentFilter;

    const-string v2, "OTAActionResult"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 76
    iget-object v1, p0, Lcom/smalife/BaseActivity;->filter:Landroid/content/IntentFilter;

    const-string v2, "UnBondingActionResult"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 77
    iget-object v1, p0, Lcom/smalife/BaseActivity;->filter:Landroid/content/IntentFilter;

    const-string v2, "ContalActionResult"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 78
    iget-object v1, p0, Lcom/smalife/BaseActivity;->filter:Landroid/content/IntentFilter;

    const-string v2, "ClockListActionString"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 79
    iget-object v1, p0, Lcom/smalife/BaseActivity;->filter:Landroid/content/IntentFilter;

    const-string v2, "SportActionResult"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 80
    iget-object v1, p0, Lcom/smalife/BaseActivity;->filter:Landroid/content/IntentFilter;

    const-string v2, "BatteryActionResult"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 81
    iget-object v1, p0, Lcom/smalife/BaseActivity;->filter:Landroid/content/IntentFilter;

    const-string v2, "localAction"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 82
    iget-object v1, p0, Lcom/smalife/BaseActivity;->filter:Landroid/content/IntentFilter;

    const-string v2, "FriendAskActionString"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 83
    iget-object v1, p0, Lcom/smalife/BaseActivity;->receiver:Lcom/smalife/ble/BLEBroadcastReceiver;

    iget-object v2, p0, Lcom/smalife/BaseActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Lcom/smalife/ble/BLEBroadcastReceiver;->setmHandler(Landroid/os/Handler;)V

    .line 84
    iget-object v1, p0, Lcom/smalife/BaseActivity;->receiver:Lcom/smalife/ble/BLEBroadcastReceiver;

    iget-object v2, p0, Lcom/smalife/BaseActivity;->filter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v1, v2}, Lcom/smalife/BaseActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 85
    sget-object v1, Lcom/smalife/MyApplication;->atyList:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    iget-object v1, p0, Lcom/smalife/BaseActivity;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/message/PushAgent;->getInstance(Landroid/content/Context;)Lcom/umeng/message/PushAgent;

    move-result-object v0

    .line 87
    .local v0, "agent":Lcom/umeng/message/PushAgent;
    invoke-virtual {v0}, Lcom/umeng/message/PushAgent;->enable()V

    .line 88
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 127
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 128
    iget-object v0, p0, Lcom/smalife/BaseActivity;->receiver:Lcom/smalife/ble/BLEBroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/smalife/BaseActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 130
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 92
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 93
    iget-boolean v0, p0, Lcom/smalife/BaseActivity;->isResume:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/smalife/BaseActivity;->isResume:Z

    .line 94
    iget-boolean v0, p0, Lcom/smalife/BaseActivity;->isResume:Z

    if-eqz v0, :cond_0

    .line 95
    invoke-direct {p0}, Lcom/smalife/BaseActivity;->checkBleSupport()V

    .line 97
    :cond_0
    return-void

    .line 93
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected share()V
    .locals 12

    .prologue
    .line 324
    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    .line 325
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "s"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".png"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 324
    invoke-direct {v2, v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 327
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 329
    :cond_0
    invoke-static {p0}, Lcom/bestmafen/utils/ScreenManager;->shotScreenWithoutStatusBar(Landroid/app/Activity;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 330
    .local v0, "b":Landroid/graphics/Bitmap;
    const/4 v3, 0x0

    .line 332
    .local v3, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 333
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .local v4, "fos":Ljava/io/FileOutputStream;
    if-eqz v4, :cond_1

    .line 334
    :try_start_1
    sget-object v7, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v8, 0x64

    invoke-virtual {v0, v7, v8, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 335
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V

    .line 336
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-object v3, v4

    .line 343
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    :goto_0
    new-instance v5, Landroid/content/Intent;

    const-string v7, "android.intent.action.SEND"

    invoke-direct {v5, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 344
    .local v5, "shareIntent":Landroid/content/Intent;
    const-string v7, "image/*"

    invoke-virtual {v5, v7}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 345
    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v6

    .line 346
    .local v6, "uri":Landroid/net/Uri;
    const-string v7, "android.intent.extra.STREAM"

    invoke-virtual {v5, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 348
    const v7, 0x7f090062

    invoke-virtual {p0, v7}, Lcom/smalife/BaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 347
    invoke-static {v5, v7}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/smalife/BaseActivity;->startActivity(Landroid/content/Intent;)V

    .line 349
    return-void

    .line 338
    .end local v5    # "shareIntent":Landroid/content/Intent;
    .end local v6    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v1

    .line 339
    .local v1, "e":Ljava/io/FileNotFoundException;
    :goto_1
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 340
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v1

    .line 341
    .local v1, "e":Ljava/io/IOException;
    :goto_2
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 340
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    :catch_2
    move-exception v1

    move-object v3, v4

    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    goto :goto_2

    .line 338
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    :catch_3
    move-exception v1

    move-object v3, v4

    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    goto :goto_1

    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    :cond_1
    move-object v3, v4

    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    goto :goto_0
.end method
