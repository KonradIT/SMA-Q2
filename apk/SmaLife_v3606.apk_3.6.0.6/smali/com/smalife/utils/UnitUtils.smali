.class public Lcom/smalife/utils/UnitUtils;
.super Ljava/lang/Object;
.source "UnitUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertToCm(F)D
    .locals 4
    .param p0, "feet"    # F

    .prologue
    .line 17
    float-to-double v0, p0

    const-wide v2, 0x400451eb851eb852L    # 2.54

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-double v0, v0

    return-wide v0
.end method

.method public static convertToInch(F)D
    .locals 4
    .param p0, "cm"    # F

    .prologue
    .line 13
    float-to-double v0, p0

    const-wide v2, 0x3fd93264c99325f6L    # 0.39370078740157

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-double v0, v0

    return-wide v0
.end method

.method public static convertToKg(F)D
    .locals 4
    .param p0, "lbs"    # F

    .prologue
    .line 9
    float-to-double v0, p0

    const-wide v2, 0x3fdd07a86aedb4a4L    # 0.4535924

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-double v0, v0

    return-wide v0
.end method

.method public static convertToKm(F)D
    .locals 4
    .param p0, "mile"    # F

    .prologue
    .line 25
    float-to-double v0, p0

    const-wide v2, 0x3ff9bfdf7e8038a0L    # 1.609344

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public static convertToLbs(F)D
    .locals 4
    .param p0, "kg"    # F

    .prologue
    .line 5
    float-to-double v0, p0

    const-wide v2, 0x4001a3112c782e0fL    # 2.2046226

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-double v0, v0

    return-wide v0
.end method

.method public static convertToMile(F)D
    .locals 4
    .param p0, "km"    # F

    .prologue
    .line 21
    float-to-double v0, p0

    const-wide v2, 0x3ff9be76c8b43958L    # 1.609

    div-double/2addr v0, v2

    return-wide v0
.end method
