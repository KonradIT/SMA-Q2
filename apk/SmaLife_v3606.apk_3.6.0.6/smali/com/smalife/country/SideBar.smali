.class public Lcom/smalife/country/SideBar;
.super Landroid/view/View;
.source "SideBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smalife/country/SideBar$OnTouchingLetterChangedListener;
    }
.end annotation


# static fields
.field public static b:[Ljava/lang/String;


# instance fields
.field private choose:I

.field private mTextDialog:Landroid/widget/TextView;

.field private onTouchingLetterChangedListener:Lcom/smalife/country/SideBar$OnTouchingLetterChangedListener;

.field private paint:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 44
    const/16 v0, 0x1c

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "*"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "A"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "B"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "C"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "D"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "E"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "F"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "G"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "H"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "I"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "J"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "K"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "L"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    .line 45
    const-string v2, "M"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "N"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "O"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "P"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "Q"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "R"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "S"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "T"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "U"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "V"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "W"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "X"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "Y"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "Z"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "#"

    aput-object v2, v0, v1

    .line 44
    sput-object v0, Lcom/smalife/country/SideBar;->b:[Ljava/lang/String;

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 72
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 48
    const/4 v0, -0x1

    iput v0, p0, Lcom/smalife/country/SideBar;->choose:I

    .line 50
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/smalife/country/SideBar;->paint:Landroid/graphics/Paint;

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    const/4 v0, -0x1

    iput v0, p0, Lcom/smalife/country/SideBar;->choose:I

    .line 50
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/smalife/country/SideBar;->paint:Landroid/graphics/Paint;

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 62
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    const/4 v0, -0x1

    iput v0, p0, Lcom/smalife/country/SideBar;->choose:I

    .line 50
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/smalife/country/SideBar;->paint:Landroid/graphics/Paint;

    .line 63
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v7, -0x1

    .line 111
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 112
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 113
    .local v4, "touch_y":F
    iget v3, p0, Lcom/smalife/country/SideBar;->choose:I

    .line 115
    .local v3, "oldChoose":I
    iget-object v2, p0, Lcom/smalife/country/SideBar;->onTouchingLetterChangedListener:Lcom/smalife/country/SideBar$OnTouchingLetterChangedListener;

    .line 117
    .local v2, "listener":Lcom/smalife/country/SideBar$OnTouchingLetterChangedListener;
    invoke-virtual {p0}, Lcom/smalife/country/SideBar;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float v5, v4, v5

    sget-object v6, Lcom/smalife/country/SideBar;->b:[Ljava/lang/String;

    array-length v6, v6

    int-to-float v6, v6

    mul-float/2addr v5, v6

    float-to-int v1, v5

    .line 119
    .local v1, "c":I
    packed-switch v0, :pswitch_data_0

    .line 132
    const v5, 0x7f020199

    invoke-virtual {p0, v5}, Lcom/smalife/country/SideBar;->setBackgroundResource(I)V

    .line 133
    if-eq v3, v1, :cond_2

    .line 135
    if-ltz v1, :cond_2

    sget-object v5, Lcom/smalife/country/SideBar;->b:[Ljava/lang/String;

    array-length v5, v5

    if-ge v1, v5, :cond_2

    .line 137
    if-eqz v2, :cond_0

    .line 139
    sget-object v5, Lcom/smalife/country/SideBar;->b:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-interface {v2, v5}, Lcom/smalife/country/SideBar$OnTouchingLetterChangedListener;->onTouchingLetterChanged(Ljava/lang/String;)V

    .line 141
    :cond_0
    iget-object v5, p0, Lcom/smalife/country/SideBar;->mTextDialog:Landroid/widget/TextView;

    if-eqz v5, :cond_1

    .line 143
    iget-object v5, p0, Lcom/smalife/country/SideBar;->mTextDialog:Landroid/widget/TextView;

    sget-object v6, Lcom/smalife/country/SideBar;->b:[Ljava/lang/String;

    aget-object v6, v6, v1

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    iget-object v5, p0, Lcom/smalife/country/SideBar;->mTextDialog:Landroid/widget/TextView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 146
    :cond_1
    iput v1, p0, Lcom/smalife/country/SideBar;->choose:I

    .line 147
    invoke-virtual {p0}, Lcom/smalife/country/SideBar;->invalidate()V

    .line 153
    :cond_2
    :goto_0
    const/4 v5, 0x1

    return v5

    .line 122
    :pswitch_0
    invoke-virtual {p0, v7}, Lcom/smalife/country/SideBar;->setBackgroundColor(I)V

    .line 123
    iput v7, p0, Lcom/smalife/country/SideBar;->choose:I

    .line 124
    invoke-virtual {p0}, Lcom/smalife/country/SideBar;->invalidate()V

    .line 125
    iget-object v5, p0, Lcom/smalife/country/SideBar;->mTextDialog:Landroid/widget/TextView;

    if-eqz v5, :cond_2

    .line 127
    iget-object v5, p0, Lcom/smalife/country/SideBar;->mTextDialog:Landroid/widget/TextView;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 119
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v10, 0x1

    .line 78
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 80
    invoke-virtual {p0}, Lcom/smalife/country/SideBar;->getHeight()I

    move-result v0

    .line 81
    .local v0, "height":I
    invoke-virtual {p0}, Lcom/smalife/country/SideBar;->getWidth()I

    move-result v3

    .line 84
    .local v3, "width":I
    int-to-float v6, v0

    const/high16 v7, 0x3f800000    # 1.0f

    mul-float/2addr v6, v7

    sget-object v7, Lcom/smalife/country/SideBar;->b:[Ljava/lang/String;

    array-length v7, v7

    int-to-float v7, v7

    div-float v2, v6, v7

    .line 85
    .local v2, "letterHeight":F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v6, Lcom/smalife/country/SideBar;->b:[Ljava/lang/String;

    array-length v6, v6

    if-lt v1, v6, :cond_0

    .line 106
    return-void

    .line 87
    :cond_0
    iget-object v6, p0, Lcom/smalife/country/SideBar;->paint:Landroid/graphics/Paint;

    const/16 v7, 0x17

    const/16 v8, 0x7a

    const/16 v9, 0x7e

    invoke-static {v7, v8, v9}, Landroid/graphics/Color;->rgb(III)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 88
    iget-object v6, p0, Lcom/smalife/country/SideBar;->paint:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 90
    iget-object v6, p0, Lcom/smalife/country/SideBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {v6, v10}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 91
    iget-object v6, p0, Lcom/smalife/country/SideBar;->paint:Landroid/graphics/Paint;

    const/high16 v7, 0x41a00000    # 20.0f

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 93
    iget v6, p0, Lcom/smalife/country/SideBar;->choose:I

    if-ne v1, v6, :cond_1

    .line 95
    iget-object v6, p0, Lcom/smalife/country/SideBar;->paint:Landroid/graphics/Paint;

    const v7, -0xffff01

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 97
    iget-object v6, p0, Lcom/smalife/country/SideBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {v6, v10}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 100
    :cond_1
    div-int/lit8 v6, v3, 0x2

    int-to-float v6, v6

    iget-object v7, p0, Lcom/smalife/country/SideBar;->paint:Landroid/graphics/Paint;

    sget-object v8, Lcom/smalife/country/SideBar;->b:[Ljava/lang/String;

    aget-object v8, v8, v1

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v7

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    sub-float v4, v6, v7

    .line 101
    .local v4, "xPos":F
    int-to-float v6, v1

    mul-float/2addr v6, v2

    add-float v5, v6, v2

    .line 102
    .local v5, "yPos":F
    sget-object v6, Lcom/smalife/country/SideBar;->b:[Ljava/lang/String;

    aget-object v6, v6, v1

    iget-object v7, p0, Lcom/smalife/country/SideBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v4, v5, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 104
    iget-object v6, p0, Lcom/smalife/country/SideBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {v6}, Landroid/graphics/Paint;->reset()V

    .line 85
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public setOnTouchingLetterChangedListener(Lcom/smalife/country/SideBar$OnTouchingLetterChangedListener;)V
    .locals 0
    .param p1, "onTouchingLetterChangedListener"    # Lcom/smalife/country/SideBar$OnTouchingLetterChangedListener;

    .prologue
    .line 164
    iput-object p1, p0, Lcom/smalife/country/SideBar;->onTouchingLetterChangedListener:Lcom/smalife/country/SideBar$OnTouchingLetterChangedListener;

    .line 165
    return-void
.end method

.method public setTextView(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "mTextDialog"    # Landroid/widget/TextView;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/smalife/country/SideBar;->mTextDialog:Landroid/widget/TextView;

    .line 58
    return-void
.end method
