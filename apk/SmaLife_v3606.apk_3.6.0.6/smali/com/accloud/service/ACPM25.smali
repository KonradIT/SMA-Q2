.class public Lcom/accloud/service/ACPM25;
.super Ljava/lang/Object;
.source "ACPM25.java"


# instance fields
.field public avg:I

.field public max:I

.field public min:I

.field public timestamp:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .param p1, "timestamp"    # Ljava/lang/String;
    .param p2, "avg"    # I
    .param p3, "min"    # I
    .param p4, "max"    # I

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/accloud/service/ACPM25;->timestamp:Ljava/lang/String;

    .line 24
    iput p2, p0, Lcom/accloud/service/ACPM25;->avg:I

    .line 25
    iput p3, p0, Lcom/accloud/service/ACPM25;->min:I

    .line 26
    iput p4, p0, Lcom/accloud/service/ACPM25;->max:I

    .line 27
    return-void
.end method


# virtual methods
.method public getAvg()I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcom/accloud/service/ACPM25;->avg:I

    return v0
.end method

.method public getMax()I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/accloud/service/ACPM25;->max:I

    return v0
.end method

.method public getMin()I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lcom/accloud/service/ACPM25;->min:I

    return v0
.end method

.method public getTimestamp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/accloud/service/ACPM25;->timestamp:Ljava/lang/String;

    return-object v0
.end method

.method public setAvg(I)V
    .locals 0
    .param p1, "avg"    # I

    .prologue
    .line 42
    iput p1, p0, Lcom/accloud/service/ACPM25;->avg:I

    .line 43
    return-void
.end method

.method public setMax(I)V
    .locals 0
    .param p1, "max"    # I

    .prologue
    .line 58
    iput p1, p0, Lcom/accloud/service/ACPM25;->max:I

    .line 59
    return-void
.end method

.method public setMin(I)V
    .locals 0
    .param p1, "min"    # I

    .prologue
    .line 50
    iput p1, p0, Lcom/accloud/service/ACPM25;->min:I

    .line 51
    return-void
.end method

.method public setTimestamp(Ljava/lang/String;)V
    .locals 0
    .param p1, "timestamp"    # Ljava/lang/String;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/accloud/service/ACPM25;->timestamp:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ACPM25{timestamp=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/accloud/service/ACPM25;->timestamp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", avg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/accloud/service/ACPM25;->avg:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", min="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/accloud/service/ACPM25;->min:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", max="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/accloud/service/ACPM25;->max:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
