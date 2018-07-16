.class public abstract Lm/framework/ui/widget/viewpager/ViewPagerAdapter;
.super Ljava/lang/Object;
.source "ViewPagerAdapter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getCount()I
.end method

.method public abstract getView(ILandroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public onScreenChange(II)V
    .locals 0
    .param p1, "currentScreen"    # I
    .param p2, "lastScreen"    # I

    .prologue
    .line 12
    return-void
.end method
