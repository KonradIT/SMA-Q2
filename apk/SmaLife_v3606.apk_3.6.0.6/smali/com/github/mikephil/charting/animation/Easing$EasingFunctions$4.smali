.class Lcom/github/mikephil/charting/animation/Easing$EasingFunctions$4;
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
    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 4
    .param p1, "input"    # F

    .prologue
    const/high16 v2, 0x3f000000    # 0.5f

    const/high16 v3, 0x3f800000    # 1.0f

    .line 167
    div-float v0, p1, v2

    .line 169
    .local v0, "position":F
    cmpg-float v1, v0, v3

    if-gez v1, :cond_0

    .line 170
    mul-float v1, v2, v0

    mul-float/2addr v1, v0

    .line 173
    :goto_0
    return v1

    :cond_0
    const/high16 v1, -0x41000000    # -0.5f

    sub-float/2addr v0, v3

    const/high16 v2, 0x40000000    # 2.0f

    sub-float v2, v0, v2

    mul-float/2addr v2, v0

    sub-float/2addr v2, v3

    mul-float/2addr v1, v2

    goto :goto_0
.end method
