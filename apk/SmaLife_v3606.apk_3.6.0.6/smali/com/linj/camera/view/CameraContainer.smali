.class public Lcom/linj/camera/view/CameraContainer;
.super Landroid/widget/RelativeLayout;
.source "CameraContainer.java"

# interfaces
.implements Lcom/linj/camera/view/CameraOperation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/linj/camera/view/CameraContainer$DataHandler;,
        Lcom/linj/camera/view/CameraContainer$TakePictureListener;,
        Lcom/linj/camera/view/CameraContainer$TouchListener;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "CameraContainer"


# instance fields
.field private final autoFocusCallback:Landroid/hardware/Camera$AutoFocusCallback;

.field private mCameraView:Lcom/linj/camera/view/CameraView;

.field private mContext:Landroid/content/Context;

.field private mDataHandler:Lcom/linj/camera/view/CameraContainer$DataHandler;

.field private mFocusImageView:Lcom/linj/camera/view/FocusImageView;

.field private mHandler:Landroid/os/Handler;

.field private mListener:Lcom/linj/camera/view/CameraContainer$TakePictureListener;

.field private mRecordStartTime:J

.field private mRecordingInfoTextView:Landroid/widget/TextView;

.field private mSavePath:Ljava/lang/String;

.field private mTempImageView:Lcom/linj/camera/view/TempImageView;

.field private mTimeFormat:Ljava/text/SimpleDateFormat;

.field private mWaterMarkImageView:Landroid/widget/ImageView;

.field private mZoomSeekBar:Landroid/widget/SeekBar;

.field private final onSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private final pictureCallback:Landroid/hardware/Camera$PictureCallback;

.field recordRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 104
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 151
    new-instance v0, Lcom/linj/camera/view/CameraContainer$1;

    invoke-direct {v0, p0}, Lcom/linj/camera/view/CameraContainer$1;-><init>(Lcom/linj/camera/view/CameraContainer;)V

    iput-object v0, p0, Lcom/linj/camera/view/CameraContainer;->recordRunnable:Ljava/lang/Runnable;

    .line 286
    new-instance v0, Lcom/linj/camera/view/CameraContainer$2;

    invoke-direct {v0, p0}, Lcom/linj/camera/view/CameraContainer$2;-><init>(Lcom/linj/camera/view/CameraContainer;)V

    iput-object v0, p0, Lcom/linj/camera/view/CameraContainer;->onSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 322
    new-instance v0, Lcom/linj/camera/view/CameraContainer$3;

    invoke-direct {v0, p0}, Lcom/linj/camera/view/CameraContainer$3;-><init>(Lcom/linj/camera/view/CameraContainer;)V

    iput-object v0, p0, Lcom/linj/camera/view/CameraContainer;->autoFocusCallback:Landroid/hardware/Camera$AutoFocusCallback;

    .line 337
    new-instance v0, Lcom/linj/camera/view/CameraContainer$4;

    invoke-direct {v0, p0}, Lcom/linj/camera/view/CameraContainer$4;-><init>(Lcom/linj/camera/view/CameraContainer;)V

    iput-object v0, p0, Lcom/linj/camera/view/CameraContainer;->pictureCallback:Landroid/hardware/Camera$PictureCallback;

    .line 105
    invoke-direct {p0, p1}, Lcom/linj/camera/view/CameraContainer;->initView(Landroid/content/Context;)V

    .line 106
    iput-object p1, p0, Lcom/linj/camera/view/CameraContainer;->mContext:Landroid/content/Context;

    .line 107
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/linj/camera/view/CameraContainer;->mHandler:Landroid/os/Handler;

    .line 108
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "mm:ss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/linj/camera/view/CameraContainer;->mTimeFormat:Ljava/text/SimpleDateFormat;

    .line 109
    new-instance v0, Lcom/linj/camera/view/CameraContainer$TouchListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/linj/camera/view/CameraContainer$TouchListener;-><init>(Lcom/linj/camera/view/CameraContainer;Lcom/linj/camera/view/CameraContainer$TouchListener;)V

    invoke-virtual {p0, v0}, Lcom/linj/camera/view/CameraContainer;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 110
    return-void
.end method

