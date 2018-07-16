.class public Lcom/smalife/wheelview/WheelView;
.super Landroid/view/View;
.source "WheelView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smalife/wheelview/WheelView$ACTION;
    }
.end annotation


# static fields
.field private static final CENTERCONTENTOFFSET:F = 6.0f

.field private static final GETPICKERVIEWTEXT:Ljava/lang/String; = "getPickerViewText"

.field private static final SCALECONTENT:F = 0.8f

.field private static final VELOCITYFLING:I = 0x5

.field static final lineSpacingMultiplier:F = 1.4f


# instance fields
.field adapter:Lcom/smalife/wheelview/WheelAdapter;

.field centerY:F

.field change:I

.field context:Landroid/content/Context;

.field customTextSize:Z

.field dividerColor:I

.field private drawCenterContentStart:I

.field private drawOutContentStart:I

.field firstLineY:F

.field private gestureDetector:Landroid/view/GestureDetector;

.field halfCircumference:I

.field handler:Landroid/os/Handler;

.field initPosition:I

.field isLoop:Z

.field itemHeight:F

.field itemsVisible:I

.field private label:Ljava/lang/String;

.field mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

.field private mFuture:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;"
        }
    .end annotation
.end field

.field private mGravity:I

.field private mOffset:I

.field maxTextHeight:I

.field maxTextWidth:I

.field measuredHeight:I

.field measuredWidth:I

.field onItemSelectedListener:Lcom/smalife/wheelview/OnItemSelectedListener;

.field paintCenterText:Landroid/graphics/Paint;

.field paintIndicator:Landroid/graphics/Paint;

.field paintOuterText:Landroid/graphics/Paint;

.field preCurrentIndex:I

.field private previousY:F

.field radius:I

.field secondLineY:F

.field private selectedItem:I

.field startTime:J

.field textColorCenter:I

.field textColorOut:I

.field textSize:I

.field totalScrollY:I

.field private v_id:I

