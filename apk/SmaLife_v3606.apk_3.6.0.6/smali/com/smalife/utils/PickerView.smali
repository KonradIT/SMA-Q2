.class public Lcom/smalife/utils/PickerView;
.super Landroid/view/View;
.source "PickerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smalife/utils/PickerView$MyTimerTask;,
        Lcom/smalife/utils/PickerView$onSelectListener;
    }
.end annotation


# static fields
.field public static final MARGIN_ALPHA:F = 2.8f

.field public static final SPEED:F = 2.0f

.field public static final TAG:Ljava/lang/String; = "PickerView"


# instance fields
.field private isInit:Z

.field private mColorText:I

.field private mCurrentSelected:I

.field private mDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLastDownY:F

.field private mMaxTextAlpha:F

.field private mMaxTextSize:F

.field private mMinTextAlpha:F

.field private mMinTextSize:F

.field private mMoveLen:F

.field private mPaint:Landroid/graphics/Paint;

.field private mSelectListener:Lcom/smalife/utils/PickerView$onSelectListener;

.field private mTask:Lcom/smalife/utils/PickerView$MyTimerTask;

.field private mViewHeight:I

.field private mViewWidth:I

.field private timer:Ljava/util/Timer;

.field updateHandler:Landroid/os/Handler;

.field private v_id:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 89
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 48
    const/high16 v0, 0x42a00000    # 80.0f

    iput v0, p0, Lcom/smalife/utils/PickerView;->mMaxTextSize:F

    .line 49
    const/high16 v0, 0x42200000    # 40.0f

    iput v0, p0, Lcom/smalife/utils/PickerView;->mMinTextSize:F

    .line 51
    const/high16 v0, 0x437f0000    # 255.0f

    iput v0, p0, Lcom/smalife/utils/PickerView;->mMaxTextAlpha:F

    .line 52
    const/high16 v0, 0x42f00000    # 120.0f

    iput v0, p0, Lcom/smalife/utils/PickerView;->mMinTextAlpha:F

    .line 54
    const v0, 0x333333

    iput v0, p0, Lcom/smalife/utils/PickerView;->mColorText:I

    .line 63
    const/4 v0, 0x0

    iput v0, p0, Lcom/smalife/utils/PickerView;->mMoveLen:F

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/smalife/utils/PickerView;->isInit:Z

    .line 69
    new-instance v0, Lcom/smalife/utils/PickerView$1;

    invoke-direct {v0, p0}, Lcom/smalife/utils/PickerView$1;-><init>(Lcom/smalife/utils/PickerView;)V

    iput-object v0, p0, Lcom/smalife/utils/PickerView;->updateHandler:Landroid/os/Handler;

    .line 90
    invoke-direct {p0}, Lcom/smalife/utils/PickerView;->init()V

    .line 91
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 94
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    const/high16 v0, 0x42a00000    # 80.0f

    iput v0, p0, Lcom/smalife/utils/PickerView;->mMaxTextSize:F

    .line 49
    const/high16 v0, 0x42200000    # 40.0f

    iput v0, p0, Lcom/smalife/utils/PickerView;->mMinTextSize:F

    .line 51
    const/high16 v0, 0x437f0000    # 255.0f

    iput v0, p0, Lcom/smalife/utils/PickerView;->mMaxTextAlpha:F

    .line 52
    const/high16 v0, 0x42f00000    # 120.0f

    iput v0, p0, Lcom/smalife/utils/PickerView;->mMinTextAlpha:F

    .line 54
    const v0, 0x333333

    iput v0, p0, Lcom/smalife/utils/PickerView;->mColorText:I

    .line 63
    const/4 v0, 0x0

    iput v0, p0, Lcom/smalife/utils/PickerView;->mMoveLen:F

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/smalife/utils/PickerView;->isInit:Z

    .line 69
    new-instance v0, Lcom/smalife/utils/PickerView$1;

    invoke-direct {v0, p0}, Lcom/smalife/utils/PickerView$1;-><init>(Lcom/smalife/utils/PickerView;)V

    iput-object v0, p0, Lcom/smalife/utils/PickerView;->updateHandler:Landroid/os/Handler;

    .line 95
    invoke-direct {p0}, Lcom/smalife/utils/PickerView;->init()V

    .line 96
    return-void
