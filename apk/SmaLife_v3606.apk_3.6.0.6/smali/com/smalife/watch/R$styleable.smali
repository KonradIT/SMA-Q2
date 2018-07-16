.class public final Lcom/smalife/watch/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smalife/watch/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final FocusImageView:[I

.field public static final FocusImageView_focus_fail_id:I = 0x2

.field public static final FocusImageView_focus_focusing_id:I = 0x0

.field public static final FocusImageView_focus_success_id:I = 0x1

.field public static final HoloCircleSeekBar:[I

.field public static final HoloCircleSeekBar_color_seekbar:I = 0x8

.field public static final HoloCircleSeekBar_end_angle:I = 0x5

.field public static final HoloCircleSeekBar_init_position:I = 0x7

.field public static final HoloCircleSeekBar_max:I = 0x2

.field public static final HoloCircleSeekBar_pointer_color:I = 0xb

.field public static final HoloCircleSeekBar_pointer_halo_color:I = 0xc

.field public static final HoloCircleSeekBar_pointer_size:I = 0x1

.field public static final HoloCircleSeekBar_show_text:I = 0x3

.field public static final HoloCircleSeekBar_start_angle:I = 0x4

.field public static final HoloCircleSeekBar_text_color:I = 0xd

.field public static final HoloCircleSeekBar_text_size:I = 0x6

.field public static final HoloCircleSeekBar_wheel_active_color:I = 0x9

.field public static final HoloCircleSeekBar_wheel_size:I = 0x0

.field public static final HoloCircleSeekBar_wheel_unactive_color:I = 0xa

.field public static final TempImageView:[I

.field public static final TempImageView_animat_id:I = 0x0

.field public static final slideswitch:[I

.field public static final slideswitch_isOpen:I = 0x1

.field public static final slideswitch_shape:I = 0x2

.field public static final slideswitch_themeColor:I = 0x0

.field public static final wheelview:[I

.field public static final wheelview_dividerColor:I = 0x4

.field public static final wheelview_gravity:I = 0x0

.field public static final wheelview_textColorCenter:I = 0x3

.field public static final wheelview_textColorOut:I = 0x2

.field public static final wheelview_textSize:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 2606
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/smalife/watch/R$styleable;->FocusImageView:[I

    .line 2687
    const/16 v0, 0xe

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/smalife/watch/R$styleable;->HoloCircleSeekBar:[I

    .line 2899
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 2900
    const/high16 v2, 0x7f010000

    aput v2, v0, v1

    .line 2899
    sput-object v0, Lcom/smalife/watch/R$styleable;->TempImageView:[I

    .line 2930
    new-array v0, v3, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/smalife/watch/R$styleable;->slideswitch:[I

    .line 2997
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/smalife/watch/R$styleable;->wheelview:[I

    .line 3079
    return-void

    .line 2606
    nop

    :array_0
    .array-data 4
        0x7f010001
        0x7f010002
        0x7f010003
    .end array-data

    .line 2687
    :array_1
    .array-data 4
        0x7f010004
        0x7f010005
        0x7f010006
        0x7f010007
        0x7f010008
        0x7f010009
        0x7f01000a
        0x7f01000b
        0x7f01000c
        0x7f01000d
        0x7f01000e
        0x7f01000f
        0x7f010010
        0x7f010011
    .end array-data

    .line 2930
    :array_2
    .array-data 4
        0x7f010012
        0x7f010013
        0x7f010014
    .end array-data

    .line 2997
    :array_3
    .array-data 4
        0x7f010015
        0x7f010016
        0x7f010017
        0x7f010018
        0x7f010019
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2591
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
