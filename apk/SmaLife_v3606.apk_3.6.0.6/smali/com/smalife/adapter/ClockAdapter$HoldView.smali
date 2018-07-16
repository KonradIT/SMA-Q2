.class Lcom/smalife/adapter/ClockAdapter$HoldView;
.super Ljava/lang/Object;
.source "ClockAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smalife/adapter/ClockAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HoldView"
.end annotation


# instance fields
.field clockOpen:Landroid/widget/CheckBox;

.field clockTime:Landroid/widget/TextView;

.field fridDay:Landroid/widget/TextView;

.field item_id:Landroid/widget/TextView;

.field monDay:Landroid/widget/TextView;

.field name:Landroid/widget/TextView;

.field staDay:Landroid/widget/TextView;

.field sunDay:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/smalife/adapter/ClockAdapter;

.field thurDay:Landroid/widget/TextView;

.field tuesDay:Landroid/widget/TextView;

.field wesDay:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Lcom/smalife/adapter/ClockAdapter;)V
    .locals 0

    .prologue
    .line 142
    iput-object p1, p0, Lcom/smalife/adapter/ClockAdapter$HoldView;->this$0:Lcom/smalife/adapter/ClockAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/smalife/adapter/ClockAdapter;Lcom/smalife/adapter/ClockAdapter$HoldView;)V
    .locals 0

    .prologue
    .line 142
    invoke-direct {p0, p1}, Lcom/smalife/adapter/ClockAdapter$HoldView;-><init>(Lcom/smalife/adapter/ClockAdapter;)V

    return-void
.end method
