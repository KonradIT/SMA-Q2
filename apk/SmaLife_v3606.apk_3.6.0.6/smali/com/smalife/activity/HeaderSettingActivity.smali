.class public Lcom/smalife/activity/HeaderSettingActivity;
.super Landroid/app/Activity;
.source "HeaderSettingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static fileName:Ljava/lang/String;

.field private static file_type:Ljava/lang/String;

.field public static headerPath:Ljava/lang/String;


# instance fields
.field private application:Lcom/smalife/MyApplication;

.field private cancel:Landroid/widget/Button;

.field private photo:Landroid/widget/Button;

.field private take_photo:Landroid/widget/Button;

.field private userAccount:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 44
    const-string v0, ".jpg"

    sput-object v0, Lcom/smalife/activity/HeaderSettingActivity;->file_type:Ljava/lang/String;

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "sma"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/smalife/activity/HeaderSettingActivity;->file_type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/smalife/activity/HeaderSettingActivity;->fileName:Ljava/lang/String;

    .line 46
    new-instance v0, Ljava/io/File;

    .line 47
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    sget-object v2, Lcom/smalife/activity/HeaderSettingActivity;->fileName:Ljava/lang/String;

    .line 46
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 48
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    .line 46
    sput-object v0, Lcom/smalife/activity/HeaderSettingActivity;->headerPath:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/smalife/activity/HeaderSettingActivity;)Lcom/smalife/MyApplication;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/smalife/activity/HeaderSettingActivity;->application:Lcom/smalife/MyApplication;

    return-object v0
.end method

.method private init()V
    .locals 1

    .prologue
    .line 62
    const v0, 0x7f0e002b

    invoke-virtual {p0, v0}, Lcom/smalife/activity/HeaderSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/smalife/activity/HeaderSettingActivity;->cancel:Landroid/widget/Button;

    .line 63
    const v0, 0x7f0e0094

    invoke-virtual {p0, v0}, Lcom/smalife/activity/HeaderSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/smalife/activity/HeaderSettingActivity;->photo:Landroid/widget/Button;

    .line 64
    const v0, 0x7f0e0093

    invoke-virtual {p0, v0}, Lcom/smalife/activity/HeaderSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/smalife/activity/HeaderSettingActivity;->take_photo:Landroid/widget/Button;

    .line 65
    iget-object v0, p0, Lcom/smalife/activity/HeaderSettingActivity;->cancel:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    iget-object v0, p0, Lcom/smalife/activity/HeaderSettingActivity;->photo:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    iget-object v0, p0, Lcom/smalife/activity/HeaderSettingActivity;->take_photo:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    return-void
.end method

