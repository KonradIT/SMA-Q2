.class Lcom/smalife/utils/LineChartView$1;
.super Ljava/lang/Object;
.source "LineChartView.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smalife/utils/LineChartView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/smalife/utils/SportPoint;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smalife/utils/LineChartView;


# direct methods
.method constructor <init>(Lcom/smalife/utils/LineChartView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/smalife/utils/LineChartView$1;->this$0:Lcom/smalife/utils/LineChartView;

    .line 338
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/smalife/utils/SportPoint;Lcom/smalife/utils/SportPoint;)I
    .locals 2
    .param p1, "pre"    # Lcom/smalife/utils/SportPoint;
    .param p2, "next"    # Lcom/smalife/utils/SportPoint;

    .prologue
    .line 341
    invoke-virtual {p2}, Lcom/smalife/utils/SportPoint;->getSteps()I

    move-result v0

    invoke-virtual {p1}, Lcom/smalife/utils/SportPoint;->getSteps()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 342
    const/4 v0, 0x1

    .line 346
    :goto_0
    return v0

    .line 343
    :cond_0
    invoke-virtual {p2}, Lcom/smalife/utils/SportPoint;->getSteps()I

    move-result v0

    invoke-virtual {p1}, Lcom/smalife/utils/SportPoint;->getSteps()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 344
    const/4 v0, 0x0

    goto :goto_0

    .line 346
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1
    check-cast p1, Lcom/smalife/utils/SportPoint;

    check-cast p2, Lcom/smalife/utils/SportPoint;

    invoke-virtual {p0, p1, p2}, Lcom/smalife/utils/LineChartView$1;->compare(Lcom/smalife/utils/SportPoint;Lcom/smalife/utils/SportPoint;)I

    move-result v0

    return v0
.end method
