.class Lcom/github/mikephil/charting/animation/Easing$EasingFunctions$22;
.super Ljava/lang/Object;
.source "Easing.java"

# interfaces
.implements Lcom/github/mikephil/charting/animation/EasingFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/mikephil/charting/animation/Easing$EasingFunctions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 508
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 13
    .param p1, "input"    # F

    .prologue
    const/high16 v12, 0x3f000000    # 0.5f

    const/4 v3, 0x0

    const-wide v10, 0x401921fb54442d18L    # 6.283185307179586

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    const/high16 v4, 0x3f800000    # 1.0f

    .line 541
    cmpl-float v5, p1, v3

    if-nez v5, :cond_0

    .line 560
    :goto_0
    return v3

    .line 546
    :cond_0
    div-float v1, p1, v12

    .line 547
    .local v1, "position":F
    const/high16 v3, 0x40000000    # 2.0f

    cmpl-float v3, v1, v3

    if-nez v3, :cond_1

    move v3, v4

    .line 549
    goto :goto_0

    .line 552
    :cond_1
    const v0, 0x3ee66667    # 0.45000002f

    .line 553
    .local v0, "p":F
    const v3, 0x40c90fdb

    div-float v3, v0, v3

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    invoke-static {v6, v7}, Ljava/lang/Math;->asin(D)D

    move-result-wide v6

    double-to-float v5, v6

    mul-float v2, v3, v5

    .line 554
    .local v2, "s":F
    cmpg-float v3, v1, v4

    if-gez v3, :cond_2

    .line 556
    const/high16 v3, -0x41000000    # -0.5f

    .line 557
    const/high16 v5, 0x41200000    # 10.0f

    sub-float/2addr v1, v4

    mul-float/2addr v5, v1

    float-to-double v6, v5

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-float v5, v6

    .line 558
    mul-float/2addr v4, v1

    sub-float/2addr v4, v2

    float-to-double v6, v4

    mul-double/2addr v6, v10

    float-to-double v8, v0

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    double-to-float v4, v6

    .line 557
    mul-float/2addr v4, v5

    .line 556
    mul-float/2addr v3, v4

    goto :goto_0

    .line 560
    :cond_2
    const/high16 v3, -0x3ee00000    # -10.0f

    sub-float/2addr v1, v4

    mul-float/2addr v3, v1

    float-to-double v6, v3

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-float v3, v6

    .line 561
    mul-float v5, v1, v4

    sub-float/2addr v5, v2

    float-to-double v6, v5

    mul-double/2addr v6, v10

    float-to-double v8, v0

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    double-to-float v5, v6

    .line 560
    mul-float/2addr v3, v5

    mul-float/2addr v3, v12

    add-float/2addr v3, v4

    goto :goto_0
.end method