.method private saveMyBitmap(Landroid/graphics/Bitmap;)V
    .locals 7
    .param p1, "mBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 273
    sget-object v4, Lcom/smalife/utils/FileHelper$FileType;->Image:Lcom/smalife/utils/FileHelper$FileType;

    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/smalife/activity/HeaderSettingActivity;->userAccount:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 274
    const-string v6, ".jpg"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 273
    invoke-static {p0, v4, v5}, Lcom/smalife/utils/FileHelper;->createFile(Landroid/content/Context;Lcom/smalife/utils/FileHelper$FileType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/smalife/activity/HeaderSettingActivity;->headerPath:Ljava/lang/String;

    .line 275
    new-instance v2, Ljava/io/File;

    sget-object v4, Lcom/smalife/activity/HeaderSettingActivity;->headerPath:Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 276
    .local v2, "f":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 277
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 280
    :cond_0
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 281
    .local v3, "out":Ljava/io/FileOutputStream;
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    invoke-virtual {p1, v4, v5, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 282
    new-instance v0, Lcom/smalife/db/SmaDao;

    invoke-direct {v0, p0}, Lcom/smalife/db/SmaDao;-><init>(Landroid/content/Context;)V

    .line 283
    .local v0, "dao":Lcom/smalife/db/SmaDao;
    sget-object v4, Lcom/smalife/activity/HeaderSettingActivity;->headerPath:Ljava/lang/String;

    iget-object v5, p0, Lcom/smalife/activity/HeaderSettingActivity;->userAccount:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Lcom/smalife/db/SmaDao;->updateHeaderIcon(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    iget-object v4, p0, Lcom/smalife/activity/HeaderSettingActivity;->application:Lcom/smalife/MyApplication;

    sget-object v5, Lcom/smalife/activity/HeaderSettingActivity;->headerPath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/smalife/MyApplication;->editHeaderIcon_url(Ljava/lang/String;)V

    .line 285
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    .line 286
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 292
    .end local v0    # "dao":Lcom/smalife/db/SmaDao;
    .end local v3    # "out":Ljava/io/FileOutputStream;
    :goto_0
    return-void

    .line 287
    :catch_0
    move-exception v1

    .line 288
    .local v1, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 289
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v1

    .line 290
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private setPicToView(Landroid/content/Intent;)V
    .locals 4
    .param p1, "picdata"    # Landroid/content/Intent;

    .prologue
    .line 258
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 259
    .local v0, "extras":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 260
    const/4 v3, -0x1

    invoke-virtual {p0, v3, p1}, Lcom/smalife/activity/HeaderSettingActivity;->setResult(ILandroid/content/Intent;)V

    .line 261
    const-string v3, "data"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 262
    .local v1, "photo":Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/smalife/utils/ImageHelper;->compressImage(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 263
    invoke-static {v1}, Lcom/smalife/utils/ImageHelper;->toRoundBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 265
    .local v2, "roundBitmap":Landroid/graphics/Bitmap;
    invoke-direct {p0, v2}, Lcom/smalife/activity/HeaderSettingActivity;->saveMyBitmap(Landroid/graphics/Bitmap;)V

    .line 266
    sget-object v3, Lcom/smalife/activity/HeaderSettingActivity;->headerPath:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/smalife/activity/HeaderSettingActivity;->updateHeaderIcon(Ljava/lang/String;)V

    .line 267
    invoke-virtual {p0}, Lcom/smalife/activity/HeaderSettingActivity;->finish()V

    .line 270
    .end local v1    # "photo":Landroid/graphics/Bitmap;
    .end local v2    # "roundBitmap":Landroid/graphics/Bitmap;
    :cond_0
    return-void
.end method

.method private updateHeaderIcon(Ljava/lang/String;)V
    .locals 8
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 132
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 133
    .local v4, "tempfile":Ljava/io/File;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 134
    new-instance v0, Lcom/accloud/service/ACFileInfo;

    sget-object v5, Lcom/smalife/ablecloud/Config;->header_dir:Ljava/lang/String;

    .line 135
    new-instance v6, Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/smalife/activity/HeaderSettingActivity;->userAccount:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, ".jpg"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 134
    invoke-direct {v0, v5, v6}, Lcom/accloud/service/ACFileInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    .local v0, "acfile":Lcom/accloud/service/ACFileInfo;
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 140
    .local v3, "reader":Ljava/io/FileInputStream;
    invoke-virtual {v3}, Ljava/io/FileInputStream;->available()I

    move-result v5

    new-array v1, v5, [B

    .line 141
    .local v1, "buffer":[B
    :goto_0
    invoke-virtual {v3, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v5

    if-gtz v5, :cond_1

    .line 144
    invoke-virtual {v0, v1}, Lcom/accloud/service/ACFileInfo;->setData([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    .end local v1    # "buffer":[B
    .end local v3    # "reader":Ljava/io/FileInputStream;
    :goto_1
    invoke-static {}, Lcom/accloud/cloudservice/AC;->fileMgr()Lcom/accloud/service/ACFileMgr;

    move-result-object v5

    const/4 v6, 0x0

    new-instance v7, Lcom/smalife/activity/HeaderSettingActivity$1;

    invoke-direct {v7, p0}, Lcom/smalife/activity/HeaderSettingActivity$1;-><init>(Lcom/smalife/activity/HeaderSettingActivity;)V

    invoke-interface {v5, v0, v6, v7}, Lcom/accloud/service/ACFileMgr;->uploadFile(Lcom/accloud/service/ACFileInfo;Lcom/accloud/cloudservice/ProgressCallback;Lcom/accloud/cloudservice/VoidCallback;)V

    .line 235
    .end local v0    # "acfile":Lcom/accloud/service/ACFileInfo;
    :cond_0
    return-void

    .line 142
    .restart local v0    # "acfile":Lcom/accloud/service/ACFileInfo;
    .restart local v1    # "buffer":[B
    .restart local v3    # "reader":Ljava/io/FileInputStream;
    :cond_1
    :try_start_1
    invoke-virtual {v3, v1}, Ljava/io/FileInputStream;->read([B)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 145
    .end local v1    # "buffer":[B
    .end local v3    # "reader":Ljava/io/FileInputStream;
    :catch_0
    move-exception v2

    .line 146
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 110
    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    .line 111
    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    .line 112
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/smalife/activity/HeaderSettingActivity;->startPhotoZoom(Landroid/net/Uri;)V

    .line 126
    :cond_0
    :goto_0
    return-void

    .line 114
    :cond_1
    const/4 v2, 0x3

    if-ne p1, v2, :cond_2

    .line 115
    if-eqz p3, :cond_0

    .line 116
    invoke-direct {p0, p3}, Lcom/smalife/activity/HeaderSettingActivity;->setPicToView(Landroid/content/Intent;)V

    goto :goto_0

    .line 118
    :cond_2
    const/4 v2, 0x2

    if-ne p1, v2, :cond_0

    .line 119
    sget-object v2, Lcom/smalife/utils/FileHelper$FileType;->Image:Lcom/smalife/utils/FileHelper$FileType;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 120
    sget-object v4, Lcom/smalife/activity/HeaderSettingActivity;->fileName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 119
    invoke-static {p0, v2, v3}, Lcom/smalife/utils/FileHelper;->createFile(Landroid/content/Context;Lcom/smalife/utils/FileHelper$FileType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 121
    .local v0, "createFile":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 124
    .local v1, "temp":Ljava/io/File;
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/smalife/activity/HeaderSettingActivity;->startPhotoZoom(Landroid/net/Uri;)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 82
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 106
    :goto_0
    return-void

    .line 84
    :sswitch_0
    invoke-virtual {p0}, Lcom/smalife/activity/HeaderSettingActivity;->finish()V

    goto :goto_0

    .line 87
    :sswitch_1
    new-instance v2, Landroid/content/Intent;

    .line 88
    const-string v3, "android.intent.action.PICK"

    .line 89
    sget-object v4, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 87
    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 90
    .local v2, "picture":Landroid/content/Intent;
    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/smalife/activity/HeaderSettingActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 93
    .end local v2    # "picture":Landroid/content/Intent;
    :sswitch_2
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 97
    .local v1, "nIntent":Landroid/content/Intent;
    new-instance v0, Ljava/io/File;

    sget-object v3, Lcom/smalife/utils/FileHelper$FileType;->Image:Lcom/smalife/utils/FileHelper$FileType;

    .line 98
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Lcom/smalife/activity/HeaderSettingActivity;->fileName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 97
    invoke-static {p0, v3, v4}, Lcom/smalife/utils/FileHelper;->createFile(Landroid/content/Context;Lcom/smalife/utils/FileHelper$FileType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 99
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 100
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 102
    :cond_0
    const-string v3, "output"

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 103
    const/4 v3, 0x2

    invoke-virtual {p0, v1, v3}, Lcom/smalife/activity/HeaderSettingActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 82
    :sswitch_data_0
    .sparse-switch
        0x7f0e002b -> :sswitch_0
        0x7f0e0093 -> :sswitch_2
        0x7f0e0094 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 54
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 55
    const v0, 0x7f030021

    invoke-virtual {p0, v0}, Lcom/smalife/activity/HeaderSettingActivity;->setContentView(I)V

    .line 56
    invoke-direct {p0}, Lcom/smalife/activity/HeaderSettingActivity;->init()V

    .line 57
    invoke-virtual {p0}, Lcom/smalife/activity/HeaderSettingActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/smalife/MyApplication;

    iput-object v0, p0, Lcom/smalife/activity/HeaderSettingActivity;->application:Lcom/smalife/MyApplication;

    .line 58
    iget-object v0, p0, Lcom/smalife/activity/HeaderSettingActivity;->application:Lcom/smalife/MyApplication;

    invoke-virtual {v0}, Lcom/smalife/MyApplication;->getAccount()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/smalife/activity/HeaderSettingActivity;->userAccount:Ljava/lang/String;

    .line 59
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 72
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 73
    invoke-virtual {p0}, Lcom/smalife/activity/HeaderSettingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 74
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "user"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 75
    .local v1, "name":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 76
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/smalife/activity/HeaderSettingActivity;->file_type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/smalife/activity/HeaderSettingActivity;->fileName:Ljava/lang/String;

    .line 78
    :cond_0
    return-void
.end method

.method public startPhotoZoom(Landroid/net/Uri;)V
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/16 v4, 0x96

    const/4 v3, 0x1

    .line 238
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.camera.action.CROP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 239
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "image/*"

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 241
    const-string v1, "crop"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 243
    const-string v1, "aspectX"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 244
    const-string v1, "aspectY"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 246
    const-string v1, "outputX"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 247
    const-string v1, "outputY"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 248
    const-string v1, "return-data"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 249
    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/smalife/activity/HeaderSettingActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 250
    return-void
.end method
