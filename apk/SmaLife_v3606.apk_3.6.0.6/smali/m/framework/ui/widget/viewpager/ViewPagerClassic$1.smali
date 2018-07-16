.class Lm/framework/ui/widget/viewpager/ViewPagerClassic$1;
.super Ljava/lang/Object;
.source "ViewPagerClassic.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lm/framework/ui/widget/viewpager/ViewPagerClassic;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lm/framework/ui/widget/viewpager/ViewPagerClassic;

.field values:[F


# direct methods
.method constructor <init>(Lm/framework/ui/widget/viewpager/ViewPagerClassic;)V
    .locals 1

    .prologue
    .line 1
    iput-object p1, p0, Lm/framework/ui/widget/viewpager/ViewPagerClassic$1;->this$0:Lm/framework/ui/widget/viewpager/ViewPagerClassic;

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/16 v0, 0x65

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    .line 70
    iput-object v0, p0, Lm/framework/ui/widget/viewpager/ViewPagerClassic$1;->values:[F

    return-void

    .line 56
    nop

    :array_0
    .array-data 4
        0x0
        0x3c80ac98
        0x3d00a89c
        0x3d40f2bf
        0x3d80984e
        0x3da0af2a
        0x3dc0bbda
        0x3de0bc38
        0x3e00574b
        0x3e10485a    # 0.140901f
        0x3e20303c    # 0.156434f
        0x3e300e28
        0x3e3fe0ce    # 0.187381f
        0x3e4fa765
        0x3e5f60e1
        0x3e6f0c35
        0x3e7ea897    # 0.24869f
        0x3e871a5d
        0x3e8ed7e9
        0x3e968c69    # 0.29404f
        0x3e9e377a
        0x3ea5d873
        0x3ead6f11
        0x3eb4faad
        0x3ebc7ae1
        0x3ec3ef07
        0x3ecb56fc
        0x3ed2b1f7
        0x3ed9ffb5
        0x3ee13faf
        0x3ee87161
        0x3eef9485
        0x3ef6a876
        0x3efdaccd
        0x3f025083
        0x3f05c27f
        0x3f092bf5
        0x3f0c8cc5
        0x3f0fe4ac
        0x3f133387
        0x3f167914
        0x3f19b520    # 0.60042f
        0x3f1ce779
        0x3f200fed
        0x3f232e38
        0x3f264239
        0x3f294bbe
        0x3f2c4a94
        0x3f2f3e79
        0x3f32275b
        0x3f3504f7
        0x3f37d71b
        0x3f3a9db6
        0x3f3d5875
        0x3f400746
        0x3f42a9f8
        0x3f454057
        0x3f47ca43
        0x3f4a4799
        0x3f4cb828
        0x3f4f1bbd
        0x3f517247
        0x3f53bb95
        0x3f55f773
        0x3f5825e1
        0x3f5a469d
        0x3f5c5996
        0x3f5e5eab
        0x3f6055a8
        0x3f623e7d
        0x3f641909
        0x3f65e52a
        0x3f67a2be
        0x3f6951b5    # 0.911403f
        0x3f6af1fe
        0x3f6c8366
        0x3f6e05cd
        0x3f6f7942
        0x3f70dd94
        0x3f7232a0
        0x3f737879
        0x3f74aeda
        0x3f75d5d4
        0x3f76ed35
        0x3f77f50e
        0x3f78ed3e
        0x3f79d5b2
        0x3f7aae5c
        0x3f7b7729
        0x3f7c301a
        0x3f7cd91f
        0x3f7d7236
        0x3f7dfb40
        0x3f7e743a
        0x3f7edd27
        0x3f7f35f4
        0x3f7f7eb3
        0x3f7fb741
        0x3f7fdfb1
        0x3f7ff7f0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 2
    .param p1, "t"    # F

    .prologue
    .line 72
    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v1, p1

    float-to-int v0, v1

    .line 73
    .local v0, "i":I
    iget-object v1, p0, Lm/framework/ui/widget/viewpager/ViewPagerClassic$1;->values:[F

    aget v1, v1, v0

    return v1
.end method
