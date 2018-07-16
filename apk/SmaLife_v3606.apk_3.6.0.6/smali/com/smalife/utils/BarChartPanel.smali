.class public Lcom/smalife/utils/BarChartPanel;
.super Landroid/view/View;
.source "BarChartPanel.java"


# instance fields
.field public final bad_level:I

.field private height:I

.field private mlist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/smalife/entity/SleepStatusObject;",
            ">;"
        }
    .end annotation
.end field

.field myPaint:Landroid/graphics/Paint;

.field public final normal_level:I

.field public final severy_level:I

.field private wakeup_time:J

.field private width:I

.field private xOffset:F

.field private yOffset:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 18
    const/4 v0, 0x0

    iput v0, p0, Lcom/smalife/utils/BarChartPanel;->bad_level:I

    .line 19
    const/16 v0, 0x10

    iput v0, p0, Lcom/smalife/utils/BarChartPanel;->severy_level:I

    .line 20
    const/16 v0, 0x20

    iput v0, p0, Lcom/smalife/utils/BarChartPanel;->normal_level:I

    .line 24
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/smalife/utils/BarChartPanel;->myPaint:Landroid/graphics/Paint;

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    const/4 v0, 0x0

    iput v0, p0, Lcom/smalife/utils/BarChartPanel;->bad_level:I

    .line 19
    const/16 v0, 0x10

    iput v0, p0, Lcom/smalife/utils/BarChartPanel;->severy_level:I

    .line 20
    const/16 v0, 0x20

    iput v0, p0, Lcom/smalife/utils/BarChartPanel;->normal_level:I

    .line 24
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/smalife/utils/BarChartPanel;->myPaint:Landroid/graphics/Paint;

    .line 33
    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 29
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 38
    invoke-virtual/range {p0 .. p0}, Lcom/smalife/utils/BarChartPanel;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 39
    const-string v3, "window"

    .line 38
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Landroid/view/WindowManager;

    .line 40
    .local v28, "wm":Landroid/view/WindowManager;
    invoke-interface/range {v28 .. v28}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v8

    .line 41
    .local v8, "display":Landroid/view/Display;
    invoke-virtual {v8}, Landroid/view/Display;->getWidth()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/smalife/utils/BarChartPanel;->width:I

    .line 42
    invoke-virtual {v8}, Landroid/view/Display;->getHeight()I

    move-result v2

    add-int/lit8 v2, v2, -0x50

    move-object/from16 v0, p0

    iput v2, v0, Lcom/smalife/utils/BarChartPanel;->height:I

    .line 45
    move-object/from16 v0, p0

    iget v2, v0, Lcom/smalife/utils/BarChartPanel;->width:I

    add-int/lit16 v2, v2, -0xa0

    int-to-float v2, v2

    const v3, 0x3ea8f5c3    # 0.33f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/smalife/utils/BarChartPanel;->xOffset:F

    .line 46
    move-object/from16 v0, p0

    iget v2, v0, Lcom/smalife/utils/BarChartPanel;->height:I

    int-to-double v2, v2

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v2, v4

    double-to-int v2, v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/smalife/utils/BarChartPanel;->yOffset:F

    .line 47
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smalife/utils/BarChartPanel;->myPaint:Landroid/graphics/Paint;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 48
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smalife/utils/BarChartPanel;->myPaint:Landroid/graphics/Paint;

    const/high16 v3, 0x40000000    # 2.0f

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 49
    const/16 v21, 0x0

    .local v21, "j":I
    :goto_0
    const/4 v2, 0x4

    move/from16 v0, v21

    if-le v0, v2, :cond_1

    .line 53
    const/high16 v3, 0x40000000    # 2.0f

    move-object/from16 v0, p0

    iget v2, v0, Lcom/smalife/utils/BarChartPanel;->height:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/smalife/utils/BarChartPanel;->yOffset:F

    sub-float/2addr v2, v4

    const/high16 v4, 0x40a00000    # 5.0f

    add-float/2addr v4, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/smalife/utils/BarChartPanel;->width:I

    add-int/lit8 v2, v2, -0x2

    int-to-float v5, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/smalife/utils/BarChartPanel;->height:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v6, v0, Lcom/smalife/utils/BarChartPanel;->yOffset:F

    sub-float/2addr v2, v6

    .line 54
    const/high16 v6, 0x40a00000    # 5.0f

    add-float/2addr v6, v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/smalife/utils/BarChartPanel;->myPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    .line 53
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 55
    const/16 v26, 0x23

    .line 56
    .local v26, "tsize":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smalife/utils/BarChartPanel;->myPaint:Landroid/graphics/Paint;

    move/from16 v0, v26

    int-to-float v3, v0

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 57
    const-string v17, "22:00"

    .line 58
    .local v17, "index_name_1":Ljava/lang/String;
    const-string v18, "02:00"

    .line 59
    .local v18, "index_name_2":Ljava/lang/String;
    const-string v19, "06:00"

    .line 60
    .local v19, "index_name_3":Ljava/lang/String;
    const-string v20, "10:00"

    .line 61
    .local v20, "index_name_4":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smalife/utils/BarChartPanel;->myPaint:Landroid/graphics/Paint;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v11

    .line 62
    .local v11, "index_1":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smalife/utils/BarChartPanel;->myPaint:Landroid/graphics/Paint;

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v14

    .line 63
    .local v14, "index_2":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smalife/utils/BarChartPanel;->myPaint:Landroid/graphics/Paint;

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v15

    .line 64
    .local v15, "index_3":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smalife/utils/BarChartPanel;->myPaint:Landroid/graphics/Paint;

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v16

    .line 65
    .local v16, "index_4":F
    const/high16 v2, 0x42a00000    # 80.0f

    move-object/from16 v0, p0

    iget v3, v0, Lcom/smalife/utils/BarChartPanel;->xOffset:F

    const/4 v4, 0x0

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, v11, v3

    sub-float/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/smalife/utils/BarChartPanel;->height:I

    .line 66
    add-int/lit8 v3, v3, 0x28

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/smalife/utils/BarChartPanel;->yOffset:F

    sub-float/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/smalife/utils/BarChartPanel;->myPaint:Landroid/graphics/Paint;

    .line 65
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 67
    const/high16 v2, 0x42a00000    # 80.0f

    move-object/from16 v0, p0

    iget v3, v0, Lcom/smalife/utils/BarChartPanel;->xOffset:F

    const/high16 v4, 0x3f800000    # 1.0f

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, v14, v3

    sub-float/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/smalife/utils/BarChartPanel;->height:I

    .line 68
    add-int/lit8 v3, v3, 0x28

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/smalife/utils/BarChartPanel;->yOffset:F

    sub-float/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/smalife/utils/BarChartPanel;->myPaint:Landroid/graphics/Paint;

    .line 67
    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 69
    const/high16 v2, 0x42a00000    # 80.0f

    move-object/from16 v0, p0

    iget v3, v0, Lcom/smalife/utils/BarChartPanel;->xOffset:F

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, v15, v3

    sub-float/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/smalife/utils/BarChartPanel;->height:I

    .line 70
    add-int/lit8 v3, v3, 0x28

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/smalife/utils/BarChartPanel;->yOffset:F

    sub-float/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/smalife/utils/BarChartPanel;->myPaint:Landroid/graphics/Paint;

    .line 69
    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 71
    const/high16 v2, 0x42a00000    # 80.0f

    move-object/from16 v0, p0

    iget v3, v0, Lcom/smalife/utils/BarChartPanel;->xOffset:F

    const/high16 v4, 0x40400000    # 3.0f

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, v16, v3

    sub-float/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/smalife/utils/BarChartPanel;->height:I

    .line 72
    add-int/lit8 v3, v3, 0x28

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/smalife/utils/BarChartPanel;->yOffset:F

    sub-float/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/smalife/utils/BarChartPanel;->myPaint:Landroid/graphics/Paint;

    .line 71
    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 74
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smalife/utils/BarChartPanel;->mlist:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 75
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smalife/utils/BarChartPanel;->mlist:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v22

    .line 76
    .local v22, "len":I
    const/16 v25, 0x0

    .line 77
    .local v25, "start_time":I
    const/4 v10, 0x0

    .line 78
    .local v10, "end_time":I
    const/16 v23, 0x0

    .local v23, "m":I
    :goto_1
    move/from16 v0, v23

    move/from16 v1, v22

    if-lt v0, v1, :cond_2

    .line 119
    .end local v10    # "end_time":I
    .end local v22    # "len":I
    .end local v23    # "m":I
    .end local v25    # "start_time":I
    :cond_0
    return-void

    .line 50
    .end local v11    # "index_1":F
    .end local v14    # "index_2":F
    .end local v15    # "index_3":F
    .end local v16    # "index_4":F
    .end local v17    # "index_name_1":Ljava/lang/String;
    .end local v18    # "index_name_2":Ljava/lang/String;
    .end local v19    # "index_name_3":Ljava/lang/String;
    .end local v20    # "index_name_4":Ljava/lang/String;
    .end local v26    # "tsize":I
    :cond_1
    const/high16 v2, 0x42a00000    # 80.0f

    move-object/from16 v0, p0

    iget v3, v0, Lcom/smalife/utils/BarChartPanel;->xOffset:F

    move/from16 v0, v21

    int-to-float v4, v0

    mul-float/2addr v3, v4

    add-float/2addr v3, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/smalife/utils/BarChartPanel;->height:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/smalife/utils/BarChartPanel;->yOffset:F

    sub-float/2addr v2, v4

    const/high16 v4, 0x40a00000    # 5.0f

    add-float/2addr v4, v2

    const/high16 v2, 0x42a00000    # 80.0f

    .line 51
    move-object/from16 v0, p0

    iget v5, v0, Lcom/smalife/utils/BarChartPanel;->xOffset:F

    move/from16 v0, v21

    int-to-float v6, v0

    mul-float/2addr v5, v6

    add-float/2addr v5, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/smalife/utils/BarChartPanel;->height:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v6, v0, Lcom/smalife/utils/BarChartPanel;->yOffset:F

    sub-float/2addr v2, v6

    const/high16 v6, 0x41700000    # 15.0f

    sub-float v6, v2, v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/smalife/utils/BarChartPanel;->myPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    .line 50
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 49
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_0

    .line 79
    .restart local v10    # "end_time":I
    .restart local v11    # "index_1":F
    .restart local v14    # "index_2":F
    .restart local v15    # "index_3":F
    .restart local v16    # "index_4":F
    .restart local v17    # "index_name_1":Ljava/lang/String;
    .restart local v18    # "index_name_2":Ljava/lang/String;
    .restart local v19    # "index_name_3":Ljava/lang/String;
    .restart local v20    # "index_name_4":Ljava/lang/String;
    .restart local v22    # "len":I
    .restart local v23    # "m":I
    .restart local v25    # "start_time":I
    .restart local v26    # "tsize":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smalife/utils/BarChartPanel;->mlist:Ljava/util/ArrayList;

    move/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smalife/entity/SleepStatusObject;

    invoke-virtual {v2}, Lcom/smalife/entity/SleepStatusObject;->getAction_time()I

    move-result v25

    .line 80
    add-int/lit8 v2, v22, -0x1

    move/from16 v0, v23

    if-ne v0, v2, :cond_5

    .line 81
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smalife/utils/BarChartPanel;->mlist:Ljava/util/ArrayList;

    move/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smalife/entity/SleepStatusObject;

    invoke-virtual {v2}, Lcom/smalife/entity/SleepStatusObject;->getAction_long()I

    move-result v2

    add-int v10, v25, v2

    .line 85
    :goto_2
    int-to-long v2, v10

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/smalife/utils/BarChartPanel;->wakeup_time:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_6

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/smalife/utils/BarChartPanel;->wakeup_time:J

    :goto_3
    long-to-int v10, v2

    .line 87
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smalife/utils/BarChartPanel;->mlist:Ljava/util/ArrayList;

    move/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smalife/entity/SleepStatusObject;

    invoke-virtual {v2}, Lcom/smalife/entity/SleepStatusObject;->getAction_type()I

    move-result v27

    .line 89
    .local v27, "type":I
    const/4 v2, 0x1

    move/from16 v0, v27

    if-ne v0, v2, :cond_7

    .line 90
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smalife/utils/BarChartPanel;->myPaint:Landroid/graphics/Paint;

    const/16 v3, 0x85

    const/16 v4, 0x5a

    const/16 v5, 0xaf

    invoke-static {v3, v4, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 98
    :goto_4
    move/from16 v0, v25

    add-int/lit16 v2, v0, 0x2d0

    add-int/lit8 v2, v2, 0x3c

    if-le v10, v2, :cond_3

    .line 99
    move/from16 v0, v25

    add-int/lit16 v2, v0, 0x2d0

    add-int/lit8 v10, v2, 0x3c

    .line 102
    :cond_3
    move-object/from16 v0, p0

    iget v2, v0, Lcom/smalife/utils/BarChartPanel;->xOffset:F

    float-to-double v2, v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x406e000000000000L    # 240.0

    div-double v12, v2, v4

    .line 104
    .local v12, "index":D
    move/from16 v0, v25

    add-int/lit16 v2, v0, -0x528

    int-to-double v2, v2

    mul-double/2addr v2, v12

    double-to-float v0, v2

    move/from16 v24, v0

    .line 110
    .local v24, "start_offset":F
    add-int/lit16 v2, v10, -0x528

    int-to-double v2, v2

    mul-double/2addr v2, v12

    double-to-float v9, v2

    .line 113
    .local v9, "end_offset":F
    if-eqz p1, :cond_4

    const/4 v2, 0x0

    cmpl-float v2, v24, v2

    if-ltz v2, :cond_4

    const/4 v2, 0x0

    cmpl-float v2, v9, v2

    if-lez v2, :cond_4

    .line 114
    const/high16 v2, 0x42a00000    # 80.0f

    add-float v3, v2, v24

    const/high16 v4, 0x42c80000    # 100.0f

    const/high16 v2, 0x42a00000    # 80.0f

    add-float v5, v2, v9

    .line 115
    move-object/from16 v0, p0

    iget v2, v0, Lcom/smalife/utils/BarChartPanel;->height:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v6, v0, Lcom/smalife/utils/BarChartPanel;->yOffset:F

    sub-float/2addr v2, v6

    const/high16 v6, 0x40a00000    # 5.0f

    add-float/2addr v6, v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/smalife/utils/BarChartPanel;->myPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    .line 114
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 78
    :cond_4
    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_1

    .line 83
    .end local v9    # "end_offset":F
    .end local v12    # "index":D
    .end local v24    # "start_offset":F
    .end local v27    # "type":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smalife/utils/BarChartPanel;->mlist:Ljava/util/ArrayList;

    add-int/lit8 v3, v23, 0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smalife/entity/SleepStatusObject;

    invoke-virtual {v2}, Lcom/smalife/entity/SleepStatusObject;->getAction_time()I

    move-result v10

    goto/16 :goto_2

    .line 86
    :cond_6
    int-to-long v2, v10

    goto/16 :goto_3

    .line 91
    .restart local v27    # "type":I
    :cond_7
    const/4 v2, 0x2

    move/from16 v0, v27

    if-ne v0, v2, :cond_8

    .line 92
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smalife/utils/BarChartPanel;->myPaint:Landroid/graphics/Paint;

    const/16 v3, 0xc8

    const/16 v4, 0x7e

    const/16 v5, 0xee

    invoke-static {v3, v4, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_4

    .line 93
    :cond_8
    const/4 v2, 0x3

    move/from16 v0, v27

    if-ne v0, v2, :cond_9

    .line 94
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smalife/utils/BarChartPanel;->myPaint:Landroid/graphics/Paint;

    const/16 v3, 0xee

    const/16 v4, 0xbe

    const/16 v5, 0xe1

    invoke-static {v3, v4, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_4

    .line 96
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smalife/utils/BarChartPanel;->myPaint:Landroid/graphics/Paint;

    const/16 v3, 0x85

    const/16 v4, 0x5a

    const/16 v5, 0xaf

    invoke-static {v3, v4, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_4
.end method

.method public updateSeries(Ljava/util/ArrayList;JJ)V
    .locals 2
    .param p2, "fallTime"    # J
    .param p4, "wakeupTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/smalife/entity/SleepStatusObject;",
            ">;JJ)V"
        }
    .end annotation

    .prologue
    .line 138
    .local p1, "slist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smalife/entity/SleepStatusObject;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 139
    iput-wide p4, p0, Lcom/smalife/utils/BarChartPanel;->wakeup_time:J

    .line 140
    iput-object p1, p0, Lcom/smalife/utils/BarChartPanel;->mlist:Ljava/util/ArrayList;

    .line 141
    invoke-virtual {p0}, Lcom/smalife/utils/BarChartPanel;->invalidate()V

    .line 143
    :cond_0
    return-void
.end method