.end method

.method static synthetic access$0(Lcom/smalife/utils/PickerView;)F
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/smalife/utils/PickerView;->mMoveLen:F

    return v0
.end method

.method static synthetic access$1(Lcom/smalife/utils/PickerView;F)V
    .locals 0

    .prologue
    .line 63
    iput p1, p0, Lcom/smalife/utils/PickerView;->mMoveLen:F

    return-void
.end method

.method static synthetic access$2(Lcom/smalife/utils/PickerView;)Lcom/smalife/utils/PickerView$MyTimerTask;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/smalife/utils/PickerView;->mTask:Lcom/smalife/utils/PickerView$MyTimerTask;

    return-object v0
.end method

.method static synthetic access$3(Lcom/smalife/utils/PickerView;Lcom/smalife/utils/PickerView$MyTimerTask;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/smalife/utils/PickerView;->mTask:Lcom/smalife/utils/PickerView$MyTimerTask;

    return-void
.end method

.method static synthetic access$4(Lcom/smalife/utils/PickerView;)V
    .locals 0

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/smalife/utils/PickerView;->performSelect()V

    return-void
.end method

.method private doDown(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 240
    iget-object v0, p0, Lcom/smalife/utils/PickerView;->mTask:Lcom/smalife/utils/PickerView$MyTimerTask;

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/smalife/utils/PickerView;->mTask:Lcom/smalife/utils/PickerView$MyTimerTask;

    invoke-virtual {v0}, Lcom/smalife/utils/PickerView$MyTimerTask;->cancel()Z

    .line 242
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/smalife/utils/PickerView;->mTask:Lcom/smalife/utils/PickerView$MyTimerTask;

    .line 244
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/smalife/utils/PickerView;->mLastDownY:F

    .line 245
    return-void
.end method

.method private doMove(Landroid/view/MotionEvent;)V
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    const v3, 0x40333333    # 2.8f

    .line 249
    iget v0, p0, Lcom/smalife/utils/PickerView;->mMoveLen:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget v2, p0, Lcom/smalife/utils/PickerView;->mLastDownY:F

    sub-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/smalife/utils/PickerView;->mMoveLen:F

    .line 251
    iget v0, p0, Lcom/smalife/utils/PickerView;->mMoveLen:F

    iget v1, p0, Lcom/smalife/utils/PickerView;->mMinTextSize:F

    mul-float/2addr v1, v3

    div-float/2addr v1, v4

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 253
    invoke-direct {p0}, Lcom/smalife/utils/PickerView;->moveTailToHead()V

    .line 254
    iget v0, p0, Lcom/smalife/utils/PickerView;->mMoveLen:F

    iget v1, p0, Lcom/smalife/utils/PickerView;->mMinTextSize:F

    mul-float/2addr v1, v3

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/smalife/utils/PickerView;->mMoveLen:F

    .line 261
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/smalife/utils/PickerView;->mLastDownY:F

    .line 262
    invoke-virtual {p0}, Lcom/smalife/utils/PickerView;->invalidate()V

    .line 263
    return-void

    .line 255
    :cond_1
    iget v0, p0, Lcom/smalife/utils/PickerView;->mMoveLen:F

    const v1, -0x3fcccccd    # -2.8f

    iget v2, p0, Lcom/smalife/utils/PickerView;->mMinTextSize:F

    mul-float/2addr v1, v2

    div-float/2addr v1, v4

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 257
    invoke-direct {p0}, Lcom/smalife/utils/PickerView;->moveHeadToTail()V

    .line 258
    iget v0, p0, Lcom/smalife/utils/PickerView;->mMoveLen:F

    iget v1, p0, Lcom/smalife/utils/PickerView;->mMinTextSize:F

    mul-float/2addr v1, v3

    add-float/2addr v0, v1

    iput v0, p0, Lcom/smalife/utils/PickerView;->mMoveLen:F

    goto :goto_0
.end method

.method private doUp(Landroid/view/MotionEvent;)V
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 267
    iget v0, p0, Lcom/smalife/utils/PickerView;->mMoveLen:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    .line 268
    const/4 v0, 0x0

    iput v0, p0, Lcom/smalife/utils/PickerView;->mMoveLen:F

    .line 277
    :goto_0
    return-void

    .line 271
    :cond_0
    iget-object v0, p0, Lcom/smalife/utils/PickerView;->mTask:Lcom/smalife/utils/PickerView$MyTimerTask;

    if-eqz v0, :cond_1

    .line 272
    iget-object v0, p0, Lcom/smalife/utils/PickerView;->mTask:Lcom/smalife/utils/PickerView$MyTimerTask;

    invoke-virtual {v0}, Lcom/smalife/utils/PickerView$MyTimerTask;->cancel()Z

    .line 273
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/smalife/utils/PickerView;->mTask:Lcom/smalife/utils/PickerView$MyTimerTask;

    .line 275
    :cond_1
    new-instance v0, Lcom/smalife/utils/PickerView$MyTimerTask;

    iget-object v1, p0, Lcom/smalife/utils/PickerView;->updateHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/smalife/utils/PickerView$MyTimerTask;-><init>(Lcom/smalife/utils/PickerView;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/smalife/utils/PickerView;->mTask:Lcom/smalife/utils/PickerView$MyTimerTask;

    .line 276
    iget-object v0, p0, Lcom/smalife/utils/PickerView;->timer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/smalife/utils/PickerView;->mTask:Lcom/smalife/utils/PickerView$MyTimerTask;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0xa

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    goto :goto_0
.end method

.method private drawData(Landroid/graphics/Canvas;)V
    .locals 18
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 166
    move-object/from16 v0, p0

    iget v9, v0, Lcom/smalife/utils/PickerView;->mViewHeight:I

    int-to-float v9, v9

    const/high16 v10, 0x40800000    # 4.0f

    div-float/2addr v9, v10

    move-object/from16 v0, p0

    iget v10, v0, Lcom/smalife/utils/PickerView;->mMoveLen:F

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v10}, Lcom/smalife/utils/PickerView;->parabola(FF)F

    move-result v5

    .line 167
    .local v5, "scale":F
    move-object/from16 v0, p0

    iget v9, v0, Lcom/smalife/utils/PickerView;->mMaxTextSize:F

    move-object/from16 v0, p0

    iget v10, v0, Lcom/smalife/utils/PickerView;->mMinTextSize:F

    sub-float/2addr v9, v10

    mul-float/2addr v9, v5

    move-object/from16 v0, p0

    iget v10, v0, Lcom/smalife/utils/PickerView;->mMinTextSize:F

    add-float v6, v9, v10

    .line 168
    .local v6, "size":F
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/smalife/utils/PickerView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v9, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 169
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/smalife/utils/PickerView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v10, v0, Lcom/smalife/utils/PickerView;->mMaxTextAlpha:F

    move-object/from16 v0, p0

    iget v11, v0, Lcom/smalife/utils/PickerView;->mMinTextAlpha:F

    sub-float/2addr v10, v11

    mul-float/2addr v10, v5

    move-object/from16 v0, p0

    iget v11, v0, Lcom/smalife/utils/PickerView;->mMinTextAlpha:F

    add-float/2addr v10, v11

    float-to-int v10, v10

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 171
    move-object/from16 v0, p0

    iget v9, v0, Lcom/smalife/utils/PickerView;->mViewWidth:I

    int-to-double v10, v9

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    div-double/2addr v10, v12

    double-to-float v7, v10

    .line 172
    .local v7, "x":F
    move-object/from16 v0, p0

    iget v9, v0, Lcom/smalife/utils/PickerView;->mViewHeight:I

    int-to-double v10, v9

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    div-double/2addr v10, v12

    move-object/from16 v0, p0

    iget v9, v0, Lcom/smalife/utils/PickerView;->mMoveLen:F

    float-to-double v12, v9

    add-double/2addr v10, v12

    double-to-float v8, v10

    .line 173
    .local v8, "y":F
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/smalife/utils/PickerView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v9}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v3

    .line 174
    .local v3, "fmi":Landroid/graphics/Paint$FontMetricsInt;
    float-to-double v10, v8

    iget v9, v3, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    int-to-double v12, v9

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    div-double/2addr v12, v14

    iget v9, v3, Landroid/graphics/Paint$FontMetricsInt;->top:I

    int-to-double v14, v9

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    div-double v14, v14, v16

    add-double/2addr v12, v14

    sub-double/2addr v10, v12

    double-to-float v2, v10

    .line 175
    .local v2, "baseline":F
    move-object/from16 v0, p0

    iget v9, v0, Lcom/smalife/utils/PickerView;->mCurrentSelected:I

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/smalife/utils/PickerView;->mDataList:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-lt v9, v10, :cond_1

    .line 186
    :cond_0
    return-void

    .line 176
    :cond_1
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/smalife/utils/PickerView;->mDataList:Ljava/util/List;

    move-object/from16 v0, p0

    iget v10, v0, Lcom/smalife/utils/PickerView;->mCurrentSelected:I

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/smalife/utils/PickerView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v9, v7, v2, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 178
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget v9, v0, Lcom/smalife/utils/PickerView;->mCurrentSelected:I

    sub-int/2addr v9, v4

    if-gez v9, :cond_2

    .line 182
    const/4 v4, 0x1

    :goto_1
    move-object/from16 v0, p0

    iget v9, v0, Lcom/smalife/utils/PickerView;->mCurrentSelected:I

    add-int/2addr v9, v4

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/smalife/utils/PickerView;->mDataList:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-ge v9, v10, :cond_0

    .line 183
    const/4 v9, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4, v9}, Lcom/smalife/utils/PickerView;->drawOtherText(Landroid/graphics/Canvas;II)V

    .line 182
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 179
    :cond_2
    const/4 v9, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4, v9}, Lcom/smalife/utils/PickerView;->drawOtherText(Landroid/graphics/Canvas;II)V

    .line 178
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method private drawOtherText(Landroid/graphics/Canvas;II)V
    .locals 16
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "position"    # I
    .param p3, "type"    # I

    .prologue
    .line 196
    const v8, 0x40333333    # 2.8f

    move-object/from16 v0, p0

    iget v9, v0, Lcom/smalife/utils/PickerView;->mMinTextSize:F

    mul-float/2addr v8, v9

    move/from16 v0, p2

    int-to-float v9, v0

    mul-float/2addr v8, v9

    move/from16 v0, p3

    int-to-float v9, v0

    .line 197
    move-object/from16 v0, p0

    iget v10, v0, Lcom/smalife/utils/PickerView;->mMoveLen:F

    mul-float/2addr v9, v10

    .line 196
    add-float v3, v8, v9

    .line 198
    .local v3, "d":F
    move-object/from16 v0, p0

    iget v8, v0, Lcom/smalife/utils/PickerView;->mViewHeight:I

    int-to-float v8, v8

    const/high16 v9, 0x40800000    # 4.0f

    div-float/2addr v8, v9

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v3}, Lcom/smalife/utils/PickerView;->parabola(FF)F

    move-result v5

    .line 199
    .local v5, "scale":F
    move-object/from16 v0, p0

    iget v8, v0, Lcom/smalife/utils/PickerView;->mMaxTextSize:F

    move-object/from16 v0, p0

    iget v9, v0, Lcom/smalife/utils/PickerView;->mMinTextSize:F

    sub-float/2addr v8, v9

    mul-float/2addr v8, v5

    move-object/from16 v0, p0

    iget v9, v0, Lcom/smalife/utils/PickerView;->mMinTextSize:F

    add-float v6, v8, v9

    .line 200
    .local v6, "size":F
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/smalife/utils/PickerView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 201
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/smalife/utils/PickerView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v9, v0, Lcom/smalife/utils/PickerView;->mMaxTextAlpha:F

    move-object/from16 v0, p0

    iget v10, v0, Lcom/smalife/utils/PickerView;->mMinTextAlpha:F

    sub-float/2addr v9, v10

    mul-float/2addr v9, v5

    move-object/from16 v0, p0

    iget v10, v0, Lcom/smalife/utils/PickerView;->mMinTextAlpha:F

    add-float/2addr v9, v10

    float-to-int v9, v9

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 202
    move-object/from16 v0, p0

    iget v8, v0, Lcom/smalife/utils/PickerView;->mViewHeight:I

    int-to-double v8, v8

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    div-double/2addr v8, v10

    move/from16 v0, p3

    int-to-float v10, v0

    mul-float/2addr v10, v3

    float-to-double v10, v10

    add-double/2addr v8, v10

    double-to-float v7, v8

    .line 203
    .local v7, "y":F
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/smalife/utils/PickerView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v8}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v4

    .line 204
    .local v4, "fmi":Landroid/graphics/Paint$FontMetricsInt;
    float-to-double v8, v7

    iget v10, v4, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    int-to-double v10, v10

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    div-double/2addr v10, v12

    iget v12, v4, Landroid/graphics/Paint$FontMetricsInt;->top:I

    int-to-double v12, v12

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    div-double/2addr v12, v14

    add-double/2addr v10, v12

    sub-double/2addr v8, v10

    double-to-float v2, v8

    .line 205
    .local v2, "baseline":F
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/smalife/utils/PickerView;->mDataList:Ljava/util/List;

    move-object/from16 v0, p0

    iget v9, v0, Lcom/smalife/utils/PickerView;->mCurrentSelected:I

    mul-int v10, p3, p2

    add-int/2addr v9, v10

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 206
    move-object/from16 v0, p0

    iget v9, v0, Lcom/smalife/utils/PickerView;->mViewWidth:I

    int-to-double v10, v9

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    div-double/2addr v10, v12

    double-to-float v9, v10

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/smalife/utils/PickerView;->mPaint:Landroid/graphics/Paint;

    .line 205
    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v9, v2, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 207
    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    .line 146
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/smalife/utils/PickerView;->timer:Ljava/util/Timer;

    .line 147
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/smalife/utils/PickerView;->mDataList:Ljava/util/List;

    .line 148
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/smalife/utils/PickerView;->mPaint:Landroid/graphics/Paint;

    .line 149
    iget-object v0, p0, Lcom/smalife/utils/PickerView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 150
    iget-object v0, p0, Lcom/smalife/utils/PickerView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 151
    iget-object v0, p0, Lcom/smalife/utils/PickerView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/smalife/utils/PickerView;->mColorText:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 152
    return-void
