.class public Lcom/smalife/camera/CameraAty;
.super Lcom/smalife/BaseActivity;
.source "CameraAty.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/linj/camera/view/CameraContainer$TakePictureListener;


# static fields
.field public static final TAG:Ljava/lang/String; = "CameraAty"


# instance fields
.field private backBtn:Landroid/widget/ImageButton;

.field private isRecording:Z

.field private mCameraShutterButton:Landroid/widget/ImageButton;

.field private mContainer:Lcom/linj/camera/view/CameraContainer;

.field private mFlashView:Landroid/widget/ImageView;

.field private mHeaderBar:Landroid/view/View;

.field private mIsRecordMode:Z

.field private mRecordShutterButton:Landroid/widget/ImageButton;

.field private mSaveRoot:Ljava/lang/String;

.field private mSettingView:Landroid/widget/ImageView;

.field private mSwitchCameraView:Landroid/widget/ImageView;

.field private mSwitchModeButton:Landroid/widget/ImageButton;

.field private mThumbView:Lcom/linj/album/view/FilterImageView;

.field private mVideoIconView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 32
    invoke-direct {p0}, Lcom/smalife/BaseActivity;-><init>()V

    .line 34
    iput-boolean v0, p0, Lcom/smalife/camera/CameraAty;->mIsRecordMode:Z

    .line 47
    iput-boolean v0, p0, Lcom/smalife/camera/CameraAty;->isRecording:Z

    .line 32
    return-void
.end method

