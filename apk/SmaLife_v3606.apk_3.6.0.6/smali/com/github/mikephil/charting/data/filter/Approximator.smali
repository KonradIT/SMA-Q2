.class public Lcom/github/mikephil/charting/data/filter/Approximator;
.super Ljava/lang/Object;
.source "Approximator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/mikephil/charting/data/filter/Approximator$ApproximatorType;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$github$mikephil$charting$data$filter$Approximator$ApproximatorType:[I


# instance fields
.field private keep:[Z

.field private mDeltaRatio:F

.field private mScaleRatio:F

.field private mTolerance:D

.field private mType:Lcom/github/mikephil/charting/data/filter/Approximator$ApproximatorType;


# direct methods
.method static synthetic $SWITCH_TABLE$com$github$mikephil$charting$data$filter$Approximator$ApproximatorType()[I
    .locals 3

    .prologue
    .line 15
    sget-object v0, Lcom/github/mikephil/charting/data/filter/Approximator;->$SWITCH_TABLE$com$github$mikephil$charting$data$filter$Approximator$ApproximatorType:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/github/mikephil/charting/data/filter/Approximator$ApproximatorType;->values()[Lcom/github/mikephil/charting/data/filter/Approximator$ApproximatorType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/github/mikephil/charting/data/filter/Approximator$ApproximatorType;->DOUGLAS_PEUCKER:Lcom/github/mikephil/charting/data/filter/Approximator$ApproximatorType;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/filter/Approximator$ApproximatorType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    :try_start_1
    sget-object v1, Lcom/github/mikephil/charting/data/filter/Approximator$ApproximatorType;->NONE:Lcom/github/mikephil/charting/data/filter/Approximator$ApproximatorType;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/filter/Approximator$ApproximatorType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    sput-object v0, Lcom/github/mikephil/charting/data/filter/Approximator;->$SWITCH_TABLE$com$github$mikephil$charting$data$filter$Approximator$ApproximatorType:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    sget-object v0, Lcom/github/mikephil/charting/data/filter/Approximator$ApproximatorType;->DOUGLAS_PEUCKER:Lcom/github/mikephil/charting/data/filter/Approximator$ApproximatorType;

    iput-object v0, p0, Lcom/github/mikephil/charting/data/filter/Approximator;->mType:Lcom/github/mikephil/charting/data/filter/Approximator$ApproximatorType;

    .line 21
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/github/mikephil/charting/data/filter/Approximator;->mTolerance:D

    .line 23
    iput v2, p0, Lcom/github/mikephil/charting/data/filter/Approximator;->mScaleRatio:F

    .line 24
    iput v2, p0, Lcom/github/mikephil/charting/data/filter/Approximator;->mDeltaRatio:F

    .line 41
    sget-object v0, Lcom/github/mikephil/charting/data/filter/Approximator$ApproximatorType;->NONE:Lcom/github/mikephil/charting/data/filter/Approximator$ApproximatorType;

    iput-object v0, p0, Lcom/github/mikephil/charting/data/filter/Approximator;->mType:Lcom/github/mikephil/charting/data/filter/Approximator$ApproximatorType;

    .line 42
    return-void
.end method

.method public constructor <init>(Lcom/github/mikephil/charting/data/filter/Approximator$ApproximatorType;D)V
    .locals 4
    .param p1, "type"    # Lcom/github/mikephil/charting/data/filter/Approximator$ApproximatorType;
    .param p2, "tolerance"    # D

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    sget-object v0, Lcom/github/mikephil/charting/data/filter/Approximator$ApproximatorType;->DOUGLAS_PEUCKER:Lcom/github/mikephil/charting/data/filter/Approximator$ApproximatorType;

    iput-object v0, p0, Lcom/github/mikephil/charting/data/filter/Approximator;->mType:Lcom/github/mikephil/charting/data/filter/Approximator$ApproximatorType;

    .line 21
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/github/mikephil/charting/data/filter/Approximator;->mTolerance:D

    .line 23
    iput v2, p0, Lcom/github/mikephil/charting/data/filter/Approximator;->mScaleRatio:F

    .line 24
    iput v2, p0, Lcom/github/mikephil/charting/data/filter/Approximator;->mDeltaRatio:F

    .line 51
    invoke-virtual {p0, p1, p2, p3}, Lcom/github/mikephil/charting/data/filter/Approximator;->setup(Lcom/github/mikephil/charting/data/filter/Approximator$ApproximatorType;D)V

    .line 52
    return-void
.end method

.method private algorithmDouglasPeucker(Ljava/util/List;DII)V
    .locals 16
    .param p2, "epsilon"    # D
    .param p4, "start"    # I
    .param p5, "end"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/github/mikephil/charting/data/Entry;",
            ">;DII)V"
        }
    .end annotation

    .prologue
    .line 172
    .local p1, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/data/Entry;>;"
    add-int/lit8 v2, p4, 0x1

    move/from16 v0, p5

    if-gt v0, v2, :cond_1

    .line 204
    :cond_0
    :goto_0
    return-void

    .line 178
    :cond_1
    const/4 v7, 0x0

    .line 179
    .local v7, "maxDistIndex":I
    const-wide/16 v12, 0x0

    .line 181
    .local v12, "distMax":D
    move-object/from16 v0, p1

    move/from16 v1, p4

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/github/mikephil/charting/data/Entry;

    .line 182
    .local v9, "firstEntry":Lcom/github/mikephil/charting/data/Entry;
    move-object/from16 v0, p1

    move/from16 v1, p5

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/github/mikephil/charting/data/Entry;

    .line 184
    .local v15, "lastEntry":Lcom/github/mikephil/charting/data/Entry;
    add-int/lit8 v14, p4, 0x1

    .local v14, "i":I
    :goto_1
    move/from16 v0, p5

    if-lt v14, v0, :cond_2

    .line 196
    cmpl-double v2, v12, p2

    if-lez v2, :cond_0

    .line 198
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/data/filter/Approximator;->keep:[Z

    const/4 v3, 0x1

    aput-boolean v3, v2, v7

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-wide/from16 v4, p2

    move/from16 v6, p4

    .line 201
    invoke-direct/range {v2 .. v7}, Lcom/github/mikephil/charting/data/filter/Approximator;->algorithmDouglasPeucker(Ljava/util/List;DII)V

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-wide/from16 v5, p2

    move/from16 v8, p5

    .line 202
    invoke-direct/range {v3 .. v8}, Lcom/github/mikephil/charting/data/filter/Approximator;->algorithmDouglasPeucker(Ljava/util/List;DII)V

    goto :goto_0

    .line 185
    :cond_2
    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/mikephil/charting/data/Entry;

    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v15, v9, v2}, Lcom/github/mikephil/charting/data/filter/Approximator;->calcAngleBetweenLines(Lcom/github/mikephil/charting/data/Entry;Lcom/github/mikephil/charting/data/Entry;Lcom/github/mikephil/charting/data/Entry;Lcom/github/mikephil/charting/data/Entry;)D

    move-result-wide v10

    .line 188
    .local v10, "dist":D
    cmpl-double v2, v10, v12

    if-lez v2, :cond_3

    .line 189
    move-wide v12, v10

    .line 190
    move v7, v14

    .line 184
    :cond_3
    add-int/lit8 v14, v14, 0x1

    goto :goto_1
.end method

.method private reduceWithDouglasPeuker(Ljava/util/List;D)Ljava/util/List;
    .locals 10
    .param p2, "epsilon"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/github/mikephil/charting/data/Entry;",
            ">;D)",
            "Ljava/util/List",
            "<",
            "Lcom/github/mikephil/charting/data/Entry;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/data/Entry;>;"
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 139
    const-wide/16 v0, 0x0

    cmpg-double v0, p2, v0

    if-lez v0, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_2

    :cond_0
    move-object v8, p1

    .line 158
    :cond_1
    return-object v8

    .line 144
    :cond_2
    iget-object v0, p0, Lcom/github/mikephil/charting/data/filter/Approximator;->keep:[Z

    aput-boolean v2, v0, v4

    .line 145
    iget-object v0, p0, Lcom/github/mikephil/charting/data/filter/Approximator;->keep:[Z

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    aput-boolean v2, v0, v1

    .line 148
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v5, v0, -0x1

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/github/mikephil/charting/data/filter/Approximator;->algorithmDouglasPeucker(Ljava/util/List;DII)V

    .line 151
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 152
    .local v8, "reducedEntries":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/data/Entry;>;"
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v7, v0, :cond_1

    .line 153
    iget-object v0, p0, Lcom/github/mikephil/charting/data/filter/Approximator;->keep:[Z

    aget-boolean v0, v0, v7

    if-eqz v0, :cond_3

    .line 154
    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/github/mikephil/charting/data/Entry;

    .line 155
    .local v6, "curEntry":Lcom/github/mikephil/charting/data/Entry;
    new-instance v0, Lcom/github/mikephil/charting/data/Entry;

    invoke-virtual {v6}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v1

    invoke-virtual {v6}, Lcom/github/mikephil/charting/data/Entry;->getXIndex()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/github/mikephil/charting/data/Entry;-><init>(FI)V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    .end local v6    # "curEntry":Lcom/github/mikephil/charting/data/Entry;
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_0
.end method


# virtual methods
.method public calcAngle(Lcom/github/mikephil/charting/data/Entry;Lcom/github/mikephil/charting/data/Entry;)D
    .locals 8
    .param p1, "p1"    # Lcom/github/mikephil/charting/data/Entry;
    .param p2, "p2"    # Lcom/github/mikephil/charting/data/Entry;

    .prologue
    .line 276
    invoke-virtual {p2}, Lcom/github/mikephil/charting/data/Entry;->getXIndex()I

    move-result v4

    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/Entry;->getXIndex()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v2, v4

    .line 277
    .local v2, "dx":F
    invoke-virtual {p2}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v4

    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v5

    sub-float v3, v4, v5

    .line 278
    .local v3, "dy":F
    float-to-double v4, v3

    float-to-double v6, v2

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v4

    const-wide v6, 0x4066800000000000L    # 180.0

    mul-double/2addr v4, v6

    const-wide v6, 0x400921fb54442d18L    # Math.PI

    div-double v0, v4, v6

    .line 280
    .local v0, "angle":D
    return-wide v0
.end method

.method public calcAngleBetweenLines(Lcom/github/mikephil/charting/data/Entry;Lcom/github/mikephil/charting/data/Entry;Lcom/github/mikephil/charting/data/Entry;Lcom/github/mikephil/charting/data/Entry;)D
    .locals 6
    .param p1, "start1"    # Lcom/github/mikephil/charting/data/Entry;
    .param p2, "end1"    # Lcom/github/mikephil/charting/data/Entry;
    .param p3, "start2"    # Lcom/github/mikephil/charting/data/Entry;
    .param p4, "end2"    # Lcom/github/mikephil/charting/data/Entry;

    .prologue
    .line 244
    invoke-virtual {p0, p1, p2}, Lcom/github/mikephil/charting/data/filter/Approximator;->calcAngleWithRatios(Lcom/github/mikephil/charting/data/Entry;Lcom/github/mikephil/charting/data/Entry;)D

    move-result-wide v0

    .line 245
    .local v0, "angle1":D
    invoke-virtual {p0, p3, p4}, Lcom/github/mikephil/charting/data/filter/Approximator;->calcAngleWithRatios(Lcom/github/mikephil/charting/data/Entry;Lcom/github/mikephil/charting/data/Entry;)D

    move-result-wide v2

    .line 247
    .local v2, "angle2":D
    sub-double v4, v0, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    return-wide v4
.end method

.method public calcAngleWithRatios(Lcom/github/mikephil/charting/data/Entry;Lcom/github/mikephil/charting/data/Entry;)D
    .locals 8
    .param p1, "p1"    # Lcom/github/mikephil/charting/data/Entry;
    .param p2, "p2"    # Lcom/github/mikephil/charting/data/Entry;

    .prologue
    .line 260
    invoke-virtual {p2}, Lcom/github/mikephil/charting/data/Entry;->getXIndex()I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lcom/github/mikephil/charting/data/filter/Approximator;->mDeltaRatio:F

    mul-float/2addr v4, v5

    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/Entry;->getXIndex()I

    move-result v5

    int-to-float v5, v5

    iget v6, p0, Lcom/github/mikephil/charting/data/filter/Approximator;->mDeltaRatio:F

    mul-float/2addr v5, v6

    sub-float v2, v4, v5

    .line 261
    .local v2, "dx":F
    invoke-virtual {p2}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v4

    iget v5, p0, Lcom/github/mikephil/charting/data/filter/Approximator;->mScaleRatio:F

    mul-float/2addr v4, v5

    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v5

    iget v6, p0, Lcom/github/mikephil/charting/data/filter/Approximator;->mScaleRatio:F

    mul-float/2addr v5, v6

    sub-float v3, v4, v5

    .line 262
    .local v3, "dy":F
    float-to-double v4, v3

    float-to-double v6, v2

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v4

    const-wide v6, 0x4066800000000000L    # 180.0

    mul-double/2addr v4, v6

    const-wide v6, 0x400921fb54442d18L    # Math.PI

    div-double v0, v4, v6

    .line 264
    .local v0, "angle":D
    return-wide v0
.end method

.method public calcPointToLineDistance(Lcom/github/mikephil/charting/data/Entry;Lcom/github/mikephil/charting/data/Entry;Lcom/github/mikephil/charting/data/Entry;)D
    .locals 8
    .param p1, "startEntry"    # Lcom/github/mikephil/charting/data/Entry;
    .param p2, "endEntry"    # Lcom/github/mikephil/charting/data/Entry;
    .param p3, "entryPoint"    # Lcom/github/mikephil/charting/data/Entry;

    .prologue
    .line 218
    invoke-virtual {p2}, Lcom/github/mikephil/charting/data/Entry;->getXIndex()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/Entry;->getXIndex()I

    move-result v5

    int-to-float v5, v5

    sub-float v2, v4, v5

    .line 219
    .local v2, "xDiffEndStart":F
    invoke-virtual {p3}, Lcom/github/mikephil/charting/data/Entry;->getXIndex()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/Entry;->getXIndex()I

    move-result v5

    int-to-float v5, v5

    sub-float v3, v4, v5

    .line 221
    .local v3, "xDiffEntryStart":F
    mul-float v4, v2, v2

    .line 223
    invoke-virtual {p2}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v5

    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v6

    sub-float/2addr v5, v6

    .line 224
    invoke-virtual {p2}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v6

    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v7

    sub-float/2addr v6, v7

    .line 223
    mul-float/2addr v5, v6

    .line 221
    add-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    .line 226
    .local v0, "normalLength":D
    invoke-virtual {p2}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v4

    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v5

    sub-float/2addr v4, v5

    .line 225
    mul-float/2addr v4, v3

    .line 227
    invoke-virtual {p3}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v5

    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v6

    sub-float/2addr v5, v6

    mul-float/2addr v5, v2

    .line 225
    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-double v4, v4

    div-double/2addr v4, v0

    return-wide v4
.end method

.method public filter(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/github/mikephil/charting/data/Entry;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/github/mikephil/charting/data/Entry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 102
    .local p1, "points":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/data/Entry;>;"
    iget-wide v0, p0, Lcom/github/mikephil/charting/data/filter/Approximator;->mTolerance:D

    invoke-virtual {p0, p1, v0, v1}, Lcom/github/mikephil/charting/data/filter/Approximator;->filter(Ljava/util/List;D)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public filter(Ljava/util/List;D)Ljava/util/List;
    .locals 2
    .param p2, "tolerance"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/github/mikephil/charting/data/Entry;",
            ">;D)",
            "Ljava/util/List",
            "<",
            "Lcom/github/mikephil/charting/data/Entry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 114
    .local p1, "points":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/data/Entry;>;"
    const-wide/16 v0, 0x0

    cmpg-double v0, p2, v0

    if-gtz v0, :cond_0

    .line 125
    .end local p1    # "points":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/data/Entry;>;"
    :goto_0
    :pswitch_0
    return-object p1

    .line 117
    .restart local p1    # "points":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/data/Entry;>;"
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/github/mikephil/charting/data/filter/Approximator;->keep:[Z

    .line 119
    invoke-static {}, Lcom/github/mikephil/charting/data/filter/Approximator;->$SWITCH_TABLE$com$github$mikephil$charting$data$filter$Approximator$ApproximatorType()[I

    move-result-object v0

    iget-object v1, p0, Lcom/github/mikephil/charting/data/filter/Approximator;->mType:Lcom/github/mikephil/charting/data/filter/Approximator$ApproximatorType;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/filter/Approximator$ApproximatorType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 121
    :pswitch_1
    invoke-direct {p0, p1, p2, p3}, Lcom/github/mikephil/charting/data/filter/Approximator;->reduceWithDouglasPeuker(Ljava/util/List;D)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    .line 119
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setRatios(FF)V
    .locals 0
    .param p1, "deltaRatio"    # F
    .param p2, "scaleRatio"    # F

    .prologue
    .line 91
    iput p1, p0, Lcom/github/mikephil/charting/data/filter/Approximator;->mDeltaRatio:F

    .line 92
    iput p2, p0, Lcom/github/mikephil/charting/data/filter/Approximator;->mScaleRatio:F

    .line 93
    return-void
.end method

.method public setTolerance(D)V
    .locals 1
    .param p1, "tolerance"    # D

    .prologue
    .line 71
    iput-wide p1, p0, Lcom/github/mikephil/charting/data/filter/Approximator;->mTolerance:D

    .line 72
    return-void
.end method

.method public setType(Lcom/github/mikephil/charting/data/filter/Approximator$ApproximatorType;)V
    .locals 0
    .param p1, "type"    # Lcom/github/mikephil/charting/data/filter/Approximator$ApproximatorType;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/github/mikephil/charting/data/filter/Approximator;->mType:Lcom/github/mikephil/charting/data/filter/Approximator$ApproximatorType;

    .line 81
    return-void
.end method

.method public setup(Lcom/github/mikephil/charting/data/filter/Approximator$ApproximatorType;D)V
    .locals 0
    .param p1, "type"    # Lcom/github/mikephil/charting/data/filter/Approximator$ApproximatorType;
    .param p2, "tolerance"    # D

    .prologue
    .line 61
    iput-object p1, p0, Lcom/github/mikephil/charting/data/filter/Approximator;->mType:Lcom/github/mikephil/charting/data/filter/Approximator$ApproximatorType;

    .line 62
    iput-wide p2, p0, Lcom/github/mikephil/charting/data/filter/Approximator;->mTolerance:D

    .line 63
    return-void
.end method