.end method

.method private moveHeadToTail()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 122
    iget-object v1, p0, Lcom/smalife/utils/PickerView;->mDataList:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 123
    .local v0, "head":Ljava/lang/String;
    iget-object v1, p0, Lcom/smalife/utils/PickerView;->mDataList:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 124
    iget-object v1, p0, Lcom/smalife/utils/PickerView;->mDataList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    return-void
.end method

.method private moveTailToHead()V
    .locals 3

    .prologue
    .line 128
    iget-object v1, p0, Lcom/smalife/utils/PickerView;->mDataList:Ljava/util/List;

    iget-object v2, p0, Lcom/smalife/utils/PickerView;->mDataList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 129
    .local v0, "tail":Ljava/lang/String;
    iget-object v1, p0, Lcom/smalife/utils/PickerView;->mDataList:Ljava/util/List;

    iget-object v2, p0, Lcom/smalife/utils/PickerView;->mDataList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 130
    iget-object v1, p0, Lcom/smalife/utils/PickerView;->mDataList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 131
    return-void
.end method

.method private parabola(FF)F
    .locals 8
    .param p1, "zero"    # F
    .param p2, "x"    # F

    .prologue
    const/4 v1, 0x0

    .line 219
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    div-float v4, p2, p1

    float-to-double v4, v4

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    sub-double/2addr v2, v4

    double-to-float v0, v2

    .line 220
    .local v0, "f":F
    cmpg-float v2, v0, v1

    if-gez v2, :cond_0

    move v0, v1

    .end local v0    # "f":F
    :cond_0
    return v0