.method private initThumbnail()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 86
    const/4 v3, 0x2

    iget-object v4, p0, Lcom/smalife/camera/CameraAty;->mSaveRoot:Ljava/lang/String;

    invoke-static {p0, v3, v4}, Lcom/linj/FileOperateUtil;->getFolderPath(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 87
    .local v2, "thumbFolder":Ljava/lang/String;
    const-string v3, ".jpg"

    invoke-static {v2, v3}, Lcom/linj/FileOperateUtil;->listFiles(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 88
    .local v0, "files":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 89
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 90
    .local v1, "thumbBitmap":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_0

    .line 95
    iget-object v3, p0, Lcom/smalife/camera/CameraAty;->mThumbView:Lcom/linj/album/view/FilterImageView;

    invoke-virtual {v3, v1}, Lcom/linj/album/view/FilterImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 97
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const-string v4, "video"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 98
    iget-object v3, p0, Lcom/smalife/camera/CameraAty;->mVideoIconView:Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 108
    .end local v1    # "thumbBitmap":Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    return-void

    .line 100
    .restart local v1    # "thumbBitmap":Landroid/graphics/Bitmap;
    :cond_1
    iget-object v3, p0, Lcom/smalife/camera/CameraAty;->mVideoIconView:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 104
    .end local v1    # "thumbBitmap":Landroid/graphics/Bitmap;
    :cond_2
    iget-object v3, p0, Lcom/smalife/camera/CameraAty;->mThumbView:Lcom/linj/album/view/FilterImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/linj/album/view/FilterImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 105
    iget-object v3, p0, Lcom/smalife/camera/CameraAty;->mVideoIconView:Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private stopRecord()V
    .locals 2

    .prologue
    .line 189
    iget-object v0, p0, Lcom/smalife/camera/CameraAty;->mContainer:Lcom/linj/camera/view/CameraContainer;

    invoke-virtual {v0, p0}, Lcom/linj/camera/view/CameraContainer;->stopRecord(Lcom/linj/camera/view/CameraContainer$TakePictureListener;)Landroid/graphics/Bitmap;

    .line 190
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/smalife/camera/CameraAty;->isRecording:Z

    .line 191
    iget-object v0, p0, Lcom/smalife/camera/CameraAty;->mRecordShutterButton:Landroid/widget/ImageButton;

    const v1, 0x7f02004c

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 192
    return-void
.end method

.method private takePhoto()V
    .locals 2

    .prologue
    .line 183
    iget-object v0, p0, Lcom/smalife/camera/CameraAty;->mCameraShutterButton:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setClickable(Z)V

    .line 184
    iget-object v0, p0, Lcom/smalife/camera/CameraAty;->mContainer:Lcom/linj/camera/view/CameraContainer;

    invoke-virtual {v0, p0}, Lcom/linj/camera/view/CameraContainer;->takePicture(Lcom/linj/camera/view/CameraContainer$TakePictureListener;)V

    .line 185
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 221
    invoke-super {p0, p1}, Lcom/smalife/BaseActivity;->handleMessage(Landroid/os/Message;)Z

    .line 222
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 232
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/smalife/BaseActivity;->handleMessage(Landroid/os/Message;)Z

    move-result v2

    :goto_1
    return v2

    .line 224
    :pswitch_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 225
    .local v0, "bundle":Landroid/os/Bundle;
    if-nez v0, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    .line 226
    :cond_1
    const-string v2, "contral_key"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Byte;

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    .line 227
    .local v1, "code_v":B
    sget v2, Lcom/smalife/ble/CmdKeyValue$ContralCMD;->short_press1:I

    if-ne v1, v2, :cond_0

    .line 228
    invoke-direct {p0}, Lcom/smalife/camera/CameraAty;->takePhoto()V

    goto :goto_0

    .line 222
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method

.method public onAnimtionEnd(Landroid/graphics/Bitmap;Z)V
    .locals 3
    .param p1, "bm"    # Landroid/graphics/Bitmap;
    .param p2, "isVideo"    # Z

    .prologue
    const/16 v1, 0xd5

    .line 201
    if-eqz p1, :cond_0

    .line 203
    invoke-static {p1, v1, v1}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 204
    .local v0, "thumbnail":Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/smalife/camera/CameraAty;->mThumbView:Lcom/linj/album/view/FilterImageView;

    invoke-virtual {v1, v0}, Lcom/linj/album/view/FilterImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 205
    if-eqz p2, :cond_1

    .line 206
    iget-object v1, p0, Lcom/smalife/camera/CameraAty;->mVideoIconView:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 211
    .end local v0    # "thumbnail":Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    return-void

    .line 208
    .restart local v0    # "thumbnail":Landroid/graphics/Bitmap;
    :cond_1
    iget-object v1, p0, Lcom/smalife/camera/CameraAty;->mVideoIconView:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 112
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 179
    :cond_0
    :goto_0
    return-void

    .line 114
    :sswitch_0
    invoke-virtual {p0}, Lcom/smalife/camera/CameraAty;->finish()V

    goto :goto_0

    .line 117
    :sswitch_1
    invoke-direct {p0}, Lcom/smalife/camera/CameraAty;->takePhoto()V

    goto :goto_0

    .line 120
    :sswitch_2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/smalife/camera/AlbumAty;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/smalife/camera/CameraAty;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 123
    :sswitch_3
    iget-object v0, p0, Lcom/smalife/camera/CameraAty;->mContainer:Lcom/linj/camera/view/CameraContainer;

    invoke-virtual {v0}, Lcom/linj/camera/view/CameraContainer;->getFlashMode()Lcom/linj/camera/view/CameraView$FlashMode;

    move-result-object v0

    sget-object v1, Lcom/linj/camera/view/CameraView$FlashMode;->ON:Lcom/linj/camera/view/CameraView$FlashMode;

    if-ne v0, v1, :cond_1

    .line 124
    iget-object v0, p0, Lcom/smalife/camera/CameraAty;->mContainer:Lcom/linj/camera/view/CameraContainer;

    sget-object v1, Lcom/linj/camera/view/CameraView$FlashMode;->OFF:Lcom/linj/camera/view/CameraView$FlashMode;

    invoke-virtual {v0, v1}, Lcom/linj/camera/view/CameraContainer;->setFlashMode(Lcom/linj/camera/view/CameraView$FlashMode;)V

    .line 125
    iget-object v0, p0, Lcom/smalife/camera/CameraAty;->mFlashView:Landroid/widget/ImageView;

    const v1, 0x7f020043

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 126
    :cond_1
    iget-object v0, p0, Lcom/smalife/camera/CameraAty;->mContainer:Lcom/linj/camera/view/CameraContainer;

    invoke-virtual {v0}, Lcom/linj/camera/view/CameraContainer;->getFlashMode()Lcom/linj/camera/view/CameraView$FlashMode;

    move-result-object v0

    sget-object v1, Lcom/linj/camera/view/CameraView$FlashMode;->OFF:Lcom/linj/camera/view/CameraView$FlashMode;

    if-ne v0, v1, :cond_2

    .line 127
    iget-object v0, p0, Lcom/smalife/camera/CameraAty;->mContainer:Lcom/linj/camera/view/CameraContainer;

    sget-object v1, Lcom/linj/camera/view/CameraView$FlashMode;->AUTO:Lcom/linj/camera/view/CameraView$FlashMode;

    invoke-virtual {v0, v1}, Lcom/linj/camera/view/CameraContainer;->setFlashMode(Lcom/linj/camera/view/CameraView$FlashMode;)V

    .line 128
    iget-object v0, p0, Lcom/smalife/camera/CameraAty;->mFlashView:Landroid/widget/ImageView;

    const v1, 0x7f020042

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 130
    :cond_2
    iget-object v0, p0, Lcom/smalife/camera/CameraAty;->mContainer:Lcom/linj/camera/view/CameraContainer;

    invoke-virtual {v0}, Lcom/linj/camera/view/CameraContainer;->getFlashMode()Lcom/linj/camera/view/CameraView$FlashMode;

    move-result-object v0

    sget-object v1, Lcom/linj/camera/view/CameraView$FlashMode;->AUTO:Lcom/linj/camera/view/CameraView$FlashMode;

    if-ne v0, v1, :cond_3

    .line 131
    iget-object v0, p0, Lcom/smalife/camera/CameraAty;->mContainer:Lcom/linj/camera/view/CameraContainer;

    sget-object v1, Lcom/linj/camera/view/CameraView$FlashMode;->TORCH:Lcom/linj/camera/view/CameraView$FlashMode;

    invoke-virtual {v0, v1}, Lcom/linj/camera/view/CameraContainer;->setFlashMode(Lcom/linj/camera/view/CameraView$FlashMode;)V

    .line 132
    iget-object v0, p0, Lcom/smalife/camera/CameraAty;->mFlashView:Landroid/widget/ImageView;

    const v1, 0x7f020045

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 134
    :cond_3
    iget-object v0, p0, Lcom/smalife/camera/CameraAty;->mContainer:Lcom/linj/camera/view/CameraContainer;

    invoke-virtual {v0}, Lcom/linj/camera/view/CameraContainer;->getFlashMode()Lcom/linj/camera/view/CameraView$FlashMode;

    move-result-object v0

    sget-object v1, Lcom/linj/camera/view/CameraView$FlashMode;->TORCH:Lcom/linj/camera/view/CameraView$FlashMode;

    if-ne v0, v1, :cond_0

    .line 135
    iget-object v0, p0, Lcom/smalife/camera/CameraAty;->mContainer:Lcom/linj/camera/view/CameraContainer;

    sget-object v1, Lcom/linj/camera/view/CameraView$FlashMode;->ON:Lcom/linj/camera/view/CameraView$FlashMode;

    invoke-virtual {v0, v1}, Lcom/linj/camera/view/CameraContainer;->setFlashMode(Lcom/linj/camera/view/CameraView$FlashMode;)V

    .line 136
    iget-object v0, p0, Lcom/smalife/camera/CameraAty;->mFlashView:Landroid/widget/ImageView;

    const v1, 0x7f020044

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 140
    :sswitch_4
    iget-boolean v0, p0, Lcom/smalife/camera/CameraAty;->mIsRecordMode:Z

    if-eqz v0, :cond_4

    .line 141
    iget-object v0, p0, Lcom/smalife/camera/CameraAty;->mSwitchModeButton:Landroid/widget/ImageButton;

    const v1, 0x7f0200d7

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 142
    iget-object v0, p0, Lcom/smalife/camera/CameraAty;->mCameraShutterButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 143
    iget-object v0, p0, Lcom/smalife/camera/CameraAty;->mRecordShutterButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 145
    iget-object v0, p0, Lcom/smalife/camera/CameraAty;->mHeaderBar:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 146
    iput-boolean v2, p0, Lcom/smalife/camera/CameraAty;->mIsRecordMode:Z

    .line 147
    iget-object v0, p0, Lcom/smalife/camera/CameraAty;->mContainer:Lcom/linj/camera/view/CameraContainer;

    invoke-virtual {v0, v2}, Lcom/linj/camera/view/CameraContainer;->switchMode(I)V

    .line 148
    invoke-direct {p0}, Lcom/smalife/camera/CameraAty;->stopRecord()V

    goto/16 :goto_0

    .line 151
    :cond_4
    iget-object v0, p0, Lcom/smalife/camera/CameraAty;->mSwitchModeButton:Landroid/widget/ImageButton;

    const v1, 0x7f0200d8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 152
    iget-object v0, p0, Lcom/smalife/camera/CameraAty;->mCameraShutterButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 153
    iget-object v0, p0, Lcom/smalife/camera/CameraAty;->mRecordShutterButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 155
    iget-object v0, p0, Lcom/smalife/camera/CameraAty;->mHeaderBar:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 156
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/smalife/camera/CameraAty;->mIsRecordMode:Z

    .line 157
    iget-object v0, p0, Lcom/smalife/camera/CameraAty;->mContainer:Lcom/linj/camera/view/CameraContainer;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/linj/camera/view/CameraContainer;->switchMode(I)V

    goto/16 :goto_0

    .line 161
    :sswitch_5
    iget-boolean v0, p0, Lcom/smalife/camera/CameraAty;->isRecording:Z

    if-nez v0, :cond_5

    .line 162
    iget-object v0, p0, Lcom/smalife/camera/CameraAty;->mContainer:Lcom/linj/camera/view/CameraContainer;

    invoke-virtual {v0}, Lcom/linj/camera/view/CameraContainer;->startRecord()Z

    move-result v0

    iput-boolean v0, p0, Lcom/smalife/camera/CameraAty;->isRecording:Z

    .line 163
    iget-boolean v0, p0, Lcom/smalife/camera/CameraAty;->isRecording:Z

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/smalife/camera/CameraAty;->mRecordShutterButton:Landroid/widget/ImageButton;

    const v1, 0x7f02004d

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 167
    :cond_5
    invoke-direct {p0}, Lcom/smalife/camera/CameraAty;->stopRecord()V

    goto/16 :goto_0

    .line 171
    :sswitch_6
    iget-object v0, p0, Lcom/smalife/camera/CameraAty;->mContainer:Lcom/linj/camera/view/CameraContainer;

    invoke-virtual {v0}, Lcom/linj/camera/view/CameraContainer;->switchCamera()V

    goto/16 :goto_0

    .line 174
    :sswitch_7
    iget-object v0, p0, Lcom/smalife/camera/CameraAty;->mContainer:Lcom/linj/camera/view/CameraContainer;

    invoke-virtual {v0}, Lcom/linj/camera/view/CameraContainer;->setWaterMark()V

    goto/16 :goto_0

    .line 112
    :sswitch_data_0
    .sparse-switch
        0x7f0e0006 -> :sswitch_0
        0x7f0e0052 -> :sswitch_2
        0x7f0e0054 -> :sswitch_5
        0x7f0e0055 -> :sswitch_1
        0x7f0e0056 -> :sswitch_4
        0x7f0e0057 -> :sswitch_6
        0x7f0e0058 -> :sswitch_3
        0x7f0e0059 -> :sswitch_7
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 50
    invoke-super {p0, p1}, Lcom/smalife/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    const v0, 0x7f030011

    invoke-virtual {p0, v0}, Lcom/smalife/camera/CameraAty;->setContentView(I)V

    .line 55
    const v0, 0x7f0e0006

    invoke-virtual {p0, v0}, Lcom/smalife/camera/CameraAty;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/smalife/camera/CameraAty;->backBtn:Landroid/widget/ImageButton;

    .line 56
    const v0, 0x7f0e0051

    invoke-virtual {p0, v0}, Lcom/smalife/camera/CameraAty;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/smalife/camera/CameraAty;->mHeaderBar:Landroid/view/View;

    .line 57
    const v0, 0x7f0e004f

    invoke-virtual {p0, v0}, Lcom/smalife/camera/CameraAty;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/linj/camera/view/CameraContainer;

    iput-object v0, p0, Lcom/smalife/camera/CameraAty;->mContainer:Lcom/linj/camera/view/CameraContainer;

    .line 58
    const v0, 0x7f0e0052

    invoke-virtual {p0, v0}, Lcom/smalife/camera/CameraAty;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/linj/album/view/FilterImageView;

    iput-object v0, p0, Lcom/smalife/camera/CameraAty;->mThumbView:Lcom/linj/album/view/FilterImageView;

    .line 59
    const v0, 0x7f0e0053

    invoke-virtual {p0, v0}, Lcom/smalife/camera/CameraAty;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/smalife/camera/CameraAty;->mVideoIconView:Landroid/widget/ImageView;

    .line 60
    const v0, 0x7f0e0055

    invoke-virtual {p0, v0}, Lcom/smalife/camera/CameraAty;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/smalife/camera/CameraAty;->mCameraShutterButton:Landroid/widget/ImageButton;

    .line 61
    const v0, 0x7f0e0054

    invoke-virtual {p0, v0}, Lcom/smalife/camera/CameraAty;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/smalife/camera/CameraAty;->mRecordShutterButton:Landroid/widget/ImageButton;

    .line 62
    const v0, 0x7f0e0057

    invoke-virtual {p0, v0}, Lcom/smalife/camera/CameraAty;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/smalife/camera/CameraAty;->mSwitchCameraView:Landroid/widget/ImageView;

    .line 63
    const v0, 0x7f0e0058

    invoke-virtual {p0, v0}, Lcom/smalife/camera/CameraAty;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/smalife/camera/CameraAty;->mFlashView:Landroid/widget/ImageView;

    .line 64
    const v0, 0x7f0e0056

    invoke-virtual {p0, v0}, Lcom/smalife/camera/CameraAty;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/smalife/camera/CameraAty;->mSwitchModeButton:Landroid/widget/ImageButton;

    .line 65
    const v0, 0x7f0e0059

    invoke-virtual {p0, v0}, Lcom/smalife/camera/CameraAty;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/smalife/camera/CameraAty;->mSettingView:Landroid/widget/ImageView;

    .line 67
    iget-object v0, p0, Lcom/smalife/camera/CameraAty;->backBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    iget-object v0, p0, Lcom/smalife/camera/CameraAty;->mThumbView:Lcom/linj/album/view/FilterImageView;

    invoke-virtual {v0, p0}, Lcom/linj/album/view/FilterImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    iget-object v0, p0, Lcom/smalife/camera/CameraAty;->mCameraShutterButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    iget-object v0, p0, Lcom/smalife/camera/CameraAty;->mRecordShutterButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    iget-object v0, p0, Lcom/smalife/camera/CameraAty;->mFlashView:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    iget-object v0, p0, Lcom/smalife/camera/CameraAty;->mSwitchModeButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    iget-object v0, p0, Lcom/smalife/camera/CameraAty;->mSwitchCameraView:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    iget-object v0, p0, Lcom/smalife/camera/CameraAty;->mSettingView:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    const-string v0, "smawatch"

    iput-object v0, p0, Lcom/smalife/camera/CameraAty;->mSaveRoot:Ljava/lang/String;

    .line 77
    iget-object v0, p0, Lcom/smalife/camera/CameraAty;->mContainer:Lcom/linj/camera/view/CameraContainer;

    iget-object v1, p0, Lcom/smalife/camera/CameraAty;->mSaveRoot:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/linj/camera/view/CameraContainer;->setRootPath(Ljava/lang/String;)V

    .line 78
    invoke-direct {p0}, Lcom/smalife/camera/CameraAty;->initThumbnail()V

    .line 79
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 236
    new-instance v0, Landroid/content/Intent;

    const-string v1, "AskAction"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 237
    .local v0, "messageIntent":Landroid/content/Intent;
    const-string v1, "action_key"

    const/16 v2, 0x39

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 238
    const-string v1, "camera_btyes"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 239
    invoke-virtual {p0, v0}, Lcom/smalife/camera/CameraAty;->sendBroadcast(Landroid/content/Intent;)V

    .line 240
    invoke-super {p0}, Lcom/smalife/BaseActivity;->onDestroy()V

    .line 241
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 215
    invoke-super {p0}, Lcom/smalife/BaseActivity;->onResume()V

    .line 216
    invoke-direct {p0}, Lcom/smalife/camera/CameraAty;->initThumbnail()V

    .line 217
    return-void
.end method

.method public onTakePictureEnd(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "thumBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 196
    iget-object v0, p0, Lcom/smalife/camera/CameraAty;->mCameraShutterButton:Landroid/widget/ImageButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setClickable(Z)V

    .line 197
    return-void
.end method
