.class public Lcom/smalife/utils/LineChartView;
.super Landroid/view/View;
.source "LineChartView.java"


# static fields
.field public static final month_type:I = 0x30

.field public static final today_type:I = 0x10

.field public static final week_type:I = 0x20


# instance fields
.field AscComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/smalife/utils/SportPoint;",
            ">;"
        }
    .end annotation
.end field

.field IndexComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/smalife/utils/SportPoint;",
            ">;"
        }
    .end annotation
.end field

.field cPaint:Landroid/graphics/Paint;

.field comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/smalife/utils/SportPoint;",
            ">;"
        }
    .end annotation
.end field

.field private data_type:I

.field df:Ljava/text/DateFormat;

.field df1:Ljava/text/DateFormat;

.field private height:I

.field mMonth:I

.field public final margin_Y:I

.field public final margin_left:I

.field public final margin_right:I

.field public margin_top:I

.field max_steps:I

.field private mcontext:Landroid/content/Context;

.field private mlist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/smalife/utils/SportPoint;",
            ">;"
        }
    .end annotation
.end field

.field myPaint:Landroid/graphics/Paint;

.field private pointList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/smalife/utils/SportPoint;",
            ">;"
        }
    .end annotation
.end field

.field private sport:Lcom/smalife/db/entity/SportEntity;

