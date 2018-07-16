.class Lcom/smalife/adapter/WeekAdapter$HoldView;
.super Ljava/lang/Object;
.source "WeekAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smalife/adapter/WeekAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HoldView"
.end annotation


# instance fields
.field _id:B

.field check_btn:Landroid/widget/ImageButton;

.field final synthetic this$0:Lcom/smalife/adapter/WeekAdapter;

.field week_v:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/smalife/adapter/WeekAdapter;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/smalife/adapter/WeekAdapter$HoldView;->this$0:Lcom/smalife/adapter/WeekAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
