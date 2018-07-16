.class Lcom/github/mikephil/charting/animation/Easing$EasingFunctions$23;
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
    .line 567
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 5
    .param p1, "input"    # F

    .prologue
    .line 578
    const v1, 0x3fd9cd60

    .line 579
    .local v1, "s":F
    move v0, p1

    .line 580
    .local v0, "position":F
    mul-float v2, v0, v0

    const v3, 0x402ce6b0

    mul-float/2addr v3, v0

    const v4, 0x3fd9cd60

    sub-float/2addr v3, v4

    mul-float/2addr v2, v3

    return v2
.end method
