.class Lcom/github/mikephil/charting/animation/Easing$EasingFunctions$25;
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
    .line 604
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 7
    .param p1, "input"    # F

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    const v5, 0x3fc33333    # 1.525f

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f000000    # 0.5f

    .line 621
    const v1, 0x3fd9cd60

    .line 622
    .local v1, "s":F
    div-float v0, p1, v4

    .line 623
    .local v0, "position":F
    cmpg-float v2, v0, v3

    if-gez v2, :cond_0

    .line 625
    mul-float v2, v0, v0

    mul-float/2addr v1, v5

    add-float/2addr v3, v1

    .line 626
    mul-float/2addr v3, v0

    sub-float/2addr v3, v1

    mul-float/2addr v2, v3

    .line 625
    mul-float/2addr v2, v4

    .line 628
    :goto_0
    return v2

    :cond_0
    sub-float/2addr v0, v6

    mul-float v2, v0, v0

    .line 629
    mul-float/2addr v1, v5

    add-float/2addr v3, v1

    mul-float/2addr v3, v0

    add-float/2addr v3, v1

    mul-float/2addr v2, v3

    add-float/2addr v2, v6

    .line 628
    mul-float/2addr v2, v4

    goto :goto_0
.end method
