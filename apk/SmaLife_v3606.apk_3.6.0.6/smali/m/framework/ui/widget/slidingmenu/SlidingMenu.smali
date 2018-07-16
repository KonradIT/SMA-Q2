.class public Lm/framework/ui/widget/slidingmenu/SlidingMenu;
.super Landroid/widget/RelativeLayout;
.source "SlidingMenu.java"


# instance fields
.field private adapter:Lm/framework/ui/widget/slidingmenu/MenuAdapter;

.field private config:Lm/framework/ui/widget/slidingmenu/MenuConfig;

.field private curBody:Landroid/view/View;

.field private flMenu:Landroid/widget/FrameLayout;

.field private itemToView:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lm/framework/ui/widget/slidingmenu/SlidingMenuItem;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private llBody:Landroid/widget/LinearLayout;

.field private llMenu:Landroid/widget/LinearLayout;

.field private menuShown:Z

.field private menuWidth:I

.field private ocListener:Landroid/view/View$OnClickListener;

.field private otListener:Landroid/view/View$OnTouchListener;

.field private screenWidth:I

.field private showMenuWidth:I

.field private svBody:Lm/framework/ui/widget/slidingmenu/BodyContainer;

.field private vCover:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 44
    invoke-direct {p0, p1}, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->init(Landroid/content/Context;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    invoke-direct {p0, p1}, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->init(Landroid/content/Context;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
    invoke-direct {p0, p1}, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->init(Landroid/content/Context;)V

    .line 55
    return-void
.end method

.method static synthetic access$0(Lm/framework/ui/widget/slidingmenu/SlidingMenu;)Lm/framework/ui/widget/slidingmenu/MenuAdapter;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->adapter:Lm/framework/ui/widget/slidingmenu/MenuAdapter;

    return-object v0
.end method

.method static synthetic access$1(Lm/framework/ui/widget/slidingmenu/SlidingMenu;)Lm/framework/ui/widget/slidingmenu/MenuConfig;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->config:Lm/framework/ui/widget/slidingmenu/MenuConfig;

    return-object v0
.end method

.method static synthetic access$2(Lm/framework/ui/widget/slidingmenu/SlidingMenu;)Z
    .locals 1

    .prologue
    .line 34
    iget-boolean v0, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->menuShown:Z

    return v0
.end method

.method static synthetic access$3(Lm/framework/ui/widget/slidingmenu/SlidingMenu;)Lm/framework/ui/widget/slidingmenu/BodyContainer;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->svBody:Lm/framework/ui/widget/slidingmenu/BodyContainer;

    return-object v0
.end method

.method static synthetic access$4(Lm/framework/ui/widget/slidingmenu/SlidingMenu;)I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->menuWidth:I

    return v0
.end method

.method private disableOverScrollMode(Landroid/view/View;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 432
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x9

    if-ge v2, v3, :cond_0

    .line 443
    :goto_0
    return-void

    .line 437
    :cond_0
    :try_start_0
    const-class v2, Landroid/view/View;

    const-string v3, "setOverScrollMode"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 438
    .local v0, "m":Ljava/lang/reflect/Method;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 439
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 440
    .end local v0    # "m":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    .line 441
    .local v1, "t":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private getSepView(Landroid/content/Context;)Landroid/view/View;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 341
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 342
    .local v0, "vSep":Landroid/view/View;
    iget-object v1, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->config:Lm/framework/ui/widget/slidingmenu/MenuConfig;

    iget v1, v1, Lm/framework/ui/widget/slidingmenu/MenuConfig;->menuSep:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 343
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 344
    const/4 v2, -0x1

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 343
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 345
    return-object v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 58
    new-instance v0, Lm/framework/ui/widget/slidingmenu/MenuConfig;

    invoke-direct {v0}, Lm/framework/ui/widget/slidingmenu/MenuConfig;-><init>()V

    iput-object v0, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->config:Lm/framework/ui/widget/slidingmenu/MenuConfig;

    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->itemToView:Ljava/util/HashMap;

    .line 61
    new-instance v0, Lm/framework/ui/widget/slidingmenu/SlidingMenu$1;

    invoke-direct {v0, p0}, Lm/framework/ui/widget/slidingmenu/SlidingMenu$1;-><init>(Lm/framework/ui/widget/slidingmenu/SlidingMenu;)V

    iput-object v0, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->ocListener:Landroid/view/View$OnClickListener;

    .line 81
    new-instance v0, Lm/framework/ui/widget/slidingmenu/SlidingMenu$2;

    invoke-direct {v0, p0}, Lm/framework/ui/widget/slidingmenu/SlidingMenu$2;-><init>(Lm/framework/ui/widget/slidingmenu/SlidingMenu;)V

    iput-object v0, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->otListener:Landroid/view/View$OnTouchListener;

    .line 98
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->screenWidth:I

    .line 99
    iget v0, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->screenWidth:I

    int-to-float v0, v0

    iget-object v1, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->config:Lm/framework/ui/widget/slidingmenu/MenuConfig;

    iget v1, v1, Lm/framework/ui/widget/slidingmenu/MenuConfig;->menuWeight:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->menuWidth:I

    .line 100
    iget v0, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->screenWidth:I

    iget v1, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->menuWidth:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->showMenuWidth:I

    .line 102
    iget-object v0, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->config:Lm/framework/ui/widget/slidingmenu/MenuConfig;

    iget v0, v0, Lm/framework/ui/widget/slidingmenu/MenuConfig;->menuBackground:I

    invoke-virtual {p0, v0}, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->setBackgroundResource(I)V

    .line 103
    invoke-direct {p0, p1}, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->initMenu(Landroid/content/Context;)V

    .line 104
    invoke-direct {p0, p1}, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->initBody(Landroid/content/Context;)V

    .line 106
    invoke-virtual {p0}, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 107
    new-instance v1, Lm/framework/ui/widget/slidingmenu/SlidingMenu$3;

    invoke-direct {v1, p0}, Lm/framework/ui/widget/slidingmenu/SlidingMenu$3;-><init>(Lm/framework/ui/widget/slidingmenu/SlidingMenu;)V

    .line 106
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 118
    return-void
.end method

.method private initBody(Landroid/content/Context;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x0

    const/4 v9, -0x1

    .line 168
    new-instance v6, Lm/framework/ui/widget/slidingmenu/BodyContainer;

    invoke-direct {v6, p0}, Lm/framework/ui/widget/slidingmenu/BodyContainer;-><init>(Lm/framework/ui/widget/slidingmenu/SlidingMenu;)V

    iput-object v6, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->svBody:Lm/framework/ui/widget/slidingmenu/BodyContainer;

    .line 169
    iget-object v6, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->svBody:Lm/framework/ui/widget/slidingmenu/BodyContainer;

    invoke-virtual {v6, v7}, Lm/framework/ui/widget/slidingmenu/BodyContainer;->setHorizontalScrollBarEnabled(Z)V

    .line 170
    iget-object v6, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->svBody:Lm/framework/ui/widget/slidingmenu/BodyContainer;

    invoke-virtual {v6, v7}, Lm/framework/ui/widget/slidingmenu/BodyContainer;->setHorizontalFadingEdgeEnabled(Z)V

    .line 171
    iget-object v6, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->svBody:Lm/framework/ui/widget/slidingmenu/BodyContainer;

    invoke-direct {p0, v6}, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->disableOverScrollMode(Landroid/view/View;)V

    .line 172
    iget-object v6, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->svBody:Lm/framework/ui/widget/slidingmenu/BodyContainer;

    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    .line 173
    iget v8, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->screenWidth:I

    invoke-direct {v7, v8, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 172
    invoke-virtual {v6, v7}, Lm/framework/ui/widget/slidingmenu/BodyContainer;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 174
    iget-object v6, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->svBody:Lm/framework/ui/widget/slidingmenu/BodyContainer;

    invoke-virtual {p0, v6}, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->addView(Landroid/view/View;)V

    .line 177
    new-instance v5, Landroid/widget/LinearLayout;

    invoke-direct {v5, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 178
    .local v5, "rlBodyContainer":Landroid/widget/LinearLayout;
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    .line 179
    iget v7, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->screenWidth:I

    iget v8, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->menuWidth:I

    add-int/2addr v7, v8

    invoke-direct {v6, v7, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 178
    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 180
    iget-object v6, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->svBody:Lm/framework/ui/widget/slidingmenu/BodyContainer;

    invoke-virtual {v6, v5}, Lm/framework/ui/widget/slidingmenu/BodyContainer;->addView(Landroid/view/View;)V

    .line 182
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v0, v6}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 183
    .local v0, "flPlh":Landroid/widget/FrameLayout;
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 184
    iget v6, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->menuWidth:I

    .line 183
    invoke-direct {v3, v6, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 185
    .local v3, "lpPlh":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 186
    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 189
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 190
    .local v1, "ivShadow":Landroid/widget/ImageView;
    iget-object v6, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->config:Lm/framework/ui/widget/slidingmenu/MenuConfig;

    iget v6, v6, Lm/framework/ui/widget/slidingmenu/MenuConfig;->rightShadow:I

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 191
    sget-object v6, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 192
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 193
    const/4 v6, -0x2

    .line 192
    invoke-direct {v4, v6, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 194
    .local v4, "lpShadow":Landroid/widget/FrameLayout$LayoutParams;
    const/4 v6, 0x5

    iput v6, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 195
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 196
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 199
    new-instance v6, Lm/framework/ui/widget/slidingmenu/SlidingMenu$5;

    invoke-direct {v6, p0, p1}, Lm/framework/ui/widget/slidingmenu/SlidingMenu$5;-><init>(Lm/framework/ui/widget/slidingmenu/SlidingMenu;Landroid/content/Context;)V

    iput-object v6, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->llBody:Landroid/widget/LinearLayout;

    .line 204
    iget-object v6, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->llBody:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->config:Lm/framework/ui/widget/slidingmenu/MenuConfig;

    iget v7, v7, Lm/framework/ui/widget/slidingmenu/MenuConfig;->bodyBackground:I

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 205
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 206
    iget v6, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->screenWidth:I

    .line 205
    invoke-direct {v2, v6, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 207
    .local v2, "lpBody":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v6, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->llBody:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 208
    iget-object v6, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->llBody:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 209
    return-void
.end method

.method private initMenu(Landroid/content/Context;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 122
    new-instance v3, Lm/framework/ui/widget/slidingmenu/SlidingMenu$4;

    invoke-direct {v3, p0, p1}, Lm/framework/ui/widget/slidingmenu/SlidingMenu$4;-><init>(Lm/framework/ui/widget/slidingmenu/SlidingMenu;Landroid/content/Context;)V

    iput-object v3, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->flMenu:Landroid/widget/FrameLayout;

    .line 130
    iget-object v3, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->flMenu:Landroid/widget/FrameLayout;

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 131
    iget v5, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->menuWidth:I

    invoke-direct {v4, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 130
    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 132
    iget-object v3, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->flMenu:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v3}, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->addView(Landroid/view/View;)V

    .line 134
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 135
    .local v0, "llMenuCtn":Landroid/widget/LinearLayout;
    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 136
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 137
    invoke-direct {v3, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 136
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 138
    iget-object v3, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->flMenu:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 141
    new-instance v2, Landroid/widget/ScrollView;

    invoke-direct {v2, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 142
    .local v2, "svMenu":Landroid/widget/ScrollView;
    invoke-virtual {v2, v7}, Landroid/widget/ScrollView;->setVerticalScrollBarEnabled(Z)V

    .line 143
    invoke-virtual {v2, v7}, Landroid/widget/ScrollView;->setVerticalFadingEdgeEnabled(Z)V

    .line 144
    invoke-direct {p0, v2}, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->disableOverScrollMode(Landroid/view/View;)V

    .line 145
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 147
    .local v1, "lpSv":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 148
    invoke-virtual {v2, v1}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 149
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 152
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->llMenu:Landroid/widget/LinearLayout;

    .line 153
    iget-object v3, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->llMenu:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 154
    iget-object v3, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->llMenu:Landroid/widget/LinearLayout;

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 155
    invoke-direct {v4, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 154
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 156
    iget-object v3, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->llMenu:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 159
    new-instance v3, Landroid/view/View;

    invoke-direct {v3, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->vCover:Landroid/view/View;

    .line 160
    iget-object v3, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->vCover:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->setBackgroundColor(I)V

    .line 161
    iget-object v3, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->vCover:Landroid/view/View;

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 162
    invoke-direct {v4, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 161
    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 163
    iget-object v3, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->flMenu:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->vCover:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 164
    return-void
.end method

.method private invalidateMenu()V
    .locals 11

    .prologue
    .line 310
    invoke-virtual {p0}, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 311
    .local v0, "context":Landroid/content/Context;
    iget-object v9, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->llMenu:Landroid/widget/LinearLayout;

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 312
    iget-object v9, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->adapter:Lm/framework/ui/widget/slidingmenu/MenuAdapter;

    invoke-virtual {v9}, Lm/framework/ui/widget/slidingmenu/MenuAdapter;->getGroupCount()I

    move-result v1

    .line 313
    .local v1, "count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-lt v4, v1, :cond_0

    .line 338
    return-void

    .line 315
    :cond_0
    iget-object v9, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->adapter:Lm/framework/ui/widget/slidingmenu/MenuAdapter;

    iget-object v10, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->llMenu:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v4, v10}, Lm/framework/ui/widget/slidingmenu/MenuAdapter;->getGroupView(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 316
    .local v7, "title":Landroid/view/View;
    iget-object v9, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->llMenu:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 319
    iget-object v9, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->adapter:Lm/framework/ui/widget/slidingmenu/MenuAdapter;

    invoke-virtual {v9, v4}, Lm/framework/ui/widget/slidingmenu/MenuAdapter;->getGroup(I)Lm/framework/ui/widget/slidingmenu/SlidingMenuGroup;

    move-result-object v9

    invoke-virtual {v9}, Lm/framework/ui/widget/slidingmenu/SlidingMenuGroup;->getCount()I

    move-result v3

    .line 320
    .local v3, "groupCount":I
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_1
    if-lt v6, v3, :cond_2

    .line 333
    iget-object v9, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->llMenu:Landroid/widget/LinearLayout;

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v8

    .line 334
    .local v8, "viewCount":I
    if-lez v8, :cond_1

    .line 335
    iget-object v9, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->llMenu:Landroid/widget/LinearLayout;

    add-int/lit8 v10, v8, -0x1

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 313
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 321
    .end local v8    # "viewCount":I
    :cond_2
    iget-object v9, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->adapter:Lm/framework/ui/widget/slidingmenu/MenuAdapter;

    invoke-virtual {v9, v4, v6}, Lm/framework/ui/widget/slidingmenu/MenuAdapter;->getItem(II)Lm/framework/ui/widget/slidingmenu/SlidingMenuItem;

    move-result-object v2

    .line 322
    .local v2, "data":Lm/framework/ui/widget/slidingmenu/SlidingMenuItem;
    iget-object v9, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->adapter:Lm/framework/ui/widget/slidingmenu/MenuAdapter;

    iget-object v10, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->llMenu:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v2, v10}, Lm/framework/ui/widget/slidingmenu/MenuAdapter;->getItemView(Lm/framework/ui/widget/slidingmenu/SlidingMenuItem;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 323
    .local v5, "item":Landroid/view/View;
    iget-object v9, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->llMenu:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 324
    iget-object v9, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->llMenu:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0}, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->getSepView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 326
    iget-object v9, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->itemToView:Ljava/util/HashMap;

    invoke-virtual {v9, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    invoke-virtual {v5, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 328
    iget-object v9, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->ocListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 329
    iget-object v9, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->otListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v5, v9}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 320
    add-int/lit8 v6, v6, 0x1

    goto :goto_1
.end method

.method private reInit(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 224
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->screenWidth:I

    .line 225
    iget v0, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->screenWidth:I

    int-to-float v0, v0

    iget-object v1, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->config:Lm/framework/ui/widget/slidingmenu/MenuConfig;

    iget v1, v1, Lm/framework/ui/widget/slidingmenu/MenuConfig;->menuWeight:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->menuWidth:I

    .line 226
    iget v0, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->screenWidth:I

    iget v1, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->menuWidth:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->showMenuWidth:I

    .line 227
    iget-object v0, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->config:Lm/framework/ui/widget/slidingmenu/MenuConfig;

    iget v0, v0, Lm/framework/ui/widget/slidingmenu/MenuConfig;->menuBackground:I

    invoke-virtual {p0, v0}, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->setBackgroundResource(I)V

    .line 229
    invoke-direct {p0, p1}, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->reInitMenu(Landroid/content/Context;)V

    .line 230
    invoke-direct {p0, p1}, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->reInitBody(Landroid/content/Context;)V

    .line 231
    return-void
.end method

.method private reInitBody(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x0

    .line 257
    iget-object v5, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->svBody:Lm/framework/ui/widget/slidingmenu/BodyContainer;

    invoke-virtual {v5}, Lm/framework/ui/widget/slidingmenu/BodyContainer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 258
    .local v3, "lpBody":Landroid/view/ViewGroup$LayoutParams;
    iget v5, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->screenWidth:I

    iput v5, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 259
    iget-object v5, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->svBody:Lm/framework/ui/widget/slidingmenu/BodyContainer;

    invoke-virtual {v5, v3}, Lm/framework/ui/widget/slidingmenu/BodyContainer;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 261
    iget-object v5, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->svBody:Lm/framework/ui/widget/slidingmenu/BodyContainer;

    invoke-virtual {v5, v7}, Lm/framework/ui/widget/slidingmenu/BodyContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 262
    .local v4, "rlBodyContainer":Landroid/widget/LinearLayout;
    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 263
    .local v2, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget v5, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->screenWidth:I

    iget v6, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->menuWidth:I

    add-int/2addr v5, v6

    iput v5, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 264
    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 266
    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 267
    .local v0, "flPlh":Landroid/widget/FrameLayout;
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 268
    iget v5, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->menuWidth:I

    iput v5, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 269
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 271
    iget-object v5, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->llBody:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 272
    iget v5, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->screenWidth:I

    iput v5, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 273
    iget-object v5, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->llBody:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 274
    iget-object v5, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->llBody:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->config:Lm/framework/ui/widget/slidingmenu/MenuConfig;

    iget v6, v6, Lm/framework/ui/widget/slidingmenu/MenuConfig;->bodyBackground:I

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 276
    invoke-virtual {v0, v7}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 277
    .local v1, "ivShadow":Landroid/widget/ImageView;
    iget-object v5, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->config:Lm/framework/ui/widget/slidingmenu/MenuConfig;

    iget v5, v5, Lm/framework/ui/widget/slidingmenu/MenuConfig;->rightShadow:I

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 279
    iget-boolean v5, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->menuShown:Z

    if-nez v5, :cond_0

    .line 280
    invoke-virtual {p0}, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v5

    .line 281
    new-instance v6, Lm/framework/ui/widget/slidingmenu/SlidingMenu$6;

    invoke-direct {v6, p0}, Lm/framework/ui/widget/slidingmenu/SlidingMenu$6;-><init>(Lm/framework/ui/widget/slidingmenu/SlidingMenu;)V

    .line 280
    invoke-virtual {v5, v6}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 293
    :cond_0
    return-void
.end method

.method private reInitMenu(Landroid/content/Context;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 234
    iget-object v5, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->flMenu:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 235
    .local v3, "lpMenu":Landroid/view/ViewGroup$LayoutParams;
    iget v5, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->menuWidth:I

    iput v5, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 236
    iget-object v5, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->flMenu:Landroid/widget/FrameLayout;

    invoke-virtual {v5, v3}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 237
    iget-object v5, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->llMenu:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->config:Lm/framework/ui/widget/slidingmenu/MenuConfig;

    iget v6, v6, Lm/framework/ui/widget/slidingmenu/MenuConfig;->paddingLeft:I

    iget-object v7, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->config:Lm/framework/ui/widget/slidingmenu/MenuConfig;

    iget v7, v7, Lm/framework/ui/widget/slidingmenu/MenuConfig;->paddingTop:I

    .line 238
    iget-object v8, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->config:Lm/framework/ui/widget/slidingmenu/MenuConfig;

    iget v8, v8, Lm/framework/ui/widget/slidingmenu/MenuConfig;->paddingRight:I

    iget-object v9, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->config:Lm/framework/ui/widget/slidingmenu/MenuConfig;

    iget v9, v9, Lm/framework/ui/widget/slidingmenu/MenuConfig;->paddingBottom:I

    .line 237
    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 240
    iget-object v5, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->adapter:Lm/framework/ui/widget/slidingmenu/MenuAdapter;

    if-eqz v5, :cond_1

    .line 241
    iget-object v5, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->adapter:Lm/framework/ui/widget/slidingmenu/MenuAdapter;

    invoke-virtual {v5}, Lm/framework/ui/widget/slidingmenu/MenuAdapter;->getMenuTitle()Landroid/view/View;

    move-result-object v4

    .line 242
    .local v4, "vTitle":Landroid/view/View;
    if-eqz v4, :cond_1

    .line 243
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 244
    .local v2, "lp":Landroid/view/ViewGroup$LayoutParams;
    const/4 v0, -0x2

    .line 245
    .local v0, "height":I
    if-eqz v2, :cond_0

    .line 246
    iget v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 248
    :cond_0
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 249
    const/4 v6, -0x1

    invoke-direct {v5, v6, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 248
    invoke-virtual {v4, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 250
    iget-object v5, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->flMenu:Landroid/widget/FrameLayout;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 251
    .local v1, "llMenuCtn":Landroid/widget/LinearLayout;
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 254
    .end local v0    # "height":I
    .end local v1    # "llMenuCtn":Landroid/widget/LinearLayout;
    .end local v2    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v4    # "vTitle":Landroid/view/View;
    :cond_1
    return-void
.end method


# virtual methods
.method public getBodyView()Landroid/view/View;
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->curBody:Landroid/view/View;

    return-object v0
.end method

.method getMenuConfig()Lm/framework/ui/widget/slidingmenu/MenuConfig;
    .locals 1

    .prologue
    .line 387
    iget-object v0, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->config:Lm/framework/ui/widget/slidingmenu/MenuConfig;

    return-object v0
.end method

.method getMenuCover()Landroid/view/View;
    .locals 1

    .prologue
    .line 391
    iget-object v0, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->vCover:Landroid/view/View;

    return-object v0
.end method

.method getMenuWidth()I
    .locals 1

    .prologue
    .line 379
    iget v0, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->menuWidth:I

    return v0
.end method

.method getShowMenuWidth()I
    .locals 1

    .prologue
    .line 383
    iget v0, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->showMenuWidth:I

    return v0
.end method

.method public hideMenu()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 367
    iput-boolean v2, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->menuShown:Z

    .line 368
    iget-object v0, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->svBody:Lm/framework/ui/widget/slidingmenu/BodyContainer;

    iget v1, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->menuWidth:I

    invoke-virtual {v0, v1, v2}, Lm/framework/ui/widget/slidingmenu/BodyContainer;->smoothScrollTo(II)V

    .line 369
    iget-object v0, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->adapter:Lm/framework/ui/widget/slidingmenu/MenuAdapter;

    if-eqz v0, :cond_0

    .line 370
    iget-object v0, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->adapter:Lm/framework/ui/widget/slidingmenu/MenuAdapter;

    iget-boolean v1, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->menuShown:Z

    invoke-virtual {v0, v1}, Lm/framework/ui/widget/slidingmenu/MenuAdapter;->onMenuSwitch(Z)V

    .line 372
    :cond_0
    return-void
.end method

.method public isMenuShown()Z
    .locals 1

    .prologue
    .line 375
    iget-boolean v0, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->menuShown:Z

    return v0
.end method

.method itemToView(Lm/framework/ui/widget/slidingmenu/SlidingMenuItem;)Landroid/view/View;
    .locals 1
    .param p1, "item"    # Lm/framework/ui/widget/slidingmenu/SlidingMenuItem;

    .prologue
    .line 446
    iget-object v0, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->itemToView:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public refresh()V
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->adapter:Lm/framework/ui/widget/slidingmenu/MenuAdapter;

    if-eqz v0, :cond_0

    .line 218
    invoke-virtual {p0}, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->reInit(Landroid/content/Context;)V

    .line 219
    invoke-direct {p0}, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->invalidateMenu()V

    .line 221
    :cond_0
    return-void
.end method

.method public setAdapter(Lm/framework/ui/widget/slidingmenu/MenuAdapter;)V
    .locals 0
    .param p1, "adapter"    # Lm/framework/ui/widget/slidingmenu/MenuAdapter;

    .prologue
    .line 212
    iput-object p1, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->adapter:Lm/framework/ui/widget/slidingmenu/MenuAdapter;

    .line 213
    invoke-virtual {p0}, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->refresh()V

    .line 214
    return-void
.end method

.method public setBodyBackground(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 423
    iget-object v0, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->config:Lm/framework/ui/widget/slidingmenu/MenuConfig;

    iput p1, v0, Lm/framework/ui/widget/slidingmenu/MenuConfig;->bodyBackground:I

    .line 424
    return-void
.end method

.method public setBodyView(Landroid/view/View;)V
    .locals 3
    .param p1, "body"    # Landroid/view/View;

    .prologue
    const/4 v2, -0x1

    .line 296
    iput-object p1, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->curBody:Landroid/view/View;

    .line 297
    iget-object v0, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->llBody:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 298
    iget-object v0, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->curBody:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 299
    iget-object v0, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->curBody:Landroid/view/View;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 300
    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 299
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 301
    iget-object v0, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->llBody:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->curBody:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 303
    :cond_0
    return-void
.end method

.method public setMenuBackground(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 404
    iget-object v0, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->config:Lm/framework/ui/widget/slidingmenu/MenuConfig;

    iput p1, v0, Lm/framework/ui/widget/slidingmenu/MenuConfig;->menuBackground:I

    .line 405
    return-void
.end method

.method public setMenuDivider(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 427
    iget-object v0, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->config:Lm/framework/ui/widget/slidingmenu/MenuConfig;

    iput p1, v0, Lm/framework/ui/widget/slidingmenu/MenuConfig;->menuSep:I

    .line 428
    return-void
.end method

.method public setMenuItemBackground(II)V
    .locals 1
    .param p1, "down"    # I
    .param p2, "release"    # I

    .prologue
    .line 395
    iget-object v0, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->config:Lm/framework/ui/widget/slidingmenu/MenuConfig;

    iput p1, v0, Lm/framework/ui/widget/slidingmenu/MenuConfig;->itemDownBack:I

    .line 396
    iget-object v0, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->config:Lm/framework/ui/widget/slidingmenu/MenuConfig;

    iput p2, v0, Lm/framework/ui/widget/slidingmenu/MenuConfig;->itemDownRelease:I

    .line 397
    return-void
.end method

.method public setMenuPadding(IIII)V
    .locals 1
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 408
    iget-object v0, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->config:Lm/framework/ui/widget/slidingmenu/MenuConfig;

    iput p1, v0, Lm/framework/ui/widget/slidingmenu/MenuConfig;->paddingLeft:I

    .line 409
    iget-object v0, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->config:Lm/framework/ui/widget/slidingmenu/MenuConfig;

    iput p2, v0, Lm/framework/ui/widget/slidingmenu/MenuConfig;->paddingTop:I

    .line 410
    iget-object v0, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->config:Lm/framework/ui/widget/slidingmenu/MenuConfig;

    iput p3, v0, Lm/framework/ui/widget/slidingmenu/MenuConfig;->paddingRight:I

    .line 411
    iget-object v0, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->config:Lm/framework/ui/widget/slidingmenu/MenuConfig;

    iput p4, v0, Lm/framework/ui/widget/slidingmenu/MenuConfig;->paddingBottom:I

    .line 412
    return-void
.end method

.method public setMenuWeight(F)V
    .locals 1
    .param p1, "weight"    # F

    .prologue
    .line 400
    iget-object v0, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->config:Lm/framework/ui/widget/slidingmenu/MenuConfig;

    iput p1, v0, Lm/framework/ui/widget/slidingmenu/MenuConfig;->menuWeight:F

    .line 401
    return-void
.end method

.method public setShadowRes(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 419
    iget-object v0, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->config:Lm/framework/ui/widget/slidingmenu/MenuConfig;

    iput p1, v0, Lm/framework/ui/widget/slidingmenu/MenuConfig;->rightShadow:I

    .line 420
    return-void
.end method

.method public setTtleHeight(I)V
    .locals 1
    .param p1, "height"    # I

    .prologue
    .line 415
    iget-object v0, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->config:Lm/framework/ui/widget/slidingmenu/MenuConfig;

    iput p1, v0, Lm/framework/ui/widget/slidingmenu/MenuConfig;->titleHeight:I

    .line 416
    return-void
.end method

.method public showMenu()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 359
    const/4 v0, 0x1

    iput-boolean v0, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->menuShown:Z

    .line 360
    iget-object v0, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->svBody:Lm/framework/ui/widget/slidingmenu/BodyContainer;

    invoke-virtual {v0, v1, v1}, Lm/framework/ui/widget/slidingmenu/BodyContainer;->smoothScrollTo(II)V

    .line 361
    iget-object v0, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->adapter:Lm/framework/ui/widget/slidingmenu/MenuAdapter;

    if-eqz v0, :cond_0

    .line 362
    iget-object v0, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->adapter:Lm/framework/ui/widget/slidingmenu/MenuAdapter;

    iget-boolean v1, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->menuShown:Z

    invoke-virtual {v0, v1}, Lm/framework/ui/widget/slidingmenu/MenuAdapter;->onMenuSwitch(Z)V

    .line 364
    :cond_0
    return-void
.end method

.method public switchMenu()V
    .locals 1

    .prologue
    .line 350
    iget-boolean v0, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->menuShown:Z

    if-eqz v0, :cond_0

    .line 351
    invoke-virtual {p0}, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->hideMenu()V

    .line 356
    :goto_0
    return-void

    .line 354
    :cond_0
    invoke-virtual {p0}, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->showMenu()V

    goto :goto_0
.end method

.method public triggerItem(II)V
    .locals 2
    .param p1, "groupId"    # I
    .param p2, "itemId"    # I

    .prologue
    .line 450
    iget-object v1, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->adapter:Lm/framework/ui/widget/slidingmenu/MenuAdapter;

    if-nez v1, :cond_1

    .line 458
    :cond_0
    :goto_0
    return-void

    .line 454
    :cond_1
    iget-object v1, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->adapter:Lm/framework/ui/widget/slidingmenu/MenuAdapter;

    invoke-virtual {v1, p1, p2}, Lm/framework/ui/widget/slidingmenu/MenuAdapter;->getMenuItem(II)Lm/framework/ui/widget/slidingmenu/SlidingMenuItem;

    move-result-object v0

    .line 455
    .local v0, "item":Lm/framework/ui/widget/slidingmenu/SlidingMenuItem;
    if-eqz v0, :cond_0

    .line 456
    iget-object v1, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->adapter:Lm/framework/ui/widget/slidingmenu/MenuAdapter;

    invoke-virtual {v1, v0}, Lm/framework/ui/widget/slidingmenu/MenuAdapter;->onItemTrigger(Lm/framework/ui/widget/slidingmenu/SlidingMenuItem;)Z

    goto :goto_0
.end method

.method public triggerItem(Lm/framework/ui/widget/slidingmenu/SlidingMenuItem;)V
    .locals 1
    .param p1, "item"    # Lm/framework/ui/widget/slidingmenu/SlidingMenuItem;

    .prologue
    .line 461
    iget-object v0, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->adapter:Lm/framework/ui/widget/slidingmenu/MenuAdapter;

    if-nez v0, :cond_1

    .line 468
    :cond_0
    :goto_0
    return-void

    .line 465
    :cond_1
    if-eqz p1, :cond_0

    .line 466
    iget-object v0, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->adapter:Lm/framework/ui/widget/slidingmenu/MenuAdapter;

    invoke-virtual {v0, p1}, Lm/framework/ui/widget/slidingmenu/MenuAdapter;->onItemTrigger(Lm/framework/ui/widget/slidingmenu/SlidingMenuItem;)Z

    goto :goto_0
.end method
