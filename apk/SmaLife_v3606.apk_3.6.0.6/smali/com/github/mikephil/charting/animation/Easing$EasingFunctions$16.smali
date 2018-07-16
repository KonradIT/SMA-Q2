.class Lcom/github/mikephil/charting/animation/Easing$EasingFunctions$16;
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
    .line 323
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 8
    .param p1, "input"    # F

    .prologue
    const/4 v1, 0x0

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    const/high16 v4, 0x3f000000    # 0.5f

    const/high16 v2, 0x3f800000    # 1.0f

    .line 346
    cmpl-float v3, p1, v1

    if-nez v3, :cond_0

    .line 360
    :goto_0
    return v1

    .line 350
    :cond_0
    cmpl-float v1, p1, v2

    if-nez v1, :cond_1

    move v1, v2

    .line 352
    goto :goto_0

    .line 355
    :cond_1
    div-float v0, p1, v4

    .line 356
    .local v0, "position":F
    cmpg-float v1, v0, v2

    if-gez v1, :cond_2

    .line 358
    const/high16 v1, 0x41200000    # 10.0f

    sub-float v2, v0, v2

    mul-float/2addr v1, v2

    float-to-double v2, v1

    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v1, v2

    mul-float/2addr v1, v4

    goto :goto_0

    .line 360
    :cond_2
    const/high16 v1, -0x3ee00000    # -10.0f

    sub-float/2addr v0, v2

    mul-float/2addr v1, v0

    float-to-double v2, v1

    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v1, v2

    neg-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    add-float/2addr v1, v2

    mul-float/2addr v1, v4

    goto :goto_0
.end method
