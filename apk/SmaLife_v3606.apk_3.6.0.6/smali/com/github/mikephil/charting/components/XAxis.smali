.class public Lcom/github/mikephil/charting/components/XAxis;
.super Lcom/github/mikephil/charting/components/AxisBase;
.source "XAxis.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;
    }
.end annotation


# instance fields
.field private mAvoidFirstLastClipping:Z

.field public mAxisLabelModulus:I

.field private mIsAxisModulusCustom:Z

.field public mLabelHeight:I

.field public mLabelWidth:I

.field private mPosition:Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

.field private mSpaceBetweenLabels:I

.field protected mValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mXAxisValueFormatter:Lcom/github/mikephil/charting/formatter/XAxisValueFormatter;

.field public mYAxisLabelModulus:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 80
    invoke-direct {p0}, Lcom/github/mikephil/charting/components/AxisBase;-><init>()V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/components/XAxis;->mValues:Ljava/util/List;

    .line 26
    iput v1, p0, Lcom/github/mikephil/charting/components/XAxis;->mLabelWidth:I

    .line 32
    iput v1, p0, Lcom/github/mikephil/charting/components/XAxis;->mLabelHeight:I

    .line 38
    const/4 v0, 0x4

    iput v0, p0, Lcom/github/mikephil/charting/components/XAxis;->mSpaceBetweenLabels:I

    .line 45
    iput v1, p0, Lcom/github/mikephil/charting/components/XAxis;->mAxisLabelModulus:I

    .line 51
    iput-boolean v2, p0, Lcom/github/mikephil/charting/components/XAxis;->mIsAxisModulusCustom:Z

    .line 58
    iput v1, p0, Lcom/github/mikephil/charting/components/XAxis;->mYAxisLabelModulus:I

    .line 64
    iput-boolean v2, p0, Lcom/github/mikephil/charting/components/XAxis;->mAvoidFirstLastClipping:Z

    .line 69
    new-instance v0, Lcom/github/mikephil/charting/formatter/DefaultXAxisValueFormatter;

    invoke-direct {v0}, Lcom/github/mikephil/charting/formatter/DefaultXAxisValueFormatter;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/components/XAxis;->mXAxisValueFormatter:Lcom/github/mikephil/charting/formatter/XAxisValueFormatter;

    .line 72
    sget-object v0, Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;->TOP:Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    iput-object v0, p0, Lcom/github/mikephil/charting/components/XAxis;->mPosition:Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    .line 81
    return-void
.end method


# virtual methods
.method public getLongestLabel()Ljava/lang/String;
    .locals 5

    .prologue
    .line 218
    const-string v1, ""

    .line 220
    .local v1, "longest":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/github/mikephil/charting/components/XAxis;->mValues:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt v0, v3, :cond_0

    .line 227
    return-object v1

    .line 221
    :cond_0
    iget-object v3, p0, Lcom/github/mikephil/charting/components/XAxis;->mValues:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 223
    .local v2, "text":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 224
    move-object v1, v2

    .line 220
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getPosition()Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/github/mikephil/charting/components/XAxis;->mPosition:Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    return-object v0
.end method

.method public getSpaceBetweenLabels()I
    .locals 1

    .prologue
    .line 152
    iget v0, p0, Lcom/github/mikephil/charting/components/XAxis;->mSpaceBetweenLabels:I

    return v0
.end method

.method public getValueFormatter()Lcom/github/mikephil/charting/formatter/XAxisValueFormatter;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/github/mikephil/charting/components/XAxis;->mXAxisValueFormatter:Lcom/github/mikephil/charting/formatter/XAxisValueFormatter;

    return-object v0
.end method

.method public getValues()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 189
    iget-object v0, p0, Lcom/github/mikephil/charting/components/XAxis;->mValues:Ljava/util/List;

    return-object v0
.end method

.method public isAvoidFirstLastClippingEnabled()Z
    .locals 1

    .prologue
    .line 171
    iget-boolean v0, p0, Lcom/github/mikephil/charting/components/XAxis;->mAvoidFirstLastClipping:Z

    return v0
.end method

.method public isAxisModulusCustom()Z
    .locals 1

    .prologue
    .line 144
    iget-boolean v0, p0, Lcom/github/mikephil/charting/components/XAxis;->mIsAxisModulusCustom:Z

    return v0
.end method

.method public resetLabelsToSkip()V
    .locals 1

    .prologue
    .line 134
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/github/mikephil/charting/components/XAxis;->mIsAxisModulusCustom:Z

    .line 135
    return-void
.end method

.method public setAvoidFirstLastClipping(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 162
    iput-boolean p1, p0, Lcom/github/mikephil/charting/components/XAxis;->mAvoidFirstLastClipping:Z

    .line 163
    return-void
.end method

.method public setLabelsToSkip(I)V
    .locals 1
    .param p1, "count"    # I

    .prologue
    .line 121
    if-gez p1, :cond_0

    .line 122
    const/4 p1, 0x0

    .line 124
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/github/mikephil/charting/components/XAxis;->mIsAxisModulusCustom:Z

    .line 125
    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Lcom/github/mikephil/charting/components/XAxis;->mAxisLabelModulus:I

    .line 126
    return-void
.end method

.method public setPosition(Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;)V
    .locals 0
    .param p1, "pos"    # Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/github/mikephil/charting/components/XAxis;->mPosition:Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    .line 97
    return-void
.end method

.method public setSpaceBetweenLabels(I)V
    .locals 0
    .param p1, "spaceCharacters"    # I

    .prologue
    .line 107
    iput p1, p0, Lcom/github/mikephil/charting/components/XAxis;->mSpaceBetweenLabels:I

    .line 108
    return-void
.end method

.method public setValueFormatter(Lcom/github/mikephil/charting/formatter/XAxisValueFormatter;)V
    .locals 1
    .param p1, "formatter"    # Lcom/github/mikephil/charting/formatter/XAxisValueFormatter;

    .prologue
    .line 201
    if-nez p1, :cond_0

    .line 202
    new-instance v0, Lcom/github/mikephil/charting/formatter/DefaultXAxisValueFormatter;

    invoke-direct {v0}, Lcom/github/mikephil/charting/formatter/DefaultXAxisValueFormatter;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/components/XAxis;->mXAxisValueFormatter:Lcom/github/mikephil/charting/formatter/XAxisValueFormatter;

    .line 205
    :goto_0
    return-void

    .line 204
    :cond_0
    iput-object p1, p0, Lcom/github/mikephil/charting/components/XAxis;->mXAxisValueFormatter:Lcom/github/mikephil/charting/formatter/XAxisValueFormatter;

    goto :goto_0
.end method

.method public setValues(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 180
    .local p1, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/github/mikephil/charting/components/XAxis;->mValues:Ljava/util/List;

    .line 181
    return-void
.end method