.field widthMeasureSpec:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 113
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/smalife/wheelview/WheelView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 114
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/16 v5, 0x11

    const/4 v4, 0x0

    .line 117
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    iput-object v1, p0, Lcom/smalife/wheelview/WheelView;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 88
    const/16 v1, 0xb

    iput v1, p0, Lcom/smalife/wheelview/WheelView;->itemsVisible:I

    .line 98
    iput v4, p0, Lcom/smalife/wheelview/WheelView;->mOffset:I

    .line 99
    const/4 v1, 0x0

    iput v1, p0, Lcom/smalife/wheelview/WheelView;->previousY:F

    .line 100
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/smalife/wheelview/WheelView;->startTime:J

    .line 106
    iput v5, p0, Lcom/smalife/wheelview/WheelView;->mGravity:I

    .line 107
    iput v4, p0, Lcom/smalife/wheelview/WheelView;->drawCenterContentStart:I

    .line 108
    iput v4, p0, Lcom/smalife/wheelview/WheelView;->drawOutContentStart:I

    .line 118
    invoke-virtual {p0}, Lcom/smalife/wheelview/WheelView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070023

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/smalife/wheelview/WheelView;->textColorOut:I

    .line 119
    invoke-virtual {p0}, Lcom/smalife/wheelview/WheelView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070024

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/smalife/wheelview/WheelView;->textColorCenter:I

    .line 120
    invoke-virtual {p0}, Lcom/smalife/wheelview/WheelView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070025

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/smalife/wheelview/WheelView;->dividerColor:I

    .line 122
    invoke-virtual {p0}, Lcom/smalife/wheelview/WheelView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08000e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/smalife/wheelview/WheelView;->textSize:I

    .line 123
    invoke-virtual {p0}, Lcom/smalife/wheelview/WheelView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x7f0c0000

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/smalife/wheelview/WheelView;->customTextSize:Z

    .line 124
    if-eqz p2, :cond_0

    .line 125
    sget-object v1, Lcom/smalife/watch/R$styleable;->wheelview:[I

    invoke-virtual {p1, p2, v1, v4, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 126
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/smalife/wheelview/WheelView;->mGravity:I

    .line 127
    const/4 v1, 0x2

    iget v2, p0, Lcom/smalife/wheelview/WheelView;->textColorOut:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/smalife/wheelview/WheelView;->textColorOut:I

    .line 128
    const/4 v1, 0x3

    iget v2, p0, Lcom/smalife/wheelview/WheelView;->textColorCenter:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/smalife/wheelview/WheelView;->textColorCenter:I

    .line 129
    const/4 v1, 0x4

    iget v2, p0, Lcom/smalife/wheelview/WheelView;->dividerColor:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/smalife/wheelview/WheelView;->dividerColor:I

    .line 130
    const/4 v1, 0x1

    iget v2, p0, Lcom/smalife/wheelview/WheelView;->textSize:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Lcom/smalife/wheelview/WheelView;->textSize:I

    .line 132
    .end local v0    # "a":Landroid/content/res/TypedArray;
    :cond_0
    invoke-direct {p0, p1}, Lcom/smalife/wheelview/WheelView;->initLoopView(Landroid/content/Context;)V

    .line 133
    return-void
.end method

.method private getContentText(Ljava/lang/Object;)Ljava/lang/String;
    .locals 5
    .param p1, "item"    # Ljava/lang/Object;

    .prologue
    .line 450
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 452
    .local v1, "contentText":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 453
    .local v0, "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v3, "getPickerViewText"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 454
    .local v2, "m":Ljava/lang/reflect/Method;
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 456
    .end local v0    # "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "m":Ljava/lang/reflect/Method;
    :goto_0
    return-object v1

    .line 455
    :catch_0
    move-exception v3

    goto :goto_0

    :catch_1
    move-exception v3

    goto :goto_0

    :catch_2
    move-exception v3

    goto :goto_0

    :catch_3
    move-exception v3

    goto :goto_0
.end method

.method private getLoopMappingIndex(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 434
    if-gez p1, :cond_1

    .line 435
    iget-object v0, p0, Lcom/smalife/wheelview/WheelView;->adapter:Lcom/smalife/wheelview/WheelAdapter;

    invoke-interface {v0}, Lcom/smalife/wheelview/WheelAdapter;->getItemsCount()I

    move-result v0

    add-int/2addr p1, v0

    .line 436
    invoke-direct {p0, p1}, Lcom/smalife/wheelview/WheelView;->getLoopMappingIndex(I)I

    move-result p1

    .line 441
    :cond_0
    :goto_0
    return p1

    .line 437
    :cond_1
    iget-object v0, p0, Lcom/smalife/wheelview/WheelView;->adapter:Lcom/smalife/wheelview/WheelAdapter;

    invoke-interface {v0}, Lcom/smalife/wheelview/WheelAdapter;->getItemsCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_0

    .line 438
    iget-object v0, p0, Lcom/smalife/wheelview/WheelView;->adapter:Lcom/smalife/wheelview/WheelAdapter;

    invoke-interface {v0}, Lcom/smalife/wheelview/WheelAdapter;->getItemsCount()I

    move-result v0

    sub-int/2addr p1, v0

    .line 439
    invoke-direct {p0, p1}, Lcom/smalife/wheelview/WheelView;->getLoopMappingIndex(I)I

    move-result p1

    goto :goto_0
.end method

.method private initLoopView(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 136
    iput-object p1, p0, Lcom/smalife/wheelview/WheelView;->context:Landroid/content/Context;

    .line 137
    new-instance v0, Lcom/smalife/wheelview/MessageHandler;

    invoke-direct {v0, p0}, Lcom/smalife/wheelview/MessageHandler;-><init>(Lcom/smalife/wheelview/WheelView;)V

    iput-object v0, p0, Lcom/smalife/wheelview/WheelView;->handler:Landroid/os/Handler;

    .line 138
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/smalife/wheelview/LoopViewGestureListener;

    invoke-direct {v1, p0}, Lcom/smalife/wheelview/LoopViewGestureListener;-><init>(Lcom/smalife/wheelview/WheelView;)V

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/smalife/wheelview/WheelView;->gestureDetector:Landroid/view/GestureDetector;

    .line 139
    iget-object v0, p0, Lcom/smalife/wheelview/WheelView;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, v2}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 141
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/smalife/wheelview/WheelView;->isLoop:Z

    .line 143
    iput v2, p0, Lcom/smalife/wheelview/WheelView;->totalScrollY:I

    .line 144
    const/4 v0, -0x1

    iput v0, p0, Lcom/smalife/wheelview/WheelView;->initPosition:I

    .line 146
    invoke-direct {p0}, Lcom/smalife/wheelview/WheelView;->initPaints()V

    .line 148
    return-void
.end method

.method private initPaints()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 151
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/smalife/wheelview/WheelView;->paintOuterText:Landroid/graphics/Paint;

    .line 152
    iget-object v0, p0, Lcom/smalife/wheelview/WheelView;->paintOuterText:Landroid/graphics/Paint;

    iget v1, p0, Lcom/smalife/wheelview/WheelView;->textColorOut:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 153
    iget-object v0, p0, Lcom/smalife/wheelview/WheelView;->paintOuterText:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 154
    iget-object v0, p0, Lcom/smalife/wheelview/WheelView;->paintOuterText:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 155
    iget-object v0, p0, Lcom/smalife/wheelview/WheelView;->paintOuterText:Landroid/graphics/Paint;

    iget v1, p0, Lcom/smalife/wheelview/WheelView;->textSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 157
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/smalife/wheelview/WheelView;->paintCenterText:Landroid/graphics/Paint;

    .line 158
    iget-object v0, p0, Lcom/smalife/wheelview/WheelView;->paintCenterText:Landroid/graphics/Paint;

    iget v1, p0, Lcom/smalife/wheelview/WheelView;->textColorCenter:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 159
    iget-object v0, p0, Lcom/smalife/wheelview/WheelView;->paintCenterText:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 160
    iget-object v0, p0, Lcom/smalife/wheelview/WheelView;->paintCenterText:Landroid/graphics/Paint;

    const v1, 0x3f8ccccd    # 1.1f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextScaleX(F)V

    .line 161
    iget-object v0, p0, Lcom/smalife/wheelview/WheelView;->paintCenterText:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 162
    iget-object v0, p0, Lcom/smalife/wheelview/WheelView;->paintCenterText:Landroid/graphics/Paint;

    iget v1, p0, Lcom/smalife/wheelview/WheelView;->textSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 164
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/smalife/wheelview/WheelView;->paintIndicator:Landroid/graphics/Paint;

    .line 165
    iget-object v0, p0, Lcom/smalife/wheelview/WheelView;->paintIndicator:Landroid/graphics/Paint;

    iget v1, p0, Lcom/smalife/wheelview/WheelView;->dividerColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 166
    iget-object v0, p0, Lcom/smalife/wheelview/WheelView;->paintIndicator:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 168
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 169
    const/4 v0, 0x0

    invoke-virtual {p0, v2, v0}, Lcom/smalife/wheelview/WheelView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 171
    :cond_0
    return-void
.end method

.method private measureTextWidthHeight()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 208
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 209
    .local v1, "rect":Landroid/graphics/Rect;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v5, p0, Lcom/smalife/wheelview/WheelView;->adapter:Lcom/smalife/wheelview/WheelAdapter;

    invoke-interface {v5}, Lcom/smalife/wheelview/WheelAdapter;->getItemsCount()I

    move-result v5

    if-lt v0, v5, :cond_0

    .line 222
    const v5, 0x3fb33333    # 1.4f

    iget v6, p0, Lcom/smalife/wheelview/WheelView;->maxTextHeight:I

    int-to-float v6, v6

    mul-float/2addr v5, v6

    iput v5, p0, Lcom/smalife/wheelview/WheelView;->itemHeight:F

    .line 223
    return-void

    .line 210
    :cond_0
    iget-object v5, p0, Lcom/smalife/wheelview/WheelView;->adapter:Lcom/smalife/wheelview/WheelAdapter;

    invoke-interface {v5, v0}, Lcom/smalife/wheelview/WheelAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/smalife/wheelview/WheelView;->getContentText(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 211
    .local v2, "s1":Ljava/lang/String;
    iget-object v5, p0, Lcom/smalife/wheelview/WheelView;->paintCenterText:Landroid/graphics/Paint;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v2, v8, v6, v1}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 212
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v4

    .line 213
    .local v4, "textWidth":I
    iget v5, p0, Lcom/smalife/wheelview/WheelView;->maxTextWidth:I

    if-le v4, v5, :cond_1

    .line 214
    iput v4, p0, Lcom/smalife/wheelview/WheelView;->maxTextWidth:I

    .line 216
    :cond_1
    iget-object v5, p0, Lcom/smalife/wheelview/WheelView;->paintCenterText:Landroid/graphics/Paint;

    const-string v6, "\u661f\u671f"

    const/4 v7, 0x2

    invoke-virtual {v5, v6, v8, v7, v1}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 217
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v3

    .line 218
    .local v3, "textHeight":I
    iget v5, p0, Lcom/smalife/wheelview/WheelView;->maxTextHeight:I

    if-le v3, v5, :cond_2

    .line 219
    iput v3, p0, Lcom/smalife/wheelview/WheelView;->maxTextHeight:I

    .line 209
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private measuredCenterContentStart(Ljava/lang/String;)V
    .locals 6
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 460
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 461
    .local v0, "rect":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/smalife/wheelview/WheelView;->paintCenterText:Landroid/graphics/Paint;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, p1, v3, v2, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 462
    iget v1, p0, Lcom/smalife/wheelview/WheelView;->mGravity:I

    sparse-switch v1, :sswitch_data_0

    .line 473
    :goto_0
    return-void

    .line 464
    :sswitch_0
    iget v1, p0, Lcom/smalife/wheelview/WheelView;->measuredWidth:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-double v2, v1

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v2, v4

    double-to-int v1, v2

    iput v1, p0, Lcom/smalife/wheelview/WheelView;->drawCenterContentStart:I

    goto :goto_0

    .line 467
    :sswitch_1
    iput v3, p0, Lcom/smalife/wheelview/WheelView;->drawCenterContentStart:I

    goto :goto_0

    .line 470
    :sswitch_2
    iget v1, p0, Lcom/smalife/wheelview/WheelView;->measuredWidth:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/smalife/wheelview/WheelView;->drawCenterContentStart:I

    goto :goto_0

    .line 462
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_1
        0x5 -> :sswitch_2
        0x11 -> :sswitch_0
    .end sparse-switch
.end method

.method private measuredOutContentStart(Ljava/lang/String;)V
    .locals 6
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 475
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 476
    .local v0, "rect":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/smalife/wheelview/WheelView;->paintOuterText:Landroid/graphics/Paint;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, p1, v3, v2, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 477
    iget v1, p0, Lcom/smalife/wheelview/WheelView;->mGravity:I

    sparse-switch v1, :sswitch_data_0

    .line 488
    :goto_0
    return-void

    .line 479
    :sswitch_0
    iget v1, p0, Lcom/smalife/wheelview/WheelView;->measuredWidth:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-double v2, v1

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v2, v4

    double-to-int v1, v2

    iput v1, p0, Lcom/smalife/wheelview/WheelView;->drawOutContentStart:I

    goto :goto_0

    .line 482
    :sswitch_1
    iput v3, p0, Lcom/smalife/wheelview/WheelView;->drawOutContentStart:I

    goto :goto_0

    .line 485
    :sswitch_2
    iget v1, p0, Lcom/smalife/wheelview/WheelView;->measuredWidth:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/smalife/wheelview/WheelView;->drawOutContentStart:I

    goto :goto_0

    .line 477
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_1
        0x5 -> :sswitch_2
        0x11 -> :sswitch_0
    .end sparse-switch
.end method

.method private remeasure()V
    .locals 6

    .prologue
    const-wide v4, 0x400921fb54442d18L    # Math.PI

    const/high16 v2, 0x40000000    # 2.0f

    .line 174
    iget-object v0, p0, Lcom/smalife/wheelview/WheelView;->adapter:Lcom/smalife/wheelview/WheelAdapter;

    if-nez v0, :cond_0

    .line 202
    :goto_0
    return-void

    .line 178
    :cond_0
    invoke-direct {p0}, Lcom/smalife/wheelview/WheelView;->measureTextWidthHeight()V

    .line 181
    iget v0, p0, Lcom/smalife/wheelview/WheelView;->itemHeight:F

    iget v1, p0, Lcom/smalife/wheelview/WheelView;->itemsVisible:I

    add-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/smalife/wheelview/WheelView;->halfCircumference:I

    .line 183
    iget v0, p0, Lcom/smalife/wheelview/WheelView;->halfCircumference:I

    mul-int/lit8 v0, v0, 0x2

    int-to-double v0, v0

    div-double/2addr v0, v4

    double-to-int v0, v0

    iput v0, p0, Lcom/smalife/wheelview/WheelView;->measuredHeight:I

    .line 185
    iget v0, p0, Lcom/smalife/wheelview/WheelView;->halfCircumference:I

    int-to-double v0, v0

    div-double/2addr v0, v4

    double-to-int v0, v0

    iput v0, p0, Lcom/smalife/wheelview/WheelView;->radius:I

    .line 187
    iget v0, p0, Lcom/smalife/wheelview/WheelView;->widthMeasureSpec:I

    invoke-static {v0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iput v0, p0, Lcom/smalife/wheelview/WheelView;->measuredWidth:I

    .line 189
    iget v0, p0, Lcom/smalife/wheelview/WheelView;->measuredHeight:I

    int-to-float v0, v0

    iget v1, p0, Lcom/smalife/wheelview/WheelView;->itemHeight:F

    sub-float/2addr v0, v1

    div-float/2addr v0, v2

    iput v0, p0, Lcom/smalife/wheelview/WheelView;->firstLineY:F

    .line 190
    iget v0, p0, Lcom/smalife/wheelview/WheelView;->measuredHeight:I

    int-to-float v0, v0

    iget v1, p0, Lcom/smalife/wheelview/WheelView;->itemHeight:F

    add-float/2addr v0, v1

    div-float/2addr v0, v2

    iput v0, p0, Lcom/smalife/wheelview/WheelView;->secondLineY:F

    .line 191
    iget v0, p0, Lcom/smalife/wheelview/WheelView;->measuredHeight:I

    iget v1, p0, Lcom/smalife/wheelview/WheelView;->maxTextHeight:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    div-float/2addr v0, v2

    const/high16 v1, 0x40c00000    # 6.0f

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/smalife/wheelview/WheelView;->centerY:F

    .line 193
    iget v0, p0, Lcom/smalife/wheelview/WheelView;->initPosition:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 194
    iget-boolean v0, p0, Lcom/smalife/wheelview/WheelView;->isLoop:Z

    if-eqz v0, :cond_2

    .line 195
    iget-object v0, p0, Lcom/smalife/wheelview/WheelView;->adapter:Lcom/smalife/wheelview/WheelAdapter;

    invoke-interface {v0}, Lcom/smalife/wheelview/WheelAdapter;->getItemsCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/smalife/wheelview/WheelView;->initPosition:I

    .line 201
    :cond_1
    :goto_1
    iget v0, p0, Lcom/smalife/wheelview/WheelView;->initPosition:I

    iput v0, p0, Lcom/smalife/wheelview/WheelView;->preCurrentIndex:I

    goto :goto_0

    .line 197
    :cond_2
    const/4 v0, 0x0

    iput v0, p0, Lcom/smalife/wheelview/WheelView;->initPosition:I

    goto :goto_1
.end method


# virtual methods
.method public cancelFuture()V
    .locals 2

    .prologue
    .line 246
    iget-object v0, p0, Lcom/smalife/wheelview/WheelView;->mFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/smalife/wheelview/WheelView;->mFuture:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledFuture;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/smalife/wheelview/WheelView;->mFuture:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 248
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/smalife/wheelview/WheelView;->mFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 250
    :cond_0
    return-void
.end method

.method public final getAdapter()Lcom/smalife/wheelview/WheelAdapter;
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lcom/smalife/wheelview/WheelView;->adapter:Lcom/smalife/wheelview/WheelAdapter;

    return-object v0
.end method

.method public final getCurrentItem()I
    .locals 1

    .prologue
    .line 290
    iget v0, p0, Lcom/smalife/wheelview/WheelView;->selectedItem:I

    return v0
.end method

.method public getItemsCount()I
    .locals 1

    .prologue
    .line 558
    iget-object v0, p0, Lcom/smalife/wheelview/WheelView;->adapter:Lcom/smalife/wheelview/WheelAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/smalife/wheelview/WheelView;->adapter:Lcom/smalife/wheelview/WheelAdapter;

    invoke-interface {v0}, Lcom/smalife/wheelview/WheelAdapter;->getItemsCount()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getResID()I
    .locals 1

    .prologue
    .line 294
    iget v0, p0, Lcom/smalife/wheelview/WheelView;->v_id:I

    return v0
.end method

.method public getTextWidth(Landroid/graphics/Paint;Ljava/lang/String;)I
    .locals 6
    .param p1, "paint"    # Landroid/graphics/Paint;
    .param p2, "str"    # Ljava/lang/String;

    .prologue
    .line 574
    const/4 v0, 0x0

    .line 575
    .local v0, "iRet":I
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 576
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    .line 577
    .local v2, "len":I
    new-array v3, v2, [F

    .line 578
    .local v3, "widths":[F
    invoke-virtual {p1, p2, v3}, Landroid/graphics/Paint;->getTextWidths(Ljava/lang/String;[F)I

    .line 579
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    if-lt v1, v2, :cond_1

    .line 583
    .end local v1    # "j":I
    .end local v2    # "len":I
    .end local v3    # "widths":[F
    :cond_0
    return v0

    .line 580
    .restart local v1    # "j":I
    .restart local v2    # "len":I
    .restart local v3    # "widths":[F
    :cond_1
    aget v4, v3, v1

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    add-int/2addr v0, v4

    .line 579
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 21
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 304
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smalife/wheelview/WheelView;->adapter:Lcom/smalife/wheelview/WheelAdapter;

    if-nez v2, :cond_1

    .line 430
    :cond_0
    return-void

    .line 308
    :cond_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/smalife/wheelview/WheelView;->itemsVisible:I

    new-array v0, v2, [Ljava/lang/Object;

    move-object/from16 v20, v0

    .line 310
    .local v20, "visibles":[Ljava/lang/Object;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/smalife/wheelview/WheelView;->totalScrollY:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/smalife/wheelview/WheelView;->itemHeight:F

    div-float/2addr v2, v3

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/smalife/wheelview/WheelView;->change:I

    .line 313
    :try_start_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/smalife/wheelview/WheelView;->initPosition:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/smalife/wheelview/WheelView;->change:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/smalife/wheelview/WheelView;->adapter:Lcom/smalife/wheelview/WheelAdapter;

    invoke-interface {v4}, Lcom/smalife/wheelview/WheelAdapter;->getItemsCount()I

    move-result v4

    rem-int/2addr v3, v4

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/smalife/wheelview/WheelView;->preCurrentIndex:I
    :try_end_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    .line 317
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/smalife/wheelview/WheelView;->isLoop:Z

    if-nez v2, :cond_6

    .line 318
    move-object/from16 v0, p0

    iget v2, v0, Lcom/smalife/wheelview/WheelView;->preCurrentIndex:I

    if-gez v2, :cond_2

    .line 319
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/smalife/wheelview/WheelView;->preCurrentIndex:I

    .line 321
    :cond_2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/smalife/wheelview/WheelView;->preCurrentIndex:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smalife/wheelview/WheelView;->adapter:Lcom/smalife/wheelview/WheelAdapter;

    invoke-interface {v3}, Lcom/smalife/wheelview/WheelAdapter;->getItemsCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-le v2, v3, :cond_3

    .line 322
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smalife/wheelview/WheelView;->adapter:Lcom/smalife/wheelview/WheelAdapter;

    invoke-interface {v2}, Lcom/smalife/wheelview/WheelAdapter;->getItemsCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/smalife/wheelview/WheelView;->preCurrentIndex:I

    .line 334
    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/smalife/wheelview/WheelView;->totalScrollY:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/smalife/wheelview/WheelView;->itemHeight:F

    rem-float/2addr v2, v3

    float-to-int v15, v2

    .line 336
    .local v15, "itemHeightOffset":I
    const/4 v10, 0x0

    .line 337
    .local v10, "counter":I
    :goto_2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/smalife/wheelview/WheelView;->itemsVisible:I

    if-lt v10, v2, :cond_8

    .line 356
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/smalife/wheelview/WheelView;->firstLineY:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/smalife/wheelview/WheelView;->measuredWidth:I

    int-to-float v5, v2

    move-object/from16 v0, p0

    iget v6, v0, Lcom/smalife/wheelview/WheelView;->firstLineY:F

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/smalife/wheelview/WheelView;->paintIndicator:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 357
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/smalife/wheelview/WheelView;->secondLineY:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/smalife/wheelview/WheelView;->measuredWidth:I

    int-to-float v5, v2

    move-object/from16 v0, p0

    iget v6, v0, Lcom/smalife/wheelview/WheelView;->secondLineY:F

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/smalife/wheelview/WheelView;->paintIndicator:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 359
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smalife/wheelview/WheelView;->label:Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 360
    move-object/from16 v0, p0

    iget v2, v0, Lcom/smalife/wheelview/WheelView;->measuredWidth:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smalife/wheelview/WheelView;->paintCenterText:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/smalife/wheelview/WheelView;->label:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/smalife/wheelview/WheelView;->getTextWidth(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result v3

    sub-int v11, v2, v3

    .line 362
    .local v11, "drawRightContentStart":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smalife/wheelview/WheelView;->label:Ljava/lang/String;

    int-to-float v3, v11

    const/high16 v4, 0x40c00000    # 6.0f

    sub-float/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/smalife/wheelview/WheelView;->centerY:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/smalife/wheelview/WheelView;->paintCenterText:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 364
    .end local v11    # "drawRightContentStart":I
    :cond_4
    const/4 v10, 0x0

    .line 365
    :goto_3
    move-object/from16 v0, p0

    iget v2, v0, Lcom/smalife/wheelview/WheelView;->itemsVisible:I

    if-ge v10, v2, :cond_0

    .line 366
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 369
    move-object/from16 v0, p0

    iget v2, v0, Lcom/smalife/wheelview/WheelView;->maxTextHeight:I

    int-to-float v2, v2

    const v3, 0x3fb33333    # 1.4f

    mul-float v14, v2, v3

    .line 370
    .local v14, "itemHeight":F
    int-to-float v2, v10

    mul-float/2addr v2, v14

    int-to-float v3, v15

    sub-float/2addr v2, v3

    float-to-double v2, v2

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v2, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/smalife/wheelview/WheelView;->halfCircumference:I

    int-to-double v4, v4

    div-double v18, v2, v4

    .line 372
    .local v18, "radian":D
    const-wide v2, 0x4056800000000000L    # 90.0

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    div-double v4, v18, v4

    const-wide v6, 0x4066800000000000L    # 180.0

    mul-double/2addr v4, v6

    sub-double/2addr v2, v4

    double-to-float v8, v2

    .line 374
    .local v8, "angle":F
    const/high16 v2, 0x42b40000    # 90.0f

    cmpl-float v2, v8, v2

    if-gez v2, :cond_5

    const/high16 v2, -0x3d4c0000    # -90.0f

    cmpg-float v2, v8, v2

    if-gtz v2, :cond_c

    .line 375
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 428
    :goto_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 314
    .end local v8    # "angle":F
    .end local v10    # "counter":I
    .end local v14    # "itemHeight":F
    .end local v15    # "itemHeightOffset":I
    .end local v18    # "radian":D
    :catch_0
    move-exception v12

    .line 315
    .local v12, "e":Ljava/lang/ArithmeticException;
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "\u51fa\u9519\u4e86\uff01adapter.getItemsCount() == 0\uff0c\u8054\u52a8\u6570\u636e\u4e0d\u5339\u914d"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 325
    .end local v12    # "e":Ljava/lang/ArithmeticException;
    :cond_6
    move-object/from16 v0, p0

    iget v2, v0, Lcom/smalife/wheelview/WheelView;->preCurrentIndex:I

    if-gez v2, :cond_7

    .line 326
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smalife/wheelview/WheelView;->adapter:Lcom/smalife/wheelview/WheelAdapter;

    invoke-interface {v2}, Lcom/smalife/wheelview/WheelAdapter;->getItemsCount()I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/smalife/wheelview/WheelView;->preCurrentIndex:I

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/smalife/wheelview/WheelView;->preCurrentIndex:I

    .line 328
    :cond_7
    move-object/from16 v0, p0

    iget v2, v0, Lcom/smalife/wheelview/WheelView;->preCurrentIndex:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smalife/wheelview/WheelView;->adapter:Lcom/smalife/wheelview/WheelAdapter;

    invoke-interface {v3}, Lcom/smalife/wheelview/WheelAdapter;->getItemsCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-le v2, v3, :cond_3

    .line 329
    move-object/from16 v0, p0

    iget v2, v0, Lcom/smalife/wheelview/WheelView;->preCurrentIndex:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smalife/wheelview/WheelView;->adapter:Lcom/smalife/wheelview/WheelAdapter;

    invoke-interface {v3}, Lcom/smalife/wheelview/WheelAdapter;->getItemsCount()I

    move-result v3

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/smalife/wheelview/WheelView;->preCurrentIndex:I

    goto/16 :goto_1

    .line 338
    .restart local v10    # "counter":I
    .restart local v15    # "itemHeightOffset":I
    :cond_8
    move-object/from16 v0, p0

    iget v2, v0, Lcom/smalife/wheelview/WheelView;->preCurrentIndex:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/smalife/wheelview/WheelView;->itemsVisible:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v3, v10

    sub-int v13, v2, v3

    .line 340
    .local v13, "index":I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/smalife/wheelview/WheelView;->isLoop:Z

    if-eqz v2, :cond_9

    .line 341
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/smalife/wheelview/WheelView;->getLoopMappingIndex(I)I

    move-result v13

    .line 342
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smalife/wheelview/WheelView;->adapter:Lcom/smalife/wheelview/WheelAdapter;

    invoke-interface {v2, v13}, Lcom/smalife/wheelview/WheelAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v20, v10

    .line 351
    :goto_5
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_2

    .line 343
    :cond_9
    if-gez v13, :cond_a

    .line 344
    const-string v2, ""

    aput-object v2, v20, v10

    goto :goto_5

    .line 345
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smalife/wheelview/WheelView;->adapter:Lcom/smalife/wheelview/WheelAdapter;

    invoke-interface {v2}, Lcom/smalife/wheelview/WheelAdapter;->getItemsCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-le v13, v2, :cond_b

    .line 346
    const-string v2, ""

    aput-object v2, v20, v10

    goto :goto_5

    .line 348
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smalife/wheelview/WheelView;->adapter:Lcom/smalife/wheelview/WheelAdapter;

    invoke-interface {v2, v13}, Lcom/smalife/wheelview/WheelAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v20, v10

    goto :goto_5

    .line 377
    .end local v13    # "index":I
    .restart local v8    # "angle":F
    .restart local v14    # "itemHeight":F
    .restart local v18    # "radian":D
    :cond_c
    aget-object v2, v20, v10

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/smalife/wheelview/WheelView;->getContentText(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 380
    .local v9, "contentText":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/smalife/wheelview/WheelView;->measuredCenterContentStart(Ljava/lang/String;)V

    .line 381
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/smalife/wheelview/WheelView;->measuredOutContentStart(Ljava/lang/String;)V

    .line 382
    move-object/from16 v0, p0

    iget v2, v0, Lcom/smalife/wheelview/WheelView;->radius:I

    int-to-double v2, v2

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/smalife/wheelview/WheelView;->radius:I

    int-to-double v6, v6

    mul-double/2addr v4, v6

    sub-double/2addr v2, v4

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/smalife/wheelview/WheelView;->maxTextHeight:I

    int-to-double v6, v6

    mul-double/2addr v4, v6

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double/2addr v4, v6

    sub-double/2addr v2, v4

    double-to-float v0, v2

    move/from16 v17, v0

    .line 384
    .local v17, "translateY":F
    const/4 v2, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 385
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v3, v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->scale(FF)V

    .line 386
    move-object/from16 v0, p0

    iget v2, v0, Lcom/smalife/wheelview/WheelView;->firstLineY:F

    cmpg-float v2, v17, v2

    if-gtz v2, :cond_e

    move-object/from16 v0, p0

    iget v2, v0, Lcom/smalife/wheelview/WheelView;->maxTextHeight:I

    int-to-float v2, v2

    add-float v2, v2, v17

    move-object/from16 v0, p0

    iget v3, v0, Lcom/smalife/wheelview/WheelView;->firstLineY:F

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_e

    .line 388
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 389
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/smalife/wheelview/WheelView;->measuredWidth:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/smalife/wheelview/WheelView;->firstLineY:F

    sub-float v5, v5, v17

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 390
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v3, v4

    const v4, 0x3f4ccccd    # 0.8f

    mul-float/2addr v3, v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->scale(FF)V

    .line 391
    move-object/from16 v0, p0

    iget v2, v0, Lcom/smalife/wheelview/WheelView;->drawOutContentStart:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/smalife/wheelview/WheelView;->maxTextHeight:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/smalife/wheelview/WheelView;->paintOuterText:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v9, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 392
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 393
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 394
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/smalife/wheelview/WheelView;->firstLineY:F

    sub-float v3, v3, v17

    move-object/from16 v0, p0

    iget v4, v0, Lcom/smalife/wheelview/WheelView;->measuredWidth:I

    int-to-float v4, v4

    float-to-int v5, v14

    int-to-float v5, v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 395
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v3, v4

    const/high16 v4, 0x3f800000    # 1.0f

    mul-float/2addr v3, v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->scale(FF)V

    .line 396
    move-object/from16 v0, p0

    iget v2, v0, Lcom/smalife/wheelview/WheelView;->drawCenterContentStart:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/smalife/wheelview/WheelView;->maxTextHeight:I

    int-to-float v3, v3

    const/high16 v4, 0x40c00000    # 6.0f

    sub-float/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/smalife/wheelview/WheelView;->paintCenterText:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v9, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 397
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 426
    :cond_d
    :goto_6
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_4

    .line 398
    :cond_e
    move-object/from16 v0, p0

    iget v2, v0, Lcom/smalife/wheelview/WheelView;->secondLineY:F

    cmpg-float v2, v17, v2

    if-gtz v2, :cond_f

    move-object/from16 v0, p0

    iget v2, v0, Lcom/smalife/wheelview/WheelView;->maxTextHeight:I

    int-to-float v2, v2

    add-float v2, v2, v17

    move-object/from16 v0, p0

    iget v3, v0, Lcom/smalife/wheelview/WheelView;->secondLineY:F

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_f

    .line 400
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 401
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/smalife/wheelview/WheelView;->measuredWidth:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/smalife/wheelview/WheelView;->secondLineY:F

    sub-float v5, v5, v17

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 402
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v3, v4

    const/high16 v4, 0x3f800000    # 1.0f

    mul-float/2addr v3, v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->scale(FF)V

    .line 403
    move-object/from16 v0, p0

    iget v2, v0, Lcom/smalife/wheelview/WheelView;->drawCenterContentStart:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/smalife/wheelview/WheelView;->maxTextHeight:I

    int-to-float v3, v3

    const/high16 v4, 0x40c00000    # 6.0f

    sub-float/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/smalife/wheelview/WheelView;->paintCenterText:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v9, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 404
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 405
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 406
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/smalife/wheelview/WheelView;->secondLineY:F

    sub-float v3, v3, v17

    move-object/from16 v0, p0

    iget v4, v0, Lcom/smalife/wheelview/WheelView;->measuredWidth:I

    int-to-float v4, v4

    float-to-int v5, v14

    int-to-float v5, v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 407
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v3, v4

    const v4, 0x3f4ccccd    # 0.8f

    mul-float/2addr v3, v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->scale(FF)V

    .line 408
    move-object/from16 v0, p0

    iget v2, v0, Lcom/smalife/wheelview/WheelView;->drawOutContentStart:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/smalife/wheelview/WheelView;->maxTextHeight:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/smalife/wheelview/WheelView;->paintOuterText:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v9, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 409
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_6

    .line 410
    :cond_f
    move-object/from16 v0, p0

    iget v2, v0, Lcom/smalife/wheelview/WheelView;->firstLineY:F

    cmpl-float v2, v17, v2

    if-ltz v2, :cond_10

    move-object/from16 v0, p0

    iget v2, v0, Lcom/smalife/wheelview/WheelView;->maxTextHeight:I

    int-to-float v2, v2

    add-float v2, v2, v17

    move-object/from16 v0, p0

    iget v3, v0, Lcom/smalife/wheelview/WheelView;->secondLineY:F

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_10

    .line 412
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/smalife/wheelview/WheelView;->measuredWidth:I

    float-to-int v5, v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 413
    move-object/from16 v0, p0

    iget v2, v0, Lcom/smalife/wheelview/WheelView;->drawCenterContentStart:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/smalife/wheelview/WheelView;->maxTextHeight:I

    int-to-float v3, v3

    const/high16 v4, 0x40c00000    # 6.0f

    sub-float/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/smalife/wheelview/WheelView;->paintCenterText:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v9, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 414
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smalife/wheelview/WheelView;->adapter:Lcom/smalife/wheelview/WheelAdapter;

    aget-object v3, v20, v10

    invoke-interface {v2, v3}, Lcom/smalife/wheelview/WheelAdapter;->indexOf(Ljava/lang/Object;)I

    move-result v16

    .line 415
    .local v16, "preSelectedItem":I
    const/4 v2, -0x1

    move/from16 v0, v16

    if-eq v0, v2, :cond_d

    .line 416
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/smalife/wheelview/WheelView;->selectedItem:I

    goto/16 :goto_6

    .line 420
    .end local v16    # "preSelectedItem":I
    :cond_10
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 421
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/smalife/wheelview/WheelView;->measuredWidth:I

    float-to-int v5, v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 422
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v3, v4

    const v4, 0x3f4ccccd    # 0.8f

    mul-float/2addr v3, v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->scale(FF)V

    .line 423
    move-object/from16 v0, p0

    iget v2, v0, Lcom/smalife/wheelview/WheelView;->drawOutContentStart:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/smalife/wheelview/WheelView;->maxTextHeight:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/smalife/wheelview/WheelView;->paintOuterText:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v9, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 424
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_6
.end method

.method protected final onItemSelected()V
    .locals 4

    .prologue
    .line 298
    iget-object v0, p0, Lcom/smalife/wheelview/WheelView;->onItemSelectedListener:Lcom/smalife/wheelview/OnItemSelectedListener;

    if-eqz v0, :cond_0

    .line 299
    new-instance v0, Lcom/smalife/wheelview/OnItemSelectedRunnable;

    invoke-direct {v0, p0}, Lcom/smalife/wheelview/OnItemSelectedRunnable;-><init>(Lcom/smalife/wheelview/WheelView;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {p0, v0, v2, v3}, Lcom/smalife/wheelview/WheelView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 301
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 491
    iput p1, p0, Lcom/smalife/wheelview/WheelView;->widthMeasureSpec:I

    .line 492
    invoke-direct {p0}, Lcom/smalife/wheelview/WheelView;->remeasure()V

    .line 493
    iget v0, p0, Lcom/smalife/wheelview/WheelView;->measuredWidth:I

    iget v1, p0, Lcom/smalife/wheelview/WheelView;->measuredHeight:I

    invoke-virtual {p0, v0, v1}, Lcom/smalife/wheelview/WheelView;->setMeasuredDimension(II)V

    .line 494
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 18
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 497
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/smalife/wheelview/WheelView;->gestureDetector:Landroid/view/GestureDetector;

    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    .line 498
    .local v5, "eventConsumed":Z
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v11

    packed-switch v11, :pswitch_data_0

    .line 530
    :pswitch_0
    if-nez v5, :cond_0

    .line 531
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    .line 532
    .local v10, "y":F
    move-object/from16 v0, p0

    iget v11, v0, Lcom/smalife/wheelview/WheelView;->radius:I

    int-to-float v11, v11

    sub-float/2addr v11, v10

    move-object/from16 v0, p0

    iget v12, v0, Lcom/smalife/wheelview/WheelView;->radius:I

    int-to-float v12, v12

    div-float/2addr v11, v12

    float-to-double v12, v11

    invoke-static {v12, v13}, Ljava/lang/Math;->acos(D)D

    move-result-wide v12

    move-object/from16 v0, p0

    iget v11, v0, Lcom/smalife/wheelview/WheelView;->radius:I

    int-to-double v14, v11

    mul-double v8, v12, v14

    .line 533
    .local v8, "l":D
    move-object/from16 v0, p0

    iget v11, v0, Lcom/smalife/wheelview/WheelView;->itemHeight:F

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v11, v12

    float-to-double v12, v11

    add-double/2addr v12, v8

    move-object/from16 v0, p0

    iget v11, v0, Lcom/smalife/wheelview/WheelView;->itemHeight:F

    float-to-double v14, v11

    div-double/2addr v12, v14

    double-to-int v3, v12

    .line 535
    .local v3, "circlePosition":I
    move-object/from16 v0, p0

    iget v11, v0, Lcom/smalife/wheelview/WheelView;->totalScrollY:I

    int-to-float v11, v11

    move-object/from16 v0, p0

    iget v12, v0, Lcom/smalife/wheelview/WheelView;->itemHeight:F

    rem-float/2addr v11, v12

    move-object/from16 v0, p0

    iget v12, v0, Lcom/smalife/wheelview/WheelView;->itemHeight:F

    add-float/2addr v11, v12

    move-object/from16 v0, p0

    iget v12, v0, Lcom/smalife/wheelview/WheelView;->itemHeight:F

    rem-float v6, v11, v12

    .line 536
    .local v6, "extraOffset":F
    move-object/from16 v0, p0

    iget v11, v0, Lcom/smalife/wheelview/WheelView;->itemsVisible:I

    div-int/lit8 v11, v11, 0x2

    sub-int v11, v3, v11

    int-to-float v11, v11

    move-object/from16 v0, p0

    iget v12, v0, Lcom/smalife/wheelview/WheelView;->itemHeight:F

    mul-float/2addr v11, v12

    sub-float/2addr v11, v6

    float-to-int v11, v11

    move-object/from16 v0, p0

    iput v11, v0, Lcom/smalife/wheelview/WheelView;->mOffset:I

    .line 538
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/smalife/wheelview/WheelView;->startTime:J

    sub-long/2addr v12, v14

    const-wide/16 v14, 0x78

    cmp-long v11, v12, v14

    if-lez v11, :cond_4

    .line 540
    sget-object v11, Lcom/smalife/wheelview/WheelView$ACTION;->DAGGLE:Lcom/smalife/wheelview/WheelView$ACTION;

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/smalife/wheelview/WheelView;->smoothScroll(Lcom/smalife/wheelview/WheelView$ACTION;)V

    .line 548
    .end local v3    # "circlePosition":I
    .end local v6    # "extraOffset":F
    .end local v8    # "l":D
    .end local v10    # "y":F
    :cond_0
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/smalife/wheelview/WheelView;->invalidate()V

    .line 550
    const/4 v11, 0x1

    return v11

    .line 500
    :pswitch_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/smalife/wheelview/WheelView;->startTime:J

    .line 501
    invoke-virtual/range {p0 .. p0}, Lcom/smalife/wheelview/WheelView;->cancelFuture()V

    .line 502
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v11

    move-object/from16 v0, p0

    iput v11, v0, Lcom/smalife/wheelview/WheelView;->previousY:F

    goto :goto_0

    .line 506
    :pswitch_2
    move-object/from16 v0, p0

    iget v11, v0, Lcom/smalife/wheelview/WheelView;->previousY:F

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v12

    sub-float v4, v11, v12

    .line 507
    .local v4, "dy":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v11

    move-object/from16 v0, p0

    iput v11, v0, Lcom/smalife/wheelview/WheelView;->previousY:F

    .line 508
    move-object/from16 v0, p0

    iget v11, v0, Lcom/smalife/wheelview/WheelView;->totalScrollY:I

    int-to-float v11, v11

    add-float/2addr v11, v4

    float-to-int v11, v11

    move-object/from16 v0, p0

    iput v11, v0, Lcom/smalife/wheelview/WheelView;->totalScrollY:I

    .line 511
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/smalife/wheelview/WheelView;->isLoop:Z

    if-nez v11, :cond_0

    .line 512
    move-object/from16 v0, p0

    iget v11, v0, Lcom/smalife/wheelview/WheelView;->initPosition:I

    neg-int v11, v11

    int-to-float v11, v11

    move-object/from16 v0, p0

    iget v12, v0, Lcom/smalife/wheelview/WheelView;->itemHeight:F

    mul-float v7, v11, v12

    .line 513
    .local v7, "top":F
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/smalife/wheelview/WheelView;->adapter:Lcom/smalife/wheelview/WheelAdapter;

    invoke-interface {v11}, Lcom/smalife/wheelview/WheelAdapter;->getItemsCount()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    move-object/from16 v0, p0

    iget v12, v0, Lcom/smalife/wheelview/WheelView;->initPosition:I

    sub-int/2addr v11, v12

    int-to-float v11, v11

    move-object/from16 v0, p0

    iget v12, v0, Lcom/smalife/wheelview/WheelView;->itemHeight:F

    mul-float v2, v11, v12

    .line 514
    .local v2, "bottom":F
    move-object/from16 v0, p0

    iget v11, v0, Lcom/smalife/wheelview/WheelView;->totalScrollY:I

    int-to-double v12, v11

    move-object/from16 v0, p0

    iget v11, v0, Lcom/smalife/wheelview/WheelView;->itemHeight:F

    float-to-double v14, v11

    const-wide v16, 0x3fd3333333333333L    # 0.3

    mul-double v14, v14, v16

    sub-double/2addr v12, v14

    float-to-double v14, v7

    cmpg-double v11, v12, v14

    if-gez v11, :cond_2

    .line 515
    move-object/from16 v0, p0

    iget v11, v0, Lcom/smalife/wheelview/WheelView;->totalScrollY:I

    int-to-float v11, v11

    sub-float v7, v11, v4

    .line 520
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget v11, v0, Lcom/smalife/wheelview/WheelView;->totalScrollY:I

    int-to-float v11, v11

    cmpg-float v11, v11, v7

    if-gez v11, :cond_3

    .line 521
    float-to-int v11, v7

    move-object/from16 v0, p0

    iput v11, v0, Lcom/smalife/wheelview/WheelView;->totalScrollY:I

    goto/16 :goto_0

    .line 516
    :cond_2
    move-object/from16 v0, p0

    iget v11, v0, Lcom/smalife/wheelview/WheelView;->totalScrollY:I

    int-to-double v12, v11

    move-object/from16 v0, p0

    iget v11, v0, Lcom/smalife/wheelview/WheelView;->itemHeight:F

    float-to-double v14, v11

    const-wide v16, 0x3fd3333333333333L    # 0.3

    mul-double v14, v14, v16

    add-double/2addr v12, v14

    float-to-double v14, v2

    cmpl-double v11, v12, v14

    if-lez v11, :cond_1

    .line 517
    move-object/from16 v0, p0

    iget v11, v0, Lcom/smalife/wheelview/WheelView;->totalScrollY:I

    int-to-float v11, v11

    sub-float v2, v11, v4

    goto :goto_1

    .line 522
    :cond_3
    move-object/from16 v0, p0

    iget v11, v0, Lcom/smalife/wheelview/WheelView;->totalScrollY:I

    int-to-float v11, v11

    cmpl-float v11, v11, v2

    if-lez v11, :cond_0

    .line 523
    float-to-int v11, v2

    move-object/from16 v0, p0

    iput v11, v0, Lcom/smalife/wheelview/WheelView;->totalScrollY:I

    goto/16 :goto_0

    .line 543
    .end local v2    # "bottom":F
    .end local v4    # "dy":F
    .end local v7    # "top":F
    .restart local v3    # "circlePosition":I
    .restart local v6    # "extraOffset":F
    .restart local v8    # "l":D
    .restart local v10    # "y":F
    :cond_4
    sget-object v11, Lcom/smalife/wheelview/WheelView$ACTION;->CLICK:Lcom/smalife/wheelview/WheelView$ACTION;

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/smalife/wheelview/WheelView;->smoothScroll(Lcom/smalife/wheelview/WheelView$ACTION;)V

    goto/16 :goto_0

    .line 498
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected final scrollBy(F)V
    .locals 7
    .param p1, "velocityY"    # F

    .prologue
    .line 240
    invoke-virtual {p0}, Lcom/smalife/wheelview/WheelView;->cancelFuture()V

    .line 242
    iget-object v0, p0, Lcom/smalife/wheelview/WheelView;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/smalife/wheelview/InertiaTimerTask;

    invoke-direct {v1, p0, p1}, Lcom/smalife/wheelview/InertiaTimerTask;-><init>(Lcom/smalife/wheelview/WheelView;F)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x5

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/smalife/wheelview/WheelView;->mFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 243
    return-void
.end method

.method public final setAdapter(Lcom/smalife/wheelview/WheelAdapter;I)V
    .locals 0
    .param p1, "adapter"    # Lcom/smalife/wheelview/WheelAdapter;
    .param p2, "res"    # I

    .prologue
    .line 279
    iput-object p1, p0, Lcom/smalife/wheelview/WheelView;->adapter:Lcom/smalife/wheelview/WheelAdapter;

    .line 280
    iput p2, p0, Lcom/smalife/wheelview/WheelView;->v_id:I

    .line 281
    invoke-direct {p0}, Lcom/smalife/wheelview/WheelView;->remeasure()V

    .line 282
    invoke-virtual {p0}, Lcom/smalife/wheelview/WheelView;->invalidate()V

    .line 283
    return-void
.end method

.method public final setCurrentItem(I)V
    .locals 1
    .param p1, "currentItem"    # I

    .prologue
    .line 269
    iput p1, p0, Lcom/smalife/wheelview/WheelView;->initPosition:I

    .line 270
    const/4 v0, 0x0

    iput v0, p0, Lcom/smalife/wheelview/WheelView;->totalScrollY:I

    .line 271
    invoke-virtual {p0}, Lcom/smalife/wheelview/WheelView;->invalidate()V

    .line 272
    return-void
.end method

.method public final setCyclic(Z)V
    .locals 0
    .param p1, "cyclic"    # Z

    .prologue
    .line 257
    iput-boolean p1, p0, Lcom/smalife/wheelview/WheelView;->isLoop:Z

    .line 258
    return-void
.end method

.method public setGravity(I)V
    .locals 0
    .param p1, "gravity"    # I

    .prologue
    .line 570
    iput p1, p0, Lcom/smalife/wheelview/WheelView;->mGravity:I

    .line 571
    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 0
    .param p1, "label"    # Ljava/lang/String;

    .prologue
    .line 566
    iput-object p1, p0, Lcom/smalife/wheelview/WheelView;->label:Ljava/lang/String;

    .line 567
    return-void
.end method

.method public final setOnItemSelectedListener(Lcom/smalife/wheelview/OnItemSelectedListener;)V
    .locals 0
    .param p1, "OnItemSelectedListener"    # Lcom/smalife/wheelview/OnItemSelectedListener;

    .prologue
    .line 275
    iput-object p1, p0, Lcom/smalife/wheelview/WheelView;->onItemSelectedListener:Lcom/smalife/wheelview/OnItemSelectedListener;

    .line 276
    return-void
.end method

.method public final setTextSize(F)V
    .locals 2
    .param p1, "size"    # F

    .prologue
    .line 261
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lcom/smalife/wheelview/WheelView;->customTextSize:Z

    if-nez v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/smalife/wheelview/WheelView;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, p1

    float-to-int v0, v0

    iput v0, p0, Lcom/smalife/wheelview/WheelView;->textSize:I

    .line 263
    iget-object v0, p0, Lcom/smalife/wheelview/WheelView;->paintOuterText:Landroid/graphics/Paint;

    iget v1, p0, Lcom/smalife/wheelview/WheelView;->textSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 264
    iget-object v0, p0, Lcom/smalife/wheelview/WheelView;->paintCenterText:Landroid/graphics/Paint;

    iget v1, p0, Lcom/smalife/wheelview/WheelView;->textSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 266
    :cond_0
    return-void
.end method

.method smoothScroll(Lcom/smalife/wheelview/WheelView$ACTION;)V
    .locals 7
    .param p1, "action"    # Lcom/smalife/wheelview/WheelView$ACTION;

    .prologue
    .line 226
    invoke-virtual {p0}, Lcom/smalife/wheelview/WheelView;->cancelFuture()V

    .line 227
    sget-object v0, Lcom/smalife/wheelview/WheelView$ACTION;->FLING:Lcom/smalife/wheelview/WheelView$ACTION;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/smalife/wheelview/WheelView$ACTION;->DAGGLE:Lcom/smalife/wheelview/WheelView$ACTION;

    if-ne p1, v0, :cond_1

    .line 228
    :cond_0
    iget v0, p0, Lcom/smalife/wheelview/WheelView;->totalScrollY:I

    int-to-float v0, v0

    iget v1, p0, Lcom/smalife/wheelview/WheelView;->itemHeight:F

    rem-float/2addr v0, v1

    iget v1, p0, Lcom/smalife/wheelview/WheelView;->itemHeight:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/smalife/wheelview/WheelView;->itemHeight:F

    rem-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/smalife/wheelview/WheelView;->mOffset:I

    .line 229
    iget v0, p0, Lcom/smalife/wheelview/WheelView;->mOffset:I

    int-to-float v0, v0

    iget v1, p0, Lcom/smalife/wheelview/WheelView;->itemHeight:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    .line 230
    iget v0, p0, Lcom/smalife/wheelview/WheelView;->itemHeight:F

    iget v1, p0, Lcom/smalife/wheelview/WheelView;->mOffset:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/smalife/wheelview/WheelView;->mOffset:I

    .line 236
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/smalife/wheelview/WheelView;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/smalife/wheelview/SmoothScrollTimerTask;

    iget v2, p0, Lcom/smalife/wheelview/WheelView;->mOffset:I

    invoke-direct {v1, p0, v2}, Lcom/smalife/wheelview/SmoothScrollTimerTask;-><init>(Lcom/smalife/wheelview/WheelView;I)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0xa

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/smalife/wheelview/WheelView;->mFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 237
    return-void

    .line 232
    :cond_2
    iget v0, p0, Lcom/smalife/wheelview/WheelView;->mOffset:I

    neg-int v0, v0

    iput v0, p0, Lcom/smalife/wheelview/WheelView;->mOffset:I

    goto :goto_0
.end method
