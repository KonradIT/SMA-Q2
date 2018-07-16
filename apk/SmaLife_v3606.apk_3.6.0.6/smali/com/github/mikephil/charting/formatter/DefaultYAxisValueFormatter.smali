.class public Lcom/github/mikephil/charting/formatter/DefaultYAxisValueFormatter;
.super Ljava/lang/Object;
.source "DefaultYAxisValueFormatter.java"

# interfaces
.implements Lcom/github/mikephil/charting/formatter/YAxisValueFormatter;


# instance fields
.field private mFormat:Ljava/text/DecimalFormat;


# direct methods
.method public constructor <init>(I)V
    .locals 5
    .param p1, "digits"    # I

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 26
    .local v0, "b":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, p1, :cond_0

    .line 32
    new-instance v2, Ljava/text/DecimalFormat;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "###,###,###,##0"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/github/mikephil/charting/formatter/DefaultYAxisValueFormatter;->mFormat:Ljava/text/DecimalFormat;

    .line 33
    return-void

    .line 27
    :cond_0
    if-nez v1, :cond_1

    .line 28
    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 29
    :cond_1
    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 26
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getFormattedValue(FLcom/github/mikephil/charting/components/YAxis;)Ljava/lang/String;
    .locals 4
    .param p1, "value"    # F
    .param p2, "yAxis"    # Lcom/github/mikephil/charting/components/YAxis;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/github/mikephil/charting/formatter/DefaultYAxisValueFormatter;->mFormat:Ljava/text/DecimalFormat;

    float-to-double v2, p1

    invoke-virtual {v0, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