.end method

.method private performSelect()V
    .locals 3

    .prologue
    .line 103
    iget-object v0, p0, Lcom/smalife/utils/PickerView;->mSelectListener:Lcom/smalife/utils/PickerView$onSelectListener;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/smalife/utils/PickerView;->mCurrentSelected:I

    iget-object v1, p0, Lcom/smalife/utils/PickerView;->mDataList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 104
    iget-object v1, p0, Lcom/smalife/utils/PickerView;->mSelectListener:Lcom/smalife/utils/PickerView$onSelectListener;

    iget-object v0, p0, Lcom/smalife/utils/PickerView;->mDataList:Ljava/util/List;

    iget v2, p0, Lcom/smalife/utils/PickerView;->mCurrentSelected:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget v2, p0, Lcom/smalife/utils/PickerView;->v_id:I

    invoke-interface {v1, v0, v2}, Lcom/smalife/utils/PickerView$onSelectListener;->onSelect(Ljava/lang/String;I)V

    .line 105
    :cond_0
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 156
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 158
    iget-boolean v0, p0, Lcom/smalife/utils/PickerView;->isInit:Z

    if-eqz v0, :cond_0

    .line 159
    invoke-direct {p0, p1}, Lcom/smalife/utils/PickerView;->drawData(Landroid/graphics/Canvas;)V

    .line 160
    invoke-direct {p0}, Lcom/smalife/utils/PickerView;->performSelect()V

    .line 162
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 135
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 136
    invoke-virtual {p0}, Lcom/smalife/utils/PickerView;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/smalife/utils/PickerView;->mViewHeight:I

    .line 137
    invoke-virtual {p0}, Lcom/smalife/utils/PickerView;->getMeasuredWidth()I

    move-result v0

    iput v0, p0, Lcom/smalife/utils/PickerView;->mViewWidth:I

    .line 139
    iget v0, p0, Lcom/smalife/utils/PickerView;->mViewHeight:I

    int-to-float v0, v0

    const/high16 v1, 0x40800000    # 4.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/smalife/utils/PickerView;->mMaxTextSize:F

    .line 140
    iget v0, p0, Lcom/smalife/utils/PickerView;->mMaxTextSize:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/smalife/utils/PickerView;->mMinTextSize:F

    .line 141
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/smalife/utils/PickerView;->isInit:Z

    .line 142
    invoke-virtual {p0}, Lcom/smalife/utils/PickerView;->invalidate()V

    .line 143
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 225
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 236
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 227
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/smalife/utils/PickerView;->doDown(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 230
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/smalife/utils/PickerView;->doMove(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 233
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/smalife/utils/PickerView;->doUp(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 225
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setCurrentSelected(I)V
    .locals 0
    .param p1, "current_index"    # I

    .prologue
    .line 108
    iput p1, p0, Lcom/smalife/utils/PickerView;->mCurrentSelected:I

    .line 109
    return-void
.end method

.method public setData(Ljava/util/List;I)V
    .locals 0
    .param p2, "res"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 111
    .local p1, "datas":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/smalife/utils/PickerView;->mDataList:Ljava/util/List;

    .line 113
    iput p2, p0, Lcom/smalife/utils/PickerView;->v_id:I

    .line 114
    invoke-virtual {p0}, Lcom/smalife/utils/PickerView;->invalidate()V

    .line 115
    return-void
.end method

.method public setOnSelectListener(Lcom/smalife/utils/PickerView$onSelectListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/smalife/utils/PickerView$onSelectListener;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/smalife/utils/PickerView;->mSelectListener:Lcom/smalife/utils/PickerView$onSelectListener;

    .line 100
    return-void
.end method

.method public setSelected(I)V
    .locals 0
    .param p1, "selected"    # I

    .prologue
    .line 118
    iput p1, p0, Lcom/smalife/utils/PickerView;->mCurrentSelected:I

    .line 119
    return-void
.end method