.method static synthetic access$0(Lcom/linj/camera/view/CameraContainer;)Lcom/linj/camera/view/CameraView;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/linj/camera/view/CameraContainer;->mCameraView:Lcom/linj/camera/view/CameraView;

    return-object v0
.end method

.method static synthetic access$1(Lcom/linj/camera/view/CameraContainer;)J
    .locals 2

    .prologue
    .line 100
    iget-wide v0, p0, Lcom/linj/camera/view/CameraContainer;->mRecordStartTime:J

    return-wide v0
.end method

.method static synthetic access$10(Lcom/linj/camera/view/CameraContainer;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/linj/camera/view/CameraContainer;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$11(Lcom/linj/camera/view/CameraContainer;)Lcom/linj/camera/view/TempImageView;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/linj/camera/view/CameraContainer;->mTempImageView:Lcom/linj/camera/view/TempImageView;

    return-object v0
.end method

.method static synthetic access$12(Lcom/linj/camera/view/CameraContainer;)Lcom/linj/camera/view/CameraContainer$TakePictureListener;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/linj/camera/view/CameraContainer;->mListener:Lcom/linj/camera/view/CameraContainer$TakePictureListener;

    return-object v0
.end method

.method static synthetic access$13(Lcom/linj/camera/view/CameraContainer;)Landroid/hardware/Camera$AutoFocusCallback;
    .locals 1

    .prologue
    .line 322
    iget-object v0, p0, Lcom/linj/camera/view/CameraContainer;->autoFocusCallback:Landroid/hardware/Camera$AutoFocusCallback;

    return-object v0
.end method

.method static synthetic access$14(Lcom/linj/camera/view/CameraContainer;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/linj/camera/view/CameraContainer;->mWaterMarkImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2(Lcom/linj/camera/view/CameraContainer;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/linj/camera/view/CameraContainer;->mRecordingInfoTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$3(Lcom/linj/camera/view/CameraContainer;)Ljava/text/SimpleDateFormat;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/linj/camera/view/CameraContainer;->mTimeFormat:Ljava/text/SimpleDateFormat;

    return-object v0
.end method

.method static synthetic access$4(Lcom/linj/camera/view/CameraContainer;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/linj/camera/view/CameraContainer;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$5(Lcom/linj/camera/view/CameraContainer;)Landroid/widget/SeekBar;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/linj/camera/view/CameraContainer;->mZoomSeekBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$6(Lcom/linj/camera/view/CameraContainer;)Lcom/linj/camera/view/FocusImageView;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/linj/camera/view/CameraContainer;->mFocusImageView:Lcom/linj/camera/view/FocusImageView;

    return-object v0
.end method

.method static synthetic access$7(Lcom/linj/camera/view/CameraContainer;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/linj/camera/view/CameraContainer;->mSavePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$8(Lcom/linj/camera/view/CameraContainer;)Lcom/linj/camera/view/CameraContainer$DataHandler;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/linj/camera/view/CameraContainer;->mDataHandler:Lcom/linj/camera/view/CameraContainer$DataHandler;

    return-object v0
.end method

.method static synthetic access$9(Lcom/linj/camera/view/CameraContainer;Lcom/linj/camera/view/CameraContainer$DataHandler;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/linj/camera/view/CameraContainer;->mDataHandler:Lcom/linj/camera/view/CameraContainer$DataHandler;

    return-void
.end method

.method private dip2px(F)I
    .locals 3
    .param p1, "dipValue"    # F

    .prologue
    .line 619
    invoke-virtual {p0}, Lcom/linj/camera/view/CameraContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 620
    .local v0, "scale":F
    mul-float v1, p1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method private initView(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 117
    sget v1, Lcom/linj/cameralibrary/R$layout;->cameracontainer:I

    invoke-static {p1, v1, p0}, Lcom/linj/camera/view/CameraContainer;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 118
    sget v1, Lcom/linj/cameralibrary/R$id;->cameraView:I

    invoke-virtual {p0, v1}, Lcom/linj/camera/view/CameraContainer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/linj/camera/view/CameraView;

    iput-object v1, p0, Lcom/linj/camera/view/CameraContainer;->mCameraView:Lcom/linj/camera/view/CameraView;

    .line 120
    sget v1, Lcom/linj/cameralibrary/R$id;->tempImageView:I

    invoke-virtual {p0, v1}, Lcom/linj/camera/view/CameraContainer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/linj/camera/view/TempImageView;

    iput-object v1, p0, Lcom/linj/camera/view/CameraContainer;->mTempImageView:Lcom/linj/camera/view/TempImageView;

    .line 122
    sget v1, Lcom/linj/cameralibrary/R$id;->focusImageView:I

    invoke-virtual {p0, v1}, Lcom/linj/camera/view/CameraContainer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/linj/camera/view/FocusImageView;

    iput-object v1, p0, Lcom/linj/camera/view/CameraContainer;->mFocusImageView:Lcom/linj/camera/view/FocusImageView;

    .line 124
    sget v1, Lcom/linj/cameralibrary/R$id;->recordInfo:I

    invoke-virtual {p0, v1}, Lcom/linj/camera/view/CameraContainer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/linj/camera/view/CameraContainer;->mRecordingInfoTextView:Landroid/widget/TextView;

    .line 126
    sget v1, Lcom/linj/cameralibrary/R$id;->waterMark:I

    invoke-virtual {p0, v1}, Lcom/linj/camera/view/CameraContainer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/linj/camera/view/CameraContainer;->mWaterMarkImageView:Landroid/widget/ImageView;

    .line 128
    sget v1, Lcom/linj/cameralibrary/R$id;->zoomSeekBar:I

    invoke-virtual {p0, v1}, Lcom/linj/camera/view/CameraContainer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    iput-object v1, p0, Lcom/linj/camera/view/CameraContainer;->mZoomSeekBar:Landroid/widget/SeekBar;

    .line 130
    iget-object v1, p0, Lcom/linj/camera/view/CameraContainer;->mCameraView:Lcom/linj/camera/view/CameraView;

    invoke-virtual {v1}, Lcom/linj/camera/view/CameraView;->getMaxZoom()I

    move-result v0

    .line 131
    .local v0, "maxZoom":I
    if-lez v0, :cond_0

    .line 132
    iget-object v1, p0, Lcom/linj/camera/view/CameraContainer;->mZoomSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setMax(I)V

    .line 133
    iget-object v1, p0, Lcom/linj/camera/view/CameraContainer;->mZoomSeekBar:Landroid/widget/SeekBar;

    iget-object v2, p0, Lcom/linj/camera/view/CameraContainer;->onSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 135
    :cond_0
    return-void
.end method


# virtual methods
.method public getFlashMode()Lcom/linj/camera/view/CameraView$FlashMode;
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/linj/camera/view/CameraContainer;->mCameraView:Lcom/linj/camera/view/CameraView;

    invoke-virtual {v0}, Lcom/linj/camera/view/CameraView;->getFlashMode()Lcom/linj/camera/view/CameraView$FlashMode;

    move-result-object v0

    return-object v0
.end method

.method public getMaxZoom()I
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lcom/linj/camera/view/CameraContainer;->mCameraView:Lcom/linj/camera/view/CameraView;

    invoke-virtual {v0}, Lcom/linj/camera/view/CameraView;->getMaxZoom()I

    move-result v0

    return v0
.end method

.method public getZoom()I
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/linj/camera/view/CameraContainer;->mCameraView:Lcom/linj/camera/view/CameraView;

    invoke-virtual {v0}, Lcom/linj/camera/view/CameraView;->getZoom()I

    move-result v0

    return v0
.end method

.method public setFlashMode(Lcom/linj/camera/view/CameraView$FlashMode;)V
    .locals 1
    .param p1, "flashMode"    # Lcom/linj/camera/view/CameraView$FlashMode;

    .prologue
    .line 228
    iget-object v0, p0, Lcom/linj/camera/view/CameraContainer;->mCameraView:Lcom/linj/camera/view/CameraView;

    invoke-virtual {v0, p1}, Lcom/linj/camera/view/CameraView;->setFlashMode(Lcom/linj/camera/view/CameraView$FlashMode;)V

    .line 229
    return-void
.end method

.method public setRootPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "rootPath"    # Ljava/lang/String;

    .prologue
    .line 236
    iput-object p1, p0, Lcom/linj/camera/view/CameraContainer;->mSavePath:Ljava/lang/String;

    .line 238
    return-void
.end method

.method public setWaterMark()V
    .locals 2

    .prologue
    .line 199
    iget-object v0, p0, Lcom/linj/camera/view/CameraContainer;->mWaterMarkImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/linj/camera/view/CameraContainer;->mWaterMarkImageView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 204
    :goto_0
    return-void

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/linj/camera/view/CameraContainer;->mWaterMarkImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setZoom(I)V
    .locals 1
    .param p1, "zoom"    # I

    .prologue
    .line 277
    iget-object v0, p0, Lcom/linj/camera/view/CameraContainer;->mCameraView:Lcom/linj/camera/view/CameraView;

    invoke-virtual {v0, p1}, Lcom/linj/camera/view/CameraView;->setZoom(I)V

    .line 278
    return-void
.end method

.method public startRecord()Z
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 140
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/linj/camera/view/CameraContainer;->mRecordStartTime:J

    .line 141
    iget-object v1, p0, Lcom/linj/camera/view/CameraContainer;->mRecordingInfoTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 142
    iget-object v1, p0, Lcom/linj/camera/view/CameraContainer;->mRecordingInfoTextView:Landroid/widget/TextView;

    const-string v2, "00:00"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    iget-object v1, p0, Lcom/linj/camera/view/CameraContainer;->mCameraView:Lcom/linj/camera/view/CameraView;

    invoke-virtual {v1}, Lcom/linj/camera/view/CameraView;->startRecord()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 144
    iget-object v0, p0, Lcom/linj/camera/view/CameraContainer;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/linj/camera/view/CameraContainer;->recordRunnable:Ljava/lang/Runnable;

    iget-object v2, p0, Lcom/linj/camera/view/CameraContainer;->mRecordingInfoTextView:Landroid/widget/TextView;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    add-long/2addr v4, v6

    invoke-virtual {v0, v1, v2, v4, v5}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    .line 145
    const/4 v0, 0x1

    .line 147
    :cond_0
    return v0
.end method

.method public stopRecord()Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    .line 172
    iget-object v1, p0, Lcom/linj/camera/view/CameraContainer;->mRecordingInfoTextView:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 173
    iget-object v1, p0, Lcom/linj/camera/view/CameraContainer;->mCameraView:Lcom/linj/camera/view/CameraView;

    invoke-virtual {v1}, Lcom/linj/camera/view/CameraView;->stopRecord()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 174
    .local v0, "thumbnailBitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 175
    iget-object v1, p0, Lcom/linj/camera/view/CameraContainer;->mTempImageView:Lcom/linj/camera/view/TempImageView;

    iget-object v2, p0, Lcom/linj/camera/view/CameraContainer;->mListener:Lcom/linj/camera/view/CameraContainer$TakePictureListener;

    invoke-virtual {v1, v2}, Lcom/linj/camera/view/TempImageView;->setListener(Lcom/linj/camera/view/CameraContainer$TakePictureListener;)V

    .line 176
    iget-object v1, p0, Lcom/linj/camera/view/CameraContainer;->mTempImageView:Lcom/linj/camera/view/TempImageView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/linj/camera/view/TempImageView;->isVideo(Z)V

    .line 177
    iget-object v1, p0, Lcom/linj/camera/view/CameraContainer;->mTempImageView:Lcom/linj/camera/view/TempImageView;

    invoke-virtual {v1, v0}, Lcom/linj/camera/view/TempImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 178
    iget-object v1, p0, Lcom/linj/camera/view/CameraContainer;->mTempImageView:Lcom/linj/camera/view/TempImageView;

    sget v2, Lcom/linj/cameralibrary/R$anim;->tempview_show:I

    invoke-virtual {v1, v2}, Lcom/linj/camera/view/TempImageView;->startAnimation(I)V

    .line 180
    :cond_0
    return-object v0
.end method

.method public stopRecord(Lcom/linj/camera/view/CameraContainer$TakePictureListener;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "listener"    # Lcom/linj/camera/view/CameraContainer$TakePictureListener;

    .prologue
    .line 166
    iput-object p1, p0, Lcom/linj/camera/view/CameraContainer;->mListener:Lcom/linj/camera/view/CameraContainer$TakePictureListener;

    .line 167
    invoke-virtual {p0}, Lcom/linj/camera/view/CameraContainer;->stopRecord()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public switchCamera()V
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/linj/camera/view/CameraContainer;->mCameraView:Lcom/linj/camera/view/CameraView;

    invoke-virtual {v0}, Lcom/linj/camera/view/CameraView;->switchCamera()V

    .line 212
    return-void
.end method

.method public switchMode(I)V
    .locals 4
    .param p1, "zoom"    # I

    .prologue
    .line 188
    iget-object v0, p0, Lcom/linj/camera/view/CameraContainer;->mZoomSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 189
    iget-object v0, p0, Lcom/linj/camera/view/CameraContainer;->mCameraView:Lcom/linj/camera/view/CameraView;

    invoke-virtual {v0, p1}, Lcom/linj/camera/view/CameraView;->setZoom(I)V

    .line 191
    iget-object v0, p0, Lcom/linj/camera/view/CameraContainer;->mCameraView:Lcom/linj/camera/view/CameraView;

    new-instance v1, Landroid/graphics/Point;

    invoke-virtual {p0}, Lcom/linj/camera/view/CameraContainer;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {p0}, Lcom/linj/camera/view/CameraContainer;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    iget-object v2, p0, Lcom/linj/camera/view/CameraContainer;->autoFocusCallback:Landroid/hardware/Camera$AutoFocusCallback;

    invoke-virtual {v0, v1, v2}, Lcom/linj/camera/view/CameraView;->onFocus(Landroid/graphics/Point;Landroid/hardware/Camera$AutoFocusCallback;)V

    .line 193
    iget-object v0, p0, Lcom/linj/camera/view/CameraContainer;->mWaterMarkImageView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 194
    return-void
.end method

.method public takePicture()V
    .locals 2

    .prologue
    .line 247
    iget-object v0, p0, Lcom/linj/camera/view/CameraContainer;->pictureCallback:Landroid/hardware/Camera$PictureCallback;

    iget-object v1, p0, Lcom/linj/camera/view/CameraContainer;->mListener:Lcom/linj/camera/view/CameraContainer$TakePictureListener;

    invoke-virtual {p0, v0, v1}, Lcom/linj/camera/view/CameraContainer;->takePicture(Landroid/hardware/Camera$PictureCallback;Lcom/linj/camera/view/CameraContainer$TakePictureListener;)V

    .line 248
    return-void
.end method

.method public takePicture(Landroid/hardware/Camera$PictureCallback;Lcom/linj/camera/view/CameraContainer$TakePictureListener;)V
    .locals 1
    .param p1, "callback"    # Landroid/hardware/Camera$PictureCallback;
    .param p2, "listener"    # Lcom/linj/camera/view/CameraContainer$TakePictureListener;

    .prologue
    .line 265
    iget-object v0, p0, Lcom/linj/camera/view/CameraContainer;->mCameraView:Lcom/linj/camera/view/CameraView;

    invoke-virtual {v0, p1, p2}, Lcom/linj/camera/view/CameraView;->takePicture(Landroid/hardware/Camera$PictureCallback;Lcom/linj/camera/view/CameraContainer$TakePictureListener;)V

    .line 266
    return-void
.end method

.method public takePicture(Lcom/linj/camera/view/CameraContainer$TakePictureListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/linj/camera/view/CameraContainer$TakePictureListener;

    .prologue
    .line 257
    iput-object p1, p0, Lcom/linj/camera/view/CameraContainer;->mListener:Lcom/linj/camera/view/CameraContainer$TakePictureListener;

    .line 258
    iget-object v0, p0, Lcom/linj/camera/view/CameraContainer;->pictureCallback:Landroid/hardware/Camera$PictureCallback;

    iget-object v1, p0, Lcom/linj/camera/view/CameraContainer;->mListener:Lcom/linj/camera/view/CameraContainer$TakePictureListener;

    invoke-virtual {p0, v0, v1}, Lcom/linj/camera/view/CameraContainer;->takePicture(Landroid/hardware/Camera$PictureCallback;Lcom/linj/camera/view/CameraContainer$TakePictureListener;)V

    .line 259
    return-void
.end method