.field private weekDays:[Ljava/lang/String;

.field private width:I

.field private xOffset:I

.field private yMarks:I

.field private yOffset:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/smalife/utils/LineChartView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x1

    .line 56
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    const/16 v0, 0x50

    iput v0, p0, Lcom/smalife/utils/LineChartView;->margin_left:I

    .line 29
    const/16 v0, 0x1e

    iput v0, p0, Lcom/smalife/utils/LineChartView;->margin_right:I

    .line 30
    const/16 v0, 0x3c

    iput v0, p0, Lcom/smalife/utils/LineChartView;->margin_Y:I

    .line 31
    const/16 v0, 0x32

    iput v0, p0, Lcom/smalife/utils/LineChartView;->margin_top:I

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lcom/smalife/utils/LineChartView;->max_steps:I

    .line 38
    const/4 v0, 0x5

    iput v0, p0, Lcom/smalife/utils/LineChartView;->yMarks:I

    .line 45
    const/16 v0, 0x10

    iput v0, p0, Lcom/smalife/utils/LineChartView;->data_type:I

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/smalife/utils/LineChartView;->pointList:Ljava/util/ArrayList;

    .line 47
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/smalife/utils/LineChartView;->myPaint:Landroid/graphics/Paint;

    .line 48
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/smalife/utils/LineChartView;->cPaint:Landroid/graphics/Paint;

    .line 304
    const/4 v0, -0x1

    iput v0, p0, Lcom/smalife/utils/LineChartView;->mMonth:I

    .line 305
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/smalife/utils/LineChartView;->df:Ljava/text/DateFormat;

    .line 306
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM.dd"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/smalife/utils/LineChartView;->df1:Ljava/text/DateFormat;

    .line 338
    new-instance v0, Lcom/smalife/utils/LineChartView$1;

    invoke-direct {v0, p0}, Lcom/smalife/utils/LineChartView$1;-><init>(Lcom/smalife/utils/LineChartView;)V

    iput-object v0, p0, Lcom/smalife/utils/LineChartView;->comparator:Ljava/util/Comparator;

    .line 350
    new-instance v0, Lcom/smalife/utils/LineChartView$2;

    invoke-direct {v0, p0}, Lcom/smalife/utils/LineChartView$2;-><init>(Lcom/smalife/utils/LineChartView;)V

    iput-object v0, p0, Lcom/smalife/utils/LineChartView;->AscComparator:Ljava/util/Comparator;

    .line 362
    new-instance v0, Lcom/smalife/utils/LineChartView$3;

    invoke-direct {v0, p0}, Lcom/smalife/utils/LineChartView$3;-><init>(Lcom/smalife/utils/LineChartView;)V

    iput-object v0, p0, Lcom/smalife/utils/LineChartView;->IndexComparator:Ljava/util/Comparator;

    .line 57
    iput-object p1, p0, Lcom/smalife/utils/LineChartView;->mcontext:Landroid/content/Context;

    .line 58
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0020

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/smalife/utils/LineChartView;->weekDays:[Ljava/lang/String;

    .line 59
    iget-object v0, p0, Lcom/smalife/utils/LineChartView;->myPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setDither(Z)V

    .line 60
    iget-object v0, p0, Lcom/smalife/utils/LineChartView;->myPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 61
    return-void
.end method

.method private getCurDate(I)Ljava/lang/String;
    .locals 6
    .param p1, "index_day"    # I

    .prologue
    const/4 v5, 0x5

    .line 312
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 313
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 314
    .local v1, "day":I
    add-int v4, v1, p1

    invoke-virtual {v0, v5, v4}, Ljava/util/Calendar;->set(II)V

    .line 315
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    .line 316
    .local v2, "dt":Ljava/util/Date;
    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 318
    .local v3, "m":I
    iget v4, p0, Lcom/smalife/utils/LineChartView;->mMonth:I

    if-ne v3, v4, :cond_0

    .line 319
    iget-object v4, p0, Lcom/smalife/utils/LineChartView;->df:Ljava/text/DateFormat;

    invoke-virtual {v4, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    .line 322
    :goto_0
    return-object v4

    .line 321
    :cond_0
    iput v3, p0, Lcom/smalife/utils/LineChartView;->mMonth:I

    .line 322
    iget-object v4, p0, Lcom/smalife/utils/LineChartView;->df1:Ljava/text/DateFormat;

    invoke-virtual {v4, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 40
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 66
    invoke-virtual/range {p0 .. p0}, Lcom/smalife/utils/LineChartView;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 67
    const-string v3, "window"

    .line 66
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Landroid/view/WindowManager;

    .line 68
    .local v37, "wm":Landroid/view/WindowManager;
    invoke-interface/range {v37 .. v37}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v13

    .line 69
    .local v13, "display":Landroid/view/Display;
    invoke-virtual {v13}, Landroid/view/Display;->getWidth()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/smalife/utils/LineChartView;->width:I

    .line 70
    invoke-virtual {v13}, Landroid/view/Display;->getHeight()I

    move-result v2

    add-int/lit8 v2, v2, -0x50

    move-object/from16 v0, p0

    iput v2, v0, Lcom/smalife/utils/LineChartView;->height:I

    .line 72
    move-object/from16 v0, p0

    iget v2, v0, Lcom/smalife/utils/LineChartView;->data_type:I

    const/16 v3, 0x10

    if-ne v2, v3, :cond_4

    .line 73
    move-object/from16 v0, p0

    iget v2, v0, Lcom/smalife/utils/LineChartView;->width:I

    add-int/lit8 v2, v2, -0x6e

    div-int/lit8 v2, v2, 0xd

    move-object/from16 v0, p0

    iput v2, v0, Lcom/smalife/utils/LineChartView;->xOffset:I

    .line 79
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/smalife/utils/LineChartView;->height:I

    int-to-double v2, v2

    const-wide v4, 0x3fe3333333333333L    # 0.6

    mul-double/2addr v2, v4

    double-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/smalife/utils/LineChartView;->yOffset:I

    .line 80
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smalife/utils/LineChartView;->myPaint:Landroid/graphics/Paint;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 81
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smalife/utils/LineChartView;->myPaint:Landroid/graphics/Paint;

    const/high16 v3, 0x40000000    # 2.0f

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 83
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smalife/utils/LineChartView;->cPaint:Landroid/graphics/Paint;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 85
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smalife/utils/LineChartView;->cPaint:Landroid/graphics/Paint;

    const/high16 v3, 0x41e00000    # 28.0f

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 86
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smalife/utils/LineChartView;->cPaint:Landroid/graphics/Paint;

    const/high16 v3, 0x40a00000    # 5.0f

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 88
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v9

    .line 89
    .local v9, "calendar":Ljava/util/Calendar;
    const/4 v2, 0x5

    invoke-virtual {v9, v2}, Ljava/util/Calendar;->get(I)I

    move-result v12

    .line 91
    .local v12, "days":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/smalife/utils/LineChartView;->width:I

    add-int/lit8 v2, v2, -0x6e

    div-int/lit8 v38, v2, 0x18

    .line 93
    .local v38, "x_Index":I
    const/high16 v3, 0x42a00000    # 80.0f

    move-object/from16 v0, p0

    iget v2, v0, Lcom/smalife/utils/LineChartView;->height:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/smalife/utils/LineChartView;->yOffset:I

    sub-int/2addr v2, v4

    add-int/lit8 v2, v2, 0x5

    int-to-float v4, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/smalife/utils/LineChartView;->width:I

    add-int/lit8 v2, v2, -0x2

    int-to-float v5, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/smalife/utils/LineChartView;->height:I

    .line 94
    move-object/from16 v0, p0

    iget v6, v0, Lcom/smalife/utils/LineChartView;->yOffset:I

    sub-int/2addr v2, v6

    add-int/lit8 v2, v2, 0x5

    int-to-float v6, v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/smalife/utils/LineChartView;->myPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    .line 93
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 96
    const/high16 v3, 0x42a00000    # 80.0f

    move-object/from16 v0, p0

    iget v2, v0, Lcom/smalife/utils/LineChartView;->height:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/smalife/utils/LineChartView;->yOffset:I

    sub-int/2addr v2, v4

    add-int/lit8 v2, v2, 0x5

    int-to-float v4, v2

    const/high16 v5, 0x42a00000    # 80.0f

    const/high16 v6, 0x40a00000    # 5.0f

    .line 97
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/smalife/utils/LineChartView;->myPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    .line 96
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 99
    move-object/from16 v0, p0

    iget v2, v0, Lcom/smalife/utils/LineChartView;->data_type:I

    const/16 v3, 0x10

    if-ne v2, v3, :cond_7

    .line 101
    const/4 v14, 0x0

    .local v14, "h":I
    :goto_1
    const/16 v2, 0xd

    if-lt v14, v2, :cond_6

    .line 141
    .end local v14    # "h":I
    :cond_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/smalife/utils/LineChartView;->height:I

    int-to-double v2, v2

    const-wide v4, 0x3fd999999999999aL    # 0.4

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4014000000000000L    # 5.0

    div-double/2addr v2, v4

    const-wide/high16 v4, 0x3fe8000000000000L    # 0.75

    mul-double/2addr v2, v4

    double-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/smalife/utils/LineChartView;->margin_top:I

    .line 142
    move-object/from16 v0, p0

    iget v2, v0, Lcom/smalife/utils/LineChartView;->height:I

    int-to-double v2, v2

    const-wide v4, 0x3fd999999999999aL    # 0.4

    mul-double/2addr v2, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/smalife/utils/LineChartView;->margin_top:I

    int-to-double v4, v4

    sub-double/2addr v2, v4

    const-wide/high16 v4, 0x4014000000000000L    # 5.0

    div-double/2addr v2, v4

    double-to-int v0, v2

    move/from16 v39, v0

    .line 144
    .local v39, "y_Index":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smalife/utils/LineChartView;->mlist:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smalife/utils/LineChartView;->mlist:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 145
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smalife/utils/LineChartView;->mlist:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smalife/utils/LineChartView;->comparator:Ljava/util/Comparator;

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 146
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smalife/utils/LineChartView;->mlist:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smalife/utils/SportPoint;

    invoke-virtual {v2}, Lcom/smalife/utils/SportPoint;->getSteps()I

    move-result v2

    const/16 v3, 0x1f4

    if-gt v2, v3, :cond_a

    const/16 v2, 0x1f4

    :goto_2
    move-object/from16 v0, p0

    iput v2, v0, Lcom/smalife/utils/LineChartView;->max_steps:I

    .line 151
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/smalife/utils/LineChartView;->yMarks:I

    move/from16 v20, v0

    .local v20, "marks":I
    :goto_3
    if-gtz v20, :cond_b

    .line 163
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smalife/utils/LineChartView;->mcontext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0901d7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 164
    .local v17, "km":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smalife/utils/LineChartView;->cPaint:Landroid/graphics/Paint;

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v18

    .line 165
    .local v18, "kmsize":F
    const/high16 v2, 0x41a00000    # 20.0f

    add-float v2, v2, v18

    move-object/from16 v0, p0

    iget v3, v0, Lcom/smalife/utils/LineChartView;->height:I

    .line 166
    move-object/from16 v0, p0

    iget v4, v0, Lcom/smalife/utils/LineChartView;->yOffset:I

    sub-int/2addr v3, v4

    mul-int/lit8 v4, v39, 0x6

    sub-int/2addr v3, v4

    mul-int/lit8 v4, v39, 0x2

    div-int/lit8 v4, v4, 0x5

    add-int/2addr v3, v4

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/smalife/utils/LineChartView;->cPaint:Landroid/graphics/Paint;

    .line 165
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 169
    move-object/from16 v0, p0

    iget v2, v0, Lcom/smalife/utils/LineChartView;->height:I

    int-to-double v2, v2

    const-wide v4, 0x3fd999999999999aL    # 0.4

    mul-double/2addr v2, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/smalife/utils/LineChartView;->margin_top:I

    int-to-double v4, v4

    sub-double/2addr v2, v4

    double-to-int v8, v2

    .line 171
    .local v8, "YLength":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/smalife/utils/LineChartView;->max_steps:I

    div-int/2addr v2, v8

    if-gtz v2, :cond_d

    const/4 v15, 0x1

    .line 173
    .local v15, "index_num":I
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smalife/utils/LineChartView;->mlist:Ljava/util/ArrayList;

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smalife/utils/LineChartView;->mlist:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 174
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smalife/utils/LineChartView;->mlist:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v19

    .line 175
    .local v19, "len":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/smalife/utils/LineChartView;->data_type:I

    const/16 v3, 0x10

    if-ne v2, v3, :cond_e

    .line 176
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smalife/utils/LineChartView;->mlist:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smalife/utils/LineChartView;->AscComparator:Ljava/util/Comparator;

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 180
    :goto_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smalife/utils/LineChartView;->mlist:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smalife/utils/LineChartView;->mlist:Ljava/util/ArrayList;

    add-int/lit8 v4, v19, -0x1

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smalife/utils/SportPoint;

    move/from16 v0, v19

    invoke-virtual {v3, v0, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 183
    const/16 v31, 0x0

    .line 184
    .local v31, "todayStopX":I
    const/16 v30, 0x0

    .line 185
    .local v30, "todatStopY":I
    const/16 v32, 0x0

    .line 187
    .local v32, "todayTemp":I
    const/16 v34, 0x0

    .line 188
    .local v34, "weekStopX":I
    const/16 v35, 0x0

    .line 189
    .local v35, "weekStopY":I
    const/16 v36, 0x0

    .line 191
    .local v36, "weekTemp":I
    const/16 v27, 0x0

    .line 192
    .local v27, "tenStopX":I
    const/16 v28, 0x0

    .line 193
    .local v28, "tenStopY":I
    const/16 v29, 0x0

    .line 194
    .local v29, "tenTemp":I
    const/16 v21, 0x0

    .local v21, "p":I
    :goto_6
    move/from16 v0, v21

    move/from16 v1, v19

    if-lt v0, v1, :cond_f

    .line 302
    .end local v19    # "len":I
    .end local v21    # "p":I
    .end local v27    # "tenStopX":I
    .end local v28    # "tenStopY":I
    .end local v29    # "tenTemp":I
    .end local v30    # "todatStopY":I
    .end local v31    # "todayStopX":I
    .end local v32    # "todayTemp":I
    .end local v34    # "weekStopX":I
    .end local v35    # "weekStopY":I
    .end local v36    # "weekTemp":I
    :cond_3
    return-void

    .line 74
    .end local v8    # "YLength":I
    .end local v9    # "calendar":Ljava/util/Calendar;
    .end local v12    # "days":I
    .end local v15    # "index_num":I
    .end local v17    # "km":Ljava/lang/String;
    .end local v18    # "kmsize":F
    .end local v20    # "marks":I
    .end local v38    # "x_Index":I
    .end local v39    # "y_Index":I
    :cond_4
    move-object/from16 v0, p0

    iget v2, v0, Lcom/smalife/utils/LineChartView;->data_type:I

    const/16 v3, 0x20

    if-ne v2, v3, :cond_5

    .line 75
    move-object/from16 v0, p0

    iget v2, v0, Lcom/smalife/utils/LineChartView;->width:I

    add-int/lit8 v2, v2, -0x6e

    div-int/lit8 v2, v2, 0x7

    move-object/from16 v0, p0

    iput v2, v0, Lcom/smalife/utils/LineChartView;->xOffset:I

    goto/16 :goto_0

    .line 76
    :cond_5
    move-object/from16 v0, p0

    iget v2, v0, Lcom/smalife/utils/LineChartView;->data_type:I

    const/16 v3, 0x30

    if-ne v2, v3, :cond_0

    .line 77
    move-object/from16 v0, p0

    iget v2, v0, Lcom/smalife/utils/LineChartView;->width:I

    add-int/lit8 v2, v2, -0x6e

    div-int/lit8 v2, v2, 0x1e

    move-object/from16 v0, p0

    iput v2, v0, Lcom/smalife/utils/LineChartView;->xOffset:I

    goto/16 :goto_0

    .line 102
    .restart local v9    # "calendar":Ljava/util/Calendar;
    .restart local v12    # "days":I
    .restart local v14    # "h":I
    .restart local v38    # "x_Index":I
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smalife/utils/LineChartView;->cPaint:Landroid/graphics/Paint;

    mul-int/lit8 v3, v14, 0x2

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v23

    .line 103
    .local v23, "size":F
    move-object/from16 v0, p0

    iget v2, v0, Lcom/smalife/utils/LineChartView;->xOffset:I

    add-int/lit8 v3, v14, 0x1

    mul-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x50

    int-to-float v3, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/smalife/utils/LineChartView;->height:I

    .line 104
    move-object/from16 v0, p0

    iget v4, v0, Lcom/smalife/utils/LineChartView;->yOffset:I

    sub-int/2addr v2, v4

    add-int/lit8 v2, v2, 0x5

    int-to-float v4, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/smalife/utils/LineChartView;->xOffset:I

    add-int/lit8 v5, v14, 0x1

    mul-int/2addr v2, v5

    add-int/lit8 v2, v2, 0x50

    int-to-float v5, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/smalife/utils/LineChartView;->height:I

    .line 105
    move-object/from16 v0, p0

    iget v6, v0, Lcom/smalife/utils/LineChartView;->yOffset:I

    sub-int/2addr v2, v6

    add-int/lit8 v2, v2, -0x5

    int-to-float v6, v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/smalife/utils/LineChartView;->myPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    .line 103
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 106
    mul-int/lit8 v2, v14, 0x2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/smalife/utils/LineChartView;->xOffset:I

    .line 107
    add-int/lit8 v4, v14, 0x1

    mul-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x50

    int-to-float v3, v3

    .line 108
    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v23, v4

    sub-float/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/smalife/utils/LineChartView;->height:I

    add-int/lit8 v4, v4, 0x23

    move-object/from16 v0, p0

    iget v5, v0, Lcom/smalife/utils/LineChartView;->yOffset:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/smalife/utils/LineChartView;->cPaint:Landroid/graphics/Paint;

    .line 106
    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 101
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_1

    .line 110
    .end local v14    # "h":I
    .end local v23    # "size":F
    :cond_7
    move-object/from16 v0, p0

    iget v2, v0, Lcom/smalife/utils/LineChartView;->data_type:I

    const/16 v3, 0x20

    if-ne v2, v3, :cond_8

    .line 112
    const/16 v33, 0x0

    .line 113
    .local v33, "w":I
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/smalife/utils/LineChartView;->mMonth:I

    .line 114
    const/4 v14, -0x6

    .restart local v14    # "h":I
    :goto_7
    if-gtz v14, :cond_1

    .line 115
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/smalife/utils/LineChartView;->getCurDate(I)Ljava/lang/String;

    move-result-object v10

    .line 116
    .local v10, "day":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smalife/utils/LineChartView;->cPaint:Landroid/graphics/Paint;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v23

    .line 117
    .restart local v23    # "size":F
    move-object/from16 v0, p0

    iget v2, v0, Lcom/smalife/utils/LineChartView;->xOffset:I

    add-int/lit8 v3, v33, 0x1

    mul-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x50

    int-to-float v3, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/smalife/utils/LineChartView;->height:I

    .line 118
    move-object/from16 v0, p0

    iget v4, v0, Lcom/smalife/utils/LineChartView;->yOffset:I

    sub-int/2addr v2, v4

    add-int/lit8 v2, v2, 0x5

    int-to-float v4, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/smalife/utils/LineChartView;->xOffset:I

    add-int/lit8 v5, v33, 0x1

    mul-int/2addr v2, v5

    add-int/lit8 v2, v2, 0x50

    int-to-float v5, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/smalife/utils/LineChartView;->height:I

    .line 119
    move-object/from16 v0, p0

    iget v6, v0, Lcom/smalife/utils/LineChartView;->yOffset:I

    sub-int/2addr v2, v6

    add-int/lit8 v2, v2, -0x5

    int-to-float v6, v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/smalife/utils/LineChartView;->myPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    .line 117
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 120
    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/smalife/utils/LineChartView;->xOffset:I

    .line 121
    add-int/lit8 v4, v33, 0x1

    mul-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x50

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v23, v4

    sub-float/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/smalife/utils/LineChartView;->height:I

    add-int/lit8 v4, v4, 0x23

    move-object/from16 v0, p0

    iget v5, v0, Lcom/smalife/utils/LineChartView;->yOffset:I

    sub-int/2addr v4, v5

    add-int/lit8 v4, v4, -0x5

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/smalife/utils/LineChartView;->cPaint:Landroid/graphics/Paint;

    .line 120
    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 122
    add-int/lit8 v33, v33, 0x1

    .line 114
    add-int/lit8 v14, v14, 0x1

    goto :goto_7

    .line 124
    .end local v10    # "day":Ljava/lang/String;
    .end local v14    # "h":I
    .end local v23    # "size":F
    .end local v33    # "w":I
    :cond_8
    move-object/from16 v0, p0

    iget v2, v0, Lcom/smalife/utils/LineChartView;->data_type:I

    const/16 v3, 0x30

    if-ne v2, v3, :cond_1

    .line 126
    const/16 v26, 0x0

    .line 127
    .local v26, "t":I
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/smalife/utils/LineChartView;->mMonth:I

    .line 128
    const/16 v14, -0x1d

    .restart local v14    # "h":I
    :goto_8
    if-gtz v14, :cond_1

    .line 129
    rem-int/lit8 v2, v14, 0x7

    if-nez v2, :cond_9

    .line 130
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/smalife/utils/LineChartView;->getCurDate(I)Ljava/lang/String;

    move-result-object v10

    .line 131
    .restart local v10    # "day":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smalife/utils/LineChartView;->cPaint:Landroid/graphics/Paint;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v23

    .line 132
    .restart local v23    # "size":F
    move-object/from16 v0, p0

    iget v2, v0, Lcom/smalife/utils/LineChartView;->xOffset:I

    add-int/lit8 v3, v26, 0x1

    mul-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x50

    int-to-float v3, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/smalife/utils/LineChartView;->height:I

    .line 133
    move-object/from16 v0, p0

    iget v4, v0, Lcom/smalife/utils/LineChartView;->yOffset:I

    sub-int/2addr v2, v4

    add-int/lit8 v2, v2, 0x5

    int-to-float v4, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/smalife/utils/LineChartView;->xOffset:I

    add-int/lit8 v5, v26, 0x1

    mul-int/2addr v2, v5

    add-int/lit8 v2, v2, 0x50

    int-to-float v5, v2

    .line 134
    move-object/from16 v0, p0

    iget v2, v0, Lcom/smalife/utils/LineChartView;->height:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/smalife/utils/LineChartView;->yOffset:I

    sub-int/2addr v2, v6

    add-int/lit8 v2, v2, -0x5

    int-to-float v6, v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/smalife/utils/LineChartView;->myPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    .line 132
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 135
    move-object/from16 v0, p0

    iget v2, v0, Lcom/smalife/utils/LineChartView;->xOffset:I

    add-int/lit8 v3, v26, 0x1

    mul-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x50

    int-to-float v2, v2

    .line 136
    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, v23, v3

    sub-float/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/smalife/utils/LineChartView;->height:I

    add-int/lit8 v3, v3, 0x23

    move-object/from16 v0, p0

    iget v4, v0, Lcom/smalife/utils/LineChartView;->yOffset:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/smalife/utils/LineChartView;->cPaint:Landroid/graphics/Paint;

    .line 135
    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 138
    .end local v10    # "day":Ljava/lang/String;
    .end local v23    # "size":F
    :cond_9
    add-int/lit8 v26, v26, 0x1

    .line 128
    add-int/lit8 v14, v14, 0x1

    goto :goto_8

    .line 146
    .end local v14    # "h":I
    .end local v26    # "t":I
    .restart local v39    # "y_Index":I
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smalife/utils/LineChartView;->mlist:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smalife/utils/SportPoint;

    .line 147
    invoke-virtual {v2}, Lcom/smalife/utils/SportPoint;->getSteps()I

    move-result v2

    goto/16 :goto_2

    .line 153
    .restart local v20    # "marks":I
    :cond_b
    const/16 v16, 0x0

    .local v16, "j":I
    :goto_9
    const/16 v2, 0x18

    move/from16 v0, v16

    if-lt v0, v2, :cond_c

    .line 159
    move-object/from16 v0, p0

    iget v2, v0, Lcom/smalife/utils/LineChartView;->max_steps:I

    div-int/lit8 v2, v2, 0x5

    mul-int v2, v2, v20

    div-int/lit8 v2, v2, 0xa

    int-to-float v2, v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-double v2, v2

    .line 160
    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    .line 159
    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    .line 160
    const/high16 v3, 0x41a00000    # 20.0f

    move-object/from16 v0, p0

    iget v4, v0, Lcom/smalife/utils/LineChartView;->height:I

    .line 161
    move-object/from16 v0, p0

    iget v5, v0, Lcom/smalife/utils/LineChartView;->yOffset:I

    sub-int/2addr v4, v5

    mul-int v5, v39, v20

    sub-int/2addr v4, v5

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/smalife/utils/LineChartView;->cPaint:Landroid/graphics/Paint;

    .line 158
    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 151
    add-int/lit8 v20, v20, -0x1

    goto/16 :goto_3

    .line 154
    :cond_c
    mul-int v2, v38, v16

    add-int/lit8 v2, v2, 0x50

    add-int/lit8 v2, v2, 0x5

    int-to-float v3, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/smalife/utils/LineChartView;->height:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/smalife/utils/LineChartView;->yOffset:I

    sub-int/2addr v2, v4

    .line 155
    mul-int v4, v39, v20

    sub-int/2addr v2, v4

    int-to-float v4, v2

    add-int/lit8 v2, v16, 0x1

    mul-int v2, v2, v38

    add-int/lit8 v2, v2, 0x50

    int-to-float v5, v2

    .line 156
    move-object/from16 v0, p0

    iget v2, v0, Lcom/smalife/utils/LineChartView;->height:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/smalife/utils/LineChartView;->yOffset:I

    sub-int/2addr v2, v6

    mul-int v6, v39, v20

    sub-int/2addr v2, v6

    int-to-float v6, v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/smalife/utils/LineChartView;->myPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    .line 154
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 153
    add-int/lit8 v16, v16, 0x1

    goto :goto_9

    .line 172
    .end local v16    # "j":I
    .restart local v8    # "YLength":I
    .restart local v17    # "km":Ljava/lang/String;
    .restart local v18    # "kmsize":F
    :cond_d
    move-object/from16 v0, p0

    iget v2, v0, Lcom/smalife/utils/LineChartView;->max_steps:I

    div-int v15, v2, v8

    goto/16 :goto_4

    .line 178
    .restart local v15    # "index_num":I
    .restart local v19    # "len":I
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smalife/utils/LineChartView;->mlist:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smalife/utils/LineChartView;->IndexComparator:Ljava/util/Comparator;

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto/16 :goto_5

    .line 195
    .restart local v21    # "p":I
    .restart local v27    # "tenStopX":I
    .restart local v28    # "tenStopY":I
    .restart local v29    # "tenTemp":I
    .restart local v30    # "todatStopY":I
    .restart local v31    # "todayStopX":I
    .restart local v32    # "todayTemp":I
    .restart local v34    # "weekStopX":I
    .restart local v35    # "weekStopY":I
    .restart local v36    # "weekTemp":I
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smalife/utils/LineChartView;->mlist:Ljava/util/ArrayList;

    move/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smalife/utils/SportPoint;

    invoke-virtual {v2}, Lcom/smalife/utils/SportPoint;->getAction_time()I

    move-result v14

    .line 196
    .restart local v14    # "h":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smalife/utils/LineChartView;->mlist:Ljava/util/ArrayList;

    move/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smalife/utils/SportPoint;

    invoke-virtual {v2}, Lcom/smalife/utils/SportPoint;->getSteps()I

    move-result v22

    .line 197
    .local v22, "pre_steps":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/smalife/utils/LineChartView;->data_type:I

    const/16 v3, 0x10

    if-ne v2, v3, :cond_12

    .line 198
    if-lez v22, :cond_11

    .line 199
    move-object/from16 v0, p0

    iget v2, v0, Lcom/smalife/utils/LineChartView;->xOffset:I

    div-int/lit8 v3, v14, 0x2

    mul-int/2addr v2, v3

    add-int/lit8 v24, v2, 0x50

    .line 200
    .local v24, "startX":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/smalife/utils/LineChartView;->height:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/smalife/utils/LineChartView;->yOffset:I

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x5

    .line 201
    mul-int v3, v8, v22

    move-object/from16 v0, p0

    iget v4, v0, Lcom/smalife/utils/LineChartView;->max_steps:I

    div-int/2addr v3, v4

    .line 200
    sub-int v25, v2, v3

    .line 202
    .local v25, "startY":I
    move/from16 v0, v24

    int-to-float v2, v0

    move/from16 v0, v25

    int-to-float v3, v0

    const/high16 v4, 0x40a00000    # 5.0f

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/smalife/utils/LineChartView;->myPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 204
    if-lez v32, :cond_10

    .line 205
    move/from16 v0, v31

    int-to-float v3, v0

    move/from16 v0, v30

    int-to-float v4, v0

    move/from16 v0, v24

    int-to-float v5, v0

    .line 206
    move/from16 v0, v25

    int-to-float v6, v0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/smalife/utils/LineChartView;->myPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    .line 205
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 208
    :cond_10
    move/from16 v31, v24

    .line 209
    move/from16 v30, v25

    .line 210
    add-int/lit8 v32, v32, 0x1

    .line 194
    .end local v24    # "startX":I
    .end local v25    # "startY":I
    :cond_11
    :goto_a
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_6

    .line 236
    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smalife/utils/LineChartView;->mlist:Ljava/util/ArrayList;

    move/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smalife/utils/SportPoint;

    invoke-virtual {v2}, Lcom/smalife/utils/SportPoint;->getDay_key()I

    move-result v11

    .line 239
    .local v11, "day_index":I
    const/4 v2, 0x1

    move/from16 v0, v19

    if-le v0, v2, :cond_11

    .line 240
    move-object/from16 v0, p0

    iget v2, v0, Lcom/smalife/utils/LineChartView;->data_type:I

    const/16 v3, 0x30

    if-ne v2, v3, :cond_14

    .line 246
    if-lez v22, :cond_14

    .line 247
    move-object/from16 v0, p0

    iget v2, v0, Lcom/smalife/utils/LineChartView;->xOffset:I

    .line 248
    add-int/lit8 v3, v11, 0x1

    mul-int/2addr v2, v3

    .line 247
    add-int/lit8 v24, v2, 0x50

    .line 251
    .restart local v24    # "startX":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/smalife/utils/LineChartView;->height:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/smalife/utils/LineChartView;->yOffset:I

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x5

    .line 252
    mul-int v3, v8, v22

    move-object/from16 v0, p0

    iget v4, v0, Lcom/smalife/utils/LineChartView;->max_steps:I

    div-int/2addr v3, v4

    .line 251
    sub-int v25, v2, v3

    .line 253
    .restart local v25    # "startY":I
    move/from16 v0, v24

    int-to-float v2, v0

    move/from16 v0, v25

    int-to-float v3, v0

    const/high16 v4, 0x40a00000    # 5.0f

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/smalife/utils/LineChartView;->myPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 257
    if-lez v29, :cond_13

    .line 258
    move/from16 v0, v27

    int-to-float v3, v0

    move/from16 v0, v28

    int-to-float v4, v0

    move/from16 v0, v24

    int-to-float v5, v0

    .line 259
    move/from16 v0, v25

    int-to-float v6, v0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/smalife/utils/LineChartView;->myPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    .line 258
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 261
    :cond_13
    move/from16 v27, v24

    .line 262
    move/from16 v28, v25

    .line 263
    add-int/lit8 v29, v29, 0x1

    .line 266
    .end local v24    # "startX":I
    .end local v25    # "startY":I
    :cond_14
    move-object/from16 v0, p0

    iget v2, v0, Lcom/smalife/utils/LineChartView;->data_type:I

    const/16 v3, 0x20

    if-ne v2, v3, :cond_11

    .line 277
    if-lez v22, :cond_11

    .line 278
    move-object/from16 v0, p0

    iget v2, v0, Lcom/smalife/utils/LineChartView;->xOffset:I

    .line 279
    add-int/lit8 v3, v11, 0x1

    mul-int/2addr v2, v3

    .line 278
    add-int/lit8 v24, v2, 0x50

    .line 280
    .restart local v24    # "startX":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/smalife/utils/LineChartView;->height:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/smalife/utils/LineChartView;->yOffset:I

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x5

    .line 281
    mul-int v3, v8, v22

    move-object/from16 v0, p0

    iget v4, v0, Lcom/smalife/utils/LineChartView;->max_steps:I

    div-int/2addr v3, v4

    .line 280
    sub-int v25, v2, v3

    .line 282
    .restart local v25    # "startY":I
    move/from16 v0, v24

    int-to-float v2, v0

    move/from16 v0, v25

    int-to-float v3, v0

    const/high16 v4, 0x40a00000    # 5.0f

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/smalife/utils/LineChartView;->myPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 286
    if-lez v36, :cond_15

    .line 287
    move/from16 v0, v34

    int-to-float v3, v0

    move/from16 v0, v35

    int-to-float v4, v0

    .line 288
    move/from16 v0, v24

    int-to-float v5, v0

    move/from16 v0, v25

    int-to-float v6, v0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/smalife/utils/LineChartView;->myPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    .line 287
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 290
    :cond_15
    move/from16 v34, v24

    .line 291
    move/from16 v35, v25

    .line 292
    add-int/lit8 v36, v36, 0x1

    goto/16 :goto_a
.end method

.method public px2dip(F)I
    .locals 3
    .param p1, "pxValue"    # F

    .prologue
    .line 378
    iget-object v1, p0, Lcom/smalife/utils/LineChartView;->mcontext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 379
    .local v0, "scale":F
    div-float v1, p1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method public redrawLine(Ljava/util/ArrayList;I)V
    .locals 0
    .param p2, "dt"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/smalife/utils/SportPoint;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 332
    .local p1, "slist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smalife/utils/SportPoint;>;"
    iput-object p1, p0, Lcom/smalife/utils/LineChartView;->mlist:Ljava/util/ArrayList;

    .line 333
    iput p2, p0, Lcom/smalife/utils/LineChartView;->data_type:I

    .line 334
    invoke-virtual {p0}, Lcom/smalife/utils/LineChartView;->invalidate()V

    .line 336
    return-void
.end method
