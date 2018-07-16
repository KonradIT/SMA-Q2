.class public Lcom/accloud/service/ACAQI;
.super Ljava/lang/Object;
.source "ACAQI.java"


# instance fields
.field AQI:I

.field maxAQI:I

.field minAQI:I

.field timestamp:Ljava/lang/String;


# direct methods
.method public constructor <init>(IIILjava/lang/String;)V
    .locals 0
    .param p1, "AQI"    # I
    .param p2, "minAQI"    # I
    .param p3, "maxAQI"    # I
    .param p4, "timestamp"    # Ljava/lang/String;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput p1, p0, Lcom/accloud/service/ACAQI;->AQI:I

    .line 24
    iput p2, p0, Lcom/accloud/service/ACAQI;->minAQI:I

    .line 25
    iput p3, p0, Lcom/accloud/service/ACAQI;->maxAQI:I

    .line 26
    iput-object p4, p0, Lcom/accloud/service/ACAQI;->timestamp:Ljava/lang/String;

    .line 27
    return-void
.end method


# virtual methods
.method public getAQI()I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lcom/accloud/service/ACAQI;->AQI:I

    return v0
.end method

.method public getMaxAQI()I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lcom/accloud/service/ACAQI;->maxAQI:I

    return v0
.end method

.method public getMinAQI()I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcom/accloud/service/ACAQI;->minAQI:I

    return v0
.end method

.method public getTimestamp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/accloud/service/ACAQI;->timestamp:Ljava/lang/String;

    return-object v0
.end method

.method public setAQI(I)V
    .locals 0
    .param p1, "AQI"    # I

    .prologue
    .line 34
    iput p1, p0, Lcom/accloud/service/ACAQI;->AQI:I

    .line 35
    return-void
.end method

.method public setMaxAQI(I)V
    .locals 0
    .param p1, "maxAQI"    # I

    .prologue
    .line 50
    iput p1, p0, Lcom/accloud/service/ACAQI;->maxAQI:I

    .line 51
    return-void
.end method

.method public setMinAQI(I)V
    .locals 0
    .param p1, "minAQI"    # I

    .prologue
    .line 42
    iput p1, p0, Lcom/accloud/service/ACAQI;->minAQI:I

    .line 43
    return-void
.end method

.method public setTimestamp(Ljava/lang/String;)V
    .locals 0
    .param p1, "timestamp"    # Ljava/lang/String;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/accloud/service/ACAQI;->timestamp:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ACAQI{AQI="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/accloud/service/ACAQI;->AQI:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", minAQI="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/accloud/service/ACAQI;->minAQI:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", maxAQI="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/accloud/service/ACAQI;->maxAQI:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", timestamp=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/accloud/service/ACAQI;->timestamp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
