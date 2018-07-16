.class public Lm/framework/ui/widget/slidingmenu/MenuConfig;
.super Ljava/lang/Object;
.source "MenuConfig.java"


# instance fields
.field bodyBackground:I

.field itemDownBack:I

.field itemDownRelease:I

.field menuBackground:I

.field menuSep:I

.field menuWeight:F

.field paddingBottom:I

.field paddingLeft:I

.field paddingRight:I

.field paddingTop:I

.field rightShadow:I

.field titleHeight:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const v0, 0x3f4ccccd    # 0.8f

    iput v0, p0, Lm/framework/ui/widget/slidingmenu/MenuConfig;->menuWeight:F

    .line 4
    return-void
.end method
