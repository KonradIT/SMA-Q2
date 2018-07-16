.class public Lcom/smalife/utils/HeartChartView;
.super Landroid/view/View;
.source "HeartChartView.java"


# instance fields
.field cPaint:Landroid/graphics/Paint;

.field private height:I

.field public final margin_Y:I

.field public final margin_left:I

.field public final margin_right:I

.field public margin_top:I

.field private marray:[I

.field max_steps:I

.field private mcontext:Landroid/content/Context;

.field private mlist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/smalife/utils/HeartPoint;",
            ">;"
        }
    .end annotation
.end field

.field myPaint:Landroid/graphics/Paint;

.field private width:I

.field private xOffset:I

.field private yMarks:I

.field private yOffset:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 17
    const/16 v0, 0x5a

    iput v0, p0, Lcom/smalife/utils/HeartChartView;->margin_left:I

    .line 18
    const/16 v0, 0x1e

    iput v0, p0, Lcom/smalife/utils/HeartChartView;->margin_right:I

    .line 19
    const/16 v0, 0x3c

    iput v0, p0, Lcom/smalife/utils/HeartChartView;->margin_Y:I

    .line 20
    const/16 v0, 0x32

    iput v0, p0, Lcom/smalife/utils/HeartChartView;->margin_top:I

    .line 21
    const/16 v0, 0x4b

    iput v0, p0, Lcom/smalife/utils/HeartChartView;->max_steps:I

    .line 23
    const/4 v0, 0x5

    iput v0, p0, Lcom/smalife/utils/HeartChartView;->yMarks:I

    .line 29
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/smalife/utils/HeartChartView;->myPaint:Landroid/graphics/Paint;

    .line 30
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/smalife/utils/HeartChartView;->cPaint:Landroid/graphics/Paint;

    .line 35
    iput-object p1, p0, Lcom/smalife/utils/HeartChartView;->mcontext:Landroid/content/Context;

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    const/16 v0, 0x5a

    iput v0, p0, Lcom/smalife/utils/HeartChartView;->margin_left:I

    .line 18
    const/16 v0, 0x1e

    iput v0, p0, Lcom/smalife/utils/HeartChartView;->margin_right:I

    .line 19
    const/16 v0, 0x3c

    iput v0, p0, Lcom/smalife/utils/HeartChartView;->margin_Y:I

    .line 20
    const/16 v0, 0x32

    iput v0, p0, Lcom/smalife/utils/HeartChartView;->margin_top:I

    .line 21
    const/16 v0, 0x4b

    iput v0, p0, Lcom/smalife/utils/HeartChartView;->max_steps:I

    .line 23
    const/4 v0, 0x5

    iput v0, p0, Lcom/smalife/utils/HeartChartView;->yMarks:I

    .line 29
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/smalife/utils/HeartChartView;->myPaint:Landroid/graphics/Paint;

    .line 30
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/smalife/utils/HeartChartView;->cPaint:Landroid/graphics/Paint;

    .line 40
    iput-object p1, p0, Lcom/smalife/utils/HeartChartView;->mcontext:Landroid/content/Context;

    .line 41
    return-void
.end method


# virtual methods
.method public drawLine([ILjava/util/ArrayList;)V
    .locals 0
    .param p1, "arry"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/smalife/utils/HeartPoint;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 179
    .local p2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smalife/utils/HeartPoint;>;"
    iput-object p1, p0, Lcom/smalife/utils/HeartChartView;->marray:[I

    .line 180
    iput-object p2, p0, Lcom/smalife/utils/HeartChartView;->mlist:Ljava/util/ArrayList;

    .line 181
    invoke-virtual {p0}, Lcom/smalife/utils/HeartChartView;->invalidate()V

    .line 182
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 40
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 45
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/smalife/utils/HeartChartView;->mlist:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/smalife/utils/HeartChartView;->marray:[I

    if-nez v4, :cond_1

    .line 174
    :cond_0
    return-void

    .line 49
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/smalife/utils/HeartChartView;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 50
    const-string v5, "window"

    .line 49
    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Landroid/view/WindowManager;

    .line 51
    .local v38, "wm":Landroid/view/WindowManager;
    invoke-interface/range {v38 .. v38}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v17

    .line 52
    .local v17, "display":Landroid/view/Display;
    invoke-virtual/range {v17 .. v17}, Landroid/view/Display;->getWidth()I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/smalife/utils/HeartChartView;->width:I

    .line 53
    invoke-virtual/range {v17 .. v17}, Landroid/view/Display;->getHeight()I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/smalife/utils/HeartChartView;->height:I

    .line 55
    move-object/from16 v0, p0

    iget v4, v0, Lcom/smalife/utils/HeartChartView;->width:I

    add-int/lit8 v4, v4, -0x78

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/smalife/utils/HeartChartView;->mlist:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    div-int/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Lcom/smalife/utils/HeartChartView;->xOffset:I

    .line 56
    move-object/from16 v0, p0

    iget v4, v0, Lcom/smalife/utils/HeartChartView;->height:I

    int-to-double v4, v4

    const-wide v6, 0x3fe199999999999aL    # 0.55

    mul-double/2addr v4, v6

    double-to-int v4, v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/smalife/utils/HeartChartView;->yOffset:I

    .line 57
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/smalife/utils/HeartChartView;->myPaint:Landroid/graphics/Paint;

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 58
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/smalife/utils/HeartChartView;->myPaint:Landroid/graphics/Paint;

    const/high16 v5, 0x40000000    # 2.0f

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 60
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/smalife/utils/HeartChartView;->cPaint:Landroid/graphics/Paint;

    const/16 v5, 0x50

    const/16 v6, 0x50

    const/16 v7, 0x50

    invoke-static {v5, v6, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 61
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/smalife/utils/HeartChartView;->cPaint:Landroid/graphics/Paint;

    const/high16 v5, 0x42200000    # 40.0f

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 62
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/smalife/utils/HeartChartView;->cPaint:Landroid/graphics/Paint;

    const/high16 v5, 0x40400000    # 3.0f

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 65
    move-object/from16 v0, p0

    iget v4, v0, Lcom/smalife/utils/HeartChartView;->height:I

    int-to-double v4, v4

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v4, v6

    const-wide/high16 v6, 0x4014000000000000L    # 5.0

    div-double/2addr v4, v6

    const-wide/high16 v6, 0x3fe8000000000000L    # 0.75

    mul-double/2addr v4, v6

    double-to-int v4, v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/smalife/utils/HeartChartView;->margin_top:I

    .line 66
    move-object/from16 v0, p0

    iget v4, v0, Lcom/smalife/utils/HeartChartView;->height:I

    int-to-double v4, v4

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v4, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/smalife/utils/HeartChartView;->margin_top:I

    int-to-double v6, v6

    sub-double/2addr v4, v6

    const-wide/high16 v6, 0x4014000000000000L    # 5.0

    div-double/2addr v4, v6

    double-to-int v0, v4

    move/from16 v39, v0

    .line 68
    .local v39, "y_Index":I
    new-instance v9, Landroid/graphics/Paint;

    invoke-direct {v9}, Landroid/graphics/Paint;-><init>()V

    .line 69
    .local v9, "rectPaint":Landroid/graphics/Paint;
    new-instance v20, Landroid/graphics/Paint;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/Paint;-><init>()V

    .line 70
    .local v20, "infoPaint":Landroid/graphics/Paint;
    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v9, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 71
    const/4 v4, -0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 72
    const/high16 v4, 0x42200000    # 40.0f

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 73
    const/high16 v4, 0x40a00000    # 5.0f

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 74
    const-string v19, "\u5267"

    .line 75
    .local v19, "info":Ljava/lang/String;
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v21

    .line 76
    .local v21, "infosize":F
    const-string v27, "%"

    .line 77
    .local v27, "rate":Ljava/lang/String;
    move-object/from16 v0, v20

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v28

    .line 79
    .local v28, "ratesize":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/smalife/utils/HeartChartView;->yMarks:I

    move/from16 v23, v0

    .local v23, "marks":I
    :goto_0
    if-gtz v23, :cond_4

    .line 149
    move-object/from16 v0, p0

    iget v4, v0, Lcom/smalife/utils/HeartChartView;->height:I

    int-to-double v4, v4

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v4, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/smalife/utils/HeartChartView;->margin_top:I

    int-to-double v6, v6

    sub-double/2addr v4, v6

    double-to-int v0, v4

    move/from16 v16, v0

    .line 151
    .local v16, "YLength":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/smalife/utils/HeartChartView;->mlist:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/smalife/utils/HeartChartView;->mlist:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 152
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/smalife/utils/HeartChartView;->mlist:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v22

    .line 153
    .local v22, "len":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/smalife/utils/HeartChartView;->mlist:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/smalife/utils/HeartChartView;->mlist:Ljava/util/ArrayList;

    add-int/lit8 v6, v22, -0x1

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/smalife/utils/HeartPoint;

    move/from16 v0, v22

    invoke-virtual {v5, v0, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 155
    const/16 v31, 0x0

    .line 156
    .local v31, "startX":I
    const/16 v32, 0x0

    .line 157
    .local v32, "startY":I
    const/16 v35, 0x0

    .line 158
    .local v35, "todayTemp":I
    const/16 v25, 0x0

    .local v25, "p":I
    :goto_1
    move/from16 v0, v25

    move/from16 v1, v22

    if-ge v0, v1, :cond_0

    .line 159
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/smalife/utils/HeartChartView;->mlist:Ljava/util/ArrayList;

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/smalife/utils/HeartPoint;

    invoke-virtual {v4}, Lcom/smalife/utils/HeartPoint;->getX()I

    move-result v18

    .line 160
    .local v18, "h":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/smalife/utils/HeartChartView;->mlist:Ljava/util/ArrayList;

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/smalife/utils/HeartPoint;

    invoke-virtual {v4}, Lcom/smalife/utils/HeartPoint;->getY()I

    move-result v26

    .line 161
    .local v26, "pre_steps":I
    if-lez v26, :cond_3

    .line 162
    move-object/from16 v0, p0

    iget v4, v0, Lcom/smalife/utils/HeartChartView;->xOffset:I

    mul-int v4, v4, v18

    add-int/lit8 v34, v4, 0x5a

    .line 163
    .local v34, "todayStopX":I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/smalife/utils/HeartChartView;->height:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/smalife/utils/HeartChartView;->yOffset:I

    sub-int/2addr v4, v5

    add-int/lit8 v5, v26, -0x32

    mul-int v5, v5, v16

    move-object/from16 v0, p0

    iget v6, v0, Lcom/smalife/utils/HeartChartView;->max_steps:I

    add-int/lit8 v6, v6, -0x32

    div-int/2addr v5, v6

    sub-int v33, v4, v5

    .line 165
    .local v33, "todatStopY":I
    if-lez v35, :cond_2

    .line 166
    move/from16 v0, v31

    int-to-float v11, v0

    move/from16 v0, v32

    int-to-float v12, v0

    move/from16 v0, v34

    int-to-float v13, v0

    move/from16 v0, v33

    int-to-float v14, v0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/smalife/utils/HeartChartView;->myPaint:Landroid/graphics/Paint;

    move-object/from16 v10, p1

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 168
    :cond_2
    move/from16 v31, v34

    .line 169
    move/from16 v32, v33

    .line 170
    add-int/lit8 v35, v35, 0x1

    .line 158
    .end local v33    # "todatStopY":I
    .end local v34    # "todayStopX":I
    :cond_3
    add-int/lit8 v25, v25, 0x1

    goto :goto_1

    .line 80
    .end local v16    # "YLength":I
    .end local v18    # "h":I
    .end local v22    # "len":I
    .end local v25    # "p":I
    .end local v26    # "pre_steps":I
    .end local v31    # "startX":I
    .end local v32    # "startY":I
    .end local v35    # "todayTemp":I
    :cond_4
    packed-switch v23, :pswitch_data_0

    .line 108
    :goto_2
    const/high16 v5, 0x42b40000    # 90.0f

    move-object/from16 v0, p0

    iget v4, v0, Lcom/smalife/utils/HeartChartView;->height:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/smalife/utils/HeartChartView;->yOffset:I

    sub-int/2addr v4, v6

    .line 109
    mul-int v6, v39, v23

    sub-int/2addr v4, v6

    int-to-float v6, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/smalife/utils/HeartChartView;->width:I

    add-int/lit8 v4, v4, -0x78

    add-int/lit8 v4, v4, 0x5a

    int-to-float v7, v4

    .line 110
    move-object/from16 v0, p0

    iget v4, v0, Lcom/smalife/utils/HeartChartView;->height:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/smalife/utils/HeartChartView;->yOffset:I

    sub-int/2addr v4, v8

    add-int/lit8 v8, v23, -0x1

    mul-int v8, v8, v39

    sub-int/2addr v4, v8

    int-to-float v8, v4

    move-object/from16 v4, p1

    .line 108
    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 112
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/smalife/utils/HeartChartView;->marray:[I

    aget v4, v4, v23

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v37

    .line 113
    .local v37, "value":Ljava/lang/String;
    move-object/from16 v0, v20

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v30

    .line 115
    .local v30, "size":F
    move/from16 v0, v30

    float-to-int v4, v0

    rsub-int/lit8 v4, v4, 0x50

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/smalife/utils/HeartChartView;->height:I

    .line 116
    move-object/from16 v0, p0

    iget v6, v0, Lcom/smalife/utils/HeartChartView;->yOffset:I

    sub-int/2addr v5, v6

    mul-int v6, v39, v23

    sub-int/2addr v5, v6

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/smalife/utils/HeartChartView;->cPaint:Landroid/graphics/Paint;

    .line 114
    move-object/from16 v0, p1

    move-object/from16 v1, v37

    invoke-virtual {v0, v1, v4, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 118
    const/high16 v4, 0x42f00000    # 120.0f

    move-object/from16 v0, p0

    iget v5, v0, Lcom/smalife/utils/HeartChartView;->height:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/smalife/utils/HeartChartView;->yOffset:I

    sub-int/2addr v5, v6

    .line 119
    mul-int v6, v39, v23

    sub-int/2addr v5, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/smalife/utils/HeartChartView;->height:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/smalife/utils/HeartChartView;->yOffset:I

    sub-int/2addr v6, v7

    add-int/lit8 v7, v23, -0x1

    mul-int v7, v7, v39

    sub-int/2addr v6, v7

    add-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float v6, v21, v6

    add-float/2addr v5, v6

    .line 117
    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v4, v5, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 121
    move-object/from16 v0, p0

    iget v4, v0, Lcom/smalife/utils/HeartChartView;->yMarks:I

    move/from16 v0, v23

    if-ne v0, v4, :cond_5

    .line 122
    const-string v4, "100%"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v24

    .line 124
    .local v24, "measureText":F
    const-string v4, "100%"

    move-object/from16 v0, p0

    iget v5, v0, Lcom/smalife/utils/HeartChartView;->width:I

    add-int/lit8 v5, v5, -0x28

    move/from16 v0, v24

    float-to-int v6, v0

    sub-int/2addr v5, v6

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/smalife/utils/HeartChartView;->height:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/smalife/utils/HeartChartView;->yOffset:I

    sub-int/2addr v6, v7

    .line 125
    mul-int v7, v39, v23

    sub-int/2addr v6, v7

    int-to-float v6, v6

    add-float v6, v6, v28

    const/high16 v7, 0x40000000    # 2.0f

    add-float/2addr v6, v7

    .line 123
    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v4, v5, v6, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 79
    :goto_3
    add-int/lit8 v23, v23, -0x1

    goto/16 :goto_0

    .line 82
    .end local v24    # "measureText":F
    .end local v30    # "size":F
    .end local v37    # "value":Ljava/lang/String;
    :pswitch_0
    const/16 v4, 0xea

    const/16 v5, 0x5f

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    invoke-virtual {v9, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 83
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/smalife/utils/HeartChartView;->mcontext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0901f2

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 84
    goto/16 :goto_2

    .line 86
    :pswitch_1
    const/16 v4, 0xf0

    const/16 v5, 0x96

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    invoke-virtual {v9, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 87
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/smalife/utils/HeartChartView;->mcontext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0901f3

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 88
    const-string v27, "90%"

    .line 89
    goto/16 :goto_2

    .line 91
    :pswitch_2
    const/16 v4, 0x8e

    const/16 v5, 0xc2

    const/16 v6, 0x20

    invoke-static {v4, v5, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    invoke-virtual {v9, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 92
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/smalife/utils/HeartChartView;->mcontext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0901f4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 93
    const-string v27, "80%"

    .line 94
    goto/16 :goto_2

    .line 96
    :pswitch_3
    const/4 v4, 0x0

    const/16 v5, 0x96

    const/16 v6, 0xa0

    invoke-static {v4, v5, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    invoke-virtual {v9, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 97
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/smalife/utils/HeartChartView;->mcontext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0901f5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 98
    const-string v27, "70%"

    .line 99
    goto/16 :goto_2

    .line 101
    :pswitch_4
    const/16 v4, 0x32

    const/16 v5, 0xb4

    const/16 v6, 0xff

    invoke-static {v4, v5, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    invoke-virtual {v9, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 102
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/smalife/utils/HeartChartView;->mcontext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0901f6

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 103
    goto/16 :goto_2

    .line 126
    .restart local v30    # "size":F
    .restart local v37    # "value":Ljava/lang/String;
    :cond_5
    const/4 v4, 0x1

    move/from16 v0, v23

    if-ne v0, v4, :cond_6

    .line 127
    const-string v4, "50%"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v24

    .line 129
    .restart local v24    # "measureText":F
    const-string v4, "50%"

    move-object/from16 v0, p0

    iget v5, v0, Lcom/smalife/utils/HeartChartView;->width:I

    add-int/lit8 v5, v5, -0x28

    move/from16 v0, v24

    float-to-int v6, v0

    sub-int/2addr v5, v6

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/smalife/utils/HeartChartView;->height:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/smalife/utils/HeartChartView;->yOffset:I

    sub-int/2addr v6, v7

    .line 130
    add-int/lit8 v7, v23, -0x1

    mul-int v7, v7, v39

    sub-int/2addr v6, v7

    add-int/lit8 v6, v6, -0x2

    int-to-float v6, v6

    .line 128
    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v4, v5, v6, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 132
    const-string v4, "60%"

    move-object/from16 v0, p0

    iget v5, v0, Lcom/smalife/utils/HeartChartView;->width:I

    add-int/lit8 v5, v5, -0x28

    move/from16 v0, v24

    float-to-int v6, v0

    sub-int/2addr v5, v6

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/smalife/utils/HeartChartView;->height:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/smalife/utils/HeartChartView;->yOffset:I

    sub-int/2addr v6, v7

    .line 133
    mul-int v7, v39, v23

    sub-int/2addr v6, v7

    int-to-float v6, v6

    const/high16 v7, 0x40000000    # 2.0f

    div-float v7, v28, v7

    add-float/2addr v6, v7

    .line 131
    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v4, v5, v6, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 135
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/smalife/utils/HeartChartView;->marray:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v36

    .line 136
    .local v36, "v_last":Ljava/lang/String;
    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v29

    .line 138
    .local v29, "s_last":F
    move/from16 v0, v29

    float-to-int v4, v0

    rsub-int/lit8 v4, v4, 0x50

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/smalife/utils/HeartChartView;->height:I

    .line 139
    move-object/from16 v0, p0

    iget v6, v0, Lcom/smalife/utils/HeartChartView;->yOffset:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/smalife/utils/HeartChartView;->cPaint:Landroid/graphics/Paint;

    .line 137
    move-object/from16 v0, p1

    move-object/from16 v1, v36

    invoke-virtual {v0, v1, v4, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_3

    .line 141
    .end local v24    # "measureText":F
    .end local v29    # "s_last":F
    .end local v36    # "v_last":Ljava/lang/String;
    :cond_6
    move-object/from16 v0, v20

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v24

    .line 143
    .restart local v24    # "measureText":F
    move-object/from16 v0, p0

    iget v4, v0, Lcom/smalife/utils/HeartChartView;->width:I

    add-int/lit8 v4, v4, -0x28

    move/from16 v0, v24

    float-to-int v5, v0

    sub-int/2addr v4, v5

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/smalife/utils/HeartChartView;->height:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/smalife/utils/HeartChartView;->yOffset:I

    sub-int/2addr v5, v6

    .line 144
    mul-int v6, v39, v23

    sub-int/2addr v5, v6

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float v6, v28, v6

    add-float/2addr v5, v6

    .line 142
    move-object/from16 v0, p1

    move-object/from16 v1, v27

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v4, v5, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_3

    .line 80
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
